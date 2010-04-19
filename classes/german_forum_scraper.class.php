<?php
class GermanForums {
    public $db;
    public $new_posts = 0;
    public function __construct($args = array())
    {
        $this->webpage = 'http://translate.googleusercontent.com/translate_c?hl=en&ie=UTF-8&sl=auto&tl=en&u=http://forum.gp2x.de/search.php%3Fauthor_id%3D2%26sr%3Dposts&prev=_t&rurl=translate.google.com&twu=1&usg=ALkJrhifIdIK5DIuN2HFl_4a8j-3-C6spg';

        foreach($args as $arg => $value) {
            $this->$arg = $value;
        }

        $this->find_authors_for_source_st = $this->db->prepare(StalkerSqlQueries::$find_authors_for_source_sql);
        $this->find_post_for_source_author_st = $this->db->prepare(StalkerSqlQueries::$find_post_for_source_author_sql);
        $this->find_property_for_source_author_st = $this->db->prepare(StalkerSqlQueries::$find_property_for_source_author_sql);
        $this->create_post_st = $this->db->prepare(StalkerSqlQueries::$create_post_sql);
    }
    public function scrape(){
        $this->find_authors_for_source_st->execute(array($this->source_id));
        $authors = $this->find_authors_for_source_st->fetchAll(PDO::FETCH_ASSOC);
        if($authors) {
            foreach($authors as $author) {
                //there is no use in using $author in the forum as the google url screws it up, so for now we will only have ED scraped.
                $content = file_get_contents($this->webpage);
                $content = explode('These Browse Results:',$content);
                $content = $content[1];
                $content = explode('<span class="gensmall"',$content);
                $content = $content[0];
                $content = cleanPage($content);
                $posts = explode("<tr",$content);
                $posts2 = array();
                foreach($posts as $post){
                    //determine if it should be removed.
                    $postt = trim(strip_tags(preg_replace('/\s*class=\"row\d\"\>/is', '',$post)));
                    if(strlen($postt) > 40){
                        $posts2[] = trim(preg_replace('/\s*class=\"row\d\"\>/is', '',$post));
                        //echo strlen($postt)."_";
                    }
               }
               unset($posts2[0]);
               $posts2 = implode("\n",$posts2);
               $posts2 = str_replace('tr>
><td clas','tr>
<td clas',$posts2);
               $posts2 = str_replace('<td class="gensmall"><div >','',$posts2);
               $posts2 = str_replace('</div></td></tr></tbody></table></td></tr>','',$posts2);
               $posts2 = str_replace(array('</div><div >','</tr></tbody></table></td></tr>
<td >','</tr></tbody></table>'),'',$posts2);
               $posts2 = preg_replace('/<\/a>\s*([ \w:]*<a href=\"[^"]+\">[^<]+<\/a>([ \w:]*))+[\s]+(<\/p><\/td><\/tr>)*/is', '</a>', $posts2);
               $posts2 = removeHugeSpaces($posts2);
               $posts2 = preg_replace('/<a href=\"(http:\/\/translate.google[^"]+)">/is', '\1</a>', $posts2);
               $posts2 = explode('<b>Post subject:</b>',$posts2);
               
               unset($posts2[0]);
               $posts = array();
               
               foreach($posts2 as $post){
                    $post = preg_split('/(<(a|b|td|p)( (class|name)=\"([^"]+?)\")*>|<\/(a|b|p|td)\s*>)+/is', $post);
                    $temp = array();
                    $thekey = 'p_____';
                    $keyloc = 0;
                    foreach($post as $val){
                        $val = preg_replace('/<a name="([^"]+)" id="([^"]+)"\s*>/is', '\1',trim($val));
                        
                        //for some reason, we might have a lapse and have something after the post key(the identity), we need to cut off after our identity.
                        $tvar = preg_match('/$p\d{5,10}/is', $val);
                        /**/
                        if(strlen($val) > 0){
                            $temp[] = $val;
                            $keyloc++;
                        }
                        
                        if($tvar){
                            //we need to break out.
                            $thekey = $val;
                            break;
                            
                        }
                       
                    }
                    $post = $temp;
                    unset($temp);
                    //ok now lets determine the important infos
                    //we are sure that our topic title is the first element
                    $post2 = array();
                    $post2['link'] = $post[0];
                    $post2['title'] = $post[1];
                    //we should look for the date, which usually in all cases is on the second element, but to be sure, lets use the 'posted' value detection
                    $postedPosition = array_search("Posted:",$post);
                    $post2['date'] = $post[$postedPosition+1];//we know the date will be immediately after posted.
                    //next we know the message follows the posted position. but before the p\d+ key.
                    //lets use our position we kept earlier for that.
                    $temp = '';
                    $keyloc = $keyloc-1;
                    if($postedPosition+2 != $keyloc){
                        for($x = $postedPosition+2; $x < $keyloc-0; $x++){
                            $temp .= $post[$x].' ';
                        }  
                    }else{
                        $temp = $post[$postedPosition+2];
                    }
                    
                    $temp = trim($temp);
                    $post2['content'] = $temp;
                    unset($temp);
                    $post2['key'] = $post[$keyloc];
                    //now the moment of truth, is this post identifyable?
                    if(!is_numeric(str_replace("p",'', $post2['key']))){
                        unset($post2);
                    }else{
                        $posts[] = $post2;
                        unset($posts2);
                    }
                    unset($post);
                    unset($postedPosition);
                    
                    
               }
               //now we have all the posts in our $posts variable
               foreach($posts as $post){
                    //now lets check if our post exists.
                    $this->find_post_for_source_author_st->execute(array($author['source_id'], $author['author_id'],$post['content'], $post['key'], $post['key']));
                    $post = $this->find_post_for_source_author_st->fetch(PDO::FETCH_ASSOC);
                    if($post == FALSE) {
                        $this->new_posts += 1;
                            $this->create_post_st->execute(array(
                                $author['source_id'], $author['author_id'],
                                $post['key'], $post['title'], date('Y-m-d H:i:s', strtotime($post['date'])),
                                $post['link'], $post['content'], md5($post['content'].$post['key'])
                            ));
                    }else{
                        //the post exists, since we are going through a forum and all after this logically should already exist in the DB, we should just not bother.
                        break;
                    }
               }
            }
        }
    }
    function removeHugeSpaces($input){
        $input = preg_replace("/(^[\r\n]*|[\r\n]+)[\s\t]*[\r\n]+/", "\n", $input);//don't worry, it just removes huge spaces...
        $input = preg_replace('/\>[(\s|\r|\n|\t|\h|\v| )]+\</ims', ">\n<",$input);
        return preg_replace('/[ \t\r]+/imsX', " ", html_entity_decode($input));
    }
    function removeHTMLStyling($input){
        //cleans out the html settings we don't care about.
        $filtered = preg_replace('/(border|onclick|bgcolor|cellspacing|color|cellpadding|width|height|style|background|colspan|rowspan|align|valign|on[a-zA-Z]+)+\=\'([_a-z=\"\\\'\\\\A-Z\s\.\/\:\#0-9 \d\s\w =\`\'\"\/\:\.\;\%\(\)\{\}\[\]\!\"]+?)\'/imsX', ' ',$input);
        $filtered = preg_replace('/(border|onclick|bgcolor|cellspacing|color|cellpadding|width|height|style|background|colspan|rowspan|align|valign|on[a-zA-Z]+)+\=\"([_a-z=\"\\\'\\\\A-Z\s\.\/\:\#0-9 \d\s\w =\`\'\/\:\.\;\%\(\)\{\}\[\]\!\\\'\-\,]+?)\"/imsX', ' ',$filtered);
        $filtered = preg_replace('/(border|onclick|bgcolor|cellspacing|color|cellpadding|width|height|style|background|colspan|rowspan|align|valign|on[a-zA-Z]+)+\=([_a-z=\"\\\'\\\\A-Z\s\.\/\:\#0-9 \d\s\w =\`\'\"\/\:\.\;\%]+?)\>/imsX', '>',$filtered);
        return $filtered;
    }
    function lastfixes($input){
        $input = preg_replace('/([a-zA-Z]+)=\"\W([a-z_A-Z0-9#?\.\:\/]+)\W"/i', '\1="\2"',  $input);
        return $input;
    }
    function cleanPage($input){
        //might be the longest function here actually... but it does work VERY wel.
        $input = preg_replace('/<span[^>]+google[^>]+>[^<]+<\/span>/i', '',  $input);
        $input = preg_replace('/<span[^>]+google[^>]+>(.*?)+<\/span>/i', '',  $input);
        $input = $this->removeHTMLStyling($input);//take out styles and such but retain id, clas, name, etc.
        //$input = removeHugeSpaces($input);//take out big whitespaces.
        
        //Section where these wrape around things
        $badElements = array( 'style','bgsound','applet',  'script', 'label');
        foreach($badElements as $bad){
            $input = preg_replace('/<'.$bad.'[^>]*?>(.*?)<\/'.$bad.'>/is', "", $input);
            
        }
       
        //section where it is like <element />
        $badElements = array('link','meta','input');
        foreach($badElements as $bad){
            $input = preg_replace('/<'.$bad.'[^>]*?>/is', "", $input);
        }

        $input = $this->removeHugeSpaces($input);

        $input = trim($input);
        $input = preg_replace('/\n+/ims', "\n",$input);
        $input = preg_replace('/<br[ a-zA-Z0-9\"\=\_]+>/i', '<br />',$input);//seriously, why would people style or put classes on a br.. come on..
        //change all retarded alt=' ' to alt=" "
        $input = $this->lastfixes($input);
        $input = preg_replace('/(\s)([a-zA-Z0-9_]*)\=\'([^\']*)\'/isU', '\1\2="\3"',$input);
        $input = preg_replace('/<\s*_\s*</i', '', $input);
        $input = str_replace("_tipon(this)\"",'',$input);
        $input = preg_replace('/<span\s*>(.*?)<\/span>/is', '\1',  $input);
        //clean up the weirdos.*/
        //$input = strip_tags($input, '<br><img><a><div><span><table><td><tr><th><ul><li><div><abbr>');
        return $input;
    }
}
?>
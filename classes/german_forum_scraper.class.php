<?php
class GermanForums {
    public $db;
    public $new_posts = 0;
    public function __construct($args = array())
    {
        $this->webpage = 'http://66.196.80.202/babelfish/translate_url_content?.intl=us&lp=de_en&trurl=http%3A%2F%2Fforum.gp2x.de%2Fsearch.php%3Fauthor_id%3D2%26sr%3Dposts';

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
        
        echo 'is scraping';
                //there is no use in using $author in the forum as the google url screws it up, so for now we will only have ED scraped.
                $content = file_get_contents($this->webpage);
                //echo $content;
                //echo "____";
                $content = explode('These results scan:',$content);
                $content = $content[1];
                $content = explode('<span class="gensmall"',$content);
                $content = $content[0];
                $content = $this->cleanPage($content);
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
               $posts2 = $this->removeHugeSpaces($posts2);
               $posts2 = preg_replace('/<a href=\"(http:\/\/translate.google[^"]+|http:\/\/66.196.80.202\/babelfish\/trans[^"]+)">/is', '\1</a>', $posts2);
               $posts2 = explode('<p class="topictitle">',$posts2);
               
               unset($posts2[0]);
               //print_r($posts2);
               $posts = array();
               
               foreach($posts2 as $post){
                //echo "posts == yes";
                
                    $post = preg_split('/(<(a|b|td|p)( (class|name)=\"([^"]+?)\")*>|<\/(a|b|p|td)\s*>)+/is', $post);
                    $post = preg_replace('/(?<=[^a-z])(\s+)\>(\s*)/im', '\1\2', $post);
                    $temp = array();
                    $thekey = 'p_____';
                    $keyloc = 0;
                    foreach($post as $val){
                        $val = preg_replace('/<a name="([^"]+)" id="([^"]+)"\s*>/is', '\1',trim($val));
                        
                        //for some reason, we might have a lapse and have something after the post key(the identity), we need to cut off after our identity.
                        $tvar = preg_match('/$p\d{5,10}/is', $val);
                        /**/
                        $val = trim(preg_replace('/<\/?[a-z]+\s*>/im', '',$val));
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
                    //print_r($post);
                    preg_match_all('/<a name="p(\d+)" id="p\1" \/?>/im', $post[0],$tempy);
                    $post2['link'] = $post[3];
                    $post2['title'] = $post[1].' - '.$post[4];
                    //we should look for the date, which usually in all cases is on the second element, but to be sure, lets use the 'posted' value detection
                    $postedPosition = array_search("Written:",$post);
                    $post2['date'] = $post[6];//we know the date will be immediately after posted.
                    //fix the forum time into a standard we know
                    $post2['date'] = preg_replace('/[A-Za-z]{2,3} ([a-zA-Z]{1,20}) (\d{1,2}), (\d{2,4}) (\d{2}):(\d{2})/i', '\3-\1-\2 \4:\5:00',$post2['date']);
                    $months = array('January','February','March','April','May','June','July','August','September','October','November','December','Apr');
                    $months2 = array('01','02','03','04','05','06','07','08','09',10,11,12,'04');
                    $post2['date'] =str_replace($months,$months2, $post2['date']);
                    
                    //next we know the message follows the posted position. but before the p\d+ key.
                    //lets use our position we kept earlier for that.
                    
                    $post2['content'] = trim($post[7]);
                    $post2['content'] = str_replace('<div class="quotetitle">','',$post2['content']);
                    $post2['content'] = str_replace('<div class="quotecontent">','<br />',$post2['content']);
                    unset($temp);
                    $post2['key'] = $tempy[1][0];
                    //print_r($post2);
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
                    $this->find_post_for_source_author_st->execute(array(8, 2,'Translation: '.$post['content'], $post['key'], $post['key']));
                    $post2 = $this->find_post_for_source_author_st->fetch(PDO::FETCH_ASSOC);
                    if($post2 == FALSE) {
                        echo "Creating Post: ".$post['title'].'<br />'."\n";
                        $this->new_posts += 1;
                            $this->create_post_st->execute(array(//is it all right to hard-code this in if we know it should be X,X in the DB?
                                8, 2,
                                $post['key'], $post['title'], $post['date'],
                                $post['link'], 'Translation: '.$post['content'], md5('Translation: '.$post['content'].$post['title'])
                            ));
                            //echo $post['date']."<br />\n";
                            //echo 'ERROR: '.$this->create_post_st->errorCode().';<br />';
                    }else{
                        //the post exists, since we are going through a forum and all after this logically should already exist in the DB, we should just not bother.
                        break;
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
<?php

require_once('stalker_sql_queries.class.php');


class StalkerRss
{
    public $db;
    public $item_limit = 40;

    public $doc;
    public $rss;
    public $hashs = array();
    public $hkeys = array();
    public function __construct($db)
    {
        $this->db = $db;
        $this->doc = new DOMDocument();
        $this->doc->formatOutput = TRUE;
        $this->header();
        date_default_timezone_set('GMT');
    }

    public function generate()
    {
        $find_posts_for_feed_st = $this->db->prepare(StalkerSqlQueries::$find_posts_for_feed_sql . ' LIMIT ' . $this->item_limit);
        //echo StalkerSqlQueries::$find_feeds_sql . "\n";
        $feeds = $this->db->query(StalkerSqlQueries::$find_feeds_sql);
        if($feeds) {
            foreach($feeds as $feed) {
                
                $channel = $this->add_channel($feed['title'], $feed['link'], $feed['description'], $feed['language']);
                $this->add_image_to_channel($channel, $feed['image_url'], $feed['title'], $feed['image_link']);
                
                if($find_posts_for_feed_st->execute(array($feed['feed_id']))) {
                    while($post = $find_posts_for_feed_st->fetch(PDO::FETCH_ASSOC)) {
                        //print_r($post);
                        //$post['content'] = preg_replace('/<p class="citation">[\d\D]+aid\:<\/p>/i', '<hr />',$post['content']);//get rid of so so said this //turns out this is way too greedy!
                        $thtml = ''.$post['content'].'';
                        $tcontent = str_get_html($thtml);
                        //echo $thtml;
                        
                        foreach($tcontent->find('p.citation') as $tsearch){
                         $tsearch->outertext = '<hr />';
                        }
                        
                        
                        
                        foreach($tcontent->find('div.quote') as $tsearch){
                         $tsearch->outertext = '';  
                        }
                        foreach($tcontent->find('div') as $tsearch){
                         if($tsearch->innertext == ''){
                            $tsearch->outertext = '';
                         }
                        }
                        
                        $post['content'] = preg_replace('/&[\w]+;/i', '',(string)$tcontent);
                        $post['content'] = preg_replace('/[a-zA-Z0-9_-]*, on \d+ [A-Za-z]+ \d+ - \d+\:\d+ [A-Z]+, said\:/i', '', $post['content']);
                        $post['content'] = preg_replace('/<img[^>]+alt="View Post[^>]+>/i', '', $post['content']);
                        $post['content'] = preg_replace('/(<br *\/*>\s+)+/i', '<br />',trim($post['content']));
                        $post['content'] = preg_replace('/(<hr *\/*>\s+)+/i', '<hr />',$post['content']);
                        if(substr($post['content'],0,3) == '<br'){
                            $post['content'] = preg_replace('/<br *\/*>\s+/i', '',$post['content'], 1);
                        }
                        if(substr(trim($post['content']),0,3) == '<hr'){
                            $post['content'] = preg_replace('/<br *\/*>\s+/i', '',$post['content'], 1);
                        }
                        $tcontent->clear();
                        unset($tcontent);
                        $post['topic'] = preg_replace('/&[\w\#]+;/i', '',$post['topic']);
                        if(strlen($post['topic'])> 100){
                            $post['topic'] = substr($post['topic'],0,100).'...';
                        }
                        //$post = array_map('utf8_encode',$post);
                        $thash = md5($post['topic'].$post['content']);
                        if(!in_array($thash,$this->hashs)){
                            $this->hashs[] = $thash;
                            unset($thash);
                            $tlink = $post['link'];
                            if(!in_array($tlink,$this->hkeys)){
                                $this->hkeys[] = $tlink;
                            }else{
                                $tlink .= '#'.base64_encode(mt_rand(0,9999999899));
                            }
                            $this->add_item_to_channel(
                                $channel,
                                $post['topic'],
                                $tlink,
                                $post['content'],
                                date(DATE_RSS, strtotime($post['posted'])),
                                     
                                     $post['source'],
                                     $post['author']
                                     
                            );
                            unset($tlink);
                        }
                        //print_r($post);
                    }
                }
            }
        }

        return $this;
    }

    public function xml()
    {
        return $this->doc->saveXML();
    }
   

    protected function header()
    {
        $this->rss = $this->doc->createElement('rss');
        $this->rss->setAttribute('version', '2.0');
        $this->rss->setAttribute('xmlns:dc', 'http://purl.org/dc/elements/1.1/');
        $this->rss->setAttribute('xmlns:atom', 'http://www.w3.org/2005/Atom');
        
        $this->doc->appendChild($this->rss);
        
       
    }
    function remove_accent($str){
      $a = array('À', 'Á', 'Â', 'Ã', 'Ä', 'Å', 'Æ', 'Ç', 'È', 'É', 'Ê', 'Ë', 'Ì', 'Í', 'Î', 'Ï', 'Ð', 'Ñ', 'Ò', 'Ó', 'Ô', 'Õ', 'Ö', 'Ø', 'Ù', 'Ú', 'Û', 'Ü', 'Ý', 'ß', 'à', 'á', 'â','â', 'ã', 'ä', 'å', 'æ', 'ç', 'è', 'é', 'ê', 'ë', 'ì', 'í', 'î', 'ï', 'ñ', 'ò', 'ó', 'ô', 'õ', 'ö', 'ø', 'ù', 'ú', 'û', 'ü', 'ý', 'ÿ', 'Ā', 'ā', 'Ă', 'ă', 'Ą', 'ą', 'Ć', 'ć', 'Ĉ', 'ĉ', 'Ċ', 'ċ', 'Č', 'č', 'Ď', 'ď', 'Đ', 'đ', 'Ē', 'ē', 'Ĕ', 'ĕ', 'Ė', 'ė', 'Ę', 'ę', 'Ě', 'ě', 'Ĝ', 'ĝ', 'Ğ', 'ğ', 'Ġ', 'ġ', 'Ģ', 'ģ', 'Ĥ', 'ĥ', 'Ħ', 'ħ', 'Ĩ', 'ĩ', 'Ī', 'ī', 'Ĭ', 'ĭ', 'Į', 'į', 'İ', 'ı', 'Ĳ', 'ĳ', 'Ĵ', 'ĵ', 'Ķ', 'ķ', 'Ĺ', 'ĺ', 'Ļ', 'ļ', 'Ľ', 'ľ', 'Ŀ', 'ŀ', 'Ł', 'ł', 'Ń', 'ń', 'Ņ', 'ņ', 'Ň', 'ň', 'ŉ', 'Ō', 'ō', 'Ŏ', 'ŏ', 'Ő', 'ő', 'Œ', 'œ', 'Ŕ', 'ŕ', 'Ŗ', 'ŗ', 'Ř', 'ř', 'Ś', 'ś', 'Ŝ', 'ŝ', 'Ş', 'ş', 'Š', 'š', 'Ţ', 'ţ', 'Ť', 'ť', 'Ŧ', 'ŧ', 'Ũ', 'ũ', 'Ū', 'ū', 'Ŭ', 'ŭ', 'Ů', 'ů', 'Ű', 'ű', 'Ų', 'ų', 'Ŵ', 'ŵ', 'Ŷ', 'ŷ', 'Ÿ', 'Ź', 'ź', 'Ż', 'ż', 'Ž', 'ž', 'ſ', 'ƒ', 'Ơ', 'ơ', 'Ư', 'ư', 'Ǎ', 'ǎ', 'Ǐ', 'ǐ', 'Ǒ', 'ǒ', 'Ǔ', 'ǔ', 'Ǖ', 'ǖ', 'Ǘ', 'ǘ', 'Ǚ', 'ǚ', 'Ǜ', 'ǜ', 'Ǻ', 'ǻ', 'Ǽ', 'ǽ', 'Ǿ', 'ǿ');
      $b = array('A', 'A', 'A', 'A', 'A', 'A', 'AE', 'C', 'E', 'E', 'E', 'E', 'I', 'I', 'I', 'I', 'D', 'N', 'O', 'O', 'O', 'O', 'O', 'O', 'U', 'U', 'U', 'U', 'Y', 's', 'a', 'a', 'a', 'a','a', 'a', 'a', 'ae', 'c', 'e', 'e', 'e', 'e', 'i', 'i', 'i', 'i', 'n', 'o', 'o', 'o', 'o', 'o', 'o', 'u', 'u', 'u', 'u', 'y', 'y', 'A', 'a', 'A', 'a', 'A', 'a', 'C', 'c', 'C', 'c', 'C', 'c', 'C', 'c', 'D', 'd', 'D', 'd', 'E', 'e', 'E', 'e', 'E', 'e', 'E', 'e', 'E', 'e', 'G', 'g', 'G', 'g', 'G', 'g', 'G', 'g', 'H', 'h', 'H', 'h', 'I', 'i', 'I', 'i', 'I', 'i', 'I', 'i', 'I', 'i', 'IJ', 'ij', 'J', 'j', 'K', 'k', 'L', 'l', 'L', 'l', 'L', 'l', 'L', 'l', 'l', 'l', 'N', 'n', 'N', 'n', 'N', 'n', 'n', 'O', 'o', 'O', 'o', 'O', 'o', 'OE', 'oe', 'R', 'r', 'R', 'r', 'R', 'r', 'S', 's', 'S', 's', 'S', 's', 'S', 's', 'T', 't', 'T', 't', 'T', 't', 'U', 'u', 'U', 'u', 'U', 'u', 'U', 'u', 'U', 'u', 'U', 'u', 'W', 'w', 'Y', 'y', 'Y', 'Z', 'z', 'Z', 'z', 'Z', 'z', 's', 'f', 'O', 'o', 'U', 'u', 'A', 'a', 'I', 'i', 'O', 'o', 'U', 'u', 'U', 'u', 'U', 'u', 'U', 'u', 'U', 'u', 'A', 'a', 'AE', 'ae', 'O', 'o');
      return $this->lastfixes($this->unallowedEntities(str_replace($a, $b, $this->Unaccent(html_entity_decode($str)))));
    }
    function Unaccent($string){
        return html_entity_decode(preg_replace('~&([a-z]{1,2})(acute|cedil|circ|grave|lig|orn|ring|slash|th|tilde|uml);~i', '$1', htmlentities($string, ENT_QUOTES, 'UTF-8')));
    }
    function unallowedEntities($string){
        $a = array('&hellip;','&rsquo;','&#039;');
        $b = array('...','\'','\'');
        return str_replace($a, $b, $string);
    }
    function removeScripts($input){
        return preg_replace('/\<script\>(.+?)\<\/script>/imsX', '',$input);//regex remove script tags.
    }
    function removeHugeSpaces($input){
        $input = preg_replace("/(^[\r\n]*|[\r\n]+)[\s\t]*[\r\n]+/", "\n", $input);//don't worry, it just removes huge spaces...
        $input = preg_replace('/\>[(\s|\r|\n|\t|\h|\v| )]+\</ims', ">\n<",$input);
        return preg_replace('/[ \t\r]+/imsX', " ", html_entity_decode($input));
    }
    function removeHTMLStyling($input){
        //cleans out the html settings we don't care about.
        $filtered = preg_replace('/(border|onclick|bgcolor|cellspacing|color|cellpadding|width|height|style|background|colspan|rowspan|align|valign|on|mce_bogus[a-zA-Z]+)+\=\'([_a-z=\"\\\'\\\\A-Z\s\.\/\:\#0-9 \d\s\w =\`\'\"\/\:\.\;\%\(\)\{\}\[\]\!\"]+?)\'/imsX', ' ',$input);
        $filtered = preg_replace('/(border|onclick|bgcolor|cellspacing|color|cellpadding|width|height|style|background|colspan|rowspan|align|valign|on|mce_bogus[a-zA-Z]+)+\=\"([_a-z=\"\\\'\\\\A-Z\s\.\/\:\#0-9 \d\s\w =\`\'\/\:\.\;\%\(\)\{\}\[\]\!\\\'\-\,]+?)\"/imsX', ' ',$filtered);
        $filtered = preg_replace('/(border|onclick|bgcolor|cellspacing|color|cellpadding|width|height|style|background|colspan|rowspan|align|valign|on|mce_bogus[a-zA-Z]+)+\=([_a-z=\"\\\'\\\\A-Z\s\.\/\:\#0-9 \d\s\w =\`\'\"\/\:\.\;\%]+?)\>/imsX', '>',$filtered);
        return $filtered;
    }
    function lastfixes($input){
        $input = preg_replace('/([a-zA-Z]+)=\"\W([a-z_A-Z0-9#?\.\:\/]+)\W"/i', '\1="\2"',  $input);
        return $input;
    }
    function cleanPage($input){
        //might be the longest function here actually... but it does work VERY wel.
        $input = $this->removeScripts($input);//take out scripts.
        $input = $this->removeHTMLStyling($input);//take out styles and such but retain id, clas, name, etc.
        $input = $this->removeHugeSpaces($input);//take out big whitespaces.
        $input = preg_replace('/\<\/*(meta|link|style|script|center|font|bgsound|applet|strong)[_a-z=\"\\\'\\\\A-Z\s\.\/\:\#0-9 \d\s\w =\`\'\"\/\:\.\;\%\(\)\!]*\>/imsU', ' ',$input);
        //take out the crap html we don't care about.
        $input = preg_replace('/\<\/*script[\d\s\w =\`\'\"\/\:\.]*>/imsU', '', $input);
        //clean out side thing
        $input = $this->removeHugeSpaces($input);
        //$input = preg_replace('/\<\/*a[\d\s\w =\`\'\"\/\:\.]*>/imsU', '', $input);
        $input = strip_tags($input, "<table><tr><td><a><div><span><abbr><p><img><br>");
        //$input = preg_replace('/<\/*a>/ims', '',$input);
        //cleaned out those useless a tags.
        //Now to clean out the empty tables...
        for($x = 0; $x < 40; $x++){
            $cur = $input;
            //since there can be empty tables multiple times we need clear them out.
        $input = preg_replace('/<\s*td(\s*(class|id|name)\="([\d\D]*?)")*\s*>\s*\<\/td>/ims', ' ',$input);
        $input = preg_replace('/<\s*tr(\s*(class|id|name)\="([\d\D]*?)")*\s*>\s*\<\/tr>/ims', ' ',$input);
        $input = preg_replace('/<\s*table(\s*(class|id|name)\="([\d\D]*?)")*\s*>\s*\<\/table>/ims', ' ', $input);
        $input = preg_replace('/\<(td|span)?\>\s*(.*?)\s*<\/(td|span)?>/ims', '<$1>$2</$3>', $input);
        $input = preg_replace('/<(td|table|a|span|div|tr)?\s+>/ims', '<$1>',$input);
        $input = preg_replace('/<a>([\d\D]*?)<\/a>/ims', '$1', $input);
        $input = preg_replace('/<span>([\d\D]*?)<\/span>/ims', '$1', $input);
        $input = preg_replace('/<(td|div|span|a|tr|table)?\s+(class|id|name)?=([^\"][a-zA-Z0-9%]+[^\"])?\s*>/ims', '<$1 $2="$3">',$input);
        //oh and while we are at it... we can clean up the HTML. No need for stuff like <span>blah</span> when the span does nothing...
        $input = $this->removeHugeSpaces($input);
        if($input == $cur){
            $x = 80000;
        }
        //echo $x." ";
        }
        $input = trim($input);
        $input = preg_replace('/\n+/ims', '',$input);
        $input = preg_replace('/<br[ a-zA-Z0-9\"\=\_]+>/i', '<br />',$input);//seriously, why would people style a br.. come on..
        //clean up the weirdos.
        
        return $input;
    }


    protected function add_channel($title, $link, $description, $language)
    {
        $channel = $this->doc->createElement('channel');

        $channel_title = $this->doc->createElement('title',$this->remove_accent($title));
        $channel_link = $this->doc->createElement('link', htmlentities($link));
        
        $channel_desc = $this->doc->createElement('description',$this->cleanPage($this->remove_accent($description)));
        $channel_lang = $this->doc->createElement('language', $language);
        $atom = $this->doc->createElement('atom:link');
        $atom->setAttribute('href', 'http://kloplop321.com/uops/rss.php');//put where you will serve it at here!
        $atom->setAttribute('rel', 'self');
        $atom->setAttribute('type', 'application/rss+xml');
        
        
        
        $channel->appendChild($channel_title);
        $channel->appendChild($channel_link);
        $channel->appendChild($atom);
        $channel->appendChild($channel_desc);
        $channel->appendChild($channel_lang);
        
        unset($atom);
        $this->rss->AppendChild($channel);

        return $channel;
    }

    protected function add_image_to_channel($channel, $url, $title, $link)
    {
        $image = $this->doc->createElement('image');

        $image_url = $this->doc->createElement('url', htmlentities($url));
        $image_title = $this->doc->createElement('title', $this->remove_accent($title));
        $image_link = $this->doc->createElement('link', htmlentities($link));
        $image->appendChild($image_url);
        $image->appendChild($image_title);
        $image->appendChild($image_link);
        $channel->appendChild($image);

        return $image;
    }

    protected function add_item_to_channel($channel, $title, $link, $description, $pubdate, $source ='', $author='')
    {
        $item = $this->doc->createElement('item');
        //echo ($this->remove_accent($title));
        $item_title = $this->doc->createElement('title', $this->remove_accent($title));
        $item_link = $this->doc->createElement('link', htmlentities($link));
        $item_guid = $this->doc->createElement('guid', htmlentities($link));
        $item_author = $this->doc->createElement('dc:creator', $this->remove_accent($author.' - '.$source));
        $item_pubdate = $this->doc->createElement('pubDate', $pubdate);
        $item_description = $this->doc->createElement('description');
        $item_description->appendChild($this->doc->createCDATASection($this->cleanPage($this->remove_accent($description))));
        $item->appendChild($item_title);
        $item->appendChild($item_author);
        $item->appendChild($item_link);
        $item->appendChild($item_guid);
        $item->appendChild($item_pubdate);
        $item->appendChild($item_description);
        $channel->appendChild($item);

        return $item;
    }
}

?>

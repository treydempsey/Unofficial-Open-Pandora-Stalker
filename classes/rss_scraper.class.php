<?php

require_once 'rss_scraper_result.class.php';

class RssScraper
{
    public $db, $find_authors_for_source_st, $find_post_for_source_author_st, $find_property_for_source_author_st, $create_post_st;
    public $current_url, $xml, $results, $source_id, $author_id;
    public $new_posts = 0;
    public $scrape_failures = 0;

    public function __construct($args = array())
    {
        foreach($args as $arg => $value) {
            $this->$arg = $value;
        }

        $this->find_authors_for_source_st = $this->db->prepare(StalkerSqlQueries::$find_authors_for_source_sql);
        $this->find_post_for_source_author_st = $this->db->prepare(StalkerSqlQueries::$find_post_for_source_author_sql);
        $this->find_property_for_source_author_st = $this->db->prepare(StalkerSqlQueries::$find_property_for_source_author_sql);
        $this->create_post_st = $this->db->prepare(StalkerSqlQueries::$create_post_sql);

        $this->results = array();
        date_default_timezone_set('GMT');
    }

    public function __destruct()
    {
        unset($this->results);
        unset($this->xml);
    }

    public function scrape()
    {
        if(VERBOSE)
        echo "Scraping " . $this->current_url . "\n";
        $this->xml = new DOMDocument();
        //doing a quick changup instead of using DOM to load it, I'm going to have a timeout because sometimes ED's server doesn't respond :(
            $ctx = stream_context_create(array(
            'http' => array('timeout' => 5)
            )
        );
        if(strpos($this->current_url, "open-pandora.org") !== false){
            $errorlev = error_reporting();
            error_reporting(E_ERROR);//keep it clean, no warnings.. I know I know..
            $contents = file_get_contents($this->current_url,0,$ctx);
            if(strlen(trim($contents))> 4){
               $this->xml->loadXML($contents);
               //echo substr($contents,0,400);
            }else{
                echo '      Failure, OpenPandora\'s server is down. :( '."\n";
            }
            error_reporting($errorlev);
        }else{
            $this->xml->load($this->current_url);
        }
        
        if($this->xml) {
            
            foreach($this->xml->getElementsByTagName('item') as $item) {
                
                $element = $item->getElementsByTagName('title');
                if($element) {
                    $topic = $element->item(0)->nodeValue;
                   
                }
                $useLinkAsKey = false;
                $element = $item->getElementsByTagName('guid');
                if(count($element) == 1) {
                    $key = $element->item(0)->nodeValue;
                    if($key == null){
                        $useLinkAsKey = true;
                    }
                }else{
                    $useLinkAsKey = true;
                }

                $element = $item->getElementsByTagName('link');
                if(count($element) == 1) {
                    $link = $element->item(0)->nodeValue;
                    if($useLinkAsKey){//not all rss is 100% friendly.
                        $key = $link;
                    }
                }
                unset($useLinkAsKey);

                $element = $item->getElementsByTagName('description');
                if(count($element) == 1) {
                    $content = $element->item(0)->nodeValue;
                    $content = preg_replace('/<!\[CDATA\[(.*?)\]\]>/', '\1', $content, -1);
                }

                $element = $item->getElementsByTagName('pubDate');
                if(count($element) == 1) {
                    $posted = strtotime($element->item(0)->nodeValue);
                    $posted = date('Y-m-d H:i:s', $posted);
                    
                }else{
                    $posted = date('Y-m-d H:i:s', mktime(0,0,0,0,0,2010));
                    //just have something.
                }

                if(isset($topic) && isset($key) && isset($link) && isset($posted) && isset($content)) {
                    array_push($this->results, new RssScraperResult(array(
                        'topic' => $topic,
                        'key' => $key,
                        'link' => $link,
                        'posted' => $posted,
                        'content' => $content
                    )));
                }
                else {
                    $this->scrape_failures += 1;
                    
                    //if(VERBOSE)
                    //echo 'We fails! '.isset($topic).'-'.isset($key).'-'.isset($link).'-'.isset($posted).'-'.isset($content).'<br />';
                    //uncomment the above lines to see how it fails.
                }
            }

            foreach($this->results as $result) {
                if(VERBOSE)
                echo "find_post_st(" . $this->source_id . ", " . $this->author_id . ", " . $result->content . ", ".$result->key.")<br />\n";
                $this->find_post_for_source_author_st->execute(array($this->source_id, $this->author_id, $result->content,$result->key,$result->key));
                
                $post = $this->find_post_for_source_author_st->fetch(PDO::FETCH_ASSOC);
                if($post == FALSE) {
                    echo "  &nbsp;&nbsp;&nbsp;&nbsp;Creating post. ",$result->topic,"<br />\n";
                    $this->new_posts += 1;
                    $this->create_post_st->execute(array( 
                        $this->source_id, $this->author_id,
                        $result->key, $result->topic, $result->posted,
                        $result->link, $result->content, md5($result->content.$result->topic)
                    ));
                    
                }
                else {
                    if(VERBOSE)
                    echo "Post exists.<br />\n";
                }
            }
        }

        return $this->results;
    }
}

?>

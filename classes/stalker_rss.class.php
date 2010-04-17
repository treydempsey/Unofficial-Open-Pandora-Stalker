<?php

require_once('stalker_sql_queries.class.php');


class StalkerRss
{
    public $db;
    public $item_limit = 80;

    public $doc;
    public $rss;

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
                        
                        $post['content'] = (string)$tcontent;
                        
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
                        
                        if(strlen($post['topic'])> 100){
                            $post['topic'] = substr($post['topic'],0,100).'...';
                        }
                        //$post = array_map('utf8_encode',$post);
                        $this->add_item_to_channel(
                            $channel,
                            $post['topic'],
                            $post['link'],
                            $post['content'],
                            date('D, d M o G:i:s T', strtotime($post['posted'])),
                                 
                                 $post['source'],
                                 $post['author']
                                 
                        );
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
        $this->doc->appendChild($this->rss);
    }

    protected function add_channel($title, $link, $description, $language)
    {
        $channel = $this->doc->createElement('channel');

        $channel_title = $this->doc->createElement('title', htmlentities($title));
        $channel_link = $this->doc->createElement('link', htmlentities($link));
        $channel_desc = $this->doc->createElement('description', htmlentities($description));
        $channel_lang = $this->doc->createElement('language', $language);
        $channel->appendChild($channel_title);
        $channel->appendChild($channel_link);
        $channel->appendChild($channel_desc);
        $channel->appendChild($channel_lang);
        $this->rss->AppendChild($channel);

        return $channel;
    }

    protected function add_image_to_channel($channel, $url, $title, $link)
    {
        $image = $this->doc->createElement('image');

        $image_url = $this->doc->createElement('url', htmlentities($url));
        $image_title = $this->doc->createElement('title',htmlentities($title));
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
        //echo htmlentities($title);
        $item_title = $this->doc->createElement('title', htmlentities($title));
        $item_link = $this->doc->createElement('link', htmlentities($link));
        $item_author = $this->doc->createElement('author', $author.' - '.$source);
        $item_pubdate = $this->doc->createElement('pubDate', $pubdate);
        $item_description = $this->doc->createElement('description');
        $item_description->appendChild($this->doc->createCDATASection($description));
        $item->appendChild($item_title);
        $item->appendChild($item_author);
        $item->appendChild($item_link);
        $item->appendChild($item_pubdate);
        $item->appendChild($item_description);
        $channel->appendChild($item);

        return $item;
    }
}

?>

<?php

require_once('stalker_sql_queries.class.php');

class StalkerRss
{
    public $db;
    public $item_limit = 100;

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
        $find_posts_st = $this->db->prepare(StalkerSqlQueries::$find_posts_sql . ' LIMIT ' . $this->item_limit);
        $feeds = $this->db->query(StalkerSqlQueries::$find_feeds_sql);
        if($feeds) {
            foreach($feeds as $feed) {
                $channel = $this->add_channel($feed['title'], $feed['link'], $feed['description'], $feed['language']);
                $this->add_image_to_channel($channel, $feed['image_url'], $feed['title'], $feed['image_link']);

                if($find_posts_st->execute(array($feed['source_id']))) {
                    while($post = $find_posts_st->fetch(PDO::FETCH_ASSOC)) {
                        $this->add_item_to_channel(
                            $channel,
                            $feed['source'] . ': ' . $post['author'] . ' commented on ' . $post['topic'],
                            $post['link'],
                            $post['content'],
                            date('D, d M o G:i:s T', strtotime($post['posted']))
                        );
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

        $channel_title = $this->doc->createElement('title', $title);
        $channel_link = $this->doc->createElement('link', $link);
        $channel_desc = $this->doc->createElement('description', $description);
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

        $image_url = $this->doc->createElement('url', $url);
        $image_title = $this->doc->createElement('title', $title);
        $image_link = $this->doc->createElement('link', $link);
        $image->appendChild($image_url);
        $image->appendChild($image_title);
        $image->appendChild($image_link);
        $channel->appendChild($image);

        return $image;
    }

    protected function add_item_to_channel($channel, $title, $link, $description, $pubdate)
    {
        $item = $this->doc->createElement('item');

        $item_title = $this->doc->createElement('title', $title);
        $item_link = $this->doc->createElement('link', $link);
        $item_pubdate = $this->doc->createElement('pubDate', $pubdate);
        $item_description = $this->doc->createElement('description');
        $item_description->appendChild($this->doc->createCDATASection($description));
        $item->appendChild($item_title);
        $item->appendChild($item_link);
        $item->appendChild($item_pubdate);
        $item->appendChild($item_description);
        $channel->appendChild($item);

        return $item;
    }
}

?>

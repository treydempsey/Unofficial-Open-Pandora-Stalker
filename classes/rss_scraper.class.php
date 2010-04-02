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
        echo "Scraping " . $this->current_url . "\n";
        $this->xml = new DOMDocument();
        $this->xml->load($this->current_url);
        if($this->xml) {
            foreach($this->xml->getElementsByTagName('item') as $item) {
                echo "Found item\n";
                $element = $item->getElementsByTagName('title');
                if($element) {
                    $topic = $element->item(0)->nodeValue;
                    echo "topic: $topic\n";
                }

                $element = $item->getElementsByTagName('guid');
                if(count($element) == 1) {
                    $key = $element->item(0)->nodeValue;
                    echo "key: $key\n";
                }

                $element = $item->getElementsByTagName('link');
                if(count($element) == 1) {
                    $link = $element->item(0)->nodeValue;
                    echo "link: $link\n";
                }

                $element = $item->getElementsByTagName('description');
                if(count($element) == 1) {
                    $content = $element->item(0)->nodeValue;
                    $content = preg_replace('/<!\[CDATA\[(.*?)\]\]>/', '\1', $content, -1);
                    echo "content: $content\n";
                }

                $element = $item->getElementsByTagName('pubDate');
                if(count($element) == 1) {
                    $posted = strtotime($element->item(0)->nodeValue);
                    $posted = date('Y-m-d H:i:s', $posted);
                    echo "posted: $posted\n";
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
                }
            }

            foreach($this->results as $result) {
                echo "find_post_st(" . $this->source_id . ", " . $this->author_id . ", " . $result->key . ")\n";
                $this->find_post_for_source_author_st->execute(array($this->source_id, $this->author_id, $result->key));
                $post = $this->find_post_for_source_author_st->fetch(PDO::FETCH_ASSOC);
                if($post == FALSE) {
                    echo "Creating post.\n";
                    $this->new_posts += 1;
                    $this->create_post_st->execute(array(
                        $this->source_id, $this->author_id,
                        $result->key, $result->topic, $result->posted,
                        $result->link, $result->content
                    ));
                }
                else {
                    echo "Post exists.\n";
                }
            }
        }

        return $this->results;
    }
}

?>

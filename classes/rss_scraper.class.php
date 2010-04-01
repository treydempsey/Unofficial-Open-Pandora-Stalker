<?php

require_once 'simple_html_dom.php';
require_once 'rss_scraper_result.class.php';

class RssScraper
{
    public $current_url, $xml, $rss_results;

    public function __construct()
    {
        $this->rss_results = array();
        date_default_timezone_set('GMT');
    }

    public function __destruct()
    {
        unset($this->rss_results);
        unset($this->xml);
    }

    public function scrape()
    {
        echo "Scraping " . $this->current_url . "\n";

        $this->xml = file_get_html($this->current_url);
        if($this->xml) {
            $items = $this->xml->find('item');
            if(count($items) > 1) {
                foreach($items as $item) {
                    echo "Found item\n";
                    $element = $item->find('title');
                    if(count($element) == 1) {
                        $topic = $element[0]->innertext;
                        echo "topic: $topic\n";
                    }

                    $element = $item->find('link');
                    if(count($element) == 1) {
                        $link = $element[0]->innertext;
                        echo "link: $link\n";
                    }

                    $element = $item->find('guid');
                    if(count($element) == 1) {
                        $key = $element[0]->innertext;
                        echo "key: $key\n";
                    }

                    $element = $item->find('description');
                    if(count($element) == 1) {
                        $content = $element[0]->innertext;
                        $content = preg_replace('/<!\[CDATA\[(.*?)\]\]>/', '\1', $content, -1);
                        echo "content: $content\n";
                    }

                    $element = $item->find('pubDate');
                    if(count($element) == 1) {
                        $posted = strtotime($element[0]->innertext);
                        $posted = date('Y-m-d', $posted);
                        echo "posted: $posted\n";
                    }

                    if(isset($topic) && isset($key) && isset($link) && isset($posted) && isset($content)) {
                        array_push($this->rss_results, new RssScraperResult(array(
                            'topic' => $topic,
                            'key' => $key,
                            'link' => $link,
                            'posted' => $posted,
                            'content' => $content
                        )));
                    }
                }
            }
        }
    }

    public function author_id($mid)
    {
        ; // Do nothing
    }
}

?>

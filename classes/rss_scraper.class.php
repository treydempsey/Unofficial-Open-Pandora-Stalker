<?php

require_once 'simple_html_dom.php';

class RssScraper
{
    public $current_url, $xml, $rss_entries;

    public function __construct()
    {
        $this->rss_entries = array();
        $this->current_url = 'http://www.open-pandora.org/index.php?option=com_content&view=category&layout=blog&id=2&Itemid=2&lang=en&format=feed&type=rss';
        $this->xml = new DOMDocument();
    }

    public function __destruct()
    {
        unset($this->rss_entries);
        unset($this->xml);
    }

    public function scrape()
    {
        echo "Scraping " . $this->current_url . "\n";

        if($this->xml->load($this->current_url)) {
            $items = $this->xml->find('item');
            if(count($items) > 1) {
                foreach($items as $item) {
                    $element = $item->find('title');
                    if(count($element) == 1) {
                        $topic = $element[0]->innertext;
                    }

                    $element = $item->find('link');
                    if(count($element) == 1) {
                        $link = $element[0]->innertext;
                    }

                    $element = $item->find('guid');
                    if(count($element) == 1) {
                        $key = $element[0]->innertext;
                    }

                    $element = $item->find('description');
                    if(count($element) == 1) {
                        $content = $element[0]->innertext;
                    }

                    $element = $item->find('posted');
                    if(count($element) == 1) {
                        $posted = strtotime($element[0]->innertext);
                    }

                    if(isset($topic) && isset($key) && isset($link) && isset($posted) && isset($content)) {
                        array_push($this->rss_entries, new RssScraperEntry(array(
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

<?php

require_once 'simple_html_dom.php';
require_once 'gp2x_scraper_result.class.php';

class Gp2xScraper
{
    public $current_url, $results, $search_base;

    public function __construct()
    {
        $this->results = array();
        $this->search_base = 'http://www.gp32x.com/board/index.php?app=core&module=search&do=user_posts&mid=';
    }

    public function __destruct()
    {
        unset($this->results);
    }

    public function scrape()
    {
        echo "Scraping " . $this->current_url . "\n";
        $html = file_get_html($this->current_url);

        # Each post is identified by a table row with a class of 'row1'
        foreach($html->find('tr.row1') as $row) {
            # The thread name is contained within a link with the title 'View result'
            $element = $row->find("a[title='View result']");
            if(count($element) == 1) {
                $topic = $element[0]->innertext;
            }

            # An excerpt of the post is contained within a div with a class of 'message'
            $element = $row->find('div.message');
            if(count($element) == 1) {
                # The post link is contained within the div in a link with an image with a alt attribute of 'View Post'
                $child_element = $element[0]->find("img[alt='View Post']");
                if(count($child_element) == 1) {
                    $link = $child_element[0]->parent->href;
                    if(preg_match('/p__([0-9]+)/', $link, $m)) {
                        $key = $m[1];
                    }
                }
            }

            array_push($this->results, new Gp2xScraperResult(array(
                'topic' => $topic,
                'key' => $key,
                'link' => $link
            )));
        }
    }

    public function author_id($mid)
    {
        $this->current_url = $this->search_base . $mid;
    }
}

?>

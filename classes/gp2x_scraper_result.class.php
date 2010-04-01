<?php

require_once 'simple_html_dom.php';

class Gp2xScraperResult
{
    public $topic, $key, $link, $posted, $content;

    protected $html;
    protected $enriched = FALSE;

    public function __construct($args)
    {
        foreach($args as $arg => $value) {
            $this->$arg = $value;
        }
    }

    public function enrich()
    {
        $page_fetches = 0;
        while($this->enriched == FALSE && isset($this->link) && $page_fetches < 5) {
            $this->scrape_page();
            $this->enriched = isset($this->topic) && isset($this->key) && isset($this->link) && isset($this->posted) && isset($this->content);
        }
        unset($this->html);

        return $this->enriched;
    }

    protected function scrape_page()
    {
        echo "Enriching from " . $this->link . "\n";
        $this->html = file_get_html($this->link);

        $post = $this->html->find("div#post_id_" . $this->key);
        if(count($post) == 1) {
            $published = $post[0]->find("abbr.published");
            if(count($published) == 1) {
                if(preg_match("/^([0-9]{4}-[0-9]{2}-[0-9]{2})T([0-9]{2}:[0-9]{2}:[0-9]{2})/", $published[0]->title, $m)) {
                    $this->posted = $m[1] . " " . $m[2];
                }
            }

            $content = $post[0]->find(".post");
            if(count($content) == 1) {
                $this->content = preg_replace("/<!--.*?-->/", "", trim($content[0]->innertext), -1);
            }
        }
        else {
            // Post isn't on the current page, try a previous page
            $previous_page = $this->html->find("a[title='Previous Page']");
            if(count($previous_page) > 0) {
                $this->link = $previous_page[0]->href;
            }
            else {
                // No previous page link
                unset($this->link);
            }
        }
    }
}

?>

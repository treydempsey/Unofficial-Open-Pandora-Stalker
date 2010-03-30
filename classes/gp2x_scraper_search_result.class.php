<?php

require_once 'simple_html_dom.php';

class Gp2xScraperSearchResult
{
    public $topic, $key, $link, $posted, $content;

    public function __construct($args)
    {
        $this->topic = $args['topic'];
        $this->key = $args['key'];
        $this->link = $args['link'];
    }

    public function enrich()
    {
        $html = file_get_html($this->link);
        $post = $html->find("div#post_id_" . $this->key);
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

        return isset($this->topic) && isset($this->key) && isset($this->link) && isset($this->posted) && isset($this->content);
    }
}

?>

<?php

require_once 'simple_html_dom.php';

class RssScraperEntry
{
    public $topic, $key, $link, $posted, $content;

    public function __construct($args = array())
    {
        foreach($args as $arg => $value) {
            $this->$arg = $value;
        }
    }

    public function enrich()
    {
        // Nothing to do to enrich an entry
        return TRUE;
    }
}

?>

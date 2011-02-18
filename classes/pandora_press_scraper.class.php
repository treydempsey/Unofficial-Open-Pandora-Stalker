<?php

require_once('rss_scraper.class.php');

class PandoraPress extends RssScraper
{
    public function __construct($args = array())
    {
        parent::__construct($args);
        $this->current_url = 'http://pandorapress.net/feed/';
        $result = $this->db->query("SELECT id AS author_id FROM authors where name = 'pandorapress'");
        if($result) {
            $authors = $result->fetch(PDO::FETCH_ASSOC);
            $this->author_id = $authors['author_id'];
        }
    }
}

?>

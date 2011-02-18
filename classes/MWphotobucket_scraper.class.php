<?php
require_once('rss_scraper.class.php');

class MWPhotobucket extends RssScraper
{
    public function __construct($args = array())
    {
        parent::__construct($args);
        $this->current_url = 'http://feed198.photobucket.com/albums/aa99/MWeston_2007/feed.rss';
        $result = $this->db->query("SELECT id AS author_id FROM authors where name = 'Michael Weston'");
        if($result) {
            $authors = $result->fetch(PDO::FETCH_ASSOC);
            $this->author_id = $authors['author_id'];
        }
    }
}
?>
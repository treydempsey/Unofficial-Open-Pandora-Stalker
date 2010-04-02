<?php

require_once('rss_scraper.class.php');

class DevBlogScraper extends RssScraper
{
    public function __construct($args = array())
    {
        parent::__construct($args);
        $this->current_url = 'http://www.open-pandora.org/index.php?option=com_content&view=category&layout=blog&id=2&Itemid=2&lang=en&format=feed&type=rss';
        $result = $this->db->query("SELECT id AS author_id FROM authors where name = 'Evil Dragon'");
        if($result) {
            $authors = $result->fetch(PDO::FETCH_ASSOC);
            $this->author_id = $authors['author_id'];
        }
    }
}

?>

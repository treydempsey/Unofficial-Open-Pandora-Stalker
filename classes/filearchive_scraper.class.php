<?php

class FileArchive extends RssScraper
{
    public function __construct($args = array())
    {
        parent::__construct($args);
        $this->current_url = 'http://dl.openhandhelds.org/pandora/rss20.php';
        $result = $this->db->query("SELECT id AS author_id FROM authors where name = 'File Archive'");
        if($result) {
            
            $authors = $result->fetch(PDO::FETCH_ASSOC);
            $this->author_id = $authors['author_id'];
            
        }
    }
}
?>
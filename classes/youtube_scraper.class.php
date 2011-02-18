<?php

require_once('rss_scraper.class.php');

class YouTubeScraper extends RssScraper
{
    public function scrape()
    {
        $this->find_authors_for_source_st->execute(array($this->source_id));
        $authors = $this->find_authors_for_source_st->fetchAll(PDO::FETCH_ASSOC);
        if($authors) {
            foreach($authors as $author) {
                $this->author_id = $author['author_id'];
                $this->find_property_for_source_author_st->execute(array($this->source_id, $this->author_id, 'author_key'));
                $author_key = $this->find_property_for_source_author_st->fetch(PDO::FETCH_ASSOC);
                if($author_key) {
                    $this->current_url = $author_key['value'];
                    parent::scrape();
                }
            }
        }
    }
}

?>

<?php

require_once('rss_scraper.class.php');

class DevBlogScraper extends RssScraper
{
    public function __construct()
    {
        parent::__construct();
        $this->current_url = 'http://www.open-pandora.org/index.php?option=com_content&view=category&layout=blog&id=2&Itemid=2&lang=en&format=feed&type=rss';
    }
}

?>

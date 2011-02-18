<?php

require_once 'web_page.class.php';

class OPBoardsScraperResult
{
    public $topic, $key, $link, $posted, $content;

    protected $web_page_class;
    protected $page;
    protected $html;
    protected $enriched = FALSE;

    public function __construct($args)
    {
        foreach($args as $arg => $value) {
            $this->$arg = $value;
        }
    }
//really this is just a dummy class to satisfy the method.
    public function enrich()
    {
        return true;
    }


}

?>

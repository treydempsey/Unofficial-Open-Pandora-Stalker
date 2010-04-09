<?php
require_once 'simple_html_dom.php';

/* This class wraps fetching web pages and parsing the dom. */
class HtmlDomWebPage
{
    public $url;
    public $dom;

    public function __construct($args = array())
    {
        foreach($args as $key => $value) {
            $this->$key = $value;
        }

        $this->dom = new simple_html_dom();
    }

    public function __destruct()
    {
        unset($this->dom);
    }

    public function load_file()
    {
        $this->dom->load_file($this->url);
        return $this->dom;
    }
}

?>

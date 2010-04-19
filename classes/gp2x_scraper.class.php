<?php

require_once('web_page.class.php');
require_once('gp2x_scraper_result.class.php');
require_once('stalker_sql_queries.class.php');

class Gp2xScraper
{
    public $db, $find_authors_for_source_st, $find_post_for_source_author_st, $find_property_for_source_author_st, $create_post_st;
    public $source_id, $current_url, $results, $search_base;
    public $new_posts = 0;
    public $scrape_failures = 0;

    public function __construct($args = array())
    {
        $this->web_page_class =  new WebPage;
        $this->search_base = 'http://www.gp32x.com/board/index.php?app=core&module=search&do=user_posts&mid=';

        foreach($args as $arg => $value) {
            $this->$arg = $value;
        }

        $this->find_authors_for_source_st = $this->db->prepare(StalkerSqlQueries::$find_authors_for_source_sql);
        $this->find_post_for_source_author_st = $this->db->prepare(StalkerSqlQueries::$find_post_for_source_author_sql);
        $this->find_property_for_source_author_st = $this->db->prepare(StalkerSqlQueries::$find_property_for_source_author_sql);
        $this->create_post_st = $this->db->prepare(StalkerSqlQueries::$create_post_sql);
    }

    public function __destruct()
    {
        unset($this->results);
    }

    public function scrape()
    {
        $this->find_authors_for_source_st->execute(array($this->source_id));
        $authors = $this->find_authors_for_source_st->fetchAll(PDO::FETCH_ASSOC);
        if($authors) {
            foreach($authors as $author) {
                unset($this->results);
                $this->results = array();

                $this->find_property_for_source_author_st->execute(array($this->source_id, $author['author_id'], 'author_key'));
                $author_key = $this->find_property_for_source_author_st->fetch(PDO::FETCH_ASSOC);
                if($author_key) {
                    $this->current_url = $this->search_base . $author_key['value'];
                    //if(VERBOSE)
                    echo "&nbsp;&nbsp;Scraping " . $author_key['value'] . "<br />\n";
                    flush2();
                    $page = new $this->web_page_class(array('url' => $this->current_url));
                    $html = $page->load_file();

                    # Each post is identified by a table row with a class of 'row1'
                    foreach($html->find('tr.row1') as $row) {
                        # The thread name is contained within a link with the title 'View result'
                        $element = $row->find("a[title='View result']");
                        if(count($element) == 1) {
                            $topic = $element[0]->innertext;
                        }

                        # An excerpt of the post is contained within a div with a class of 'message'
                        $element = $row->find('div.message');
                        if(count($element) == 1) {
                            # The post link is contained within the div in a link with an image with a alt attribute of 'View Post'
                            $child_element = $element[0]->find("img[alt='View Post']");
                            if(count($child_element) == 1) {
                                $link = $child_element[0]->parent->href;
                                if(preg_match('/p__([0-9]+)/', $link, $m)) {
                                    $key = $m[1];
                                }
                            }
                            
                            $exerpt = (string)$element[0]->innertext;
                            $exerpt = preg_replace('/<div\s*><a href=\"http:\/\/www\.gp32x[^>]+><img[^>]+><\/a><\/div>/i', '', $exerpt);
                            $exerpt = preg_replace('/(\'\s)+/i', '\'', $exerpt);
                            $exerpt = preg_replace('/(&#39;)+/i', '&#39;', $exerpt);
                            
                        }

                        if(isset($topic) && isset($key) && isset($link)) {
                            array_push($this->results, new Gp2xScraperResult(array(
                                'web_page_class' => $this->web_page_class,
                                'topic' => $topic,
                                'key' => $key,
                                'link' => $link
                            )));
                        }else{
                            echo 'Fail _'.isset($topic).'_'.isset($key).'_'.isset($link)."<br />\n";
                        }
                    }
                    $html->clear();
                }

                # Lookup each search result in the db, enrich and save if it doesn't exist
                foreach($this->results as $result) {
                    //echo $result->key."<br /> \n";
                    
                    if(VERBOSE)
                    echo "find_post_st(" . $author['source_id'] . ", " . $result->key . ")\n";
                    $this->find_post_for_source_author_st->execute(array($author['source_id'], $author['author_id'],$result->content, $result->key, $result->key));
                    $post = $this->find_post_for_source_author_st->fetch(PDO::FETCH_ASSOC);
                    if($post == FALSE) {
                        # Fetch more data about the post
                        if($result->enrich()) {
                            //if(VERBOSE)
                            echo "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Creating post ".md5($result->topic.$result->content). "!<br />\n";
                            $this->new_posts += 1;
                            $this->create_post_st->execute(array(
                                $author['source_id'], $author['author_id'],
                                $result->key, $result->topic, $result->posted,
                                $result->link, $result->content, md5($result->content.$result->topic)
                            ));
                            /*echo "_";
                            print_r($this->create_post_st->errorCode());*/
                        }
                        else {
                          $this->scrape_failures += 1;
                          echo "ERROR: Could not fetch post, reverting to exerpt on find all posts page. <br />\n";
                          echo "\t" . $result->link . "\n";
                          
                            $this->create_post_st->execute(array(
                                $author['source_id'], $author['author_id'],
                                $result->key, $topic, date("Y-m-d H:i:sP"),//be like the IPB time stamp
                                $link, $exerpt, md5($exerpt.$result->topic)
                            ));
                        }
                    }
                    else {
                        if(VERBOSE)
                        echo "Post exists.\n";
                    }
                    
                }
                
            }
        }
    }
}

?>

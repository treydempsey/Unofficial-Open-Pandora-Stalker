<?php

require_once 'simple_html_dom.php';
require_once 'gp2x_scraper_result.class.php';
require_once 'stalker_sql_queries.class.php';

class Gp2xScraper
{
    public $db, $find_authors_for_source_st, $find_post_for_source_author_st, $find_property_for_source_author_st, $create_post_st;
    public $source_id, $current_url, $results, $search_base;
    public $new_posts = 0;
    public $scrape_failures = 0;

    public function __construct($args = array())
    {
        foreach($args as $arg => $value) {
            $this->$arg = $value;
        }

        $this->find_authors_for_source_st = $this->db->prepare(StalkerSqlQueries::$find_authors_for_source_sql);
        $this->find_post_for_source_author_st = $this->db->prepare(StalkerSqlQueries::$find_post_for_source_author_sql);
        $this->find_property_for_source_author_st = $this->db->prepare(StalkerSqlQueries::$find_property_for_source_author_sql);
        $this->create_post_st = $this->db->prepare(StalkerSqlQueries::$create_post_sql);
        $this->search_base = 'http://www.gp32x.com/board/index.php?app=core&module=search&do=user_posts&mid=';
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

                    echo "Scraping " . $this->current_url . "\n";
                    $html = file_get_html($this->current_url);

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
                        }

                        if(isset($topic) && isset($key) && isset($link)) {
                            array_push($this->results, new Gp2xScraperResult(array(
                                'topic' => $topic,
                                'key' => $key,
                                'link' => $link
                            )));
                        }
                    }
                }

                # Lookup each search result in the db, enrich and save if it doesn't exist
                foreach($this->results as $result) {
                    echo "find_post_st(" . $author['source_id'] . ", " . $result->key . ")\n";
                    $this->find_post_for_source_author_st->execute(array($author['source_id'], $author['author_id'], $result->key));
                    $post = $this->find_post_for_source_author_st->fetch(PDO::FETCH_ASSOC);
                    if($post == FALSE) {
                        # Fetch more data about the post
                        if($result->enrich()) {
                            echo "Creating post\n";
                            $this->new_posts += 1;
                            $this->create_post_st->execute(array(
                                $author['source_id'], $author['author_id'],
                                $result->key, $result->topic, $result->posted,
                                $result->link, $result->content
                            ));
                        }
                        else {
                          $this->scrape_failures += 1;
                          echo "ERROR: Could not fetch post\n";
                          echo "\t" . $result->link . "\n";
                        }
                    }
                    else {
                        echo "Post exists.\n";
                    }
                }
            }
        }
    }
}

?>

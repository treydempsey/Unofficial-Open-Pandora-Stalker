<?php

require_once('web_page.class.php');
require_once('OPBoards_scraper_result.class.php');
require_once('stalker_sql_queries.class.php');

class OPBoardsScraper
{
    public $db, $find_authors_for_source_st, $find_post_for_source_author_st, $find_property_for_source_author_st, $create_post_st;
    public $source_id, $current_url, $results, $search_base;
    public $new_posts = 0;
    public $scrape_failures = 0;

    public function __construct($args = array())
    {
        $this->web_page_class =  new WebPage;
        $this->search_base = 'http://boards.openpandora.org/index.php?app=core&module=search&do=user_activity&search_app=&userMode=content&mid=';

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
                    $thePosts = array();
                    # Each post is identified by a table row with a class of 'row1'
                    $count = 0;
                    foreach($html->find('div.maintitle') as $row) {
                        
                        $tempish =  $row->last_child();
                        //echo strip_tags($tempish->outertext)."<br />\n";
                        $thePosts[$count]['topic'] = strip_tags($tempish->outertext);
                        $count++;
                    }
                    $count = 0;
                    //we need key, link, date posted,content,hash of content and title
                    foreach($html->find('div.post_block') as $row) {
                        $published = $row->find("abbr.published");
                        if(preg_match("/^([0-9]{4}-[0-9]{2}-[0-9]{2})T([0-9]{2}:[0-9]{2}:[0-9]{2})/", $published[0]->title, $m)) {
                            $thePosts[$count]['posted'] = $m[1] . " " . $m[2];
                        }
                        //now for link and key
                        $keyish = $row->find("span.post_id");
                        $childofKey = $keyish[0]->first_child();
                        $thePosts[$count]['link'] = $childofKey->href;
                        $thePosts[$count]['key'] = str_replace("#", '', strip_tags($childofKey->outertext));
                        //finally, the content.
                        $post = $row->find("div.post");
                        $thePosts[$count]['content'] = preg_replace("/<!--.*?-->/", "", trim($post[0]->innertext), -1);
                        $count++;
                    }
                    
                    foreach($thePosts as $postRow){
                        extract($postRow);
                        if(isset($topic) && isset($key) && isset($link)) {
                            array_push($this->results, new OPBoardsScraperResult(array(
                                'web_page_class' => $this->web_page_class,
                                'topic' => $topic,
                                'key' => $key,
                                'link' => $link,
                                'content' => $content,
                                'posted' => $posted
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
                            //print_r($result);
                            /*echo "_";
                            print_r($this->create_post_st->errorCode());*/
                        }
                        else {
                          $this->scrape_failures += 1;
                          echo "ERROR: Could not fetch post, reverting to exerpt on find all posts page. <br />\n";
                          echo "\t" . $result->link . "\n";
                          /*
                            $this->create_post_st->execute(array(
                                $author['source_id'], $author['author_id'],
                                $result->key, $topic, date("Y-m-d H:i:sP"),//be like the IPB time stamp
                                $link, $exerpt, md5($exerpt.$result->topic)
                            ));
                          */
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

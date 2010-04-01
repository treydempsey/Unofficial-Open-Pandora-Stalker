<?php

set_include_path('classes');

require_once 'gp2x_scraper.class.php';
require_once 'gp2x_scraper_search_result.class.php';
require_once 'stalker_rss.class.php';
require_once 'stalker_sql_queries.class.php';

$db = new PDO('sqlite:db.sqlite3');
$new_posts = 0;
$enrich_failures = 0;

$sources_st = $db->prepare(StalkerSqlQueries::$find_sources_sql);
$authors_st = $db->prepare(StalkerSqlQueries::$find_authors_for_source_sql);
$find_post_st = $db->prepare(StalkerSqlQueries::$find_post_sql);
$create_post_st = $db->prepare(StalkerSqlQueries::$create_post_sql);

$sources_st->execute();
$sources = $sources_st->fetchAll(PDO::FETCH_ASSOC);
if(count($sources) > 0) {
    foreach($sources as $source) {
        $scraper_class_name = $source['scraper'];

        $authors_st->execute(array($source['source_id']));
        $authors = $authors_st->fetchAll(PDO::FETCH_ASSOC);
        if($authors) {
            foreach($authors as $author) {
                $scraper = new $scraper_class_name;
                $scraper->author_id($author['mid']);
                $scraper->scrape();

                foreach($scraper->search_results as $search_result) {
                    echo "find_post_st(" . $author['source_id'] . ", " . $search_result->key . ")\n";
                    $find_post_st->execute(array($author['source_id'], $author['author_id'], $search_result->key));
                    $post = $find_post_st->fetch(PDO::FETCH_ASSOC);
                    if($post == FALSE) {
                        # Fetch more data about the post
                        if($search_result->enrich()) {
                            echo "Creating post\n";
                            $new_posts += 1;
                            $create_post_st->execute(array(
                                $author['source_id'], $author['author_id'],
                                $search_result->key, $search_result->topic, $search_result->posted,
                                $search_result->link, $search_result->content
                            ));
                        }
                        else {
                          $enrich_failures += 1;
                          echo "ERROR: Could not fetch post\n";
                          echo "\t" . $post->link . "\n";
                        }
                    }
                    else {
                        echo "Post exists.\n";
                    }
                }
                unset($scraper);
            }
        }
    }
}

echo "\n";
echo "Post Enrichment Failures: $enrich_failures\n";
echo "New Posts: $new_posts\n";

if($new_posts > 0) {
    echo "Writing to feed.rss\n";
    $rss = new StalkerRss($db);
    $rss->generate();
    $feed_rss = fopen('feed.rss', 'w');
    fwrite($feed_rss, $rss->xml());
    fclose($feed_rss);
}

?>

<?php

set_include_path('classes');

require_once 'stalker_sql_queries.class.php';

require_once 'dev_blog_scraper.class.php';
require_once 'gp2x_scraper.class.php';
require_once 'pandora_press_scraper.class.php';
require_once 'twitter_scraper.class.php';
require_once 'youtube_scraper.class.php';

$db = new PDO('sqlite:db.sqlite3');
$new_posts = 0;
$scrape_failures = 0;

$sources_st = $db->prepare(StalkerSqlQueries::$find_sources_sql);

$sources_st->execute();
$sources = $sources_st->fetchAll(PDO::FETCH_ASSOC);
if(count($sources) > 0) {
    foreach($sources as $source) {
        echo "Scraping source " . $source['source'] . "\n";
        $scraper_class_name = $source['scraper'];
        $scraper = new $scraper_class_name(array('db' => $db, 'source_id' => $source['source_id']));
        $scraper->scrape();
        $new_posts += $scraper->$new_posts;
        $scrape_failures += $scraper->$scrape_failures;
    }
}

echo "\n";
echo "Post Enrichment Failures: $scrape_failures\n";
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

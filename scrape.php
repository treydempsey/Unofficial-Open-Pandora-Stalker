<?php
//want verbose? change to true
define("VERBOSE", false);
ini_set("precision", 12);
//Set up included extended classes
{//start including
set_include_path('classes');

require_once('stalker_sql_queries.class.php');
require_once('dev_blog_scraper.class.php');
require_once('gp2x_scraper.class.php');
require_once('pandora_press_scraper.class.php');
require_once('twitter_scraper.class.php');
require_once('youtube_scraper.class.php');
require_once('MWphotobucket_scraper.class.php');
require_once('filearchive_scraper.class.php');
//end including
}
function flush2(){
    echo(str_repeat(' ',256));
    // check that buffer is actually set before flushing
    if (ob_get_length()){           
        @ob_flush();
        @flush();
        @ob_end_flush();
    }   
    @ob_start();
}

$db = new PDO('mysql:host=localhost;dbname=pandora',
    'pandora',
    'pandora1sAw3some' );
$new_posts = 0;
$scrape_failures = 0;

$sources_st = $db->prepare(StalkerSqlQueries::$find_sources_sql);

$sources_st->execute();
$sources = $sources_st->fetchAll(PDO::FETCH_ASSOC);

if(count($sources) > 0) {
    foreach($sources as $source) {
        //if($source['source'] == 'Twitter'){
            
        
        echo 'Scraping source ' . $source['source'] . "<br />\n";
        flush2();

        
            
            $scraper_class_name = $source['scraper'];
            $scraper = new $scraper_class_name(array('db' => $db, 'source_id' => $source['source_id']));
            $scraper->scrape();
            if(isset($scraper->$new_posts))
                $new_posts += $scraper->$new_posts;
            if(isset($scraper->$scrape_failures))
                $scrape_failures += $scraper->$scrape_failures;
        
        //echo round(memory_get_usage()/1048576,3)."MB used<br />\n";
        flush2();
        unset($scraper);
       // }

    }
}



echo "\n";
echo 'Post Enrichment Failures: '.$scrape_failures."\n";
echo 'New Posts: '.$new_posts."\n";


if($new_posts > -1) {
    require_once('stalker_rss.class.php');
    echo 'Generating feed... '."<br />\n";
    $rss = new StalkerRss($db);
    $rss->generate();
    echo 'Writing to feed.rss'."\n";
    file_put_contents("feed.rss",$rss->xml());
    /*//commented below are crappy stream functions.
    $feed_rss = fopen('feed.rss', 'w');
    fwrite($feed_rss, $rss->xml());
    fclose($feed_rss);*/
}
unset($scrape_failures,$new_posts,$sources);
unset($db);
echo round(memory_get_usage()/1048576,3)."MB used<br />\n";


?>

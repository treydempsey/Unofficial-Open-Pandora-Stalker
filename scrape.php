<?php

set_include_path('classes');

require_once 'classes/db.class.php';
require_once 'classes/db_user.class.php';
require_once 'classes/db_post.class.php';
require_once 'classes/db_feed.class.php';
require_once 'classes/db_source.class.php';
require_once 'classes/db_feed_source.class.php';
require_once 'classes/db_user_source.class.php';

require_once 'gp2x_scraper.class.php';
require_once 'gp2x_scraper_search_result.class.php';

$connection = new PDO('sqlite:db.sqlite3');

// GP2X Forum
$scraper = new Gp2xScraper();

$find_users_for_source_sql = "
    SELECT sources.id AS source_id,
        users.id AS user_id,
        users.name,
        user_sources.*
    FROM sources
    INNER JOIN user_sources ON sources.id = user_sources.source_id
    INNER JOIN users ON user_sources.user_id = users.id
    WHERE sources.source = 'Pandora Forum'
";

$find_post_sql = "
    SELECT source_id, user_id, topic, posted, link, content
    FROM posts
    INNER JOIN sources ON posts.source_id = ?
    WHERE post_key = ?
";
$find_post_st = $connection->prepare($find_post_sql);

$create_post_sql = "
    INSERT INTO posts (source_id, user_id, post_key, topic, posted, link, content)
    VALUES(?, ?, ?, ?, ?, ?, ?)
";
$create_post_st = $connection->prepare($create_post_sql);


foreach($connection->query($find_users_for_source_sql) as $user) {
    $scraper->mid($user['mid']);
    $scraper->scrape();
    print_r($scraper->search_results) . "\n";


    foreach($scraper->search_results as $search_result) {
        echo "find_post_st(" . $user['source_id'] . ", " . $search_result->key . ")\n";
        $find_post_st->execute(array($user['source_id'], $search_result->key));
        $post = $find_post_st->fetch(PDO::FETCH_ASSOC);
        if($post == FALSE) {
            # Fetch more data about the post
            echo "Enriching the post\n";
            if($search_result->enrich()) {
                echo "Creating post\n";
                $create_post_st->execute(array($user['source_id'], $user['user_id'],
                    $search_result->key, $search_result->topic, $search_result->posted,
                    $search_result->link, $search_result->content));
            }
        }
        else {
            echo "Post exists:\n";
            print_r($post) . "\n";
        }
    }
}

?>

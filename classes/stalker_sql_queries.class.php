<?php

class StalkerSqlQueries
{
    public static $find_sources_sql = "
        SELECT sources.id AS source_id,
            sources.source,
            value AS scraper
        FROM sources
        INNER JOIN source_properties ON sources.id = source_properties.source_id
        WHERE author_id = -1
        ORDER BY sources.source
    ";

    public static $find_authors_for_source_sql = "
        SELECT sources.id AS source_id,
            sources.source,
            authors.id AS author_id,
            authors.name,
            value AS mid
        FROM sources
        INNER JOIN authors ON source_properties.author_id = authors.id
        INNER JOIN source_properties ON sources.id = source_properties.source_id
            AND authors.id = source_properties.author_id
        WHERE sources.source = 'GP2X'
            AND key = 'mid'
            AND sources.id = ?
    ";

    public static $find_post_sql = "
        SELECT source_id, author_id, topic, posted, link, content
        FROM posts
        INNER JOIN sources ON posts.source_id = ?
        WHERE author_id = ? AND key = ?
    ";

    public static $create_post_sql = "
        INSERT INTO posts (source_id, author_id, key, topic, posted, link, content)
        VALUES(?, ?, ?, ?, ?, ?, ?)
    ";

    public static $find_feeds_sql = "
        SELECT feed_id, feeds.title, feeds.link, feeds.description, feeds.image_url,
            feeds.image_title, feeds.image_link, feeds.language, source_id, source
        FROM feed_sources
        INNER JOIN feeds ON feed_sources.feed_id = feeds.id
        INNER JOIN sources ON feed_sources.source_id = sources.id
        ORDER BY feeds.title, sources.source
    ";

    public static $find_posts_sql = "
        SELECT authors.name AS author, posts.topic, posts.posted, posts.link, posts.content
        FROM posts
        INNER JOIN sources ON posts.source_id = sources.id
        INNER JOIN authors ON posts.author_id = authors.id
        WHERE sources.id = ?
        ORDER BY posts.posted DESC
    ";
}

?>

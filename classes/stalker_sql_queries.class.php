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
        SELECT DISTINCT sources.id AS source_id,
            sources.source,
            authors.id AS author_id,
            authors.name
        FROM sources
        INNER JOIN source_properties ON sources.id = source_properties.source_id
        INNER JOIN authors ON source_properties.author_id = authors.id
        WHERE sources.id = ?
    ";

    public static $find_property_for_source_author_sql = "
        SELECT sources.id AS source_id,
            sources.source,
            authors.id AS author_id,
            authors.name,
            key AS property,
            value
        FROM source_properties
        INNER JOIN sources ON source_properties.source_id = sources.id
        INNER JOIN authors ON source_properties.author_id = authors.id
        WHERE sources.id = ?
            AND authors.id = ?
            AND source_properties.key = ?
    ";

    public static $find_post_for_source_author_sql = "
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
        SELECT feeds.id AS feed_id, feeds.title, feeds.link, feeds.description, feeds.image_url,
            feeds.image_title, feeds.image_link, feeds.language
        FROM feeds
        ORDER BY feeds.title
    ";

    public static $find_posts_for_feed_sql = "
        SELECT posts.source_id, sources.source, authors.name AS author, posts.topic, posts.posted, posts.link, posts.content
        FROM posts
        INNER JOIN sources ON posts.source_id = sources.id
        INNER JOIN feed_sources ON posts.source_id = feed_sources.source_id
        INNER JOIN authors ON posts.author_id = authors.id
        WHERE feed_sources.feed_id = ?
        ORDER BY posts.posted DESC
    ";
}

?>

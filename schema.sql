-- Schema --
CREATE TABLE feeds(id INTEGER PRIMARY KEY AUTOINCREMENT, title VARCHAR(50), link VARCHAR(500), description VARCHAR(500), language VARCHAR(10),
    image_url VARCHAR(500), image_link VARCHAR(500));

CREATE TABLE feed_sources(id INTEGER PRIMARY KEY AUTOINCREMENT, source_id INTEGER NOT NULL, feed_id INTEGER NOT NULL);
CREATE INDEX feed_sources_idx ON feed_sources (source_id, feed_id);

CREATE TABLE sources(id INTEGER PRIMARY KEY AUTOINCREMENT, source VARCHAR(50));
CREATE INDEX sources_source_idx ON sources (source);

CREATE TABLE authors(id INTEGER PRIMARY KEY AUTOINCREMENT, name VARCHAR(100));
CREATE INDEX authors_name_idx ON authors (name);

CREATE TABLE source_properties(id INTEGER PRIMARY KEY AUTOINCREMENT, source_id INTEGER NOT NULL, author_id INTEGER NOT NULL, key VARCHAR(50), value VARCHAR(1000));
CREATE INDEX source_properties_idx ON source_properties (source_id, author_id, key);
CREATE INDEX source_properties_author_id_idx ON source_properties (author_id);
CREATE INDEX source_properties_source_id_idx ON source_properties (source_id);

CREATE TABLE posts(id INTEGER PRIMARY KEY AUTOINCREMENT, source_id INTEGER NOT NULL, author_id INTEGER NOT NULL, key VARCHAR(500), topic VARCHAR(100), posted DATE, link VARCHAR(500), content VARCHAR(2000));
CREATE INDEX posts_source_id_idx ON posts (source_id);
CREATE INDEX posts_author_id_idx ON posts (author_id);
CREATE INDEX posts_posted_idx ON posts (posted);

-- Initial Data --
INSERT INTO sources (source) VALUES('GP2X');
INSERT INTO source_properties (author_id, source_id, key, value) VALUES(-1, 1, 'scraper', 'Gp2xScraper');

INSERT INTO authors (name) VALUES('mfk');
INSERT INTO authors (name) VALUES('Evil Dragon');
INSERT INTO authors (name) VALUES('craigix');
INSERT INTO authors (name) VALUES('Michael Weston');
INSERT INTO source_properties (author_id, source_id, key, value) VALUES(1, 1, 'author_key', '6611');
INSERT INTO source_properties (author_id, source_id, key, value) VALUES(2, 1, 'author_key', '205');
INSERT INTO source_properties (author_id, source_id, key, value) VALUES(3, 1, 'author_key', '116');
INSERT INTO source_properties (author_id, source_id, key, value) VALUES(4, 1, 'author_key', '9395');

INSERT INTO sources (source) VALUES('Dev Blog');
INSERT INTO source_properties (author_id, source_id, key, value) VALUES(-1, 2, 'scraper', 'DevBlogScraper');
INSERT INTO source_properties (author_id, source_id, key, value) VALUES(2, 2, 'author_key', '205');

INSERT INTO sources (source) VALUES('Twitter');
INSERT INTO source_properties (author_id, source_id, key, value) VALUES(-1, 3, 'scraper', 'TwitterScraper');
INSERT INTO source_properties (author_id, source_id, key, value) VALUES(3, 3, 'author_key', 'statuses/user_timeline/19534812.rss');
INSERT INTO source_properties (author_id, source_id, key, value) VALUES(2, 3, 'author_key', 'statuses/user_timeline/108433145.rss');

INSERT INTO sources (source) VALUES('Youtube');
INSERT INTO source_properties (author_id, source_id, key, value) VALUES(-1, 4, 'scraper', 'YoutubeScraper');
INSERT INTO source_properties (author_id, source_id, key, value) VALUES(2, 4, 'author_key', 'http://gdata.youtube.com/feeds/base/users/EvilDragon1717/uploads?alt=rss&amp;v=2&amp;orderby=published&amp;client=ytapi-youtube-profile');

INSERT INTO feeds (title, link, description, language, image_url, image_link)
    VALUES(
        'uOPS',
        'http://www.open-pandora.org/',
        'The Unofficial Open Pandora Stalker',
        'en',
        'http://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Feed-icon.svg/200px-Feed-icon.svg.png',
        'http://www.open-pandora.org/'
    );
INSERT INTO feed_sources (source_id, feed_id) VALUES(1, 1);

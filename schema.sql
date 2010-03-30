CREATE TABLE users(id INTEGER PRIMARY KEY AUTOINCREMENT, name VARCHAR(100));
CREATE INDEX users_name_idx ON users (name);

CREATE TABLE sources(id INTEGER PRIMARY KEY AUTOINCREMENT, source VARCHAR(50));
CREATE INDEX sources_source_idx ON sources (source);

CREATE TABLE user_sources(id INTEGER PRIMARY KEY AUTOINCREMENT, user_id INTEGER NOT NULL, source_id INTEGER NOT NULL, key VARCHAR(50), value VARCHAR(1000));
CREATE INDEX user_sources_idx ON user_sources (user_id, source_id, key);
CREATE INDEX user_sources_user_id_idx ON user_sources (user_id);
CREATE INDEX user_sources_source_id_idx ON user_sources (source_id);

CREATE TABLE posts(id INTEGER PRIMARY KEY AUTOINCREMENT, source_id INTEGER NOT NULL, user_id INTEGER NOT NULL, post_key VARCHAR(50), topic VARCHAR(100), posted DATE, link VARCHAR(500), content VARCHAR(2000));
CREATE INDEX posts_source_id_idx ON posts (source_id);
CREATE INDEX posts_user_id_idx ON posts (user_id);
CREATE INDEX posts_posted_idx ON posts (posted);

CREATE TABLE feeds(id INTEGER PRIMARY KEY AUTOINCREMENT, feed VARCHAR(50));

CREATE TABLE feed_sources(id INTEGER PRIMARY KEY AUTOINCREMENT, source_id INTEGER NOT NULL, feed_id INTEGER NOT NULL);
CREATE INDEX feed_sources_idx ON feed_sources (source_id, feed_id);

INSERT INTO sources (source) VALUES('Pandora Forum');
INSERT INTO users (name) VALUES('mfk');
INSERT INTO user_sources (user_id, source_id, key, value) VALUES(1, 1, 'mid', '6611');

INSERT INTO feeds (feed) VALUES('default');
INSERT INTO feed_sources (source_id, feed_id) VALUES(1, 1);

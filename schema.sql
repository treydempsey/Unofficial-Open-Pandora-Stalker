-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 19, 2010 at 04:27 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pandora`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'mfk'),
(2, 'Evil Dragon'),
(3, 'craigix'),
(4, 'Michael Weston'),
(5, 'pandorapress'),
(6, 'File Archive');

-- --------------------------------------------------------

--
-- Table structure for table `feeds`
--

CREATE TABLE IF NOT EXISTS `feeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `feeds`
--

INSERT INTO `feeds` (`id`, `title`, `link`, `description`, `language`, `image_url`, `image_link`) VALUES
(1, 'Unofficial OP Stalker', 'http://www.open-pandora.org/', 'The Unofficial Open Pandora Stalker', 'en', 'http://pandorawiki.org/skins/common/images/wiki.png', 'http://www.open-pandora.org/');

-- --------------------------------------------------------

--
-- Table structure for table `feed_sources`
--

CREATE TABLE IF NOT EXISTS `feed_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) NOT NULL,
  `feed_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `feed_sources`
--

INSERT INTO `feed_sources` (`id`, `source_id`, `feed_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `key` text COLLATE utf8_unicode_ci NOT NULL,
  `topic` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `posted` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `hashv` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1530 ;

--
-- Dumping data for table `posts`
--

--This part is taken out as the scraper will automatically fill it in.
-- --------------------------------------------------------

--
-- Table structure for table `sources`
--

CREATE TABLE IF NOT EXISTS `sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `sources`
--

INSERT INTO `sources` (`id`, `source`) VALUES
(1, 'GP2X'),
(2, 'Dev Blog'),
(3, 'Twitter'),
(4, 'Youtube'),
(5, 'Unofficial Blog'),
(6, 'Photobucket'),
(7, 'OP File Archive'),
(8, 'German Forum(Transated)');

-- --------------------------------------------------------

--
-- Table structure for table `source_properties`
--

CREATE TABLE IF NOT EXISTS `source_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `source_properties`
--

INSERT INTO `source_properties` (`id`, `source_id`, `author_id`, `key`, `value`) VALUES
(1, 1, -1, 'scraper', 'Gp2xScraper'),
(2, 1, 1, 'author_key', '6611'),
(3, 1, 2, 'author_key', '205'),
(4, 1, 3, 'author_key', '116'),
(5, 1, 4, 'author_key', '9395'),
(6, 2, -1, 'scraper', 'DevBlogScraper'),
(7, 2, 2, 'author_key', '205'),
(8, 3, -1, 'scraper', 'TwitterScraper'),
(9, 3, 3, 'author_key', 'statuses/user_timeline/19534812.rss'),
(10, 3, 2, 'author_key', 'statuses/user_timeline/108433145.rss'),
(11, 4, -1, 'scraper', 'YoutubeScraper'),
(12, 4, 2, 'author_key', 'http://gdata.youtube.com/feeds/base/users/EvilDragon1717/uploads?alt=rss&amp;v=2&amp;orderby=published&amp;client=ytapi-youtube-profile'),
(13, 5, -1, 'scraper', 'PandoraPress'),
(14, 6, -1, 'scraper', 'MWPhotobucket'),
(15, 3, 1, 'author_key', 'statuses/user_timeline/116770959.rss'),
(16, 7, -1, 'scraper', 'FileArchive'),
(17, 8, -1, 'scraper', 'GermanForums');

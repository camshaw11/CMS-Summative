-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 07, 2018 at 07:45 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-06-05 14:53:46', '2018-06-05 14:53:46', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'whatsup', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'cameronshaw95@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=23&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:72:\"C:\\wamp\\www\\wordpress/wp-content/themes/html5blank-stable/pagination.php\";i:2;s:66:\"C:\\wamp\\www\\wordpress/wp-content/themes/html5blank-stable/page.php\";i:3;s:68:\"C:\\wamp\\www\\wordpress/wp-content/themes/html5blank-stable/footer.php\";i:4;s:69:\"C:\\wamp\\www\\wordpress/wp-content/themes/html5blank-stable/sidebar.php\";i:5;s:67:\"C:\\wamp\\www\\wordpress/wp-content/themes/html5blank-stable/style.css\";}', 'no'),
(40, 'template', 'whatsup-cms', 'yes'),
(41, 'stylesheet', 'whatsup-cms', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"import-html-pages/html-import.php\";s:26:\"html_import_remove_options\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '23', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(143, '_transient_timeout_plugin_slugs', '1528303332', 'no'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:5:{i:1528300426;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1528303198;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1528340026;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1528383238;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1528210464;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(125, 'can_compress_scripts', '1', 'no'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1528298349;s:15:\"version_checked\";s:5:\"4.9.6\";s:12:\"translations\";a:0:{}}', 'no'),
(122, '_site_transient_timeout_browser_37852581c9557110c7bab064af517413', '1528815239', 'no'),
(211, '_site_transient_timeout_theme_roots', '1528300149', 'no'),
(212, '_site_transient_theme_roots', 'a:7:{s:16:\"cameron-shaw-cms\";s:7:\"/themes\";s:15:\"formative-theme\";s:7:\"/themes\";s:17:\"html5blank-stable\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:11:\"whatsup-cms\";s:7:\"/themes\";}', 'no'),
(120, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1528298350;s:7:\"checked\";a:7:{s:16:\"cameron-shaw-cms\";s:5:\"1.0.0\";s:15:\"formative-theme\";s:3:\"1.5\";s:17:\"html5blank-stable\";s:0:\"\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";s:11:\"whatsup-cms\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(156, 'theme_mods_formative-theme', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1528215567;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(123, '_site_transient_browser_37852581c9557110c7bab064af517413', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"66.0.3359.181\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(142, 'theme_mods_whatsup-cms', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:14;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1528217371;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(138, 'current_theme', '', 'yes'),
(139, 'theme_mods_cameron-shaw-cms', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1528216210;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(144, '_transient_plugin_slugs', 'a:4:{i:0;s:19:\"akismet/akismet.php\";i:1;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:2;s:9:\"hello.php\";i:3;s:33:\"import-html-pages/html-import.php\";}', 'no'),
(145, 'recently_activated', 'a:1:{s:33:\"import-html-pages/html-import.php\";i:1528216923;}', 'yes'),
(151, 'html_import', 'a:44:{s:14:\"root_directory\";s:42:\"C:/Users/cam/Desktop/CMS-Summative/whatsup\";s:7:\"old_url\";s:0:\"\";s:10:\"index_file\";s:10:\"index.html\";s:15:\"file_extensions\";s:14:\"html,htm,shtml\";s:8:\"skipdirs\";s:25:\"images,includes,Templates\";s:14:\"import_content\";s:3:\"tag\";s:11:\"content_tag\";s:3:\"div\";s:14:\"content_tagatt\";s:2:\"id\";s:14:\"content_attval\";s:7:\"content\";s:14:\"content_region\";s:0:\"\";s:14:\"document_mimes\";s:84:\"rtf,doc,docx,xls,xlsx,csv,ppt,pps,pptx,ppsx,pdf,zip,wmv,avi,flv,mov,mpeg,mp3,m4a,wav\";s:9:\"meta_desc\";i:1;s:6:\"encode\";i:1;s:10:\"allow_tags\";s:99:\"<p><br><img><a><ul><ol><li><dl><dt><dd><blockquote><cite><em><i><strong><b><h2><h3><h4><h5><h6><hr>\";s:16:\"allow_attributes\";s:18:\"href,alt,title,src\";s:12:\"import_title\";s:3:\"tag\";s:9:\"title_tag\";s:5:\"title\";s:12:\"title_tagatt\";s:0:\"\";s:12:\"title_attval\";s:0:\"\";s:12:\"title_region\";s:0:\"\";s:17:\"remove_from_title\";s:0:\"\";s:4:\"type\";s:4:\"page\";s:6:\"status\";s:7:\"publish\";s:9:\"timestamp\";s:9:\"filemtime\";s:4:\"user\";i:1;s:13:\"page_template\";s:1:\"0\";s:8:\"date_tag\";s:3:\"div\";s:11:\"date_tagatt\";s:2:\"id\";s:11:\"date_attval\";s:4:\"date\";s:11:\"date_region\";s:0:\"\";s:16:\"customfield_name\";a:1:{i:0;s:0:\"\";}s:15:\"customfield_tag\";a:1:{i:0;s:3:\"div\";}s:18:\"customfield_tagatt\";a:1:{i:0;s:5:\"class\";}s:18:\"customfield_attval\";a:1:{i:0;s:10:\"fieldclass\";}s:18:\"customfield_region\";a:1:{i:0;s:0:\"\";}s:8:\"post_tag\";s:0:\"\";s:11:\"post_format\";s:0:\"\";s:11:\"index_files\";s:0:\"\";s:12:\"import_field\";a:1:{i:0;N;}s:16:\"customfield_html\";a:1:{i:0;N;}s:11:\"root_parent\";i:0;s:10:\"clean_html\";i:0;s:12:\"title_inside\";i:0;s:8:\"firstrun\";b:0;}', 'no'),
(214, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1528298352;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"6.69\";s:9:\"hello.php\";s:3:\"1.7\";s:33:\"import-html-pages/html-import.php\";s:3:\"2.6\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"6.69\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.6.69.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=1268186\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=1268186\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=1876524\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=1876524\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"import-html-pages/html-import.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/import-html-pages\";s:4:\"slug\";s:17:\"import-html-pages\";s:6:\"plugin\";s:33:\"import-html-pages/html-import.php\";s:11:\"new_version\";s:3:\"2.6\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/import-html-pages/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/import-html-pages.2.6.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:61:\"https://s.w.org/plugins/geopattern-icon/import-html-pages.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(167, 'ai1wm_secret_key', 'abUBqcE5Q4Mb', 'yes'),
(171, 'theme_mods_html5blank-stable', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1528289194;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"widget-area-1\";a:0:{}s:13:\"widget-area-2\";a:0:{}}}}', 'yes'),
(201, 'ai1wm_status', 'a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:206:\"<a href=\"http://localhost/wordpress/wp-content/ai1wm-backups/localhost-wordpress-20180605-173201-704.wpress\" class=\"ai1wm-button-green ai1wm-emphasize\"><span>Download localhost</span><em>Size: 5 MB</em></a>\";}', 'yes'),
(204, 'ai1wm_updater', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_wp_trash_meta_status', 'publish'),
(4, 1, '_wp_trash_meta_time', '1528211486'),
(5, 1, '_wp_desired_post_slug', 'hello-world'),
(6, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(7, 3, '_wp_trash_meta_status', 'draft'),
(8, 3, '_wp_trash_meta_time', '1528211494'),
(9, 3, '_wp_desired_post_slug', 'privacy-policy'),
(10, 2, '_wp_trash_meta_status', 'publish'),
(11, 2, '_wp_trash_meta_time', '1528211502'),
(12, 2, '_wp_desired_post_slug', 'sample-page'),
(13, 8, 'URL_before_HTML_Import', 'C:/Users/cam/Desktop/CMS-Summative/whatsup/about.html'),
(14, 9, 'URL_before_HTML_Import', 'C:/Users/cam/Desktop/CMS-Summative/whatsup/index.html'),
(15, 10, 'URL_before_HTML_Import', 'C:/Users/cam/Desktop/CMS-Summative/whatsup/online-chat.html'),
(16, 11, 'URL_before_HTML_Import', 'C:/Users/cam/Desktop/CMS-Summative/whatsup/phone.html'),
(17, 12, 'URL_before_HTML_Import', 'C:/Users/cam/Desktop/CMS-Summative/whatsup/stories.html'),
(18, 10, '_edit_lock', '1528212570:1'),
(19, 13, '_wp_trash_meta_status', 'publish'),
(20, 13, '_wp_trash_meta_time', '1528212528'),
(21, 10, '_edit_last', '1'),
(22, 17, '_wp_trash_meta_status', 'publish'),
(23, 17, '_wp_trash_meta_time', '1528212693'),
(24, 10, '_wp_trash_meta_status', 'publish'),
(25, 10, '_wp_trash_meta_time', '1528215536'),
(26, 10, '_wp_desired_post_slug', 'online-chat'),
(27, 11, '_wp_trash_meta_status', 'publish'),
(28, 11, '_wp_trash_meta_time', '1528215544'),
(29, 11, '_wp_desired_post_slug', 'phone'),
(30, 12, '_wp_trash_meta_status', 'publish'),
(31, 12, '_wp_trash_meta_time', '1528215547'),
(32, 12, '_wp_desired_post_slug', 'success-stories'),
(33, 8, '_wp_trash_meta_status', 'publish'),
(34, 8, '_wp_trash_meta_time', '1528215550'),
(35, 8, '_wp_desired_post_slug', 'whats-it-all-about'),
(36, 9, '_wp_trash_meta_status', 'publish'),
(37, 9, '_wp_trash_meta_time', '1528215552'),
(38, 9, '_wp_desired_post_slug', 'whatsup'),
(39, 23, '_edit_last', '1'),
(40, 23, '_edit_lock', '1528290922:1'),
(41, 23, '_wp_page_template', 'default'),
(42, 27, '_edit_last', '1'),
(43, 27, '_edit_lock', '1528289072:1'),
(44, 29, '_edit_last', '1'),
(45, 29, '_edit_lock', '1528289081:1'),
(46, 31, '_edit_last', '1'),
(47, 31, '_edit_lock', '1528289097:1'),
(48, 33, '_wp_attached_file', '2018/06/flames.jpg'),
(49, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:899;s:6:\"height\";i:557;s:4:\"file\";s:18:\"2018/06/flames.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"flames-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"flames-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"flames-768x476.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:476;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-06-05 14:53:46', '2018-06-05 14:53:46', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-06-05 15:11:26', '2018-06-05 15:11:26', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-06-05 14:53:46', '2018-06-05 14:53:46', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-06-05 15:11:42', '2018-06-05 15:11:42', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-06-05 14:53:46', '2018-06-05 14:53:46', '<h2>Who we are</h2><p>Our website address is: http://localhost/wordpress.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2018-06-05 15:11:34', '2018-06-05 15:11:34', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-06-05 14:54:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-06-05 14:54:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2018-06-05 15:11:26', '2018-06-05 15:11:26', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-06-05 15:11:26', '2018-06-05 15:11:26', '', 1, 'http://localhost/wordpress/2018/06/05/1-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-06-05 15:11:34', '2018-06-05 15:11:34', '<h2>Who we are</h2><p>Our website address is: http://localhost/wordpress.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-06-05 15:11:34', '2018-06-05 15:11:34', '', 3, 'http://localhost/wordpress/2018/06/05/3-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-06-05 15:11:42', '2018-06-05 15:11:42', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-06-05 15:11:42', '2018-06-05 15:11:42', '', 2, 'http://localhost/wordpress/2018/06/05/2-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-06-05 14:11:04', '2018-06-05 14:11:04', '<body>&#13;\n&#13;\n  <div class=\"grid grid-about\">&#13;\n    <i id=\"hamburger\" class=\"fas fa-bars\"/>&#13;\n      <div class=\"module-phone\">&#13;\n&#13;\n        <h1 class=\"header\"> Who are the What\'s Up Counsellors? </h1>&#13;\n        <h1 class=\"blurb\"> When you call or chat online with us you will be talking to one of our What’s Up Counsellors – they are really great at listening and always interested to hear what is going on for you.&#13;\n        You can ask to speak with a guy or girl counsellor, and if you have spoken with a counsellor before you can even ask to speak to the same person if you want to! Our counsellors work all different times and days, so when you talk to them just ask them when they are on next so you know the best time to get in touch. &#13;\n        Even though you don’t have to tell us your name, our counsellors will always tell you theirs, and if they are not available when you call you can find out when they will be just by asking.&#13;\n&#13;\n         Who can call and chat online? &#13;\n         0800 What’s Up is for young New Zealanders aged between 5 and 18.  If you don’t fit into this group there are still lots of services available to help you with all sorts of things. Check out https://www.familyservices.govt.nz/directory/ &#13;\n&#13;\n         Does it cost any money to call, text or chat online?&#13;\n         It’s free to get in touch with us any way you like – even through a mobile phone. &#13;\n        And you don’t even need to have credit to do it!  If you are stuck somewhere and don’t have a mobile phone you can also call on any landline, or from any phone booth </h1>&#13;\n        &#13;\n      </div>&#13;\n      <aside class=\"sidebar-left\"/><aside class=\"sidebar-right\"/></div>&#13;\n&#13;\n<div id=\"mySidenav\" class=\"sidenav\">&#13;\n  <a href=\"#\" id=\"closebtn\">×</a>&#13;\n  <a id=\"home\" href=\"index.html\">Home</a>&#13;\n  <a href=\"index.html\">Lets Chat</a>&#13;\n  <a href=\"about.html\">About</a>&#13;\n  <a href=\"stories.html\">Stories</a>&#13;\n</div>&#13;\n&#13;\n&#13;\n<script type=\"text/javascript\" src=\"js/script.js\"/></body>', 'What\'s it all about?', '', 'trash', 'closed', 'closed', '', 'whats-it-all-about__trashed', '', '', '2018-06-05 16:19:10', '2018-06-05 16:19:10', '', 0, 'http://localhost/wordpress/whats-it-all-about/', 0, 'page', '', 0),
(9, 1, '2018-06-03 16:05:52', '2018-06-03 16:05:52', '<body>&#13;\n&#13;\n<div class=\"grid\">&#13;\n&#13;\n  <a href=\"phone.html\">&#13;\n    <div class=\"module module-one\">&#13;\n    	<h1 class=\"title\"> Phone </h1>&#13;\n    	<i class=\"fas fa-phone\"/>&#13;\n    </div>&#13;\n  </a>&#13;\n&#13;\n  <i id=\"hamburger\" class=\"fas fa-bars\"/>&#13;\n&#13;\n  <a href=\"online-chat.html\">&#13;\n    <div class=\"module module-two\">&#13;\n    	<h1 class=\"title\"> Online Chat </h1>&#13;\n    	<i class=\"fas fa-comment\"/>&#13;\n    </div>&#13;\n  </a>&#13;\n&#13;\n  <a href=\"about.html\">&#13;\n    <div class=\"module module-three\">&#13;\n    	<h1 class=\"title\"> What\'s it all about? </h1>&#13;\n    	<i class=\"fas fa-question-circle\"/>&#13;\n    </div>&#13;\n  </a>&#13;\n<a href=\"stories.html\">&#13;\n  <div class=\"module module-four\">&#13;\n  	<h1 class=\"title\"> Success stories </h1>&#13;\n  	<i class=\"fas fa-check-circle\"/>&#13;\n  </div>&#13;\n</a>&#13;\n&#13;\n</div>&#13;\n&#13;\n<div id=\"mySidenav\" class=\"sidenav\">&#13;\n  <a href=\"#\" id=\"closebtn\">×</a>&#13;\n  <a id=\"home\" href=\"index.html\">Home</a>&#13;\n  <a href=\"index.html\">Lets Chat</a>&#13;\n  <a href=\"about.html\">About</a>&#13;\n  <a href=\"stories.html\">Stories</a>&#13;\n</div>&#13;\n&#13;\n&#13;\n<script type=\"text/javascript\" src=\"js/script.js\"/></body>', 'Whatsup', '', 'trash', 'closed', 'closed', '', 'whatsup__trashed', '', '', '2018-06-05 16:19:12', '2018-06-05 16:19:12', '', 0, 'http://localhost/wordpress/whatsup/', 0, 'page', '', 0),
(10, 1, '2018-06-03 16:05:52', '2018-06-03 16:05:52', '&nbsp;\r\n<div class=\"grid grid-chat\">\r\n<i id=\"hamburger\" class=\"fas fa-bars\"></i>\r\n<div class=\"module-chat\">\r\n\r\n&nbsp;\r\n<h1 class=\"header\">Chat online to a Counsellor!</h1>\r\n&nbsp;\r\n<h1 class=\"blurb\">You can call or chat online about whatever’s on your mind – no problem is too big or too small – and if you just want to have a chat and a laugh, we’re here to listen. If it’s someone elses problem, that’s cool – we can talk about that too. Whatever you want to say, you don’t need to worrry about being judged or getting into trouble.\r\n\r\nBecause a lot of young people use online chat, there is often a wait time before a counsellor is available. So if you need to talk to someone straight away, phone What’s Up on 0800 942 8787 and speak with a counsellor in person.</h1>\r\n&nbsp;\r\n\r\n</div>\r\n&nbsp;\r\n\r\n<aside class=\"sidebar-left\"></aside><aside class=\"sidebar-right\"></aside></div>\r\n&nbsp;\r\n<div id=\"mySidenav\" class=\"sidenav\">\r\n<a id=\"closebtn\" href=\"#\">×</a>\r\n<a id=\"home\" href=\"index.html\">Home</a>\r\n<a href=\"index.html\">Lets Chat</a>\r\n<a href=\"about.html\">About</a>\r\n<a href=\"stories.html\">Stories</a></div>\r\n<script src=\"js/script.js\" type=\"text/javascript\"></body></p>\r\n</script>', 'Online Chat', '', 'trash', 'closed', 'closed', '', 'online-chat__trashed', '', '', '2018-06-05 16:18:56', '2018-06-05 16:18:56', '', 0, 'http://localhost/wordpress/online-chat/', 0, 'page', '', 0),
(16, 1, '2018-06-05 15:30:50', '2018-06-05 15:30:50', '&nbsp;\r\n<div class=\"grid grid-chat\">\r\n<i id=\"hamburger\" class=\"fas fa-bars\"></i>\r\n<div class=\"module-chat\">\r\n\r\n&nbsp;\r\n<h1 class=\"header\">Chat online to a Counsellor!</h1>\r\n&nbsp;\r\n<h1 class=\"blurb\">You can call or chat online about whatever’s on your mind – no problem is too big or too small – and if you just want to have a chat and a laugh, we’re here to listen. If it’s someone elses problem, that’s cool – we can talk about that too. Whatever you want to say, you don’t need to worrry about being judged or getting into trouble.\r\n\r\nBecause a lot of young people use online chat, there is often a wait time before a counsellor is available. So if you need to talk to someone straight away, phone What’s Up on 0800 942 8787 and speak with a counsellor in person.</h1>\r\n&nbsp;\r\n\r\n</div>\r\n&nbsp;\r\n\r\n<aside class=\"sidebar-left\"></aside><aside class=\"sidebar-right\"></aside></div>\r\n&nbsp;\r\n<div id=\"mySidenav\" class=\"sidenav\">\r\n<a id=\"closebtn\" href=\"#\">×</a>\r\n<a id=\"home\" href=\"index.html\">Home</a>\r\n<a href=\"index.html\">Lets Chat</a>\r\n<a href=\"about.html\">About</a>\r\n<a href=\"stories.html\">Stories</a></div>\r\n<script src=\"js/script.js\" type=\"text/javascript\"></body></p>\r\n</script>', 'Online Chat', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-06-05 15:30:50', '2018-06-05 15:30:50', '', 10, 'http://localhost/wordpress/2018/06/05/10-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-06-03 16:05:52', '2018-06-03 16:05:52', '<body>&#13;\n&#13;\n  <div class=\"grid grid-phone\">&#13;\n    <i id=\"hamburger\" class=\"fas fa-bars\"/>&#13;\n      <div class=\"module-phone\">&#13;\n        <h1 class=\"header\"> Phone a counsellor! </h1>&#13;\n        <h1 class=\"blurb\"> You can call or chat online about whatever’s on your mind – no problem is too big or too small – and if you just want to have a chat and a laugh, we’re here to listen. If it’s someone elses problem, that’s cool – we can talk about that too. Whatever you want to say, you don’t need to worrry about being judged or getting into trouble.&#13;\n&#13;\n        If your problem is an emergency we’re happy to help, but sometimes you might find you have to wait in a queue – so if you ever need help straight away CALL 111. If you need help calling 111, talk to your mum or dad, or another adult you trust to make the phone call. </h1>&#13;\n      </div>&#13;\n      <aside class=\"sidebar-left\"/><aside class=\"sidebar-right\"/></div>&#13;\n&#13;\n&#13;\n&#13;\n&#13;\n&#13;\n&#13;\n&#13;\n&#13;\n&#13;\n&#13;\n<div id=\"mySidenav\" class=\"sidenav\">&#13;\n  <a href=\"#\" id=\"closebtn\">×</a>&#13;\n  <a id=\"home\" href=\"index.html\">Home</a>&#13;\n  <a href=\"index.html\">Lets Chat</a>&#13;\n  <a href=\"about.html\">About</a>&#13;\n  <a href=\"stories.html\">Stories</a>&#13;\n</div>&#13;\n&#13;\n&#13;\n<script type=\"text/javascript\" src=\"js/script.js\"/></body>', 'Phone', '', 'trash', 'closed', 'closed', '', 'phone__trashed', '', '', '2018-06-05 16:19:04', '2018-06-05 16:19:04', '', 0, 'http://localhost/wordpress/phone/', 0, 'page', '', 0),
(12, 1, '2018-06-03 16:05:52', '2018-06-03 16:05:52', '<body>&#13;\n&#13;\n  <div class=\"grid grid-stories\">&#13;\n    <i id=\"hamburger\" class=\"fas fa-bars\"/>&#13;\n      <div class=\"module-stories\">&#13;\n      </div>&#13;\n      <aside class=\"sidebar-left\"/><aside class=\"sidebar-right\"/></div>&#13;\n&#13;\n&#13;\n<div id=\"mySidenav\" class=\"sidenav\">&#13;\n  <a href=\"#\" id=\"closebtn\">×</a>&#13;\n  <a id=\"home\" href=\"index.html\">Home</a>&#13;\n  <a href=\"index.html\">Lets Chat</a>&#13;\n  <a href=\"about.html\">About</a>&#13;\n  <a href=\"stories.html\">Stories</a>&#13;\n</div>&#13;\n&#13;\n&#13;\n<script type=\"text/javascript\" src=\"js/script.js\"/></body>', 'Success stories', '', 'trash', 'closed', 'closed', '', 'success-stories__trashed', '', '', '2018-06-05 16:19:07', '2018-06-05 16:19:07', '', 0, 'http://localhost/wordpress/success-stories/', 0, 'page', '', 0),
(13, 1, '2018-06-05 15:28:48', '2018-06-05 15:28:48', '{\n    \"custom_css[whatsup-cms]\": {\n        \"value\": \"h1, h2, h3, h4, a {\\n  font-family: \'Jaldi\', sans-serif;\\n  font-weight: 400;\\n  text-decoration: none;\\n}\\n\\n.blurb {\\n  margin-top: 100px;\\n  max-width: 104ch;\\n  font-size: 18px;\\n  color: #333333;\\n  padding: 100px;\\n}\\n\\n.header {\\n  position: absolute;\\n  top: 100px;\\n  left: 100px;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-05 15:28:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2c1e755a-968c-4373-863d-baf3a069463f', '', '', '2018-06-05 15:28:48', '2018-06-05 15:28:48', '', 0, 'http://localhost/wordpress/2018/06/05/2c1e755a-968c-4373-863d-baf3a069463f/', 0, 'customize_changeset', '', 0),
(14, 1, '2018-06-05 15:28:48', '2018-06-05 15:28:48', 'body {\n	background-color: blue;\n}', 'whatsup-cms', '', 'publish', 'closed', 'closed', '', 'whatsup-cms', '', '', '2018-06-05 15:31:33', '2018-06-05 15:31:33', '', 0, 'http://localhost/wordpress/2018/06/05/whatsup-cms/', 0, 'custom_css', '', 0),
(18, 1, '2018-06-05 15:31:33', '2018-06-05 15:31:33', 'body {\n	background-color: blue;\n}', 'whatsup-cms', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-06-05 15:31:33', '2018-06-05 15:31:33', '', 14, 'http://localhost/wordpress/2018/06/05/14-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-06-05 15:28:48', '2018-06-05 15:28:48', 'h1, h2, h3, h4, a {\n  font-family: \'Jaldi\', sans-serif;\n  font-weight: 400;\n  text-decoration: none;\n}\n\n.blurb {\n  margin-top: 100px;\n  max-width: 104ch;\n  font-size: 18px;\n  color: #333333;\n  padding: 100px;\n}\n\n.header {\n  position: absolute;\n  top: 100px;\n  left: 100px;\n}', 'whatsup-cms', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-06-05 15:28:48', '2018-06-05 15:28:48', '', 14, 'http://localhost/wordpress/2018/06/05/14-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-06-05 15:31:33', '2018-06-05 15:31:33', '{\n    \"custom_css[whatsup-cms]\": {\n        \"value\": \"body {\\n\\tbackground-color: blue;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-06-05 15:31:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0fb82170-a156-4e02-bee8-e6bb169dfc3a', '', '', '2018-06-05 15:31:33', '2018-06-05 15:31:33', '', 0, 'http://localhost/wordpress/2018/06/05/0fb82170-a156-4e02-bee8-e6bb169dfc3a/', 0, 'customize_changeset', '', 0),
(19, 1, '2018-06-05 16:19:04', '2018-06-05 16:19:04', '<body>&#13;\n&#13;\n  <div class=\"grid grid-phone\">&#13;\n    <i id=\"hamburger\" class=\"fas fa-bars\"/>&#13;\n      <div class=\"module-phone\">&#13;\n        <h1 class=\"header\"> Phone a counsellor! </h1>&#13;\n        <h1 class=\"blurb\"> You can call or chat online about whatever’s on your mind – no problem is too big or too small – and if you just want to have a chat and a laugh, we’re here to listen. If it’s someone elses problem, that’s cool – we can talk about that too. Whatever you want to say, you don’t need to worrry about being judged or getting into trouble.&#13;\n&#13;\n        If your problem is an emergency we’re happy to help, but sometimes you might find you have to wait in a queue – so if you ever need help straight away CALL 111. If you need help calling 111, talk to your mum or dad, or another adult you trust to make the phone call. </h1>&#13;\n      </div>&#13;\n      <aside class=\"sidebar-left\"/><aside class=\"sidebar-right\"/></div>&#13;\n&#13;\n&#13;\n&#13;\n&#13;\n&#13;\n&#13;\n&#13;\n&#13;\n&#13;\n&#13;\n<div id=\"mySidenav\" class=\"sidenav\">&#13;\n  <a href=\"#\" id=\"closebtn\">×</a>&#13;\n  <a id=\"home\" href=\"index.html\">Home</a>&#13;\n  <a href=\"index.html\">Lets Chat</a>&#13;\n  <a href=\"about.html\">About</a>&#13;\n  <a href=\"stories.html\">Stories</a>&#13;\n</div>&#13;\n&#13;\n&#13;\n<script type=\"text/javascript\" src=\"js/script.js\"/></body>', 'Phone', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-05 16:19:04', '2018-06-05 16:19:04', '', 11, 'http://localhost/wordpress/2018/06/05/11-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-06-05 16:19:07', '2018-06-05 16:19:07', '<body>&#13;\n&#13;\n  <div class=\"grid grid-stories\">&#13;\n    <i id=\"hamburger\" class=\"fas fa-bars\"/>&#13;\n      <div class=\"module-stories\">&#13;\n      </div>&#13;\n      <aside class=\"sidebar-left\"/><aside class=\"sidebar-right\"/></div>&#13;\n&#13;\n&#13;\n<div id=\"mySidenav\" class=\"sidenav\">&#13;\n  <a href=\"#\" id=\"closebtn\">×</a>&#13;\n  <a id=\"home\" href=\"index.html\">Home</a>&#13;\n  <a href=\"index.html\">Lets Chat</a>&#13;\n  <a href=\"about.html\">About</a>&#13;\n  <a href=\"stories.html\">Stories</a>&#13;\n</div>&#13;\n&#13;\n&#13;\n<script type=\"text/javascript\" src=\"js/script.js\"/></body>', 'Success stories', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-06-05 16:19:07', '2018-06-05 16:19:07', '', 12, 'http://localhost/wordpress/2018/06/05/12-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-06-05 16:19:10', '2018-06-05 16:19:10', '<body>&#13;\n&#13;\n  <div class=\"grid grid-about\">&#13;\n    <i id=\"hamburger\" class=\"fas fa-bars\"/>&#13;\n      <div class=\"module-phone\">&#13;\n&#13;\n        <h1 class=\"header\"> Who are the What\'s Up Counsellors? </h1>&#13;\n        <h1 class=\"blurb\"> When you call or chat online with us you will be talking to one of our What’s Up Counsellors – they are really great at listening and always interested to hear what is going on for you.&#13;\n        You can ask to speak with a guy or girl counsellor, and if you have spoken with a counsellor before you can even ask to speak to the same person if you want to! Our counsellors work all different times and days, so when you talk to them just ask them when they are on next so you know the best time to get in touch. &#13;\n        Even though you don’t have to tell us your name, our counsellors will always tell you theirs, and if they are not available when you call you can find out when they will be just by asking.&#13;\n&#13;\n         Who can call and chat online? &#13;\n         0800 What’s Up is for young New Zealanders aged between 5 and 18.  If you don’t fit into this group there are still lots of services available to help you with all sorts of things. Check out https://www.familyservices.govt.nz/directory/ &#13;\n&#13;\n         Does it cost any money to call, text or chat online?&#13;\n         It’s free to get in touch with us any way you like – even through a mobile phone. &#13;\n        And you don’t even need to have credit to do it!  If you are stuck somewhere and don’t have a mobile phone you can also call on any landline, or from any phone booth </h1>&#13;\n        &#13;\n      </div>&#13;\n      <aside class=\"sidebar-left\"/><aside class=\"sidebar-right\"/></div>&#13;\n&#13;\n<div id=\"mySidenav\" class=\"sidenav\">&#13;\n  <a href=\"#\" id=\"closebtn\">×</a>&#13;\n  <a id=\"home\" href=\"index.html\">Home</a>&#13;\n  <a href=\"index.html\">Lets Chat</a>&#13;\n  <a href=\"about.html\">About</a>&#13;\n  <a href=\"stories.html\">Stories</a>&#13;\n</div>&#13;\n&#13;\n&#13;\n<script type=\"text/javascript\" src=\"js/script.js\"/></body>', 'What\'s it all about?', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-06-05 16:19:10', '2018-06-05 16:19:10', '', 8, 'http://localhost/wordpress/2018/06/05/8-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-06-05 16:19:12', '2018-06-05 16:19:12', '<body>&#13;\n&#13;\n<div class=\"grid\">&#13;\n&#13;\n  <a href=\"phone.html\">&#13;\n    <div class=\"module module-one\">&#13;\n    	<h1 class=\"title\"> Phone </h1>&#13;\n    	<i class=\"fas fa-phone\"/>&#13;\n    </div>&#13;\n  </a>&#13;\n&#13;\n  <i id=\"hamburger\" class=\"fas fa-bars\"/>&#13;\n&#13;\n  <a href=\"online-chat.html\">&#13;\n    <div class=\"module module-two\">&#13;\n    	<h1 class=\"title\"> Online Chat </h1>&#13;\n    	<i class=\"fas fa-comment\"/>&#13;\n    </div>&#13;\n  </a>&#13;\n&#13;\n  <a href=\"about.html\">&#13;\n    <div class=\"module module-three\">&#13;\n    	<h1 class=\"title\"> What\'s it all about? </h1>&#13;\n    	<i class=\"fas fa-question-circle\"/>&#13;\n    </div>&#13;\n  </a>&#13;\n<a href=\"stories.html\">&#13;\n  <div class=\"module module-four\">&#13;\n  	<h1 class=\"title\"> Success stories </h1>&#13;\n  	<i class=\"fas fa-check-circle\"/>&#13;\n  </div>&#13;\n</a>&#13;\n&#13;\n</div>&#13;\n&#13;\n<div id=\"mySidenav\" class=\"sidenav\">&#13;\n  <a href=\"#\" id=\"closebtn\">×</a>&#13;\n  <a id=\"home\" href=\"index.html\">Home</a>&#13;\n  <a href=\"index.html\">Lets Chat</a>&#13;\n  <a href=\"about.html\">About</a>&#13;\n  <a href=\"stories.html\">Stories</a>&#13;\n</div>&#13;\n&#13;\n&#13;\n<script type=\"text/javascript\" src=\"js/script.js\"/></body>', 'Whatsup', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-06-05 16:19:12', '2018-06-05 16:19:12', '', 9, 'http://localhost/wordpress/2018/06/05/9-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-06-05 16:40:06', '2018-06-05 16:40:06', '<img src=\"http://localhost/wordpress/wp-content/uploads/2018/06/flames-300x186.jpg\" alt=\"\" width=\"300\" height=\"186\" class=\"alignnone size-medium wp-image-33\" />', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-06-06 13:15:11', '2018-06-06 13:15:11', '', 0, 'http://localhost/wordpress/?page_id=23', 1, 'page', '', 0),
(24, 1, '2018-06-05 16:40:06', '2018-06-05 16:40:06', '', 'Home', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-06-05 16:40:06', '2018-06-05 16:40:06', '', 23, 'http://localhost/wordpress/2018/06/05/23-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-06-05 17:18:40', '2018-06-05 17:18:40', '', 'Home', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-06-05 17:18:40', '2018-06-05 17:18:40', '', 23, 'http://localhost/wordpress/2018/06/05/23-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-06-06 12:46:54', '2018-06-06 12:46:54', '', 'phone', '', 'publish', 'closed', 'closed', '', 'phone', '', '', '2018-06-06 12:46:54', '2018-06-06 12:46:54', '', 0, 'http://localhost/wordpress/?page_id=27', 0, 'page', '', 0),
(28, 1, '2018-06-06 12:46:54', '2018-06-06 12:46:54', '', 'phone', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-06-06 12:46:54', '2018-06-06 12:46:54', '', 27, 'http://localhost/wordpress/2018/06/06/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-06-06 12:47:03', '2018-06-06 12:47:03', '', 'online-chat', '', 'publish', 'closed', 'closed', '', 'online-chat', '', '', '2018-06-06 12:47:03', '2018-06-06 12:47:03', '', 0, 'http://localhost/wordpress/?page_id=29', 0, 'page', '', 0),
(30, 1, '2018-06-06 12:47:03', '2018-06-06 12:47:03', '', 'online-chat', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-06-06 12:47:03', '2018-06-06 12:47:03', '', 29, 'http://localhost/wordpress/2018/06/06/29-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-06-05 17:08:56', '2018-06-05 17:08:56', '<div class=\"grid\">\r\n\r\n  <a href=\"phone.html\">\r\n    <div class=\"module module-one\">\r\n    	<h1 class=\"title\"> Phone </h1>\r\n    	<i class=\"fas fa-phone\"></i>\r\n    </div>\r\n  </a>\r\n\r\n  <i id=\"hamburger\" class=\"fas fa-bars\"></i>\r\n\r\n  <a href=\"online-chat.html\">\r\n    <div class=\"module module-two\">\r\n    	<h1 class=\"title\"> Online Chat </h1>\r\n    	<i class=\"fas fa-comment\"></i>\r\n    </div>\r\n  </a>\r\n\r\n  <a href=\"about.html\">\r\n    <div class=\"module module-three\">\r\n    	<h1 class=\"title\"> What\'s it all about? </h1>\r\n    	<i class=\"fas fa-question-circle\"></i>\r\n    </div>\r\n  </a>\r\n<a href=\"stories.html\">\r\n  <div class=\"module module-four\">\r\n  	<h1 class=\"title\"> Success stories </h1>\r\n  	<i class=\"fas fa-check-circle\"></i>\r\n  </div>\r\n</a>\r\n\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-06-05 17:08:56', '2018-06-05 17:08:56', '', 23, 'http://localhost/wordpress/2018/06/05/23-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-06-06 12:47:15', '2018-06-06 12:47:15', '', 'success stories', '', 'publish', 'closed', 'closed', '', 'success-stories', '', '', '2018-06-06 12:47:15', '2018-06-06 12:47:15', '', 0, 'http://localhost/wordpress/?page_id=31', 0, 'page', '', 0),
(32, 1, '2018-06-06 12:47:15', '2018-06-06 12:47:15', '', 'success stories', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-06-06 12:47:15', '2018-06-06 12:47:15', '', 31, 'http://localhost/wordpress/2018/06/06/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-06-06 13:06:01', '2018-06-06 13:06:01', '', 'flames', '', 'inherit', 'open', 'closed', '', 'flames', '', '', '2018-06-06 13:06:01', '2018-06-06 13:06:01', '', 23, 'http://localhost/wordpress/wp-content/uploads/2018/06/flames.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2018-06-06 13:06:06', '2018-06-06 13:06:06', '<img src=\"http://localhost/wordpress/wp-content/uploads/2018/06/flames-300x186.jpg\" alt=\"\" width=\"300\" height=\"186\" class=\"alignnone size-medium wp-image-33\" />', 'Home', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-06-06 13:06:06', '2018-06-06 13:06:06', '', 23, 'http://localhost/wordpress/2018/06/06/23-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"fa467751ec15496500cf16954d3d1835ffdedeed29f0a47574888c3755c2ef2c\";a:4:{s:10:\"expiration\";i:1528383238;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:5:\"login\";i:1528210438;}s:64:\"d2788231806686464349deaa2e2597cfa6c7081dee3d41f955a67f0b1c85e705\";a:4:{s:10:\"expiration\";i:1528461768;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:5:\"login\";i:1528288968;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(18, 1, 'wp_user-settings-time', '1528298345'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '4');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BYJJo7EyTM48d/f7Yv0hclpJqBs.iQ0', 'root', 'cameronshaw95@gmail.com', '', '2018-06-05 14:53:46', '', 0, 'root');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

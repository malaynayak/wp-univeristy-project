-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2019 at 05:13 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpuniversity`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-08-28 06:17:32', '2019-08-28 06:17:32', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wpuniversity/app', 'yes'),
(2, 'home', 'http://localhost/wpuniversity/app', 'yes'),
(3, 'blogname', 'Amazing University', 'yes'),
(4, 'blogdescription', 'Amazing University', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'wpadmin@localhost.com', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:173:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:11:\"campuses/?$\";s:26:\"index.php?post_type=campus\";s:41:\"campuses/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:36:\"campuses/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:28:\"campuses/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=campus&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"professors/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"professors/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"professors/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"professors/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"professors/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"professors/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"professors/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:31:\"professors/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:39:\"professors/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:46:\"professors/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:35:\"professors/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:27:\"professors/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"professors/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"professors/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"professors/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"professors/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"professors/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"campuses/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"campuses/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"campuses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"campuses/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"campuses/([^/]+)/embed/?$\";s:39:\"index.php?campus=$matches[1]&embed=true\";s:29:\"campuses/([^/]+)/trackback/?$\";s:33:\"index.php?campus=$matches[1]&tb=1\";s:49:\"campuses/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:44:\"campuses/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:37:\"campuses/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&paged=$matches[2]\";s:44:\"campuses/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&cpage=$matches[2]\";s:33:\"campuses/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?campus=$matches[1]&page=$matches[2]\";s:25:\"campuses/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"campuses/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"campuses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"campuses/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=39&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:17:\"acf-5.8.3/acf.php\";i:1;s:25:\"members-2.2.0/members.php\";i:2;s:53:\"regenerate-thumbnails-3.1.0/regenerate-thumbnails.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:69:\"C:\\xampp\\htdocs\\wpuniversity\\app/wp-content/plugins/acf-5.8.3/acf.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'university-theme', 'yes'),
(41, 'stylesheet', 'university-theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
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
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '42', 'yes'),
(84, 'page_on_front', '39', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '139', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:86:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:16:\"restrict_content\";b:1;s:10:\"list_roles\";b:1;s:12:\"create_roles\";b:1;s:12:\"delete_roles\";b:1;s:10:\"edit_roles\";b:1;s:13:\"delete_events\";b:1;s:20:\"delete_others_events\";b:1;s:21:\"delete_private_events\";b:1;s:23:\"delete_published_events\";b:1;s:11:\"edit_events\";b:1;s:18:\"edit_others_events\";b:1;s:19:\"edit_private_events\";b:1;s:21:\"edit_published_events\";b:1;s:14:\"publish_events\";b:1;s:19:\"read_private_events\";b:1;s:10:\"edit_notes\";b:1;s:17:\"edit_others_notes\";b:1;s:13:\"publish_notes\";b:1;s:18:\"read_private_notes\";b:1;s:12:\"delete_notes\";b:1;s:20:\"delete_private_notes\";b:1;s:22:\"delete_published_notes\";b:1;s:19:\"delete_others_notes\";b:1;s:18:\"edit_private_notes\";b:1;s:20:\"edit_published_notes\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:5:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_notes\";b:1;s:10:\"edit_notes\";b:1;s:13:\"publish_notes\";b:1;}}s:13:\"event_planner\";a:2:{s:4:\"name\";s:13:\"Event Planner\";s:12:\"capabilities\";a:11:{s:4:\"read\";b:1;s:11:\"edit_events\";b:1;s:18:\"edit_others_events\";b:1;s:14:\"publish_events\";b:1;s:19:\"read_private_events\";b:1;s:13:\"delete_events\";b:1;s:21:\"delete_private_events\";b:1;s:23:\"delete_published_events\";b:1;s:20:\"delete_others_events\";b:1;s:19:\"edit_private_events\";b:1;s:21:\"edit_published_events\";b:1;}}s:14:\"campus_manager\";a:2:{s:4:\"name\";s:14:\"Campus Manager\";s:12:\"capabilities\";a:11:{s:13:\"delete_events\";b:1;s:20:\"delete_others_events\";b:1;s:21:\"delete_private_events\";b:1;s:23:\"delete_published_events\";b:1;s:11:\"edit_events\";b:1;s:18:\"edit_others_events\";b:1;s:19:\"edit_private_events\";b:1;s:21:\"edit_published_events\";b:1;s:14:\"publish_events\";b:1;s:4:\"read\";b:1;s:19:\"read_private_events\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:7:{i:1567783054;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1567793855;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1567837053;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1567837069;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1567837070;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1567837072;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:1:{s:22:\"4GELYXWzko9E6smS5SQVkD\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BhIjB7LafTfhlqAXwi2ptN8tFN9wPa/\";s:10:\"created_at\";i:1567782384;}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":3:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"last_checked\";i:1567752183;}', 'no'),
(115, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1566974486;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(119, '_site_transient_update_themes', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1567752188;}', 'no'),
(121, 'can_compress_scripts', '1', 'no'),
(124, 'current_theme', 'Fictional University', 'yes'),
(125, 'theme_mods_university-theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:3;s:17:\"footerLocationOne\";i:4;s:17:\"footerLocationTwo\";i:5;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(126, 'theme_switched', '', 'yes'),
(127, 'WPLANG', '', 'yes'),
(128, 'new_admin_email', 'wpadmin@localhost.com', 'yes'),
(133, 'recovery_mode_email_last_sent', '1567782384', 'yes'),
(137, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(160, 'category_children', 'a:0:{}', 'yes'),
(178, 'recently_activated', 'a:0:{}', 'yes'),
(179, 'acf_version', '5.8.3', 'yes'),
(227, '_site_transient_timeout_theme_roots', '1567753402', 'no'),
(228, '_site_transient_theme_roots', 'a:10:{s:12:\"twentyeleven\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:9:\"twentyten\";s:7:\"/themes\";s:14:\"twentythirteen\";s:7:\"/themes\";s:12:\"twentytwelve\";s:7:\"/themes\";s:16:\"university-theme\";s:7:\"/themes\";}', 'no'),
(229, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1567794881', 'no'),
(230, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 7: Failed to connect to wordpress.org port 443: Connection refused</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 7: Failed to connect to planet.wordpress.org port 443: Connection refused</p></div>', 'no'),
(231, '_transient_timeout_plugin_slugs', '1567838833', 'no'),
(232, '_transient_plugin_slugs', 'a:4:{i:0;s:17:\"acf-5.8.3/acf.php\";i:1;s:9:\"hello.php\";i:2;s:25:\"members-2.2.0/members.php\";i:3;s:53:\"regenerate-thumbnails-3.1.0/regenerate-thumbnails.php\";}', 'no'),
(234, '_site_transient_update_plugins', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1567752430;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_edit_lock', '1567755625:1'),
(4, 6, '_edit_lock', '1567153909:1'),
(5, 9, '_edit_lock', '1566991865:1'),
(7, 12, '_edit_lock', '1566991866:1'),
(8, 18, '_edit_lock', '1566992422:1'),
(72, 27, '_menu_item_type', 'custom'),
(73, 27, '_menu_item_menu_item_parent', '0'),
(74, 27, '_menu_item_object_id', '27'),
(75, 27, '_menu_item_object', 'custom'),
(76, 27, '_menu_item_target', ''),
(77, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(78, 27, '_menu_item_xfn', ''),
(79, 27, '_menu_item_url', '//localhost:3000/wpuniversity/app/'),
(81, 28, '_menu_item_type', 'post_type'),
(82, 28, '_menu_item_menu_item_parent', '0'),
(83, 28, '_menu_item_object_id', '6'),
(84, 28, '_menu_item_object', 'page'),
(85, 28, '_menu_item_target', ''),
(86, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(87, 28, '_menu_item_xfn', ''),
(88, 28, '_menu_item_url', ''),
(90, 29, '_menu_item_type', 'post_type'),
(91, 29, '_menu_item_menu_item_parent', '0'),
(92, 29, '_menu_item_object_id', '12'),
(93, 29, '_menu_item_object', 'page'),
(94, 29, '_menu_item_target', ''),
(95, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(96, 29, '_menu_item_xfn', ''),
(97, 29, '_menu_item_url', ''),
(98, 29, '_menu_item_orphaned', '1566994272'),
(99, 30, '_menu_item_type', 'post_type'),
(100, 30, '_menu_item_menu_item_parent', '0'),
(101, 30, '_menu_item_object_id', '9'),
(102, 30, '_menu_item_object', 'page'),
(103, 30, '_menu_item_target', ''),
(104, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(105, 30, '_menu_item_xfn', ''),
(106, 30, '_menu_item_url', ''),
(107, 30, '_menu_item_orphaned', '1566994272'),
(108, 31, '_menu_item_type', 'post_type'),
(109, 31, '_menu_item_menu_item_parent', '0'),
(110, 31, '_menu_item_object_id', '3'),
(111, 31, '_menu_item_object', 'page'),
(112, 31, '_menu_item_target', ''),
(113, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(114, 31, '_menu_item_xfn', ''),
(115, 31, '_menu_item_url', ''),
(117, 32, '_menu_item_type', 'post_type'),
(118, 32, '_menu_item_menu_item_parent', '0'),
(119, 32, '_menu_item_object_id', '18'),
(120, 32, '_menu_item_object', 'page'),
(121, 32, '_menu_item_target', ''),
(122, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(123, 32, '_menu_item_xfn', ''),
(124, 32, '_menu_item_url', ''),
(125, 32, '_menu_item_orphaned', '1566994273'),
(126, 33, '_menu_item_type', 'post_type'),
(127, 33, '_menu_item_menu_item_parent', '0'),
(128, 33, '_menu_item_object_id', '2'),
(129, 33, '_menu_item_object', 'page'),
(130, 33, '_menu_item_target', ''),
(131, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(132, 33, '_menu_item_xfn', ''),
(133, 33, '_menu_item_url', ''),
(134, 33, '_menu_item_orphaned', '1566994274'),
(135, 34, '_menu_item_type', 'post_type'),
(136, 34, '_menu_item_menu_item_parent', '0'),
(137, 34, '_menu_item_object_id', '18'),
(138, 34, '_menu_item_object', 'page'),
(139, 34, '_menu_item_target', ''),
(140, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(141, 34, '_menu_item_xfn', ''),
(142, 34, '_menu_item_url', ''),
(144, 35, '_menu_item_type', 'post_type'),
(145, 35, '_menu_item_menu_item_parent', '0'),
(146, 35, '_menu_item_object_id', '2'),
(147, 35, '_menu_item_object', 'page'),
(148, 35, '_menu_item_target', ''),
(149, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(150, 35, '_menu_item_xfn', ''),
(151, 35, '_menu_item_url', ''),
(153, 36, '_menu_item_type', 'post_type'),
(154, 36, '_menu_item_menu_item_parent', '0'),
(155, 36, '_menu_item_object_id', '6'),
(156, 36, '_menu_item_object', 'page'),
(157, 36, '_menu_item_target', ''),
(158, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(159, 36, '_menu_item_xfn', ''),
(160, 36, '_menu_item_url', ''),
(162, 37, '_menu_item_type', 'post_type'),
(163, 37, '_menu_item_menu_item_parent', '0'),
(164, 37, '_menu_item_object_id', '12'),
(165, 37, '_menu_item_object', 'page'),
(166, 37, '_menu_item_target', ''),
(167, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(168, 37, '_menu_item_xfn', ''),
(169, 37, '_menu_item_url', ''),
(171, 38, '_menu_item_type', 'post_type'),
(172, 38, '_menu_item_menu_item_parent', '0'),
(173, 38, '_menu_item_object_id', '9'),
(174, 38, '_menu_item_object', 'page'),
(175, 38, '_menu_item_target', ''),
(176, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(177, 38, '_menu_item_xfn', ''),
(178, 38, '_menu_item_url', ''),
(180, 39, '_edit_lock', '1567000244:1'),
(182, 42, '_edit_lock', '1567000267:1'),
(183, 1, '_edit_lock', '1567001218:1'),
(190, 46, '_edit_lock', '1567001344:1'),
(193, 48, '_edit_lock', '1567001367:1'),
(198, 52, '_edit_lock', '1567001398:1'),
(201, 54, '_edit_lock', '1567001418:1'),
(204, 56, '_edit_lock', '1567060353:1'),
(216, 59, '_menu_item_type', 'post_type'),
(217, 59, '_menu_item_menu_item_parent', '0'),
(218, 59, '_menu_item_object_id', '42'),
(219, 59, '_menu_item_object', 'page'),
(220, 59, '_menu_item_target', ''),
(221, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(222, 59, '_menu_item_xfn', ''),
(223, 59, '_menu_item_url', ''),
(224, 59, '_menu_item_orphaned', '1567003565'),
(225, 60, '_menu_item_type', 'post_type'),
(226, 60, '_menu_item_menu_item_parent', '0'),
(227, 60, '_menu_item_object_id', '42'),
(228, 60, '_menu_item_object', 'page'),
(229, 60, '_menu_item_target', ''),
(230, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(231, 60, '_menu_item_xfn', ''),
(232, 60, '_menu_item_url', ''),
(233, 60, '_menu_item_orphaned', '1567003571'),
(234, 61, '_menu_item_type', 'post_type'),
(235, 61, '_menu_item_menu_item_parent', '0'),
(236, 61, '_menu_item_object_id', '42'),
(237, 61, '_menu_item_object', 'page'),
(238, 61, '_menu_item_target', ''),
(239, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(240, 61, '_menu_item_xfn', ''),
(241, 61, '_menu_item_url', ''),
(259, 69, '_edit_lock', '1567071517:1'),
(260, 70, '_edit_lock', '1567065666:1'),
(261, 71, '_edit_lock', '1567075387:1'),
(262, 72, '_menu_item_type', 'post_type_archive'),
(263, 72, '_menu_item_menu_item_parent', '0'),
(264, 72, '_menu_item_object_id', '-33'),
(265, 72, '_menu_item_object', 'event'),
(266, 72, '_menu_item_target', ''),
(267, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(268, 72, '_menu_item_xfn', ''),
(269, 72, '_menu_item_url', ''),
(271, 71, '_edit_last', '1'),
(272, 71, 'event-date', '3rd September 2019'),
(273, 74, '_edit_last', '1'),
(274, 74, '_edit_lock', '1567158853:1'),
(275, 71, 'event_date', '20190914'),
(276, 71, '_event_date', 'field_5d6775c2cf124'),
(277, 70, '_edit_last', '1'),
(278, 70, 'event_date', '20190831'),
(279, 70, '_event_date', 'field_5d6775c2cf124'),
(280, 69, '_edit_last', '1'),
(281, 69, 'event_date', '20180927'),
(282, 69, '_event_date', 'field_5d6775c2cf124'),
(285, 78, '_edit_lock', '1567065869:1'),
(286, 78, '_edit_last', '1'),
(287, 78, 'event_date', '20191001'),
(288, 78, '_event_date', 'field_5d6775c2cf124'),
(289, 79, '_edit_lock', '1567065808:1'),
(290, 81, '_edit_lock', '1567066273:1'),
(291, 81, '_edit_last', '1'),
(292, 81, 'event_date', '20190815'),
(293, 81, '_event_date', 'field_5d6775c2cf124'),
(294, 82, '_edit_lock', '1567066349:1'),
(295, 82, '_edit_last', '1'),
(296, 82, 'event_date', '20190302'),
(297, 82, '_event_date', 'field_5d6775c2cf124'),
(298, 83, '_edit_lock', '1567164047:1'),
(299, 84, '_edit_lock', '1567751454:1'),
(300, 85, '_edit_lock', '1567164067:1'),
(301, 87, '_edit_last', '1'),
(302, 87, '_edit_lock', '1567163845:1'),
(303, 92, '_edit_lock', '1567164075:1'),
(304, 71, 'related_programs', 'a:2:{i:0;s:2:\"92\";i:1;s:2:\"93\";}'),
(305, 71, '_related_programs', 'field_5d679d0f7d814'),
(306, 93, '_edit_lock', '1567072094:1'),
(307, 94, '_menu_item_type', 'post_type_archive'),
(308, 94, '_menu_item_menu_item_parent', '0'),
(309, 94, '_menu_item_object_id', '-51'),
(310, 94, '_menu_item_object', 'program'),
(311, 94, '_menu_item_target', ''),
(312, 94, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(313, 94, '_menu_item_xfn', ''),
(314, 94, '_menu_item_url', ''),
(316, 85, '_edit_last', '1'),
(317, 96, '_edit_lock', '1567153702:1'),
(318, 97, '_edit_lock', '1567153561:1'),
(319, 96, '_edit_last', '1'),
(320, 96, 'related_programs', 'a:2:{i:0;s:2:\"84\";i:1;s:2:\"92\";}'),
(321, 96, '_related_programs', 'field_5d679d0f7d814'),
(322, 97, '_edit_last', '1'),
(323, 97, 'related_programs', 'a:3:{i:0;s:2:\"83\";i:1;s:2:\"85\";i:2;s:2:\"92\";}'),
(324, 97, '_related_programs', 'field_5d679d0f7d814'),
(331, 103, '_wp_attached_file', '2019/08/barksalot.jpg'),
(332, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6000;s:6:\"height\";i:4000;s:4:\"file\";s:21:\"2019/08/barksalot.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"barksalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"barksalot-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"barksalot-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"barksalot-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:21:\"barksalot-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:21:\"barksalot-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(333, 96, '_thumbnail_id', '103'),
(334, 104, '_wp_attached_file', '2019/08/meowsalot.jpg'),
(335, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4896;s:6:\"height\";i:3264;s:4:\"file\";s:21:\"2019/08/meowsalot.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"meowsalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"meowsalot-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"meowsalot-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"meowsalot-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:21:\"meowsalot-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:21:\"meowsalot-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(336, 97, '_thumbnail_id', '104'),
(339, 106, '_edit_last', '1'),
(340, 106, '_edit_lock', '1567154239:1'),
(341, 109, '_wp_attached_file', '2019/08/field.jpg'),
(342, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2784;s:6:\"height\";i:1856;s:4:\"file\";s:17:\"2019/08/field.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"field-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"field-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"field-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"field-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:17:\"field-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:17:\"field-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:18:\"field-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(343, 96, 'page_banner_subtitle', 'Tempora laborum fuga voluptatum dolor.'),
(344, 96, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(345, 96, 'page_banner_background_image', '109'),
(346, 96, '_page_banner_background_image', 'field_5d67ba6f03232'),
(347, 97, 'page_banner_subtitle', 'Non ducimus esse, ipsam eligendi'),
(348, 97, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(349, 97, 'page_banner_background_image', ''),
(350, 97, '_page_banner_background_image', 'field_5d67ba6f03232'),
(351, 112, '_wp_attached_file', '2019/08/building.jpg'),
(352, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5707;s:6:\"height\";i:3810;s:4:\"file\";s:20:\"2019/08/building.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"building-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"building-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"building-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"building-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:20:\"building-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:20:\"building-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:21:\"building-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(353, 6, '_thumbnail_id', '112'),
(354, 6, '_edit_last', '1'),
(355, 6, 'page_banner_subtitle', 'Earum corrupti, voluptatum id distinctio ad non cupiditate officiis.'),
(356, 6, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(357, 6, 'page_banner_background_image', '112'),
(358, 6, '_page_banner_background_image', 'field_5d67ba6f03232'),
(359, 7, 'page_banner_subtitle', ''),
(360, 7, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(361, 7, 'page_banner_background_image', ''),
(362, 7, '_page_banner_background_image', 'field_5d67ba6f03232'),
(363, 113, 'page_banner_subtitle', 'Earum corrupti, voluptatum id distinctio ad non cupiditate officiis.'),
(364, 113, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(365, 113, 'page_banner_background_image', ''),
(366, 113, '_page_banner_background_image', 'field_5d67ba6f03232'),
(367, 114, 'page_banner_subtitle', 'Earum corrupti, voluptatum id distinctio ad non cupiditate officiis.'),
(368, 114, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(369, 114, 'page_banner_background_image', '112'),
(370, 114, '_page_banner_background_image', 'field_5d67ba6f03232'),
(371, 115, 'page_banner_subtitle', 'Earum corrupti, voluptatum id distinctio ad non cupiditate officiis.'),
(372, 115, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(373, 115, 'page_banner_background_image', '112'),
(374, 115, '_page_banner_background_image', 'field_5d67ba6f03232'),
(375, 116, 'page_banner_subtitle', 'Earum corrupti, voluptatum id distinctio ad non cupiditate officiis.'),
(376, 116, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(377, 116, 'page_banner_background_image', '112'),
(378, 116, '_page_banner_background_image', 'field_5d67ba6f03232'),
(379, 117, 'page_banner_subtitle', 'Earum corrupti, voluptatum id distinctio ad non cupiditate officiis.'),
(380, 117, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(381, 117, 'page_banner_background_image', '112'),
(382, 117, '_page_banner_background_image', 'field_5d67ba6f03232'),
(383, 118, '_edit_lock', '1567163948:1'),
(384, 118, '_edit_last', '1'),
(385, 118, 'page_banner_subtitle', 'Omnis impedit dolorem cumque quisquam'),
(386, 118, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(387, 118, 'page_banner_background_image', ''),
(388, 118, '_page_banner_background_image', 'field_5d67ba6f03232'),
(389, 119, '_edit_lock', '1567163103:1'),
(390, 119, '_edit_last', '1'),
(391, 119, 'page_banner_subtitle', 'Elit quos vero, et sapiente ex facilis vitae sequi.'),
(392, 119, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(393, 119, 'page_banner_background_image', ''),
(394, 119, '_page_banner_background_image', 'field_5d67ba6f03232'),
(395, 120, '_edit_last', '1'),
(396, 120, '_edit_lock', '1567160187:1'),
(397, 118, 'map_location', 'a:3:{s:7:\"address\";s:0:\"\";s:3:\"lat\";s:19:\"-37.803125503022486\";s:3:\"lng\";s:17:\"144.9076348543167\";}'),
(398, 118, '_map_location', 'field_5d68f349bc3ac'),
(399, 119, 'map_location', 'a:3:{s:7:\"address\";s:0:\"\";s:3:\"lat\";s:18:\"-37.80218030201182\";s:3:\"lng\";s:18:\"144.97158408164978\";}'),
(400, 119, '_map_location', 'field_5d68f349bc3ac'),
(401, 122, '_menu_item_type', 'post_type_archive'),
(402, 122, '_menu_item_menu_item_parent', '0'),
(403, 122, '_menu_item_object_id', '-62'),
(404, 122, '_menu_item_object', 'campus'),
(405, 122, '_menu_item_target', ''),
(406, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(407, 122, '_menu_item_xfn', ''),
(408, 122, '_menu_item_url', ''),
(409, 122, '_menu_item_orphaned', '1567160841'),
(410, 123, '_menu_item_type', 'post_type_archive'),
(411, 123, '_menu_item_menu_item_parent', '0'),
(412, 123, '_menu_item_object_id', '-62'),
(413, 123, '_menu_item_object', 'campus'),
(414, 123, '_menu_item_target', ''),
(415, 123, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(416, 123, '_menu_item_xfn', ''),
(417, 123, '_menu_item_url', ''),
(419, 124, '_edit_last', '1'),
(420, 124, '_edit_lock', '1567163890:1'),
(421, 83, '_edit_last', '1'),
(422, 83, 'page_banner_subtitle', ''),
(423, 83, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(424, 83, 'page_banner_background_image', ''),
(425, 83, '_page_banner_background_image', 'field_5d67ba6f03232'),
(426, 83, 'realted_campus', 'a:2:{i:0;s:3:\"119\";i:1;s:3:\"118\";}'),
(427, 83, '_realted_campus', 'field_5d69041e0a95c'),
(428, 85, 'page_banner_subtitle', ''),
(429, 85, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(430, 85, 'page_banner_background_image', ''),
(431, 85, '_page_banner_background_image', 'field_5d67ba6f03232'),
(432, 85, 'realted_campus', 'a:1:{i:0;s:3:\"118\";}'),
(433, 85, '_realted_campus', 'field_5d69041e0a95c'),
(434, 83, 'related_campus', 'a:2:{i:0;s:3:\"119\";i:1;s:3:\"118\";}'),
(435, 83, '_related_campus', 'field_5d69041e0a95c'),
(436, 84, '_edit_last', '1'),
(437, 84, 'page_banner_subtitle', ''),
(438, 84, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(439, 84, 'page_banner_background_image', ''),
(440, 84, '_page_banner_background_image', 'field_5d67ba6f03232'),
(441, 84, 'related_campus', 'a:1:{i:0;s:3:\"118\";}'),
(442, 84, '_related_campus', 'field_5d69041e0a95c'),
(443, 85, 'related_campus', 'a:1:{i:0;s:3:\"119\";}'),
(444, 85, '_related_campus', 'field_5d69041e0a95c'),
(445, 92, '_edit_last', '1'),
(446, 92, 'page_banner_subtitle', ''),
(447, 92, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(448, 92, 'page_banner_background_image', ''),
(449, 92, '_page_banner_background_image', 'field_5d67ba6f03232'),
(450, 92, 'related_campus', 'a:2:{i:0;s:3:\"119\";i:1;s:3:\"118\";}'),
(451, 92, '_related_campus', 'field_5d69041e0a95c'),
(452, 126, '_edit_lock', '1567177611:1'),
(455, 126, '_edit_last', '1'),
(456, 126, '_pingme', '1'),
(457, 126, '_encloseme', '1'),
(458, 126, 'page_banner_subtitle', ''),
(459, 126, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(460, 126, 'page_banner_background_image', ''),
(461, 126, '_page_banner_background_image', 'field_5d67ba6f03232'),
(462, 127, 'page_banner_subtitle', ''),
(463, 127, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(464, 127, 'page_banner_background_image', ''),
(465, 127, '_page_banner_background_image', 'field_5d67ba6f03232'),
(466, 129, '_edit_lock', '1567689485:1'),
(467, 129, '_edit_last', '1'),
(468, 129, 'page_banner_subtitle', ''),
(469, 129, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(470, 129, 'page_banner_background_image', ''),
(471, 129, '_page_banner_background_image', 'field_5d67ba6f03232'),
(472, 130, 'page_banner_subtitle', ''),
(473, 130, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(474, 130, 'page_banner_background_image', ''),
(475, 130, '_page_banner_background_image', 'field_5d67ba6f03232'),
(476, 131, '_edit_last', '1'),
(477, 131, '_edit_lock', '1567689625:1'),
(480, 135, '_edit_lock', '1567752818:2'),
(481, 136, '_edit_lock', '1567753374:2'),
(482, 136, '_edit_last', '2'),
(483, 137, '_wp_attached_file', '2019/09/rome.jpg'),
(484, 137, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1079;s:4:\"file\";s:16:\"2019/09/rome.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"rome-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"rome-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"rome-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"rome-1024x575.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:575;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:16:\"rome-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:16:\"rome-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:17:\"rome-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(485, 136, 'event_date', '20191005'),
(486, 136, '_event_date', 'field_5d6775c2cf124'),
(487, 136, 'page_banner_subtitle', 'Math Contest'),
(488, 136, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(489, 136, 'page_banner_background_image', '137'),
(490, 136, '_page_banner_background_image', 'field_5d67ba6f03232'),
(491, 136, 'related_programs', 'a:1:{i:0;s:2:\"83\";}'),
(492, 136, '_related_programs', 'field_5d679d0f7d814'),
(493, 3, '_edit_last', '1'),
(494, 3, 'page_banner_subtitle', ''),
(495, 3, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(496, 3, 'page_banner_background_image', ''),
(497, 3, '_page_banner_background_image', 'field_5d67ba6f03232'),
(498, 138, 'page_banner_subtitle', ''),
(499, 138, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(500, 138, 'page_banner_background_image', ''),
(501, 138, '_page_banner_background_image', 'field_5d67ba6f03232'),
(502, 139, '_edit_lock', '1567755610:1'),
(503, 140, '_edit_lock', '1567780016:1'),
(504, 140, '_edit_last', '1'),
(505, 140, 'page_banner_subtitle', 'Notes'),
(506, 140, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(507, 140, 'page_banner_background_image', '112'),
(508, 140, '_page_banner_background_image', 'field_5d67ba6f03232'),
(509, 141, 'page_banner_subtitle', ''),
(510, 141, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(511, 141, 'page_banner_background_image', ''),
(512, 141, '_page_banner_background_image', 'field_5d67ba6f03232'),
(525, 144, '_edit_lock', '1567769862:1'),
(568, 158, 'page_banner_subtitle', ''),
(569, 158, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(570, 158, 'page_banner_background_image', '112'),
(571, 158, '_page_banner_background_image', 'field_5d67ba6f03232'),
(572, 159, 'page_banner_subtitle', 'Notes'),
(573, 159, '_page_banner_subtitle', 'field_5d67ba5c03231'),
(574, 159, 'page_banner_background_image', '112'),
(575, 159, '_page_banner_background_image', 'field_5d67ba6f03232'),
(610, 164, '_wp_trash_meta_status', 'private'),
(611, 164, '_wp_trash_meta_time', '1567780985'),
(612, 164, '_wp_desired_post_slug', 'malay-math-note-1'),
(613, 164, '_wp_trash_meta_status', 'private'),
(614, 164, '_wp_trash_meta_time', '1567781095'),
(615, 165, '_wp_trash_meta_status', 'private'),
(616, 165, '_wp_trash_meta_time', '1567781303'),
(617, 165, '_wp_desired_post_slug', 'malay-math'),
(618, 166, '_wp_trash_meta_status', 'private'),
(619, 166, '_wp_trash_meta_time', '1567782035'),
(620, 166, '_wp_desired_post_slug', 'asda'),
(621, 167, '_wp_trash_meta_status', 'private'),
(622, 167, '_wp_trash_meta_time', '1567782037'),
(623, 167, '_wp_desired_post_slug', '167'),
(624, 168, '_wp_trash_meta_status', 'private'),
(625, 168, '_wp_trash_meta_time', '1567782038'),
(626, 168, '_wp_desired_post_slug', '2222222'),
(627, 173, '_wp_trash_meta_status', 'private'),
(628, 173, '_wp_trash_meta_time', '1567782484'),
(629, 173, '_wp_desired_post_slug', 'asdas'),
(630, 169, '_wp_trash_meta_status', 'private'),
(631, 170, '_wp_trash_meta_status', 'private'),
(632, 169, '_wp_trash_meta_time', '1567782489'),
(633, 170, '_wp_trash_meta_time', '1567782489'),
(634, 169, '_wp_desired_post_slug', 'asdasd'),
(635, 170, '_wp_desired_post_slug', 'asdasd-2'),
(636, 171, '_wp_trash_meta_status', 'private'),
(637, 171, '_wp_trash_meta_time', '1567782490'),
(638, 171, '_wp_desired_post_slug', 'asda'),
(639, 172, '_wp_trash_meta_status', 'private'),
(640, 172, '_wp_trash_meta_time', '1567782492'),
(641, 172, '_wp_desired_post_slug', 'asdasd-3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-08-28 06:17:32', '2019-08-28 06:17:32', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam officia temporibus expedita enim, delectus ut culpa earum quibusdam numquam pariatur dignissimos error fugiat sequi illum et odit dolor modi? Dignissimos quam hic numquam veritatis aut inventore, ipsam minima doloribus. Dolor officia fugit nihil nisi. Laudantium, deserunt nesciunt? </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Iste officiis culpa delectus molestiae placeat perspiciatis omnis vel, in aliquam fuga voluptatum, esse mollitia suscipit itaque dolores? Vitae vero itaque, dolor hic laudantium aperiam facere commodi sapiente et dignissimos nesciunt, quidem, nostrum beatae dolore? Vero in labore tempora! Deserunt, nemo eum, veniam odio doloremque obcaecati quisquam numquam nam quis voluptate sapiente sed? </p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-08-28 14:07:52', '2019-08-28 14:07:52', '', 0, 'http://localhost/wpuniversity/app/?p=1', 0, 'post', '', 1),
(2, 1, '2019-08-28 06:17:32', '2019-08-28 06:17:32', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wpuniversity/app/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-08-28 06:17:32', '2019-08-28 06:17:32', '', 0, 'http://localhost/wpuniversity/app/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-08-28 06:17:32', '2019-08-28 06:17:32', '<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://localhost/wpuniversity/app.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->', 'Privacy Policy', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2019-09-06 07:35:32', '2019-09-06 07:35:32', '', 0, 'http://localhost/wpuniversity/app/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-08-28 11:14:30', '2019-08-28 11:14:30', '<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://localhost/wpuniversity/app.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-08-28 11:14:30', '2019-08-28 11:14:30', '', 3, 'http://localhost/wpuniversity/app/2019/08/28/3-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2019-08-28 11:15:09', '2019-08-28 11:15:09', '<!-- wp:paragraph -->\n<p> Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dicta placeat, atque odio ipsa doloremque eligendi? Mollitia dolores consequuntur esse sint harum, tenetur voluptate sed ratione tempore ex vel delectus suscipit! Esse, vitae natus cupiditate quo vero earum officia fugit perferendis, quasi enim repellendus similique porro quidem! Quis itaque tenetur laboriosam totam maiores voluptatum perferendis repellat! </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Earum corrupti, voluptatum id distinctio ad non cupiditate officiis, impedit odio dolores, excepturi ipsum aliquam quos soluta quod ut! Ea voluptatem a molestias, nesciunt facere nostrum animi explicabo provident id voluptates molestiae sequi vero repudiandae. Mollitia nihil laborum suscipit ad ab earum recusandae aliquam pariatur. </p>\n<!-- /wp:paragraph -->', 'About Us', '', 'draft', 'closed', 'closed', '', 'about-us', '', '', '2019-08-30 08:30:07', '2019-08-30 08:30:07', '', 0, 'http://localhost/wpuniversity/app/?page_id=6', 0, 'page', '', 0),
(7, 1, '2019-08-28 11:15:09', '2019-08-28 11:15:09', '<!-- wp:paragraph -->\n<p> Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dicta placeat, atque odio ipsa doloremque eligendi? Mollitia dolores consequuntur esse sint harum, tenetur voluptate sed ratione tempore ex vel delectus suscipit! Esse, vitae natus cupiditate quo vero earum officia fugit perferendis, quasi enim repellendus similique porro quidem! Quis itaque tenetur laboriosam totam maiores voluptatum perferendis repellat! </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Earum corrupti, voluptatum id distinctio ad non cupiditate officiis, impedit odio dolores, excepturi ipsum aliquam quos soluta quod ut! Ea voluptatem a molestias, nesciunt facere nostrum animi explicabo provident id voluptates molestiae sequi vero repudiandae. Mollitia nihil laborum suscipit ad ab earum recusandae aliquam pariatur. </p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-08-28 11:15:09', '2019-08-28 11:15:09', '', 6, 'http://localhost/wpuniversity/app/2019/08/28/6-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-08-28 11:31:55', '2019-08-28 11:31:55', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dicta placeat, atque odio ipsa doloremque eligendi? Mollitia dolores consequuntur esse sint harum, tenetur voluptate sed ratione tempore ex vel delectus suscipit! Esse, vitae natus cupiditate quo vero earum officia fugit perferendis, quasi enim repellendus similique porro quidem! Quis itaque tenetur laboriosam totam maiores voluptatum perferendis repellat!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Earum corrupti, voluptatum id distinctio ad non cupiditate officiis, impedit odio dolores, excepturi ipsum aliquam quos soluta quod ut! Ea voluptatem a molestias, nesciunt facere nostrum animi explicabo provident id voluptates molestiae sequi vero repudiandae. Mollitia nihil laborum suscipit ad ab earum recusandae aliquam pariatur.</p>\n<!-- /wp:paragraph -->', 'Our History', '', 'publish', 'closed', 'closed', '', 'our-history', '', '', '2019-08-28 11:33:29', '2019-08-28 11:33:29', '', 6, 'http://localhost/wpuniversity/app/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-08-28 11:31:55', '2019-08-28 11:31:55', '', 'Our History', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-08-28 11:31:55', '2019-08-28 11:31:55', '', 9, 'http://localhost/wpuniversity/app/2019/08/28/9-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-08-28 11:32:31', '2019-08-28 11:32:31', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dicta placeat, atque odio ipsa doloremque eligendi? Mollitia dolores consequuntur esse sint harum, tenetur voluptate sed ratione tempore ex vel delectus suscipit! Esse, vitae natus cupiditate quo vero earum officia fugit perferendis, quasi enim repellendus similique porro quidem! Quis itaque tenetur laboriosam totam maiores voluptatum perferendis repellat!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Earum corrupti, voluptatum id distinctio ad non cupiditate officiis, impedit odio dolores, excepturi ipsum aliquam quos soluta quod ut! Ea voluptatem a molestias, nesciunt facere nostrum animi explicabo provident id voluptates molestiae sequi vero repudiandae. Mollitia nihil laborum suscipit ad ab earum recusandae aliquam pariatur.</p>\n<!-- /wp:paragraph -->', 'Our Goals', '', 'publish', 'closed', 'closed', '', 'our-goals', '', '', '2019-08-28 11:33:13', '2019-08-28 11:33:13', '', 6, 'http://localhost/wpuniversity/app/?page_id=12', 0, 'page', '', 0),
(13, 1, '2019-08-28 11:32:31', '2019-08-28 11:32:31', '', 'Our Goals', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-28 11:32:31', '2019-08-28 11:32:31', '', 12, 'http://localhost/wpuniversity/app/2019/08/28/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2019-08-28 11:33:13', '2019-08-28 11:33:13', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dicta placeat, atque odio ipsa doloremque eligendi? Mollitia dolores consequuntur esse sint harum, tenetur voluptate sed ratione tempore ex vel delectus suscipit! Esse, vitae natus cupiditate quo vero earum officia fugit perferendis, quasi enim repellendus similique porro quidem! Quis itaque tenetur laboriosam totam maiores voluptatum perferendis repellat!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Earum corrupti, voluptatum id distinctio ad non cupiditate officiis, impedit odio dolores, excepturi ipsum aliquam quos soluta quod ut! Ea voluptatem a molestias, nesciunt facere nostrum animi explicabo provident id voluptates molestiae sequi vero repudiandae. Mollitia nihil laborum suscipit ad ab earum recusandae aliquam pariatur.</p>\n<!-- /wp:paragraph -->', 'Our Goals', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-08-28 11:33:13', '2019-08-28 11:33:13', '', 12, 'http://localhost/wpuniversity/app/2019/08/28/12-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-08-28 11:33:23', '2019-08-28 11:33:23', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dicta placeat, atque odio ipsa doloremque eligendi? Mollitia dolores consequuntur esse sint harum, tenetur voluptate sed ratione tempore ex vel delectus suscipit! Esse, vitae natus cupiditate quo vero earum officia fugit perferendis, quasi enim repellendus similique porro quidem! Quis itaque tenetur laboriosam totam maiores voluptatum perferendis repellat!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Earum corrupti, voluptatum id distinctio ad non cupiditate officiis, impedit odio dolores, excepturi ipsum aliquam quos soluta quod ut! Ea voluptatem a molestias, nesciunt facere nostrum animi explicabo provident id voluptates molestiae sequi vero repudiandae. Mollitia nihil laborum suscipit ad ab earum recusandae aliquam pariatur.</p>\n<!-- /wp:paragraph -->', 'Our Goals', '', 'inherit', 'closed', 'closed', '', '12-autosave-v1', '', '', '2019-08-28 11:33:23', '2019-08-28 11:33:23', '', 12, 'http://localhost/wpuniversity/app/2019/08/28/12-autosave-v1/', 0, 'revision', '', 0),
(16, 1, '2019-08-28 11:33:29', '2019-08-28 11:33:29', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dicta placeat, atque odio ipsa doloremque eligendi? Mollitia dolores consequuntur esse sint harum, tenetur voluptate sed ratione tempore ex vel delectus suscipit! Esse, vitae natus cupiditate quo vero earum officia fugit perferendis, quasi enim repellendus similique porro quidem! Quis itaque tenetur laboriosam totam maiores voluptatum perferendis repellat!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Earum corrupti, voluptatum id distinctio ad non cupiditate officiis, impedit odio dolores, excepturi ipsum aliquam quos soluta quod ut! Ea voluptatem a molestias, nesciunt facere nostrum animi explicabo provident id voluptates molestiae sequi vero repudiandae. Mollitia nihil laborum suscipit ad ab earum recusandae aliquam pariatur.</p>\n<!-- /wp:paragraph -->', 'Our History', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-08-28 11:33:29', '2019-08-28 11:33:29', '', 9, 'http://localhost/wpuniversity/app/2019/08/28/9-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-08-28 11:40:49', '2019-08-28 11:40:49', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dicta placeat, atque odio ipsa doloremque eligendi? Mollitia dolores consequuntur esse sint harum, tenetur voluptate sed ratione tempore ex vel delectus suscipit! Esse, vitae natus cupiditate quo vero earum officia fugit perferendis, quasi enim repellendus similique porro quidem! Quis itaque tenetur laboriosam totam maiores voluptatum perferendis repellat!<br></p>\n<!-- /wp:paragraph -->', 'Cookie Policy', '', 'publish', 'closed', 'closed', '', 'cookie-policy', '', '', '2019-08-28 11:40:49', '2019-08-28 11:40:49', '', 3, 'http://localhost/wpuniversity/app/?page_id=18', 0, 'page', '', 0),
(19, 1, '2019-08-28 11:40:49', '2019-08-28 11:40:49', '<!-- wp:paragraph -->\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dicta placeat, atque odio ipsa doloremque eligendi? Mollitia dolores consequuntur esse sint harum, tenetur voluptate sed ratione tempore ex vel delectus suscipit! Esse, vitae natus cupiditate quo vero earum officia fugit perferendis, quasi enim repellendus similique porro quidem! Quis itaque tenetur laboriosam totam maiores voluptatum perferendis repellat!<br></p>\n<!-- /wp:paragraph -->', 'Cookie Policy', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-08-28 11:40:49', '2019-08-28 11:40:49', '', 18, 'http://localhost/wpuniversity/app/2019/08/28/18-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2019-08-28 12:11:47', '2019-08-28 12:11:47', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-08-30 10:28:24', '2019-08-30 10:28:24', '', 0, 'http://localhost/wpuniversity/app/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2019-08-28 12:11:47', '2019-08-28 12:11:47', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2019-08-30 10:28:25', '2019-08-30 10:28:25', '', 0, 'http://localhost/wpuniversity/app/?p=28', 2, 'nav_menu_item', '', 0),
(29, 1, '2019-08-28 12:11:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-08-28 12:11:11', '0000-00-00 00:00:00', '', 6, 'http://localhost/wpuniversity/app/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2019-08-28 12:11:12', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-08-28 12:11:12', '0000-00-00 00:00:00', '', 6, 'http://localhost/wpuniversity/app/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2019-08-28 12:11:47', '2019-08-28 12:11:47', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2019-08-30 10:28:25', '2019-08-30 10:28:25', '', 0, 'http://localhost/wpuniversity/app/?p=31', 3, 'nav_menu_item', '', 0),
(32, 1, '2019-08-28 12:11:13', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-08-28 12:11:13', '0000-00-00 00:00:00', '', 3, 'http://localhost/wpuniversity/app/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2019-08-28 12:11:13', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-08-28 12:11:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/wpuniversity/app/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2019-08-28 12:17:40', '2019-08-28 12:17:40', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2019-08-28 14:46:05', '2019-08-28 14:46:05', '', 3, 'http://localhost/wpuniversity/app/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2019-08-28 12:17:40', '2019-08-28 12:17:40', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2019-08-28 14:46:05', '2019-08-28 14:46:05', '', 0, 'http://localhost/wpuniversity/app/?p=35', 2, 'nav_menu_item', '', 0),
(36, 1, '2019-08-28 12:18:55', '2019-08-28 12:18:55', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2019-08-28 14:45:50', '2019-08-28 14:45:50', '', 0, 'http://localhost/wpuniversity/app/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2019-08-28 12:18:55', '2019-08-28 12:18:55', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2019-08-28 14:45:50', '2019-08-28 14:45:50', '', 6, 'http://localhost/wpuniversity/app/?p=37', 2, 'nav_menu_item', '', 0),
(38, 1, '2019-08-28 12:18:56', '2019-08-28 12:18:56', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2019-08-28 14:45:51', '2019-08-28 14:45:51', '', 6, 'http://localhost/wpuniversity/app/?p=38', 3, 'nav_menu_item', '', 0),
(39, 1, '2019-08-28 13:53:07', '2019-08-28 13:53:07', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-08-28 13:53:07', '2019-08-28 13:53:07', '', 0, 'http://localhost/wpuniversity/app/?page_id=39', 0, 'page', '', 0),
(40, 1, '2019-08-28 13:53:07', '2019-08-28 13:53:07', '', 'Home', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-08-28 13:53:07', '2019-08-28 13:53:07', '', 39, 'http://localhost/wpuniversity/app/2019/08/28/39-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-08-28 13:53:17', '2019-08-28 13:53:17', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-08-28 13:53:17', '2019-08-28 13:53:17', '', 0, 'http://localhost/wpuniversity/app/?page_id=42', 0, 'page', '', 0),
(43, 1, '2019-08-28 13:53:17', '2019-08-28 13:53:17', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2019-08-28 13:53:17', '2019-08-28 13:53:17', '', 42, 'http://localhost/wpuniversity/app/2019/08/28/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-08-28 14:06:47', '2019-08-28 14:06:47', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-08-28 14:06:47', '2019-08-28 14:06:47', '', 1, 'http://localhost/wpuniversity/app/2019/08/28/1-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2019-08-28 14:07:52', '2019-08-28 14:07:52', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam officia temporibus expedita enim, delectus ut culpa earum quibusdam numquam pariatur dignissimos error fugiat sequi illum et odit dolor modi? Dignissimos quam hic numquam veritatis aut inventore, ipsam minima doloribus. Dolor officia fugit nihil nisi. Laudantium, deserunt nesciunt? </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Iste officiis culpa delectus molestiae placeat perspiciatis omnis vel, in aliquam fuga voluptatum, esse mollitia suscipit itaque dolores? Vitae vero itaque, dolor hic laudantium aperiam facere commodi sapiente et dignissimos nesciunt, quidem, nostrum beatae dolore? Vero in labore tempora! Deserunt, nemo eum, veniam odio doloremque obcaecati quisquam numquam nam quis voluptate sapiente sed? </p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-08-28 14:07:52', '2019-08-28 14:07:52', '', 1, 'http://localhost/wpuniversity/app/2019/08/28/1-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-08-28 14:11:23', '2019-08-28 14:11:23', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet consectetur adipisicing elit. Magnam officia temporibus expedita enim, delectus ut culpa earum quibusdam numquam pariatur dignissimos error fugiat sequi illum et odit dolor modi? Dignissimos quam hic numquam veritatis aut inventore, ipsam minima doloribus. Dolor officia fugit nihil nisi. Laudantium, deserunt nesciunt? Iste officiis culpa delectus molestiae placeat perspiciatis omnis vel, in aliquam fuga voluptatum, esse mollitia suscipit itaque dolores? Vitae vero itaque, dolor hic laudantium aperiam facere commodi sapiente et dignissimos nesciunt, quidem, nostrum beatae dolore? Vero in labore tempora! Deserunt, nemo eum, veniam odio doloremque obcaecati quisquam numquam nam quis voluptate sapiente sed?\n\n</p>\n<!-- /wp:paragraph -->', 'Test Blog', '', 'publish', 'open', 'open', '', 'test-blog', '', '', '2019-08-28 14:11:23', '2019-08-28 14:11:23', '', 0, 'http://localhost/wpuniversity/app/?p=46', 0, 'post', '', 0),
(47, 1, '2019-08-28 14:11:23', '2019-08-28 14:11:23', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet consectetur adipisicing elit. Magnam officia temporibus expedita enim, delectus ut culpa earum quibusdam numquam pariatur dignissimos error fugiat sequi illum et odit dolor modi? Dignissimos quam hic numquam veritatis aut inventore, ipsam minima doloribus. Dolor officia fugit nihil nisi. Laudantium, deserunt nesciunt? Iste officiis culpa delectus molestiae placeat perspiciatis omnis vel, in aliquam fuga voluptatum, esse mollitia suscipit itaque dolores? Vitae vero itaque, dolor hic laudantium aperiam facere commodi sapiente et dignissimos nesciunt, quidem, nostrum beatae dolore? Vero in labore tempora! Deserunt, nemo eum, veniam odio doloremque obcaecati quisquam numquam nam quis voluptate sapiente sed?\n\n</p>\n<!-- /wp:paragraph -->', 'Test Blog', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2019-08-28 14:11:23', '2019-08-28 14:11:23', '', 46, 'http://localhost/wpuniversity/app/2019/08/28/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2019-08-28 14:11:43', '2019-08-28 14:11:43', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam officia temporibus expedita enim, delectus ut culpa earum quibusdam numquam pariatur dignissimos error fugiat sequi illum et odit dolor modi? Dignissimos quam hic numquam veritatis aut inventore, ipsam minima doloribus. Dolor officia fugit nihil nisi. Laudantium, deserunt nesciunt? </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Iste officiis culpa delectus molestiae placeat perspiciatis omnis vel, in aliquam fuga voluptatum, esse mollitia suscipit itaque dolores? Vitae vero itaque, dolor hic laudantium aperiam facere commodi sapiente et dignissimos nesciunt, quidem, nostrum beatae dolore? Vero in labore tempora! Deserunt, nemo eum, veniam odio doloremque obcaecati quisquam numquam nam quis voluptate sapiente sed? </p>\n<!-- /wp:paragraph -->', 'Test Blog Two', '', 'publish', 'open', 'open', '', 'test-blog-two', '', '', '2019-08-28 14:11:43', '2019-08-28 14:11:43', '', 0, 'http://localhost/wpuniversity/app/?p=48', 0, 'post', '', 0),
(49, 1, '2019-08-28 14:11:43', '2019-08-28 14:11:43', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam officia temporibus expedita enim, delectus ut culpa earum quibusdam numquam pariatur dignissimos error fugiat sequi illum et odit dolor modi? Dignissimos quam hic numquam veritatis aut inventore, ipsam minima doloribus. Dolor officia fugit nihil nisi. Laudantium, deserunt nesciunt? </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Iste officiis culpa delectus molestiae placeat perspiciatis omnis vel, in aliquam fuga voluptatum, esse mollitia suscipit itaque dolores? Vitae vero itaque, dolor hic laudantium aperiam facere commodi sapiente et dignissimos nesciunt, quidem, nostrum beatae dolore? Vero in labore tempora! Deserunt, nemo eum, veniam odio doloremque obcaecati quisquam numquam nam quis voluptate sapiente sed? </p>\n<!-- /wp:paragraph -->', 'Test Blog Two', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2019-08-28 14:11:43', '2019-08-28 14:11:43', '', 48, 'http://localhost/wpuniversity/app/2019/08/28/48-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-08-28 14:12:16', '2019-08-28 14:12:16', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam officia temporibus expedita enim, delectus ut culpa earum quibusdam numquam pariatur dignissimos error fugiat sequi illum et odit dolor modi?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Dignissimos quam hic numquam veritatis aut inventore, ipsam minima doloribus. Dolor officia fugit nihil nisi. Laudantium, deserunt nesciunt?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Iste officiis culpa delectus molestiae placeat perspiciatis omnis vel, in aliquam fuga voluptatum, esse mollitia suscipit itaque dolores? Vitae vero itaque, dolor hic laudantium aperiam facere commodi sapiente et dignissimos nesciunt, quidem, nostrum beatae dolore? Vero in labore tempora! Deserunt, nemo eum, veniam odio doloremque obcaecati quisquam numquam nam quis voluptate sapiente sed? </p>\n<!-- /wp:paragraph -->', 'Test Blog 3', '', 'publish', 'open', 'open', '', 'test-blog-3', '', '', '2019-08-28 14:12:16', '2019-08-28 14:12:16', '', 0, 'http://localhost/wpuniversity/app/?p=52', 0, 'post', '', 0),
(53, 1, '2019-08-28 14:12:16', '2019-08-28 14:12:16', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam officia temporibus expedita enim, delectus ut culpa earum quibusdam numquam pariatur dignissimos error fugiat sequi illum et odit dolor modi?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Dignissimos quam hic numquam veritatis aut inventore, ipsam minima doloribus. Dolor officia fugit nihil nisi. Laudantium, deserunt nesciunt?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Iste officiis culpa delectus molestiae placeat perspiciatis omnis vel, in aliquam fuga voluptatum, esse mollitia suscipit itaque dolores? Vitae vero itaque, dolor hic laudantium aperiam facere commodi sapiente et dignissimos nesciunt, quidem, nostrum beatae dolore? Vero in labore tempora! Deserunt, nemo eum, veniam odio doloremque obcaecati quisquam numquam nam quis voluptate sapiente sed? </p>\n<!-- /wp:paragraph -->', 'Test Blog 3', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-08-28 14:12:16', '2019-08-28 14:12:16', '', 52, 'http://localhost/wpuniversity/app/2019/08/28/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-08-28 14:12:39', '2019-08-28 14:12:39', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam officia temporibus expedita enim, delectus ut culpa earum quibusdam numquam pariatur dignissimos error fugiat sequi illum et odit dolor modi? Dignissimos quam hic numquam veritatis aut inventore, ipsam minima doloribus. Dolor officia fugit nihil nisi. Laudantium, deserunt nesciunt? </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Iste officiis culpa delectus molestiae placeat perspiciatis omnis vel, in aliquam fuga voluptatum, esse mollitia suscipit itaque dolores? Vitae vero itaque, dolor hic laudantium aperiam facere commodi sapiente et dignissimos nesciunt, quidem, nostrum beatae dolore? </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vero in labore tempora! Deserunt, nemo eum, veniam odio doloremque obcaecati quisquam numquam nam quis voluptate sapiente sed? </p>\n<!-- /wp:paragraph -->', 'Test Blog 4', '', 'publish', 'open', 'open', '', 'test-blog-4', '', '', '2019-08-28 14:12:39', '2019-08-28 14:12:39', '', 0, 'http://localhost/wpuniversity/app/?p=54', 0, 'post', '', 0),
(55, 1, '2019-08-28 14:12:39', '2019-08-28 14:12:39', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam officia temporibus expedita enim, delectus ut culpa earum quibusdam numquam pariatur dignissimos error fugiat sequi illum et odit dolor modi? Dignissimos quam hic numquam veritatis aut inventore, ipsam minima doloribus. Dolor officia fugit nihil nisi. Laudantium, deserunt nesciunt? </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Iste officiis culpa delectus molestiae placeat perspiciatis omnis vel, in aliquam fuga voluptatum, esse mollitia suscipit itaque dolores? Vitae vero itaque, dolor hic laudantium aperiam facere commodi sapiente et dignissimos nesciunt, quidem, nostrum beatae dolore? </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vero in labore tempora! Deserunt, nemo eum, veniam odio doloremque obcaecati quisquam numquam nam quis voluptate sapiente sed? </p>\n<!-- /wp:paragraph -->', 'Test Blog 4', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2019-08-28 14:12:39', '2019-08-28 14:12:39', '', 54, 'http://localhost/wpuniversity/app/2019/08/28/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-08-28 14:12:55', '2019-08-28 14:12:55', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam officia temporibus expedita enim, delectus ut culpa earum quibusdam numquam pariatur dignissimos error fugiat sequi illum et odit dolor modi? </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dignissimos quam hic numquam veritatis aut inventore, ipsam minima doloribus. Dolor officia fugit nihil nisi. Laudantium, deserunt nesciunt? Iste officiis culpa delectus molestiae placeat perspiciatis omnis vel, in aliquam fuga voluptatum, esse mollitia suscipit itaque dolores? Vitae vero itaque, dolor hic laudantium aperiam facere commodi sapiente et dignissimos nesciunt, quidem, nostrum beatae dolore? Vero in labore tempora! Deserunt, nemo eum, veniam odio doloremque obcaecati quisquam numquam nam quiss voluptate sapiente sed? </p>\n<!-- /wp:paragraph -->', 'Test Blog 5', '', 'publish', 'open', 'open', '', 'test-blog-5', '', '', '2019-08-29 06:05:15', '2019-08-29 06:05:15', '', 0, 'http://localhost/wpuniversity/app/?p=56', 0, 'post', '', 0),
(57, 1, '2019-08-28 14:12:55', '2019-08-28 14:12:55', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam officia temporibus expedita enim, delectus ut culpa earum quibusdam numquam pariatur dignissimos error fugiat sequi illum et odit dolor modi? </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dignissimos quam hic numquam veritatis aut inventore, ipsam minima doloribus. Dolor officia fugit nihil nisi. Laudantium, deserunt nesciunt? Iste officiis culpa delectus molestiae placeat perspiciatis omnis vel, in aliquam fuga voluptatum, esse mollitia suscipit itaque dolores? Vitae vero itaque, dolor hic laudantium aperiam facere commodi sapiente et dignissimos nesciunt, quidem, nostrum beatae dolore? Vero in labore tempora! Deserunt, nemo eum, veniam odio doloremque obcaecati quisquam numquam nam quis voluptate sapiente sed? </p>\n<!-- /wp:paragraph -->', 'Test Blog 5', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-08-28 14:12:55', '2019-08-28 14:12:55', '', 56, 'http://localhost/wpuniversity/app/2019/08/28/56-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2019-08-28 14:46:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-08-28 14:46:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/wpuniversity/app/?p=59', 1, 'nav_menu_item', '', 0),
(60, 1, '2019-08-28 14:46:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-08-28 14:46:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/wpuniversity/app/?p=60', 1, 'nav_menu_item', '', 0),
(61, 1, '2019-08-28 14:46:25', '2019-08-28 14:46:25', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2019-08-30 10:28:25', '2019-08-30 10:28:25', '', 0, 'http://localhost/wpuniversity/app/?p=61', 5, 'nav_menu_item', '', 0),
(68, 1, '2019-08-29 06:05:15', '2019-08-29 06:05:15', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam officia temporibus expedita enim, delectus ut culpa earum quibusdam numquam pariatur dignissimos error fugiat sequi illum et odit dolor modi? </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dignissimos quam hic numquam veritatis aut inventore, ipsam minima doloribus. Dolor officia fugit nihil nisi. Laudantium, deserunt nesciunt? Iste officiis culpa delectus molestiae placeat perspiciatis omnis vel, in aliquam fuga voluptatum, esse mollitia suscipit itaque dolores? Vitae vero itaque, dolor hic laudantium aperiam facere commodi sapiente et dignissimos nesciunt, quidem, nostrum beatae dolore? Vero in labore tempora! Deserunt, nemo eum, veniam odio doloremque obcaecati quisquam numquam nam quiss voluptate sapiente sed? </p>\n<!-- /wp:paragraph -->', 'Test Blog 5', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-08-29 06:05:15', '2019-08-29 06:05:15', '', 56, 'http://localhost/wpuniversity/app/56-revision-v1/', 0, 'revision', '', 0),
(69, 0, '2019-08-29 06:05:41', '2019-08-29 06:05:41', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex a necessitatibus sed aspernatur molestiae voluptas laudantium repellat? Neque nihil facilis accusantium soluta mollitia cupiditate saepe, natus ipsum dolorem officiis aut, non ducimus esse, ipsam eligendi? Velit quos vero, et sapiente ex facilis vitae sequi perspiciatis accusantium autem voluptates, illum nisi, esse ullam obcaecati minima eligendi? Id ab cum, perferendis dolores, ipsam deserunt cumque fuga eius tempore dolore soluta, expedita veniam corporis. Modi totam exercitationem labore sint optio necessitatibus. Amet omnis impedit dolorem cumque quisquam, tempora laborum fuga voluptatum dolor. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mollitia iure et similique, exercitationem consequatur placeat minus iste quis non qui explicabo. Ut qui itaque deleniti modi neque ipsum architecto quisquam, impedit laboriosam temporibus corporis iure! Magni, vero veritatis. Saepe quidem provident doloremque! Animi, harum eaque vitae dicta facilis corrupti nulla voluptas, dignissimos non accusamus mollitia, deleniti ut iusto odit dolorem vero in! Aspernatur id autem dicta blanditiis ipsum quisquam minus distinctio consequuntur non molestiae! Qui pariatur obcaecati possimus provident deleniti quod beatae fugit odit voluptate amet! Nihil nam nesciunt enim deserunt praesentium eos ipsam minus ut delectus, doloribus id aliquid, molestiae, blanditiis esse impedit optio? Id omnis reiciendis ullam delectus accusamus at doloribus veniam quae repellat, dolorem deserunt. Impedit! </p>\n<!-- /wp:paragraph -->', 'Math Meetup', '', 'publish', 'closed', 'closed', '', 'math-meetup', '', '', '2019-08-29 08:04:44', '2019-08-29 08:04:44', '', 0, 'http://localhost/wpuniversity/app/?post_type=event&#038;p=69', 0, 'event', '', 0),
(70, 0, '2019-08-29 06:07:06', '2019-08-29 06:07:06', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex a necessitatibus sed aspernatur molestiae voluptas laudantium repellat? Neque nihil facilis accusantium soluta mollitia cupiditate saepe, natus ipsum dolorem officiis aut, non ducimus esse, ipsam eligendi? Velit quos vero, et sapiente ex facilis vitae sequi perspiciatis accusantium autem voluptates, illum nisi, esse ullam obcaecati minima eligendi? Id ab cum, perferendis dolores, ipsam deserunt cumque fuga eius tempore dolore soluta, expedita veniam corporis. Modi totam exercitationem labore sint optio necessitatibus. Amet omnis impedit dolorem cumque quisquam, tempora laborum fuga voluptatum dolor. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mollitia iure et similique, exercitationem consequatur placeat minus iste quis non qui explicabo. Ut qui itaque deleniti modi neque ipsum architecto quisquam, impedit laboriosam temporibus corporis iure! Magni, vero veritatis. Saepe quidem provident doloremque! Animi, harum eaque vitae dicta facilis corrupti nulla voluptas, dignissimos non accusamus mollitia, deleniti ut iusto odit dolorem vero in! Aspernatur id autem dicta blanditiis ipsum quisquam minus distinctio consequuntur non molestiae! Qui pariatur obcaecati possimus provident deleniti quod beatae fugit odit voluptate amet! Nihil nam nesciunt enim deserunt praesentium eos ipsam minus ut delectus, doloribus id aliquid, molestiae, blanditiis esse impedit optio? Id omnis reiciendis ullam delectus accusamus at doloribus veniam quae repellat, dolorem deserunt. Impedit! </p>\n<!-- /wp:paragraph -->', 'Poetry Day', '', 'publish', 'closed', 'closed', '', 'poetry-day', '', '', '2019-08-29 08:01:43', '2019-08-29 08:01:43', '', 0, 'http://localhost/wpuniversity/app/?post_type=event&#038;p=70', 0, 'event', '', 0),
(71, 0, '2019-08-29 06:08:24', '2019-08-29 06:08:24', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex a necessitatibus sed aspernatur molestiae voluptas laudantium repellat? Neque nihil facilis accusantium soluta mollitia cupiditate saepe, natus ipsum dolorem officiis aut, non ducimus esse, ipsam eligendi? Velit quos vero, et sapiente ex facilis vitae sequi perspiciatis accusantium autem voluptates, illum nisi, esse ullam obcaecati minima eligendi? Id ab cum, perferendis dolores, ipsam deserunt cumque fuga eius tempore dolore soluta, expedita veniam corporis. Modi totam exercitationem labore sint optio necessitatibus. Amet omnis impedit dolorem cumque quisquam, tempora laborum fuga voluptatum dolor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Mollitia iure et similique, exercitationem consequatur placeat minus iste quis non qui explicabo. Ut qui itaque deleniti modi neque ipsum architecto quisquam, impedit laboriosam temporibus corporis iure! Magni, vero veritatis. Saepe quidem provident doloremque! Animi, harum eaque vitae dicta facilis corrupti nulla voluptas, dignissimos non accusamus mollitia, deleniti ut iusto odit dolorem vero in! Aspernatur id autem dicta blanditiis ipsum quisquam minus distinctio consequuntur non molestiae! Qui pariatur obcaecati possimus provident deleniti quod beatae fugit odit voluptate amet! Nihil nam nesciunt enim deserunt praesentium eos ipsam minus ut delectus, doloribus id aliquid, molestiae, blanditiis esse impedit optio? Id omnis reiciendis ullam delectus accusamus at doloribus veniam quae repellat, dolorem deserunt. Impedit! </p>\n<!-- /wp:paragraph -->', 'Science Exhibition', 'Id ab cum, perferendis dolores, ipsam deserunt cumque fuga eius tempore dolore soluta, expedita veniam corporis', 'publish', 'closed', 'closed', '', 'science-exhibition', '', '', '2019-08-29 09:50:50', '2019-08-29 09:50:50', '', 0, 'http://localhost/wpuniversity/app/?post_type=event&#038;p=71', 0, 'event', '', 0),
(72, 1, '2019-08-29 06:37:30', '2019-08-29 06:37:30', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2019-08-30 10:28:25', '2019-08-30 10:28:25', '', 0, 'http://localhost/wpuniversity/app/?p=72', 7, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(74, 1, '2019-08-29 06:55:01', '2019-08-29 06:55:01', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Event Date', 'event-date', 'publish', 'closed', 'closed', '', 'group_5d6775b29069a', '', '', '2019-08-30 08:40:20', '2019-08-30 08:40:20', '', 0, 'http://localhost/wpuniversity/app/?post_type=acf-field-group&#038;p=74', 0, 'acf-field-group', '', 0),
(75, 1, '2019-08-29 06:55:01', '2019-08-29 06:55:01', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;}', 'Event Date', 'event_date', 'publish', 'closed', 'closed', '', 'field_5d6775c2cf124', '', '', '2019-08-30 08:40:19', '2019-08-30 08:40:19', '', 74, 'http://localhost/wpuniversity/app/?post_type=acf-field&#038;p=75', 0, 'acf-field', '', 0),
(78, 0, '2019-08-29 08:04:28', '2019-08-29 08:04:28', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex a necessitatibus sed aspernatur molestiae voluptas laudantium repellat? Neque nihil facilis accusantium soluta mollitia cupiditate saepe, natus ipsum dolorem officiis aut, non ducimus esse, ipsam eligendi? Velit quos vero, et sapiente ex facilis vitae sequi perspiciatis accusantium autem voluptates, illum nisi, esse ullam obcaecati minima eligendi? Id ab cum, perferendis dolores, ipsam deserunt cumque fuga eius tempore dolore soluta, expedita veniam corporis. Modi totam exercitationem labore sint optio necessitatibus. Amet omnis impedit dolorem cumque quisquam, tempora laborum fuga voluptatum dolor.<br></p>\n<!-- /wp:paragraph -->', 'Web developement workshop', '', 'publish', 'closed', 'closed', '', 'web-developement-workshop', '', '', '2019-08-29 08:04:29', '2019-08-29 08:04:29', '', 0, 'http://localhost/wpuniversity/app/?post_type=event&#038;p=78', 0, 'event', '', 0),
(79, 1, '2019-08-29 08:05:46', '2019-08-29 08:05:46', '', 'Past Events', '', 'publish', 'closed', 'closed', '', 'past-events', '', '', '2019-08-29 08:05:46', '2019-08-29 08:05:46', '', 0, 'http://localhost/wpuniversity/app/?page_id=79', 0, 'page', '', 0),
(80, 1, '2019-08-29 08:05:46', '2019-08-29 08:05:46', '', 'Past Events', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2019-08-29 08:05:46', '2019-08-29 08:05:46', '', 79, 'http://localhost/wpuniversity/app/79-revision-v1/', 0, 'revision', '', 0),
(81, 0, '2019-08-29 08:11:12', '2019-08-29 08:11:12', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex a necessitatibus sed aspernatur molestiae voluptas laudantium repellat? Neque nihil facilis accusantium soluta mollitia cupiditate saepe, natus ipsum dolorem officiis aut, non ducimus esse, ipsam eligendi? Velit quos vero, et sapiente ex facilis vitae sequi perspiciatis accusantium autem voluptates, illum nisi, esse ullam obcaecati minima eligendi? Id ab cum, perferendis dolores, ipsam deserunt cumque fuga eius tempore dolore soluta, expedita veniam corporis. Modi totam exercitationem labore sint optio necessitatibus. Amet omnis impedit dolorem cumque quisquam, tempora laborum fuga voluptatum dolor.<br></p>\n<!-- /wp:paragraph -->', 'Independence day 2019', '', 'publish', 'closed', 'closed', '', 'independence-day-2019', '', '', '2019-08-29 08:11:13', '2019-08-29 08:11:13', '', 0, 'http://localhost/wpuniversity/app/?post_type=event&#038;p=81', 0, 'event', '', 0),
(82, 0, '2019-08-29 08:12:27', '2019-08-29 08:12:27', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex a necessitatibus sed aspernatur molestiae voluptas laudantium repellat? Neque nihil facilis accusantium soluta mollitia cupiditate saepe, natus ipsum dolorem officiis aut, non ducimus esse, ipsam eligendi? Velit quos vero, et sapiente ex facilis vitae sequi perspiciatis accusantium autem voluptates, illum nisi, esse ullam obcaecati minima eligendi? Id ab cum, perferendis dolores, ipsam deserunt cumque fuga eius tempore dolore soluta, expedita veniam corporis. Modi totam exercitationem labore sint optio necessitatibus. Amet omnis impedit dolorem cumque quisquam, tempora laborum fuga voluptatum dolor.<br></p>\n<!-- /wp:paragraph -->', 'Annual Day 2019', '', 'publish', 'closed', 'closed', '', 'annual-day-2019', '', '', '2019-08-29 08:12:28', '2019-08-29 08:12:28', '', 0, 'http://localhost/wpuniversity/app/?post_type=event&#038;p=82', 0, 'event', '', 0),
(83, 0, '2019-08-29 09:28:00', '2019-08-29 09:28:00', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex a necessitatibus sed aspernatur molestiae voluptas laudantium repellat? Neque nihil facilis accusantium soluta mollitia cupiditate saepe, natus ipsum dolorem officiis aut, non ducimus esse, ipsam eligendi? Velit quos vero, et sapiente ex facilis vitae sequi perspiciatis accusantium autem voluptates, illum nisi, esse ullam obcaecati minima eligendi? Id ab cum, perferendis dolores, ipsam deserunt cumque fuga eius tempore dolore soluta, expedita veniam corporis. Modi totam exercitationem labore sint optio necessitatibus. Amet omnis impedit dolorem cumque quisquam, tempora laborum fuga voluptatum dolor.<br></p>\n<!-- /wp:paragraph -->', 'Math', '', 'publish', 'closed', 'closed', '', 'math', '', '', '2019-08-30 11:20:46', '2019-08-30 11:20:46', '', 0, 'http://localhost/wpuniversity/app/?post_type=program&#038;p=83', 0, 'program', '', 0),
(84, 0, '2019-08-29 09:28:25', '2019-08-29 09:28:25', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex a necessitatibus sed aspernatur molestiae voluptas laudantium repellat? Neque nihil facilis accusantium soluta mollitia cupiditate saepe, natus ipsum dolorem officiis aut, non ducimus esse, ipsam eligendi? Velit quos vero, et sapiente ex facilis vitae sequi perspiciatis accusantium autem voluptates, illum nisi, esse ullam obcaecati minima eligendi? Id ab cum, perferendis dolores, ipsam deserunt cumque fuga eius tempore dolore soluta, expedita veniam corporis. Modi totam exercitationem labore sint optio necessitatibus. Amet omnis impedit dolorem cumque quisquam, tempora laborum fuga voluptatum dolor.<br></p>\n<!-- /wp:paragraph -->', 'Biology', '', 'publish', 'closed', 'closed', '', 'biology', '', '', '2019-08-30 11:20:56', '2019-08-30 11:20:56', '', 0, 'http://localhost/wpuniversity/app/?post_type=program&#038;p=84', 0, 'program', '', 0),
(85, 0, '2019-08-29 09:28:51', '2019-08-29 09:28:51', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex a necessitatibus sed aspernatur molestiae voluptas laudantium repellat? Neque nihil facilis accusantium soluta mollitia cupiditate saepe, natus ipsum dolorem officiis aut, non ducimus esse, ipsam eligendi? Velit quos vero, et sapiente ex facilis vitae sequi perspiciatis accusantium autem voluptates, illum nisi, esse ullam obcaecati minima eligendi? Id ab cum, perferendis dolores, ipsam deserunt cumque fuga eius tempore dolore soluta, expedita veniam corporis. Modi totam exercitationem labore sint optio necessitatibus. Amet omnis impedit dolorem cumque quisquam, tempora laborum fuga voluptatum dolor.<br></p>\n<!-- /wp:paragraph -->', 'Physics', '', 'publish', 'closed', 'closed', '', 'physics', '', '', '2019-08-30 11:21:05', '2019-08-30 11:21:05', '', 0, 'http://localhost/wpuniversity/app/?post_type=program&#038;p=85', 0, 'program', '', 0),
(87, 1, '2019-08-29 09:39:48', '2019-08-29 09:39:48', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Related Program', 'related-program', 'publish', 'closed', 'closed', '', 'group_5d679d0365ca2', '', '', '2019-08-29 10:29:11', '2019-08-29 10:29:11', '', 0, 'http://localhost/wpuniversity/app/?post_type=acf-field-group&#038;p=87', 0, 'acf-field-group', '', 0),
(88, 1, '2019-08-29 09:39:48', '2019-08-29 09:39:48', 'a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:3:{i:0;s:6:\"search\";i:1;s:9:\"post_type\";i:2;s:8:\"taxonomy\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}', 'Related Program(s)', 'related_programs', 'publish', 'closed', 'closed', '', 'field_5d679d0f7d814', '', '', '2019-08-29 09:39:48', '2019-08-29 09:39:48', '', 87, 'http://localhost/wpuniversity/app/?post_type=acf-field&p=88', 0, 'acf-field', '', 0),
(92, 0, '2019-08-29 09:40:56', '2019-08-29 09:40:56', '<!-- wp:paragraph -->\n<p>\n\n Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex a necessitatibus sed aspernatur molestiae voluptas laudantium repellat? Neque nihil facilis accusantium soluta mollitia cupiditate saepe, natus ipsum dolorem officiis aut, non ducimus esse, ipsam eligendi? Velit quos vero, et sapiente ex facilis vitae sequi perspiciatis accusantium autem voluptates, illum nisi, esse ullam obcaecati minima eligendi? Id ab cum, perferendis dolores, ipsam deserunt cumque fuga eius tempore dolore soluta, expedita veniam corporis. Modi totam exercitationem labore sint optio necessitatibus. Amet omnis impedit dolorem cumque quisquam, tempora laborum fuga voluptatum dolor. \n\n</p>\n<!-- /wp:paragraph -->', 'Science', '', 'publish', 'closed', 'closed', '', 'science', '', '', '2019-08-30 11:21:14', '2019-08-30 11:21:14', '', 0, 'http://localhost/wpuniversity/app/?post_type=program&#038;p=92', 0, 'program', '', 0),
(93, 1, '2019-08-29 09:50:37', '2019-08-29 09:50:37', '<!-- wp:paragraph -->\n<p>\n\n Mollitia iure et similique, exercitationem consequatur placeat minus iste quis non qui explicabo. Ut qui itaque deleniti modi neque ipsum architecto quisquam, impedit laboriosam temporibus corporis iure! Magni, vero veritatis. Saepe quidem provident doloremque! Animi, harum eaque vitae dicta facilis corrupti nulla voluptas, dignissimos non accusamus mollitia, deleniti ut iusto odit dolorem vero in! Aspernatur id autem dicta blanditiis ipsum quisquam minus distinctio consequuntur non molestiae! Qui pariatur obcaecati possimus provident deleniti quod beatae fugit odit voluptate amet! Nihil nam nesciunt enim deserunt praesentium eos ipsam minus ut delectus, doloribus id aliquid, molestiae, blanditiis esse impedit optio? Id omnis reiciendis ullam delectus accusamus at doloribus veniam quae repellat, dolorem deserunt. Impedit! \n\n</p>\n<!-- /wp:paragraph -->', 'Technology', '', 'publish', 'closed', 'closed', '', 'technology', '', '', '2019-08-29 09:50:37', '2019-08-29 09:50:37', '', 0, 'http://localhost/wpuniversity/app/?post_type=program&#038;p=93', 0, 'program', '', 0),
(94, 1, '2019-08-29 10:11:33', '2019-08-29 10:11:33', '', 'Programs', '', 'publish', 'closed', 'closed', '', 'programs', '', '', '2019-08-30 10:28:25', '2019-08-30 10:28:25', '', 0, 'http://localhost/wpuniversity/app/?p=94', 6, 'nav_menu_item', '', 0),
(96, 0, '2019-08-29 10:26:35', '2019-08-29 10:26:35', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex a necessitatibus sed aspernatur molestiae voluptas laudantium repellat? Neque nihil facilis accusantium soluta mollitia cupiditate saepe, natus ipsum dolorem officiis aut, non ducimus esse, ipsam eligendi? Velit quos vero, et sapiente ex facilis vitae sequi perspiciatis accusantium autem voluptates, illum nisi, esse ullam obcaecati minima eligendi? Id ab cum, perferendis dolores, ipsam deserunt cumque fuga eius tempore dolore soluta, expedita veniam corporis. Modi totam exercitationem labore sint optio necessitatibus. Amet omnis impedit dolorem cumque quisquam, tempora laborum fuga voluptatum dolor.<br></p>\n<!-- /wp:paragraph -->', 'Dr. Barksalot', '', 'publish', 'closed', 'closed', '', 'dr-barksalot', '', '', '2019-08-30 08:09:35', '2019-08-30 08:09:35', '', 0, 'http://localhost/wpuniversity/app/?post_type=professor&#038;p=96', 0, 'professor', '', 0),
(97, 0, '2019-08-29 10:26:56', '2019-08-29 10:26:56', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex a necessitatibus sed aspernatur molestiae voluptas laudantium repellat? Neque nihil facilis accusantium soluta mollitia cupiditate saepe, natus ipsum dolorem officiis aut, non ducimus esse, ipsam eligendi? Velit quos vero, et sapiente ex facilis vitae sequi perspiciatis accusantium autem voluptates, illum nisi, esse ullam obcaecati minima eligendi? Id ab cum, perferendis dolores, ipsam deserunt cumque fuga eius tempore dolore soluta, expedita veniam corporis. Modi totam exercitationem labore sint optio necessitatibus. Amet omnis impedit dolorem cumque quisquam, tempora laborum fuga voluptatum dolor.<br></p>\n<!-- /wp:paragraph -->', 'Dr. Meowsalot', '', 'publish', 'closed', 'closed', '', 'dr-meowsalot', '', '', '2019-08-30 08:09:19', '2019-08-30 08:09:19', '', 0, 'http://localhost/wpuniversity/app/?post_type=professor&#038;p=97', 0, 'professor', '', 0),
(103, 1, '2019-08-29 11:35:46', '2019-08-29 11:35:46', '', 'barksalot', '', 'inherit', 'open', 'closed', '', 'barksalot', '', '', '2019-08-29 11:35:46', '2019-08-29 11:35:46', '', 96, 'http://localhost/wpuniversity/app/wp-content/uploads/2019/08/barksalot.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2019-08-29 11:36:13', '2019-08-29 11:36:13', '', 'meowsalot', '', 'inherit', 'open', 'closed', '', 'meowsalot', '', '', '2019-08-29 11:36:13', '2019-08-29 11:36:13', '', 97, 'http://localhost/wpuniversity/app/wp-content/uploads/2019/08/meowsalot.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2019-08-29 11:44:40', '2019-08-29 11:44:40', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Page Banner', 'page-banner', 'publish', 'closed', 'closed', '', 'group_5d67ba55845c4', '', '', '2019-08-29 11:44:41', '2019-08-29 11:44:41', '', 0, 'http://localhost/wpuniversity/app/?post_type=acf-field-group&#038;p=106', 0, 'acf-field-group', '', 0),
(107, 1, '2019-08-29 11:44:40', '2019-08-29 11:44:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Page Banner Subtitle', 'page_banner_subtitle', 'publish', 'closed', 'closed', '', 'field_5d67ba5c03231', '', '', '2019-08-29 11:44:40', '2019-08-29 11:44:40', '', 106, 'http://localhost/wpuniversity/app/?post_type=acf-field&p=107', 0, 'acf-field', '', 0),
(108, 1, '2019-08-29 11:44:40', '2019-08-29 11:44:40', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Page Banner Background Image', 'page_banner_background_image', 'publish', 'closed', 'closed', '', 'field_5d67ba6f03232', '', '', '2019-08-29 11:44:40', '2019-08-29 11:44:40', '', 106, 'http://localhost/wpuniversity/app/?post_type=acf-field&p=108', 1, 'acf-field', '', 0),
(109, 1, '2019-08-29 11:46:35', '2019-08-29 11:46:35', '', 'field', '', 'inherit', 'open', 'closed', '', 'field', '', '', '2019-08-29 11:46:35', '2019-08-29 11:46:35', '', 96, 'http://localhost/wpuniversity/app/wp-content/uploads/2019/08/field.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2019-08-30 08:26:19', '2019-08-30 08:26:19', '', 'building', '', 'inherit', 'open', 'closed', '', 'building', '', '', '2019-08-30 08:26:19', '2019-08-30 08:26:19', '', 6, 'http://localhost/wpuniversity/app/wp-content/uploads/2019/08/building.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2019-08-30 08:26:47', '2019-08-30 08:26:47', '<!-- wp:paragraph -->\n<p> Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dicta placeat, atque odio ipsa doloremque eligendi? Mollitia dolores consequuntur esse sint harum, tenetur voluptate sed ratione tempore ex vel delectus suscipit! Esse, vitae natus cupiditate quo vero earum officia fugit perferendis, quasi enim repellendus similique porro quidem! Quis itaque tenetur laboriosam totam maiores voluptatum perferendis repellat! </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Earum corrupti, voluptatum id distinctio ad non cupiditate officiis, impedit odio dolores, excepturi ipsum aliquam quos soluta quod ut! Ea voluptatem a molestias, nesciunt facere nostrum animi explicabo provident id voluptates molestiae sequi vero repudiandae. Mollitia nihil laborum suscipit ad ab earum recusandae aliquam pariatur. </p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-08-30 08:26:47', '2019-08-30 08:26:47', '', 6, 'http://localhost/wpuniversity/app/6-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2019-08-30 08:29:45', '2019-08-30 08:29:45', '<!-- wp:paragraph -->\n<p> Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dicta placeat, atque odio ipsa doloremque eligendi? Mollitia dolores consequuntur esse sint harum, tenetur voluptate sed ratione tempore ex vel delectus suscipit! Esse, vitae natus cupiditate quo vero earum officia fugit perferendis, quasi enim repellendus similique porro quidem! Quis itaque tenetur laboriosam totam maiores voluptatum perferendis repellat! </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Earum corrupti, voluptatum id distinctio ad non cupiditate officiis, impedit odio dolores, excepturi ipsum aliquam quos soluta quod ut! Ea voluptatem a molestias, nesciunt facere nostrum animi explicabo provident id voluptates molestiae sequi vero repudiandae. Mollitia nihil laborum suscipit ad ab earum recusandae aliquam pariatur. </p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-08-30 08:29:45', '2019-08-30 08:29:45', '', 6, 'http://localhost/wpuniversity/app/6-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2019-08-30 08:29:49', '2019-08-30 08:29:49', '<!-- wp:paragraph -->\n<p> Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dicta placeat, atque odio ipsa doloremque eligendi? Mollitia dolores consequuntur esse sint harum, tenetur voluptate sed ratione tempore ex vel delectus suscipit! Esse, vitae natus cupiditate quo vero earum officia fugit perferendis, quasi enim repellendus similique porro quidem! Quis itaque tenetur laboriosam totam maiores voluptatum perferendis repellat! </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Earum corrupti, voluptatum id distinctio ad non cupiditate officiis, impedit odio dolores, excepturi ipsum aliquam quos soluta quod ut! Ea voluptatem a molestias, nesciunt facere nostrum animi explicabo provident id voluptates molestiae sequi vero repudiandae. Mollitia nihil laborum suscipit ad ab earum recusandae aliquam pariatur. </p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-08-30 08:29:49', '2019-08-30 08:29:49', '', 6, 'http://localhost/wpuniversity/app/6-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2019-08-30 08:30:05', '2019-08-30 08:30:05', '<!-- wp:paragraph -->\n<p> Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dicta placeat, atque odio ipsa doloremque eligendi? Mollitia dolores consequuntur esse sint harum, tenetur voluptate sed ratione tempore ex vel delectus suscipit! Esse, vitae natus cupiditate quo vero earum officia fugit perferendis, quasi enim repellendus similique porro quidem! Quis itaque tenetur laboriosam totam maiores voluptatum perferendis repellat! </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Earum corrupti, voluptatum id distinctio ad non cupiditate officiis, impedit odio dolores, excepturi ipsum aliquam quos soluta quod ut! Ea voluptatem a molestias, nesciunt facere nostrum animi explicabo provident id voluptates molestiae sequi vero repudiandae. Mollitia nihil laborum suscipit ad ab earum recusandae aliquam pariatur. </p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-08-30 08:30:05', '2019-08-30 08:30:05', '', 6, 'http://localhost/wpuniversity/app/6-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2019-08-30 08:30:07', '2019-08-30 08:30:07', '<!-- wp:paragraph -->\n<p> Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dicta placeat, atque odio ipsa doloremque eligendi? Mollitia dolores consequuntur esse sint harum, tenetur voluptate sed ratione tempore ex vel delectus suscipit! Esse, vitae natus cupiditate quo vero earum officia fugit perferendis, quasi enim repellendus similique porro quidem! Quis itaque tenetur laboriosam totam maiores voluptatum perferendis repellat! </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Earum corrupti, voluptatum id distinctio ad non cupiditate officiis, impedit odio dolores, excepturi ipsum aliquam quos soluta quod ut! Ea voluptatem a molestias, nesciunt facere nostrum animi explicabo provident id voluptates molestiae sequi vero repudiandae. Mollitia nihil laborum suscipit ad ab earum recusandae aliquam pariatur. </p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-08-30 08:30:07', '2019-08-30 08:30:07', '', 6, 'http://localhost/wpuniversity/app/6-revision-v1/', 0, 'revision', '', 0),
(118, 0, '2019-08-30 09:57:14', '2019-08-30 09:57:14', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex a necessitatibus sed aspernatur molestiae voluptas laudantium repellat? Neque nihil facilis accusantium soluta mollitia cupiditate saepe, natus ipsum dolorem officiis aut, non ducimus esse, ipsam eligendi? Velit quos vero, et sapiente ex facilis vitae sequi perspiciatis accusantium autem voluptates, illum nisi, esse ullam obcaecati minima eligendi? Id ab cum, perferendis dolores, ipsam deserunt cumque fuga eius tempore dolore soluta, expedita veniam corporis. Modi totam exercitationem labore sint optio necessitatibus. Amet omnis impedit dolorem cumque quisquam, tempora laborum fuga voluptatum dolor.<br></p>\n<!-- /wp:paragraph -->', 'Downtown West', '', 'publish', 'closed', 'closed', '', 'downtown-west', '', '', '2019-08-30 11:03:45', '2019-08-30 11:03:45', '', 0, 'http://localhost/wpuniversity/app/?post_type=campus&#038;p=118', 0, 'campus', '', 0),
(119, 0, '2019-08-30 09:57:57', '2019-08-30 09:57:57', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet consectetur adipisicing elit. Ex a necessitatibus sed aspernatur molestiae voluptas laudantium repellat? Neque nihil facilis accusantium soluta mollitia cupiditate saepe, natus ipsum dolorem officiis aut, non ducimus esse, ipsam eligendi? Velit quos vero, et sapiente ex facilis vitae sequi perspiciatis accusantium autem voluptates, illum nisi, esse ullam obcaecati minima eligendi? Id ab cum, perferendis dolores, ipsam deserunt cumque fuga eius tempore dolore soluta, expedita veniam corporis. Modi totam exercitationem labore sint optio necessitatibus. Amet omnis impedit dolorem cumque quisquam, tempora laborum fuga voluptatum dolor.<br></p>\n<!-- /wp:paragraph -->', 'Downtown East', '', 'publish', 'closed', 'closed', '', 'downtown-east', '', '', '2019-08-30 11:04:02', '2019-08-30 11:04:02', '', 0, 'http://localhost/wpuniversity/app/?post_type=campus&#038;p=119', 0, 'campus', '', 0),
(120, 1, '2019-08-30 10:18:43', '2019-08-30 10:18:43', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"campus\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Map Location', 'map-location', 'publish', 'closed', 'closed', '', 'group_5d68f332a1059', '', '', '2019-08-30 10:18:44', '2019-08-30 10:18:44', '', 0, 'http://localhost/wpuniversity/app/?post_type=acf-field-group&#038;p=120', 0, 'acf-field-group', '', 0),
(121, 1, '2019-08-30 10:18:44', '2019-08-30 10:18:44', 'a:9:{s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";}', 'Map Location', 'map_location', 'publish', 'closed', 'closed', '', 'field_5d68f349bc3ac', '', '', '2019-08-30 10:18:44', '2019-08-30 10:18:44', '', 120, 'http://localhost/wpuniversity/app/?post_type=acf-field&p=121', 0, 'acf-field', '', 0),
(122, 1, '2019-08-30 10:27:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-08-30 10:27:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/wpuniversity/app/?p=122', 1, 'nav_menu_item', '', 0),
(123, 1, '2019-08-30 10:28:25', '2019-08-30 10:28:25', '', 'Campuses', '', 'publish', 'closed', 'closed', '', 'campuses', '', '', '2019-08-30 10:28:25', '2019-08-30 10:28:25', '', 0, 'http://localhost/wpuniversity/app/?p=123', 4, 'nav_menu_item', '', 0),
(124, 1, '2019-08-30 11:12:09', '2019-08-30 11:12:09', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"program\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Related Campus(es)', 'related-campuses', 'publish', 'closed', 'closed', '', 'group_5d69040ac0866', '', '', '2019-08-30 11:20:18', '2019-08-30 11:20:18', '', 0, 'http://localhost/wpuniversity/app/?post_type=acf-field-group&#038;p=124', 0, 'acf-field-group', '', 0),
(125, 1, '2019-08-30 11:12:09', '2019-08-30 11:12:09', 'a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:6:\"campus\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:3:{i:0;s:6:\"search\";i:1;s:9:\"post_type\";i:2;s:8:\"taxonomy\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}', 'Related Campus(es)', 'related_campus', 'publish', 'closed', 'closed', '', 'field_5d69041e0a95c', '', '', '2019-08-30 11:20:18', '2019-08-30 11:20:18', '', 124, 'http://localhost/wpuniversity/app/?post_type=acf-field&#038;p=125', 0, 'acf-field', '', 0),
(126, 1, '2019-08-30 14:57:54', '2019-08-30 14:57:54', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam officia temporibus expedita enim, delectus ut culpa earum quibusdam numquam pariatur dignissimos error fugiat sequi illum et odit dolor modi? Dignissimos quam hic numquam veritatis aut inventore, ipsam minima doloribus. Dolor officia fugit nihil nisi. Laudantium, deserunt nesciunt?<br></p>\n<!-- /wp:paragraph -->', 'Biology is cool', '', 'publish', 'open', 'open', '', 'biology-is-cool', '', '', '2019-08-30 14:57:56', '2019-08-30 14:57:56', '', 0, 'http://localhost/wpuniversity/app/?p=126', 0, 'post', '', 0),
(127, 1, '2019-08-30 14:57:54', '2019-08-30 14:57:54', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam officia temporibus expedita enim, delectus ut culpa earum quibusdam numquam pariatur dignissimos error fugiat sequi illum et odit dolor modi? Dignissimos quam hic numquam veritatis aut inventore, ipsam minima doloribus. Dolor officia fugit nihil nisi. Laudantium, deserunt nesciunt?<br></p>\n<!-- /wp:paragraph -->', 'Biology is cool', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2019-08-30 14:57:54', '2019-08-30 14:57:54', '', 126, 'http://localhost/wpuniversity/app/126-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2019-09-05 13:17:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-05 13:17:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wpuniversity/app/?p=128', 0, 'post', '', 0),
(129, 1, '2019-09-05 13:17:57', '2019-09-05 13:17:57', '', 'Search', '', 'publish', 'closed', 'closed', '', 'search', '', '', '2019-09-05 13:17:58', '2019-09-05 13:17:58', '', 0, 'http://localhost/wpuniversity/app/?page_id=129', 0, 'page', '', 0),
(130, 1, '2019-09-05 13:17:57', '2019-09-05 13:17:57', '', 'Search', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2019-09-05 13:17:57', '2019-09-05 13:17:57', '', 129, 'http://localhost/wpuniversity/app/129-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2019-09-05 13:22:43', '2019-09-05 13:22:43', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"program\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Main Body Content', 'main-body-content', 'publish', 'closed', 'closed', '', 'group_5d710bf1423c3', '', '', '2019-09-05 13:22:43', '2019-09-05 13:22:43', '', 0, 'http://localhost/wpuniversity/app/?post_type=acf-field-group&#038;p=131', 0, 'acf-field-group', '', 0),
(132, 1, '2019-09-05 13:22:43', '2019-09-05 13:22:43', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Main Body Content', 'main_body_content', 'publish', 'closed', 'closed', '', 'field_5d710bfe5a57d', '', '', '2019-09-05 13:22:43', '2019-09-05 13:22:43', '', 131, 'http://localhost/wpuniversity/app/?post_type=acf-field&p=132', 0, 'acf-field', '', 0),
(133, 2, '2019-09-06 06:37:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-06 06:37:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/wpuniversity/app/?p=133', 0, 'post', '', 0),
(135, 2, '2019-09-06 06:53:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-06 06:53:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/wpuniversity/app/?post_type=event&p=135', 0, 'event', '', 0),
(136, 0, '2019-09-06 06:55:33', '2019-09-06 06:55:33', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex a necessitatibus sed aspernatur molestiae voluptas laudantium repellat? Neque nihil facilis accusantium soluta mollitia cupiditate saepe, natus ipsum dolorem officiis aut, non ducimus esse, ipsam eligendi? Velit quos vero, et sapiente ex facilis vitae sequi perspiciatis accusantium autem voluptates, illum nisi, esse ullam obcaecati minima eligendi? Id ab cum, perferendis dolores, ipsam deserunt cumque fuga eius tempore dolore soluta, expedita veniam corporis. Modi totam exercitationem labore sint optio necessitatibus. Amet omnis impedit dolorem cumque quisquam, tempora laborum fuga voluptatum dolor.<br><br></p>\n<!-- /wp:paragraph -->', 'Math Olimpiad', '', 'publish', 'closed', 'closed', '', 'math-olimpiad', '', '', '2019-09-06 06:56:57', '2019-09-06 06:56:57', '', 0, 'http://localhost/wpuniversity/app/?post_type=event&#038;p=136', 0, 'event', '', 0),
(137, 2, '2019-09-06 06:55:34', '2019-09-06 06:55:34', '', 'rome.jpg', '', 'inherit', 'open', 'closed', '', 'rome-jpg', '', '', '2019-09-06 06:55:35', '2019-09-06 06:55:35', '', 136, 'http://localhost/wpuniversity/app/wp-content/uploads/2019/09/rome.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2019-09-06 07:35:27', '2019-09-06 07:35:27', '<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://localhost/wpuniversity/app.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-09-06 07:35:27', '2019-09-06 07:35:27', '', 3, 'http://localhost/wpuniversity/app/3-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2019-09-06 07:42:04', '0000-00-00 00:00:00', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/wpuniversity/app.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-09-06 07:42:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/wpuniversity/app/?page_id=139', 0, 'page', '', 0),
(140, 1, '2019-09-06 11:17:08', '2019-09-06 11:17:08', '', 'My Notes', '', 'publish', 'closed', 'closed', '', 'my-notes', '', '', '2019-09-06 14:22:08', '2019-09-06 14:22:08', '', 0, 'http://localhost/wpuniversity/app/?page_id=140', 0, 'page', '', 0),
(141, 1, '2019-09-06 11:17:08', '2019-09-06 11:17:08', '', 'My Notes', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2019-09-06 11:17:08', '2019-09-06 11:17:08', '', 140, 'http://localhost/wpuniversity/app/140-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2019-09-06 11:40:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-06 11:40:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/wpuniversity/app/?post_type=note&p=144', 0, 'note', '', 0),
(158, 1, '2019-09-06 14:21:46', '2019-09-06 14:21:46', '', 'My Notes', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2019-09-06 14:21:46', '2019-09-06 14:21:46', '', 140, 'http://localhost/wpuniversity/app/140-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2019-09-06 14:22:08', '2019-09-06 14:22:08', '', 'My Notes', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2019-09-06 14:22:08', '2019-09-06 14:22:08', '', 140, 'http://localhost/wpuniversity/app/140-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2019-09-06 14:32:54', '2019-09-06 14:32:54', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nisi in quasi ullam ipsam veniam, ea temporibus nam aut eligendi inventore quidem dolor deserunt nulla consequatur tempore provident atque deleniti velit?', 'Math Note #1', '', 'private', 'closed', 'closed', '', 'math-note-1', '', '', '2019-09-06 14:35:34', '2019-09-06 14:35:34', '', 0, 'http://localhost/wpuniversity/app/note/math-note-1/', 0, 'note', '', 0),
(161, 1, '2019-09-06 14:33:06', '2019-09-06 14:33:06', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nisi in quasi ullam ipsam veniam, ea temporibus nam aut eligendi inventore quidem dolor deserunt nulla consequatur tempore provident atque deleniti velit?', 'Math Note #2', '', 'private', 'closed', 'closed', '', 'math-note-2', '', '', '2019-09-06 14:35:34', '2019-09-06 14:35:34', '', 0, 'http://localhost/wpuniversity/app/note/math-note-2/', 0, 'note', '', 0),
(164, 3, '2019-09-06 14:42:57', '2019-09-06 14:42:57', 'Dasdasdasd', 'Malay: Math Note #1', '', 'trash', 'closed', 'closed', '', 'malay-math-note-1__trashed', '', '', '2019-09-06 14:44:55', '2019-09-06 14:44:55', '', 0, 'http://localhost/wpuniversity/app/note/malay-math-note-1/', 0, 'note', '', 0),
(165, 3, '2019-09-06 14:47:02', '2019-09-06 14:47:02', 'Adasdasd', 'Edited Malay Math', '', 'trash', 'closed', 'closed', '', 'malay-math__trashed', '', '', '2019-09-06 14:48:23', '2019-09-06 14:48:23', '', 0, 'http://localhost/wpuniversity/app/note/malay-math/', 0, 'note', '', 0),
(166, 3, '2019-09-06 14:59:49', '2019-09-06 14:59:49', 'sdasdasddddd', 'asda', '', 'trash', 'closed', 'closed', '', 'asda__trashed', '', '', '2019-09-06 15:00:35', '2019-09-06 15:00:35', '', 0, 'http://localhost/wpuniversity/app/note/asda/', 0, 'note', '', 0),
(167, 3, '2019-09-06 14:59:58', '2019-09-06 14:59:58', 'sdasdasdasdasdasd', 'wda', '', 'trash', 'closed', 'closed', '', '167__trashed', '', '', '2019-09-06 15:00:37', '2019-09-06 15:00:37', '', 0, 'http://localhost/wpuniversity/app/note/167/', 0, 'note', '', 0),
(168, 3, '2019-09-06 15:00:13', '2019-09-06 15:00:13', 'asdasdasdasd', '2222222', '', 'trash', 'closed', 'closed', '', '2222222__trashed', '', '', '2019-09-06 15:00:38', '2019-09-06 15:00:38', '', 0, 'http://localhost/wpuniversity/app/note/2222222/', 0, 'note', '', 0),
(169, 3, '2019-09-06 15:04:26', '2019-09-06 15:04:26', 'asdasdasd', 'asdasd', '', 'trash', 'closed', 'closed', '', 'asdasd__trashed', '', '', '2019-09-06 15:08:09', '2019-09-06 15:08:09', '', 0, 'http://localhost/wpuniversity/app/note/asdasd/', 0, 'note', '', 0),
(170, 3, '2019-09-06 15:04:30', '2019-09-06 15:04:30', 'asdasd', 'asdasd', '', 'trash', 'closed', 'closed', '', 'asdasd-2__trashed', '', '', '2019-09-06 15:08:10', '2019-09-06 15:08:10', '', 0, 'http://localhost/wpuniversity/app/note/asdasd-2/', 0, 'note', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(171, 3, '2019-09-06 15:07:49', '2019-09-06 15:07:49', 'sdasdasd', 'asda', '', 'trash', 'closed', 'closed', '', 'asda__trashed-2', '', '', '2019-09-06 15:08:10', '2019-09-06 15:08:10', '', 0, 'http://localhost/wpuniversity/app/note/asda/', 0, 'note', '', 0),
(172, 3, '2019-09-06 15:07:52', '2019-09-06 15:07:52', 'asdasdasd', 'asdasd', '', 'trash', 'closed', 'closed', '', 'asdasd-3__trashed', '', '', '2019-09-06 15:08:12', '2019-09-06 15:08:12', '', 0, 'http://localhost/wpuniversity/app/note/asdasd-3/', 0, 'note', '', 0),
(173, 3, '2019-09-06 15:07:55', '2019-09-06 15:07:55', 'dasdasdas', 'asdas', '', 'trash', 'closed', 'closed', '', 'asdas__trashed', '', '', '2019-09-06 15:08:04', '2019-09-06 15:08:04', '', 0, 'http://localhost/wpuniversity/app/note/asdas/', 0, 'note', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(3, 'Site Main Navigation', 'site-main-navigation', 0),
(4, 'Explore', 'explore', 0),
(5, 'Learn', 'learn', 0),
(6, 'News', 'news', 0),
(7, 'Media', 'media', 0),
(8, 'Information', 'information', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(27, 3, 0),
(28, 3, 0),
(31, 3, 0),
(34, 4, 0),
(35, 4, 0),
(36, 5, 0),
(37, 5, 0),
(38, 5, 0),
(46, 1, 0),
(48, 1, 0),
(52, 1, 0),
(54, 1, 0),
(56, 1, 0),
(61, 3, 0),
(72, 3, 0),
(94, 3, 0),
(123, 3, 0),
(126, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(3, 3, 'nav_menu', '', 0, 7),
(4, 4, 'nav_menu', '', 0, 2),
(5, 5, 'nav_menu', '', 0, 3),
(6, 6, 'category', '', 0, 1),
(7, 7, 'category', '', 0, 1),
(8, 8, 'category', 'Informative posts', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', 'Hello world!'),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"a20dab0a88b71f1cd4d8e2b7b0ebf4f60f4b5909e5978c8e56e52623382d31eb\";a:4:{s:10:\"expiration\";i:1567862241;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36\";s:5:\"login\";i:1567689441;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '128'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '3'),
(21, 1, 'edit_post_per_page', '20'),
(22, 1, 'wp_user-settings', 'posts_list_mode=list&libraryContent=browse&mfold=o'),
(23, 1, 'wp_user-settings-time', '1567752507'),
(24, 1, 'enable_custom_fields', '1'),
(25, 1, 'closedpostboxes_event', 'a:0:{}'),
(26, 1, 'metaboxhidden_event', 'a:0:{}'),
(27, 1, 'closedpostboxes_professor', 'a:1:{i:0;s:23:\"acf-group_5d679d0365ca2\";}'),
(28, 1, 'metaboxhidden_professor', 'a:0:{}'),
(29, 2, 'nickname', 'kittydoe'),
(30, 2, 'first_name', 'Kitty'),
(31, 2, 'last_name', 'Doe'),
(32, 2, 'description', ''),
(33, 2, 'rich_editing', 'true'),
(34, 2, 'syntax_highlighting', 'true'),
(35, 2, 'comment_shortcuts', 'false'),
(36, 2, 'admin_color', 'fresh'),
(37, 2, 'use_ssl', '0'),
(38, 2, 'show_admin_bar_front', 'true'),
(39, 2, 'locale', ''),
(40, 2, 'wp_capabilities', 'a:2:{s:13:\"event_planner\";b:1;s:14:\"campus_manager\";b:1;}'),
(41, 2, 'wp_user_level', '0'),
(42, 2, 'dismissed_wp_pointers', ''),
(44, 2, 'wp_dashboard_quick_press_last_post_id', '133'),
(45, 3, 'nickname', 'malay'),
(46, 3, 'first_name', ''),
(47, 3, 'last_name', ''),
(48, 3, 'description', ''),
(49, 3, 'rich_editing', 'true'),
(50, 3, 'syntax_highlighting', 'true'),
(51, 3, 'comment_shortcuts', 'false'),
(52, 3, 'admin_color', 'fresh'),
(53, 3, 'use_ssl', '0'),
(54, 3, 'show_admin_bar_front', 'true'),
(55, 3, 'locale', ''),
(56, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(57, 3, 'wp_user_level', '0'),
(58, 3, 'default_password_nag', ''),
(61, 1, 'closedpostboxes_note', 'a:1:{i:0;s:23:\"acf-group_5d67ba55845c4\";}'),
(62, 1, 'metaboxhidden_note', 'a:0:{}'),
(64, 3, 'session_tokens', 'a:1:{s:64:\"3eb568f3803f5bc04ae29eb82855785c61e2eedc68219fd0ee3085ea96f47fbc\";a:4:{s:10:\"expiration\";i:1567951425;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299\";s:5:\"login\";i:1567778625;}}'),
(65, 1, 'closedpostboxes_page', 'a:0:{}'),
(66, 1, 'metaboxhidden_page', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bi7BuHd2nJsTFPs.YOGdSro49AKHoY/', 'admin', 'wpadmin@localhost.com', '', '2019-08-28 06:17:31', '', 0, 'admin'),
(2, 'kittydoe', '$P$BKqUbp53htdQRz7x2lNwyYAVMndSTT/', 'kittydoe', 'kittydoe@wp.com', '', '2019-09-06 06:35:45', '1567751747:$P$BliEwPq9gA57UPPrZB/BUFgPZw9P6m1', 0, 'Kitty Doe'),
(3, 'malay', '$P$BVKgEE.NuMusE2rUsT52hHMc0wG9Qz0', 'malay', 'malay@gmail.com', '', '2019-09-06 07:08:23', '1567753706:$P$B0YEavtjW1cMnDdqeqAyOJvIHL5n7r.', 0, 'malay');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=642;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2016 at 06:57 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp`
--
DROP DATABASE `wp`;
CREATE DATABASE IF NOT EXISTS `wp` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `wp`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2016-05-23 03:45:16', '2016-05-23 03:45:16', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

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
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
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
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Susan Batchelor', 'yes'),
(4, 'blogdescription', 'Healing Through Hypnosis and Heal Your Life® Workshops', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tjdowdell97@gmail.com', 'yes'),
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
(29, 'rewrite_rules', 'a:330:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:11:"services/?$";s:28:"index.php?post_type=services";s:41:"services/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=services&feed=$matches[1]";s:36:"services/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=services&feed=$matches[1]";s:28:"services/page/([0-9]{1,})/?$";s:46:"index.php?post_type=services&paged=$matches[1]";s:12:"employees/?$";s:29:"index.php?post_type=employees";s:42:"employees/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?post_type=employees&feed=$matches[1]";s:37:"employees/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?post_type=employees&feed=$matches[1]";s:29:"employees/page/([0-9]{1,})/?$";s:47:"index.php?post_type=employees&paged=$matches[1]";s:15:"testimonials/?$";s:32:"index.php?post_type=testimonials";s:45:"testimonials/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=testimonials&feed=$matches[1]";s:40:"testimonials/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=testimonials&feed=$matches[1]";s:32:"testimonials/page/([0-9]{1,})/?$";s:50:"index.php?post_type=testimonials&paged=$matches[1]";s:10:"clients/?$";s:27:"index.php?post_type=clients";s:40:"clients/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=clients&feed=$matches[1]";s:35:"clients/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=clients&feed=$matches[1]";s:27:"clients/page/([0-9]{1,})/?$";s:45:"index.php?post_type=clients&paged=$matches[1]";s:11:"projects/?$";s:28:"index.php?post_type=projects";s:41:"projects/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=projects&feed=$matches[1]";s:36:"projects/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=projects&feed=$matches[1]";s:28:"projects/page/([0-9]{1,})/?$";s:46:"index.php?post_type=projects&paged=$matches[1]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:36:"services/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"services/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"services/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"services/([^/]+)/embed/?$";s:41:"index.php?services=$matches[1]&embed=true";s:29:"services/([^/]+)/trackback/?$";s:35:"index.php?services=$matches[1]&tb=1";s:49:"services/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?services=$matches[1]&feed=$matches[2]";s:44:"services/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?services=$matches[1]&feed=$matches[2]";s:37:"services/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?services=$matches[1]&paged=$matches[2]";s:44:"services/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?services=$matches[1]&cpage=$matches[2]";s:34:"services/([^/]+)/wc-api(/(.*))?/?$";s:49:"index.php?services=$matches[1]&wc-api=$matches[3]";s:40:"services/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:51:"services/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:33:"services/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?services=$matches[1]&page=$matches[2]";s:25:"services/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"services/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"services/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:37:"employees/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"employees/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"employees/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"employees/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"employees/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"employees/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"employees/([^/]+)/embed/?$";s:42:"index.php?employees=$matches[1]&embed=true";s:30:"employees/([^/]+)/trackback/?$";s:36:"index.php?employees=$matches[1]&tb=1";s:50:"employees/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?employees=$matches[1]&feed=$matches[2]";s:45:"employees/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?employees=$matches[1]&feed=$matches[2]";s:38:"employees/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?employees=$matches[1]&paged=$matches[2]";s:45:"employees/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?employees=$matches[1]&cpage=$matches[2]";s:35:"employees/([^/]+)/wc-api(/(.*))?/?$";s:50:"index.php?employees=$matches[1]&wc-api=$matches[3]";s:41:"employees/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:52:"employees/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:34:"employees/([^/]+)(?:/([0-9]+))?/?$";s:48:"index.php?employees=$matches[1]&page=$matches[2]";s:26:"employees/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"employees/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"employees/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"employees/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"employees/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"employees/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"testimonials/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"testimonials/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"testimonials/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"testimonials/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"testimonials/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"testimonials/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"testimonials/([^/]+)/embed/?$";s:45:"index.php?testimonials=$matches[1]&embed=true";s:33:"testimonials/([^/]+)/trackback/?$";s:39:"index.php?testimonials=$matches[1]&tb=1";s:53:"testimonials/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?testimonials=$matches[1]&feed=$matches[2]";s:48:"testimonials/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?testimonials=$matches[1]&feed=$matches[2]";s:41:"testimonials/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?testimonials=$matches[1]&paged=$matches[2]";s:48:"testimonials/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?testimonials=$matches[1]&cpage=$matches[2]";s:38:"testimonials/([^/]+)/wc-api(/(.*))?/?$";s:53:"index.php?testimonials=$matches[1]&wc-api=$matches[3]";s:44:"testimonials/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:55:"testimonials/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:37:"testimonials/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?testimonials=$matches[1]&page=$matches[2]";s:29:"testimonials/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"testimonials/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"testimonials/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"testimonials/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"testimonials/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"testimonials/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:35:"clients/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"clients/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"clients/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"clients/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"clients/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"clients/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"clients/([^/]+)/embed/?$";s:40:"index.php?clients=$matches[1]&embed=true";s:28:"clients/([^/]+)/trackback/?$";s:34:"index.php?clients=$matches[1]&tb=1";s:48:"clients/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?clients=$matches[1]&feed=$matches[2]";s:43:"clients/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?clients=$matches[1]&feed=$matches[2]";s:36:"clients/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?clients=$matches[1]&paged=$matches[2]";s:43:"clients/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?clients=$matches[1]&cpage=$matches[2]";s:33:"clients/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?clients=$matches[1]&wc-api=$matches[3]";s:39:"clients/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"clients/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"clients/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?clients=$matches[1]&page=$matches[2]";s:24:"clients/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"clients/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"clients/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"clients/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"clients/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"clients/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"projects/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"projects/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"projects/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"projects/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"projects/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"projects/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"projects/([^/]+)/embed/?$";s:41:"index.php?projects=$matches[1]&embed=true";s:29:"projects/([^/]+)/trackback/?$";s:35:"index.php?projects=$matches[1]&tb=1";s:49:"projects/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?projects=$matches[1]&feed=$matches[2]";s:44:"projects/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?projects=$matches[1]&feed=$matches[2]";s:37:"projects/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?projects=$matches[1]&paged=$matches[2]";s:44:"projects/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?projects=$matches[1]&cpage=$matches[2]";s:34:"projects/([^/]+)/wc-api(/(.*))?/?$";s:49:"index.php?projects=$matches[1]&wc-api=$matches[3]";s:40:"projects/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:51:"projects/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:33:"projects/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?projects=$matches[1]&page=$matches[2]";s:25:"projects/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"projects/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"projects/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"projects/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"projects/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"projects/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:57:"wpforms_log_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?wpforms_log_type=$matches[1]&feed=$matches[2]";s:52:"wpforms_log_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?wpforms_log_type=$matches[1]&feed=$matches[2]";s:33:"wpforms_log_type/([^/]+)/embed/?$";s:49:"index.php?wpforms_log_type=$matches[1]&embed=true";s:45:"wpforms_log_type/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?wpforms_log_type=$matches[1]&paged=$matches[2]";s:27:"wpforms_log_type/([^/]+)/?$";s:38:"index.php?wpforms_log_type=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"product_variation/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"product_variation/([^/]+)/embed/?$";s:50:"index.php?product_variation=$matches[1]&embed=true";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"product_variation/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"product_variation/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"shop_order_refund/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"shop_order_refund/([^/]+)/embed/?$";s:50:"index.php?shop_order_refund=$matches[1]&embed=true";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"shop_order_refund/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"shop_order_refund/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=6&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:62:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:62:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:73:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:39:"siteorigin-panels/siteorigin-panels.php";i:1;s:33:"soliloquy-lite/soliloquy-lite.php";i:2;s:17:"sumome/sumome.php";i:3;s:33:"sydney-toolbox/sydney-toolbox.php";i:4;s:35:"tjd_add_content/tjd_add_content.php";i:5;s:27:"woocommerce/woocommerce.php";i:6;s:24:"wpforms-lite/wpforms.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:4:{i:0;s:62:"C:\\xampp\\htdocs\\wordpress/wp-content/plugins/sumome/sumome.php";i:1;s:78:"C:\\xampp\\htdocs\\wordpress/wp-content/plugins/soliloquy-lite/soliloquy-lite.php";i:2;s:80:"C:\\xampp\\htdocs\\wordpress/wp-content/plugins/tjd_add_content/tjd_add_content.php";i:3;s:0:"";}', 'no'),
(40, 'template', 'sydney', 'yes'),
(41, 'stylesheet', 'sydney-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:6:{i:1;a:0:{}i:3;a:3:{s:5:"title";s:15:"Contact Details";s:4:"text";s:19:"<h2>Contact Me</h2>";s:6:"filter";b:0;}i:4;a:3:{s:5:"title";s:10:"Contact Me";s:4:"text";s:344:"<img src=''http://localhost/wordpress/wp-content/uploads/2016/08/Phone-Icon.png'' alt=''Phone Icon'' class=''contact_icon''><p class=''footer_p''>0408770175</p></img>\r\n\r\n</br>\r\n<img src=''http://localhost/wordpress/wp-content/uploads/2016/08/Email-Icon.png'' alt=''Email Icon'' class=''contact_icon''><p class=''footer_p''>susan.batchelor@hotmail.com</p></img>";s:6:"filter";b:0;}i:5;a:3:{s:5:"title";s:25:"Follow Me On Social Media";s:4:"text";s:420:"<a href=''http://www.facebook.com'' target=''_blank''><img src=''http://localhost/wordpress/wp-content/uploads/2016/08/facebook.png'' alt=''FaceBook'' class=''social_icon'' ></img></a>\r\n\r\n<img src=''http://localhost/wordpress/wp-content/uploads/2016/08/share.png'' alt=''Share'' class=''social_icon''></img>\r\n\r\n<img src=''http://localhost/wordpress/wp-content/uploads/2016/08/google-plus.png'' alt=''Google Plus'' class=''social_icon''></img>";s:6:"filter";b:0;}i:6;a:3:{s:5:"title";s:0:"";s:4:"text";s:188:"<a href=''https://www.iict.com.au/#welcome'' target=''_blank''><img src=''http://localhost/wordpress/wp-content/uploads/2016/08/iict-member.jpg'' alt=''IICT Member'' class=''iict_img'' ></img></a>\r\n";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:131:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'WPLANG', 'en_AU', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(99, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"footer-1";a:1:{i:0;s:6:"text-4";}s:8:"footer-2";a:1:{i:0;s:6:"text-5";}s:8:"footer-3";a:1:{i:0;s:6:"text-6";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:9:{i:1471411327;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1471434241;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1471448716;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1471477441;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1471478400;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1471492086;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1471492138;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1473120000;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(107, 'nonce_key', 'iJ&<>+1czNJByQ<v`sD)v/*>Qw)mSB+;)~^aoYp7x@Wr@@UEar:&=}m-JTb8L:n]', 'yes'),
(108, 'nonce_salt', 'DyWcdE#U(.D0a+V%K@:aBT[?*cdb:H+WWUmCQt+P$Z*^v>!+|NUHKJwwfwo*&F6n', 'yes'),
(117, 'auth_key', '>]MEsr{tvv7dc& VGka1tI{:W<r[9V`c{.Rhdvx+56k{Q;b~$W:*d*r@Wc-`I4-Y', 'yes'),
(118, 'auth_salt', 'o3?:(I)r+^1D^66aF#)$MS{DP2f&~S-Z2{D=o)iBou>_$xY3v{Gjh/E @=>>iVjT', 'yes'),
(119, 'logged_in_key', '3]l2`:_qk~vQh>iW+XpbWf&dgRL;zil@^N5+j4jFsPGA/XkLpqkt2yJ^ZF->F:0.', 'yes'),
(120, 'logged_in_salt', 'nNeYX,P :C)nH:MR,[v2grz_}7y.OX9odo4RE$zZrAT/yO2&N7.[D~Q-|@M$#Z~6', 'yes'),
(152, 'recently_activated', 'a:1:{s:19:"akismet/akismet.php";i:1471318749;}', 'yes'),
(154, '_transient_twentysixteen_categories', '1', 'yes'),
(164, 'current_theme', 'Sydney Child', 'yes'),
(165, 'theme_mods_html5blank-stable', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1468278499;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(166, 'theme_switched', '', 'yes'),
(167, 'theme_switched_via_customizer', '', 'yes'),
(171, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1463977502;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(183, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:21:"tjdowdell97@gmail.com";s:7:"version";s:5:"4.5.3";s:9:"timestamp";i:1468278494;}', 'yes'),
(184, 'theme_mods_sydney', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1470702780;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"footer-1";N;s:8:"footer-2";N;s:8:"footer-3";N;}}}', 'yes'),
(241, 'woocommerce_default_country', 'AU:QLD', 'yes'),
(242, 'woocommerce_allowed_countries', 'all', 'yes'),
(243, 'woocommerce_all_except_countries', '', 'yes'),
(244, 'woocommerce_specific_allowed_countries', '', 'yes'),
(245, 'woocommerce_ship_to_countries', '', 'yes'),
(246, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(247, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(248, 'woocommerce_calc_taxes', 'no', 'yes'),
(249, 'woocommerce_demo_store', 'no', 'yes'),
(250, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(251, 'woocommerce_currency', 'AUD', 'yes'),
(252, 'woocommerce_currency_pos', 'left', 'yes'),
(253, 'woocommerce_price_thousand_sep', ',', 'yes'),
(254, 'woocommerce_price_decimal_sep', '.', 'yes'),
(255, 'woocommerce_price_num_decimals', '2', 'yes'),
(256, 'woocommerce_weight_unit', 'kg', 'yes'),
(257, 'woocommerce_dimension_unit', 'cm', 'yes'),
(258, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(259, 'woocommerce_review_rating_required', 'yes', 'no'),
(260, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(261, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(262, 'woocommerce_shop_page_id', '10', 'yes'),
(263, 'woocommerce_shop_page_display', '', 'yes'),
(264, 'woocommerce_category_archive_display', '', 'yes'),
(265, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(266, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(267, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(268, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(269, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(270, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(271, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(272, 'woocommerce_manage_stock', 'yes', 'yes'),
(273, 'woocommerce_hold_stock_minutes', '60', 'no'),
(274, 'woocommerce_notify_low_stock', 'yes', 'no'),
(275, 'woocommerce_notify_no_stock', 'yes', 'no'),
(276, 'woocommerce_stock_email_recipient', 'tjdowdell97@gmail.com', 'no'),
(277, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(278, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(279, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(280, 'woocommerce_stock_format', '', 'yes'),
(281, 'woocommerce_file_download_method', 'force', 'no'),
(282, 'woocommerce_downloads_require_login', 'no', 'no'),
(283, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(284, 'woocommerce_prices_include_tax', 'no', 'yes'),
(285, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(286, 'woocommerce_shipping_tax_class', '', 'yes'),
(287, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(288, 'woocommerce_tax_classes', 'Reduced Rate\r\nZero Rate', 'yes'),
(289, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(290, 'woocommerce_tax_display_cart', 'excl', 'no'),
(291, 'woocommerce_price_display_suffix', '', 'yes'),
(292, 'woocommerce_tax_total_display', 'itemized', 'no'),
(293, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(294, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(295, 'woocommerce_ship_to_destination', 'billing', 'no'),
(296, 'woocommerce_enable_coupons', 'yes', 'yes'),
(297, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(298, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(299, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(300, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(301, 'woocommerce_cart_page_id', '11', 'yes'),
(302, 'woocommerce_checkout_page_id', '12', 'yes'),
(303, 'woocommerce_terms_page_id', '', 'no'),
(304, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(305, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(306, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(307, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(308, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(309, 'woocommerce_myaccount_page_id', '13', 'yes'),
(310, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(311, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(312, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(313, 'woocommerce_registration_generate_username', 'yes', 'no'),
(314, 'woocommerce_registration_generate_password', 'no', 'no'),
(315, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(316, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(317, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(318, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(319, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(320, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(321, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(322, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(323, 'woocommerce_email_from_name', 'Wordpress Site 1', 'no'),
(324, 'woocommerce_email_from_address', 'tjdowdell97@gmail.com', 'no'),
(325, 'woocommerce_email_header_image', '', 'no'),
(326, 'woocommerce_email_footer_text', 'Wordpress Site 1 - Powered by WooCommerce', 'no'),
(327, 'woocommerce_email_base_color', '#557da1', 'no'),
(328, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(329, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(330, 'woocommerce_email_text_color', '#505050', 'no'),
(331, 'woocommerce_api_enabled', 'yes', 'yes'),
(337, 'woocommerce_admin_notices', 'a:1:{i:0;s:13:"theme_support";}', 'yes'),
(339, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(340, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(341, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(342, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(343, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(344, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(345, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(346, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(347, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(348, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(349, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(350, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(351, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(354, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(355, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:4:"p=11";i:1;s:8:"/basket/";i:2;s:4:"p=12";i:3;s:10:"/checkout/";i:4;s:4:"p=13";i:5;s:12:"/my-account/";}', 'yes'),
(362, 'woocommerce_allow_tracking', 'yes', 'yes'),
(363, 'woocommerce_tracker_last_send', '1471304688', 'yes'),
(397, '_transient_product_query-transient-version', '1468895473', 'yes'),
(398, '_transient_product-transient-version', '1468895473', 'yes'),
(407, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(412, 'product_cat_children', 'a:0:{}', 'yes'),
(415, '_transient_shipping-transient-version', '1468895517', 'yes'),
(416, '_transient_timeout_wc_shipping_method_count_1_1468895517', '1471487517', 'no'),
(417, '_transient_wc_shipping_method_count_1_1468895517', '0', 'no'),
(434, '_transient_timeout_wc_low_stock_count', '1472080521', 'no'),
(435, '_transient_wc_low_stock_count', '0', 'no'),
(436, '_transient_timeout_wc_outofstock_count', '1472080521', 'no'),
(437, '_transient_wc_outofstock_count', '0', 'no'),
(486, 'woocommerce_db_version', '2.6.4', 'yes'),
(487, 'woocommerce_version', '2.6.4', 'yes'),
(488, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(489, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:8:"approved";s:1:"1";s:14:"total_comments";i:1;s:3:"all";i:1;s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(497, 'theme_mods_sydney-child', 'a:17:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:16:"site_title_color";s:7:"#0a0a0a";s:15:"top_items_color";s:7:"#ffffff";s:19:"submenu_items_color";s:7:"#0a0a0a";s:13:"primary_color";s:7:"#0a0101";s:18:"submenu_background";s:7:"#f4f4f4";s:19:"wrapper_top_padding";i:0;s:22:"wrapper_bottom_padding";i:0;s:25:"footer_widgets_background";s:7:"#1b69cf";s:20:"footer_widgets_color";s:7:"#ffffff";s:17:"footer_background";s:7:"#1b69cf";s:12:"footer_color";s:7:"#ffffff";s:10:"menu_style";s:6:"inline";s:12:"header_image";s:13:"remove-header";s:17:"front_header_type";s:6:"slider";s:12:"hide_overlay";s:0:"";}', 'yes'),
(531, '_transient_timeout_wc_report_sales_by_date', '1471398925', 'no'),
(532, '_transient_wc_report_sales_by_date', 'a:21:{s:32:"98621e1e0c3d69fed46b8fd59f7f341e";a:0:{}s:32:"5329aae97ba4b37c38d1a9c5c254e2fb";a:0:{}s:32:"a4a61c041e396775f0bbcebb4cc89adc";a:0:{}s:32:"660438b2297726e48bd7d0a3d82dc2fc";N;s:32:"566bd761e9c871fb174e4102aa869b60";a:0:{}s:32:"166a416055c7d3958ae692530a63e0b2";a:0:{}s:32:"02a813d9924cc8e537dfc19aa5a67205";a:0:{}s:32:"59d5a3e2478435d51d0a1550d1ba6a2c";a:0:{}s:32:"7abd6cbea84508321999cb10ec79b892";a:0:{}s:32:"2fd4684b929ebad47f3122d18dab6d43";a:0:{}s:32:"b93601abf93f583769b881f37b648280";N;s:32:"605b838bf0f437efba2ea4e2c6682451";a:0:{}s:32:"e6215963b5f423d87c2c3ee0f24bce25";a:0:{}s:32:"61706d9ab5b03cf32dd0df1a7d34f800";a:0:{}s:32:"5ae2745f65d64c0210a870d6afdcbc6c";a:0:{}s:32:"b4ba4d2804b497892a0cde094ddb9cdb";a:0:{}s:32:"c887f4cc6061617987dbe3ee7a05712f";a:0:{}s:32:"c67d54d83bf07cb72e3ed3a4e9132919";N;s:32:"211d53193a16c3e15c8d30fd6314abcb";a:0:{}s:32:"3179a3cc060459d62733f12dd82c5a04";a:0:{}s:32:"6c00775fb192e95c1b99878c36aecc04";a:0:{}}', 'no'),
(547, '_transient_timeout_plugin_slugs', '1471410121', 'no'),
(548, '_transient_plugin_slugs', 'a:8:{i:0;s:35:"tjd_add_content/tjd_add_content.php";i:1;s:19:"akismet/akismet.php";i:2;s:9:"hello.php";i:3;s:39:"siteorigin-panels/siteorigin-panels.php";i:4;s:33:"soliloquy-lite/soliloquy-lite.php";i:5;s:17:"sumome/sumome.php";i:6;s:33:"sydney-toolbox/sydney-toolbox.php";i:7;s:27:"woocommerce/woocommerce.php";}', 'no'),
(602, '_transient_timeout_external_ip_address_::1', '1471909487', 'no'),
(603, '_transient_external_ip_address_::1', '121.0.0.125', 'no'),
(617, '_site_transient_timeout_browser_4c9717c179f154741a00df005d8e11d2', '1471917325', 'yes'),
(618, '_site_transient_browser_4c9717c179f154741a00df005d8e11d2', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"52.0.2743.116";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(619, '_transient_timeout_wc_admin_report', '1471398926', 'no'),
(620, '_transient_wc_admin_report', 'a:1:{s:32:"34d2df6e01103f0efcb400076ae7ddf4";a:0:{}}', 'no'),
(621, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1471405569;s:7:"checked";a:6:{s:17:"html5blank-stable";s:5:"1.4.3";s:12:"sydney-child";s:5:"1.0.0";s:6:"sydney";s:4:"1.31";s:13:"twentyfifteen";s:3:"1.6";s:14:"twentyfourteen";s:3:"1.8";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(622, 'siteorigin_panels_initial_version', '2.4.11', 'no'),
(623, 'siteorigin_panels_settings', 'a:0:{}', 'yes'),
(624, 'widget_siteorigin-panels-post-content', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(625, 'widget_siteorigin-panels-postloop', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(626, 'widget_siteorigin-panels-builder', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(627, 'widget_list', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(628, 'widget_fp_social', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(632, 'widget_sydney_contact_info', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(633, 'widget_sydney_video_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(634, 'widget_sydney_action', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(635, 'widget_sydney_clients', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(636, 'widget_sydney_employees', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(637, 'widget_sydney_facts', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(638, 'widget_sydney_latest_news', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(639, 'widget_sydney_portfolio', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(640, 'widget_sydney_services_type_a', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(641, 'widget_sydney_services_type_b', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(642, 'widget_sydney_skills', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(643, 'widget_sydney_testimonials', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(649, 'soliloquy_upgrade', '1', 'yes'),
(650, 'soliloquy_upgrade_cpts', '1', 'yes'),
(652, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(658, '_transient_timeout_wc_related_15', '1471408183', 'no'),
(659, '_transient_wc_related_15', 'a:0:{}', 'no'),
(673, 'sumome_site_id', 'c2fee9001e75c100b92b7d00ed63110056c14f0034c3b700342b5000770ebb00', 'yes'),
(675, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1471405566;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:8:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:6:"3.1.11";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/akismet.3.1.11.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:39:"siteorigin-panels/siteorigin-panels.php";O:8:"stdClass":6:{s:2:"id";s:5:"40030";s:4:"slug";s:17:"siteorigin-panels";s:6:"plugin";s:39:"siteorigin-panels/siteorigin-panels.php";s:11:"new_version";s:6:"2.4.11";s:3:"url";s:48:"https://wordpress.org/plugins/siteorigin-panels/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/siteorigin-panels.2.4.11.zip";}s:33:"soliloquy-lite/soliloquy-lite.php";O:8:"stdClass":6:{s:2:"id";s:5:"33515";s:4:"slug";s:14:"soliloquy-lite";s:6:"plugin";s:33:"soliloquy-lite/soliloquy-lite.php";s:11:"new_version";s:7:"2.5.0.4";s:3:"url";s:45:"https://wordpress.org/plugins/soliloquy-lite/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/soliloquy-lite.zip";}s:17:"sumome/sumome.php";O:8:"stdClass":7:{s:2:"id";s:5:"48317";s:4:"slug";s:6:"sumome";s:6:"plugin";s:17:"sumome/sumome.php";s:11:"new_version";s:4:"1.19";s:3:"url";s:37:"https://wordpress.org/plugins/sumome/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/sumome.1.19.zip";s:14:"upgrade_notice";s:60:"Fixes logout redirect, and updated WordPress tested version.";}s:33:"sydney-toolbox/sydney-toolbox.php";O:8:"stdClass":6:{s:2:"id";s:5:"70155";s:4:"slug";s:14:"sydney-toolbox";s:6:"plugin";s:33:"sydney-toolbox/sydney-toolbox.php";s:11:"new_version";s:4:"1.01";s:3:"url";s:45:"https://wordpress.org/plugins/sydney-toolbox/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/sydney-toolbox.1.01.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"2.6.4";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.2.6.4.zip";}s:24:"wpforms-lite/wpforms.php";O:8:"stdClass":6:{s:2:"id";s:5:"70135";s:4:"slug";s:12:"wpforms-lite";s:6:"plugin";s:24:"wpforms-lite/wpforms.php";s:11:"new_version";s:7:"1.2.5.1";s:3:"url";s:43:"https://wordpress.org/plugins/wpforms-lite/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/wpforms-lite.zip";}}}', 'no'),
(676, 'wpforms_preview_page', '59', 'yes'),
(677, 'wpforms_version', '1.2.5.1', 'yes'),
(680, 'widget_wpforms-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(686, 'db_upgraded', '', 'yes'),
(687, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:63:"https://downloads.wordpress.org/release/en_AU/wordpress-4.6.zip";s:6:"locale";s:5:"en_AU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/en_AU/wordpress-4.6.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.6";s:7:"version";s:3:"4.6";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1471405558;s:15:"version_checked";s:3:"4.6";s:12:"translations";a:0:{}}', 'no'),
(688, 'can_compress_scripts', '0', 'no'),
(689, '_transient_timeout__sol_cache_50', '1471483545', 'no'),
(690, '_transient__sol_cache_50', 'a:3:{s:2:"id";i:56;s:6:"slider";a:2:{i:57;a:9:{s:6:"status";s:6:"active";s:2:"id";i:57;s:13:"attachment_id";i:57;s:3:"src";s:69:"http://localhost/wordpress/wp-content/uploads/2016/08/lorempixel1.jpg";s:5:"title";s:11:"lorempixel1";s:4:"link";s:0:"";s:3:"alt";s:11:"lorempixel1";s:7:"caption";s:0:"";s:4:"type";s:5:"image";}i:58;a:9:{s:6:"status";s:6:"active";s:2:"id";i:58;s:13:"attachment_id";i:58;s:3:"src";s:69:"http://localhost/wordpress/wp-content/uploads/2016/08/lorempixel2.jpg";s:5:"title";s:11:"lorempixel2";s:4:"link";s:0:"";s:3:"alt";s:11:"lorempixel2";s:7:"caption";s:0:"";s:4:"type";s:5:"image";}}s:6:"config";a:14:{s:4:"type";s:7:"default";s:12:"slider_theme";s:4:"base";s:12:"slider_width";i:960;s:13:"slider_height";i:300;s:10:"transition";s:4:"fade";s:8:"duration";i:5000;s:5:"speed";i:400;s:6:"gutter";i:20;s:6:"slider";i:1;s:9:"aria_live";s:6:"polite";s:7:"classes";a:1:{i:0;s:0:"";}s:5:"title";s:8:"About Me";s:4:"slug";s:8:"about-me";s:3:"rtl";i:0;}}', 'no'),
(704, '_site_transient_timeout_theme_roots', '1471407360', 'no'),
(705, '_site_transient_theme_roots', 'a:6:{s:17:"html5blank-stable";s:7:"/themes";s:12:"sydney-child";s:7:"/themes";s:6:"sydney";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(710, '_transient_timeout__sol_cache_all', '1471494136', 'no'),
(711, '_transient__sol_cache_all', 'a:1:{i:0;a:3:{s:2:"id";i:56;s:6:"slider";a:2:{i:57;a:9:{s:6:"status";s:6:"active";s:2:"id";i:57;s:13:"attachment_id";i:57;s:3:"src";s:69:"http://localhost/wordpress/wp-content/uploads/2016/08/lorempixel1.jpg";s:5:"title";s:11:"lorempixel1";s:4:"link";s:0:"";s:3:"alt";s:11:"lorempixel1";s:7:"caption";s:0:"";s:4:"type";s:5:"image";}i:58;a:9:{s:6:"status";s:6:"active";s:2:"id";i:58;s:13:"attachment_id";i:58;s:3:"src";s:69:"http://localhost/wordpress/wp-content/uploads/2016/08/lorempixel2.jpg";s:5:"title";s:11:"lorempixel2";s:4:"link";s:0:"";s:3:"alt";s:11:"lorempixel2";s:7:"caption";s:0:"";s:4:"type";s:5:"image";}}s:6:"config";a:14:{s:4:"type";s:7:"default";s:12:"slider_theme";s:4:"base";s:12:"slider_width";i:1366;s:13:"slider_height";i:768;s:10:"transition";s:4:"fade";s:8:"duration";i:5000;s:5:"speed";i:400;s:6:"gutter";i:20;s:6:"slider";i:0;s:9:"aria_live";s:6:"polite";s:7:"classes";a:1:{i:0;s:0:"";}s:5:"title";s:8:"About Me";s:4:"slug";s:8:"about-me";s:3:"rtl";i:0;}}}', 'no'),
(714, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1468284796:1'),
(6, 6, '_edit_last', '1'),
(7, 6, '_edit_lock', '1471398858:1'),
(8, 15, '_edit_last', '1'),
(9, 15, '_edit_lock', '1468895315:1'),
(10, 15, '_visibility', 'visible'),
(11, 15, '_stock_status', 'instock'),
(12, 15, 'total_sales', '0'),
(13, 15, '_downloadable', 'no'),
(14, 15, '_virtual', 'no'),
(15, 15, '_purchase_note', ''),
(16, 15, '_featured', 'no'),
(17, 15, '_weight', ''),
(18, 15, '_length', ''),
(19, 15, '_width', ''),
(20, 15, '_height', ''),
(21, 15, '_sku', ''),
(22, 15, '_product_attributes', 'a:0:{}'),
(23, 15, '_regular_price', '9.99'),
(24, 15, '_sale_price', ''),
(25, 15, '_sale_price_dates_from', ''),
(26, 15, '_sale_price_dates_to', ''),
(27, 15, '_price', '9.99'),
(28, 15, '_sold_individually', ''),
(29, 15, '_manage_stock', 'no'),
(30, 15, '_backorders', 'no'),
(31, 15, '_stock', ''),
(32, 15, '_upsell_ids', 'a:0:{}'),
(33, 15, '_crosssell_ids', 'a:0:{}'),
(34, 15, '_product_version', '2.6.2'),
(35, 15, '_product_image_gallery', ''),
(36, 15, '_wc_rating_count', 'a:0:{}'),
(37, 15, '_wc_review_count', '0'),
(38, 15, '_wc_average_rating', '0'),
(39, 16, '_menu_item_type', 'post_type'),
(40, 16, '_menu_item_menu_item_parent', '0'),
(41, 16, '_menu_item_object_id', '13'),
(42, 16, '_menu_item_object', 'page'),
(43, 16, '_menu_item_target', ''),
(44, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(45, 16, '_menu_item_xfn', ''),
(46, 16, '_menu_item_url', ''),
(48, 17, '_menu_item_type', 'post_type'),
(49, 17, '_menu_item_menu_item_parent', '0'),
(50, 17, '_menu_item_object_id', '12'),
(51, 17, '_menu_item_object', 'page'),
(52, 17, '_menu_item_target', ''),
(53, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(54, 17, '_menu_item_xfn', ''),
(55, 17, '_menu_item_url', ''),
(66, 19, '_menu_item_type', 'post_type'),
(67, 19, '_menu_item_menu_item_parent', '0'),
(68, 19, '_menu_item_object_id', '10'),
(69, 19, '_menu_item_object', 'page'),
(70, 19, '_menu_item_target', ''),
(71, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(72, 19, '_menu_item_xfn', ''),
(73, 19, '_menu_item_url', ''),
(75, 20, '_edit_last', '1'),
(76, 20, '_edit_lock', '1468906790:1'),
(77, 20, '_visibility', 'visible'),
(78, 20, '_stock_status', 'instock'),
(79, 20, 'total_sales', '0'),
(80, 20, '_downloadable', 'no'),
(81, 20, '_virtual', 'no'),
(82, 20, '_purchase_note', ''),
(83, 20, '_featured', 'no'),
(84, 20, '_weight', ''),
(85, 20, '_length', ''),
(86, 20, '_width', ''),
(87, 20, '_height', ''),
(88, 20, '_sku', ''),
(89, 20, '_product_attributes', 'a:0:{}'),
(90, 20, '_regular_price', '345'),
(91, 20, '_sale_price', ''),
(92, 20, '_sale_price_dates_from', ''),
(93, 20, '_sale_price_dates_to', ''),
(94, 20, '_price', '345'),
(95, 20, '_sold_individually', ''),
(96, 20, '_manage_stock', 'no'),
(97, 20, '_backorders', 'no'),
(98, 20, '_stock', ''),
(99, 20, '_upsell_ids', 'a:0:{}'),
(100, 20, '_crosssell_ids', 'a:0:{}'),
(101, 20, '_product_version', '2.6.2'),
(102, 20, '_product_image_gallery', ''),
(103, 20, '_wc_rating_count', 'a:0:{}'),
(104, 20, '_wc_average_rating', '0'),
(105, 22, '_wp_attached_file', '2016/08/portrait.png'),
(106, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:332;s:6:"height";i:335;s:4:"file";s:20:"2016/08/portrait.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"portrait-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"portrait-297x300.png";s:5:"width";i:297;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"portrait-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"portrait-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:20:"portrait-230x232.png";s:5:"width";i:230;s:6:"height";i:232;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(107, 23, '_edit_last', '1'),
(108, 23, '_edit_lock', '1471409767:1'),
(109, 23, '_wp_page_template', 'page-templates/child_sydney_about_me.php'),
(110, 10, '_edit_lock', '1470714174:1'),
(111, 10, '_edit_last', '1'),
(112, 10, '_wp_page_template', 'default'),
(113, 26, '_edit_last', '1'),
(114, 26, '_wp_page_template', 'default'),
(115, 26, '_edit_lock', '1470714194:1'),
(116, 28, '_edit_last', '1'),
(117, 28, '_wp_page_template', 'default'),
(118, 28, '_edit_lock', '1470714326:1'),
(119, 30, '_edit_last', '1'),
(120, 30, '_wp_page_template', 'default'),
(121, 30, '_edit_lock', '1470714348:1'),
(122, 32, '_edit_last', '1'),
(123, 32, '_wp_page_template', 'default'),
(124, 32, '_edit_lock', '1470714357:1'),
(125, 34, '_edit_last', '1'),
(126, 34, '_wp_page_template', 'default'),
(127, 34, '_edit_lock', '1470714372:1'),
(128, 36, '_menu_item_type', 'post_type'),
(129, 36, '_menu_item_menu_item_parent', '40'),
(130, 36, '_menu_item_object_id', '34'),
(131, 36, '_menu_item_object', 'page'),
(132, 36, '_menu_item_target', ''),
(133, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(134, 36, '_menu_item_xfn', ''),
(135, 36, '_menu_item_url', ''),
(137, 37, '_menu_item_type', 'post_type'),
(138, 37, '_menu_item_menu_item_parent', '40'),
(139, 37, '_menu_item_object_id', '32'),
(140, 37, '_menu_item_object', 'page'),
(141, 37, '_menu_item_target', ''),
(142, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(143, 37, '_menu_item_xfn', ''),
(144, 37, '_menu_item_url', ''),
(146, 38, '_menu_item_type', 'post_type'),
(147, 38, '_menu_item_menu_item_parent', '40'),
(148, 38, '_menu_item_object_id', '30'),
(149, 38, '_menu_item_object', 'page'),
(150, 38, '_menu_item_target', ''),
(151, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(152, 38, '_menu_item_xfn', ''),
(153, 38, '_menu_item_url', ''),
(155, 39, '_menu_item_type', 'post_type'),
(156, 39, '_menu_item_menu_item_parent', '0'),
(157, 39, '_menu_item_object_id', '28'),
(158, 39, '_menu_item_object', 'page'),
(159, 39, '_menu_item_target', ''),
(160, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(161, 39, '_menu_item_xfn', ''),
(162, 39, '_menu_item_url', ''),
(164, 40, '_menu_item_type', 'post_type'),
(165, 40, '_menu_item_menu_item_parent', '0'),
(166, 40, '_menu_item_object_id', '26'),
(167, 40, '_menu_item_object', 'page'),
(168, 40, '_menu_item_target', ''),
(169, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(170, 40, '_menu_item_xfn', ''),
(171, 40, '_menu_item_url', ''),
(173, 41, '_menu_item_type', 'post_type'),
(174, 41, '_menu_item_menu_item_parent', '0'),
(175, 41, '_menu_item_object_id', '23'),
(176, 41, '_menu_item_object', 'page'),
(177, 41, '_menu_item_target', ''),
(178, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(179, 41, '_menu_item_xfn', ''),
(180, 41, '_menu_item_url', ''),
(182, 42, '_menu_item_type', 'post_type'),
(183, 42, '_menu_item_menu_item_parent', '0'),
(184, 42, '_menu_item_object_id', '6'),
(185, 42, '_menu_item_object', 'page'),
(186, 42, '_menu_item_target', ''),
(187, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(188, 42, '_menu_item_xfn', ''),
(189, 42, '_menu_item_url', ''),
(191, 43, '_wp_attached_file', '2016/08/stars.png'),
(192, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:65;s:6:"height";i:109;s:4:"file";s:17:"2016/08/stars.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(193, 6, '_wp_page_template', 'page-templates/child_sydney_homepage.php'),
(194, 44, '_wp_attached_file', '2016/08/hypnotherapy.jpg'),
(195, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:24:"2016/08/hypnotherapy.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"hypnotherapy-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"hypnotherapy-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"hypnotherapy-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"hypnotherapy-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"hypnotherapy-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:24:"hypnotherapy-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:24:"hypnotherapy-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-large-thumb";a:4:{s:4:"file";s:24:"hypnotherapy-830x623.jpg";s:5:"width";i:830;s:6:"height";i:623;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sydney-medium-thumb";a:4:{s:4:"file";s:24:"hypnotherapy-550x400.jpg";s:5:"width";i:550;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:24:"hypnotherapy-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sydney-service-thumb";a:4:{s:4:"file";s:24:"hypnotherapy-350x263.jpg";s:5:"width";i:350;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:16:"sydney-mas-thumb";a:4:{s:4:"file";s:24:"hypnotherapy-480x360.jpg";s:5:"width";i:480;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(196, 45, '_wp_attached_file', '2016/08/iict-member.jpg'),
(197, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3405;s:6:"height";i:1542;s:4:"file";s:23:"2016/08/iict-member.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"iict-member-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"iict-member-300x136.jpg";s:5:"width";i:300;s:6:"height";i:136;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"iict-member-768x348.jpg";s:5:"width";i:768;s:6:"height";i:348;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"iict-member-1024x464.jpg";s:5:"width";i:1024;s:6:"height";i:464;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"iict-member-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"iict-member-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"iict-member-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-large-thumb";a:4:{s:4:"file";s:23:"iict-member-830x376.jpg";s:5:"width";i:830;s:6:"height";i:376;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sydney-medium-thumb";a:4:{s:4:"file";s:23:"iict-member-550x400.jpg";s:5:"width";i:550;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:23:"iict-member-230x104.jpg";s:5:"width";i:230;s:6:"height";i:104;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sydney-service-thumb";a:4:{s:4:"file";s:23:"iict-member-350x159.jpg";s:5:"width";i:350;s:6:"height";i:159;s:9:"mime-type";s:10:"image/jpeg";}s:16:"sydney-mas-thumb";a:4:{s:4:"file";s:23:"iict-member-480x217.jpg";s:5:"width";i:480;s:6:"height";i:217;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(200, 47, '_wp_attached_file', '2016/08/tara.png'),
(201, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:194;s:6:"height";i:259;s:4:"file";s:16:"2016/08/tara.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"tara-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"tara-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(202, 6, '1.1_section_1_title', 'Hello, Are You Looking for Inner Peace?'),
(203, 6, '1.2_section_1_text', '"Life can be tough sometimes and during these tough times we need support, some friendly advice and to know that there is light at the end of the tunnel.  </br> What I offer is to work with you to find your greatness and to provide you with strategies to empower yourself and to live the life that you desire. </br> It all begins with taking the first step.  No one can do it for you, it is up to you so say ‘yes’ to living the best life you can, being kind to yourself and to believing anything is possible."'),
(204, 6, '2.1_testimonial_1_title', 'Testimonials'),
(205, 6, '2.2_testimonial_1_text', ' "Awesome! Thank you for your beautifully intuitive workshop.  I am full of love and light and just loving my "gift" and message.  Thank you!!! " </br></br> - Tara, Brisbane'),
(206, 6, '3.1_hypnotherapy_session_title', 'Hypnotherapy Sessions'),
(207, 6, '3.2_hypnotherapy_session_subtitle', 'Creating a positive environment allowing you to move forward with confidence'),
(208, 6, '3.3_hypnotherapy_session_text', 'Hypnotherapy is a form of relaxation and visualization.  You will be happy to learn that you are aware and in control at all times during the session.  Most sessions take about 1.5 hours as we work on issues in your life.  By working together we can work out the best way forward for yourself and how best to work through your issues.  This level of relaxation is a way of connecting to your true feelings and in a safe environment expressing who you really are and the goals you have and the strategies to accomplish those goals.'),
(209, 6, '4.1_past_life_title', 'Past Life Therapy'),
(210, 6, '4.2_past_life_subtitle', 'Journeying to the memories of the past to heal the present'),
(211, 6, '4.3_past_life_text', 'This is very powerful healing work and is my specialist field.  Using relaxation to regress to another time amazing healing can take place as you understand why things are happening in your life.  This regression is undertaken in a very safe space and very much experienced as if watching a DVD with an understanding that is “all knowing”.'),
(213, 6, '5.1_workshop_title', 'Heal your Life® Workshops inspired by Louise L. Hay'),
(214, 6, '5.2_workshop_subtitle', 'Amazing workshops that are the foundations upon which your brilliance shines'),
(215, 6, '5.3_workshop_text', 'As a certified workshop leader I guide you in a group setting to experience some amazing exercises which allow you to open up the belief that you are worthy, deserve to live a fulfilled life and to believe in yourself.  These workshops are empowering and leave you with an incredible and valuable sense of really understanding yourself.  They also open up a feeling of connection to the universe and each other.'),
(217, 6, '6.1_voice_memo_title', 'Voice Memos'),
(218, 6, '6.2_voice_memo_subtitle', 'Opening yourself up to a new belief system'),
(219, 6, '6.3_voice_memo_text', 'I create voice memos (personal recordings) which are reminders of how wonderful you are, they keep you focused and build your self confidence.  They can be played in the car as they are not relaxation recordings but rather motivational and healing voice recordings.  They are personalized and specific to your circumstances.  A really powerful tool if used on a regular basis.'),
(221, 6, '7.1_healing_book_title', 'My Healing Book'),
(222, 6, '7.2_healing_book_subtitle', 'Healing words that open you up to your magnificence'),
(223, 6, '7.3_healing_book_text', 'Description of the book'),
(225, 48, '_wp_attached_file', '2016/08/Phone-Icon.png'),
(226, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:22:"2016/08/Phone-Icon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(227, 49, '_wp_attached_file', '2016/08/Email-Icon.png'),
(228, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:22:"2016/08/Email-Icon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(229, 50, '_wp_attached_file', '2016/08/google-plus.png'),
(230, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:114;s:6:"height";i:114;s:4:"file";s:23:"2016/08/google-plus.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(231, 51, '_wp_attached_file', '2016/08/share.png'),
(232, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:114;s:6:"height";i:114;s:4:"file";s:17:"2016/08/share.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(233, 52, '_wp_attached_file', '2016/08/facebook.png'),
(234, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:114;s:6:"height";i:114;s:4:"file";s:20:"2016/08/facebook.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(235, 2, '_wp_trash_meta_status', 'publish'),
(236, 2, '_wp_trash_meta_time', '1471313278'),
(237, 2, '_wp_desired_post_slug', 'sample-page'),
(238, 57, '_wp_attached_file', '2016/08/lorempixel1.jpg'),
(239, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1366;s:6:"height";i:768;s:4:"file";s:23:"2016/08/lorempixel1.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"lorempixel1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"lorempixel1-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"lorempixel1-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"lorempixel1-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"lorempixel1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"lorempixel1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"lorempixel1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-large-thumb";a:4:{s:4:"file";s:23:"lorempixel1-830x467.jpg";s:5:"width";i:830;s:6:"height";i:467;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sydney-medium-thumb";a:4:{s:4:"file";s:23:"lorempixel1-550x400.jpg";s:5:"width";i:550;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:23:"lorempixel1-230x129.jpg";s:5:"width";i:230;s:6:"height";i:129;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sydney-service-thumb";a:4:{s:4:"file";s:23:"lorempixel1-350x197.jpg";s:5:"width";i:350;s:6:"height";i:197;s:9:"mime-type";s:10:"image/jpeg";}s:16:"sydney-mas-thumb";a:4:{s:4:"file";s:23:"lorempixel1-480x270.jpg";s:5:"width";i:480;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:13:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}s:14:"resized_images";a:1:{i:0;s:9:"960x300_c";}}}'),
(240, 57, '_sol_has_slider', 'a:1:{i:0;i:56;}'),
(241, 56, '_sol_in_slider', 'a:2:{i:0;i:57;i:1;i:58;}'),
(242, 56, '_sol_slider_data', 'a:3:{s:2:"id";i:56;s:6:"slider";a:2:{i:57;a:9:{s:6:"status";s:6:"active";s:2:"id";i:57;s:13:"attachment_id";i:57;s:3:"src";s:69:"http://localhost/wordpress/wp-content/uploads/2016/08/lorempixel1.jpg";s:5:"title";s:11:"lorempixel1";s:4:"link";s:0:"";s:3:"alt";s:11:"lorempixel1";s:7:"caption";s:0:"";s:4:"type";s:5:"image";}i:58;a:9:{s:6:"status";s:6:"active";s:2:"id";i:58;s:13:"attachment_id";i:58;s:3:"src";s:69:"http://localhost/wordpress/wp-content/uploads/2016/08/lorempixel2.jpg";s:5:"title";s:11:"lorempixel2";s:4:"link";s:0:"";s:3:"alt";s:11:"lorempixel2";s:7:"caption";s:0:"";s:4:"type";s:5:"image";}}s:6:"config";a:14:{s:4:"type";s:7:"default";s:12:"slider_theme";s:4:"base";s:12:"slider_width";i:1366;s:13:"slider_height";i:768;s:10:"transition";s:4:"fade";s:8:"duration";i:5000;s:5:"speed";i:400;s:6:"gutter";i:20;s:6:"slider";i:0;s:9:"aria_live";s:6:"polite";s:7:"classes";a:1:{i:0;s:0:"";}s:5:"title";s:8:"About Me";s:4:"slug";s:8:"about-me";s:3:"rtl";i:0;}}'),
(243, 58, '_wp_attached_file', '2016/08/lorempixel2.jpg'),
(244, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1366;s:6:"height";i:768;s:4:"file";s:23:"2016/08/lorempixel2.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"lorempixel2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"lorempixel2-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"lorempixel2-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"lorempixel2-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"lorempixel2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"lorempixel2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"lorempixel2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-large-thumb";a:4:{s:4:"file";s:23:"lorempixel2-830x467.jpg";s:5:"width";i:830;s:6:"height";i:467;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sydney-medium-thumb";a:4:{s:4:"file";s:23:"lorempixel2-550x400.jpg";s:5:"width";i:550;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sydney-small-thumb";a:4:{s:4:"file";s:23:"lorempixel2-230x129.jpg";s:5:"width";i:230;s:6:"height";i:129;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sydney-service-thumb";a:4:{s:4:"file";s:23:"lorempixel2-350x197.jpg";s:5:"width";i:350;s:6:"height";i:197;s:9:"mime-type";s:10:"image/jpeg";}s:16:"sydney-mas-thumb";a:4:{s:4:"file";s:23:"lorempixel2-480x270.jpg";s:5:"width";i:480;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:13:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}s:14:"resized_images";a:1:{i:0;s:9:"960x300_c";}}}'),
(245, 58, '_sol_has_slider', 'a:1:{i:0;i:56;}'),
(246, 56, '_edit_last', '1'),
(248, 56, '_edit_lock', '1471406857:1'),
(249, 6, '8.1_funeral_celebrant_title', 'Funeral Celebrant'),
(250, 6, '8.2_funeral_celebrant_subtitle', 'Should you need me, I’ll be right beside you'),
(251, 6, '8.3_funeral_celebrant_text', 'I am also a Funeral Celebrant and I feel very privileged to help those who are grieving at a most difficult time in life.  To be that support and to be respectful to the family’s wishes at this time is very important to me.  My gift is to be of service.  I hope that you won’t require my services but if you should, I offer a very professional, caring, understanding and stress-free service working closely with the Oceanview Funeral Home.'),
(253, 23, '1.1_quote', '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."'),
(254, 23, '2.1_information', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-05-23 03:45:16', '2016-05-23 03:45:16', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-05-23 03:45:16', '2016-05-23 03:45:16', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2016-05-23 03:45:16', '2016-05-23 03:45:16', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2016-08-16 02:07:58', '2016-08-16 02:07:58', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(4, 1, '2016-05-23 03:55:27', '2016-05-23 03:55:27', '<h1>This is a heading 1 title</h1>\r\nthis is a paragraph\r\n[tjd_add_content]', 'First Blog Post', '', 'publish', 'open', 'open', '', 'first-blog-post', '', '', '2016-07-12 00:55:31', '2016-07-12 00:55:31', '', 0, 'http://localhost/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2016-05-23 03:54:38', '2016-05-23 03:54:38', '<h1>This is a heading 1 title</h1>\r\nthis is a paragraph', 'First Blog Post', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-05-23 03:54:38', '2016-05-23 03:54:38', '', 4, 'http://localhost/wordpress/2016/05/23/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2016-05-23 04:02:34', '2016-05-23 04:02:34', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-08-17 01:29:56', '2016-08-17 01:29:56', '', 0, 'http://localhost/wordpress/?page_id=6', 0, 'page', '', 0),
(7, 1, '2016-05-23 04:02:34', '2016-05-23 04:02:34', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-05-23 04:02:34', '2016-05-23 04:02:34', '', 6, 'http://localhost/wordpress/2016/05/23/6-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2016-07-12 00:55:31', '2016-07-12 00:55:31', '<h1>This is a heading 1 title</h1>\r\nthis is a paragraph\r\n[tjd_add_content]', 'First Blog Post', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-07-12 00:55:31', '2016-07-12 00:55:31', '', 4, 'http://localhost/wordpress/2016/07/12/4-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2016-07-18 00:18:46', '2016-07-18 00:18:46', '', 'My Book', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2016-08-09 03:45:14', '2016-08-09 03:45:14', '', 0, 'http://localhost/wordpress/shop/', 0, 'page', '', 0),
(11, 1, '2016-07-18 00:18:46', '2016-07-18 00:18:46', '[woocommerce_cart]', 'Basket', '', 'publish', 'closed', 'closed', '', 'basket', '', '', '2016-07-18 00:18:46', '2016-07-18 00:18:46', '', 0, 'http://localhost/wordpress/basket/', 0, 'page', '', 0),
(12, 1, '2016-07-18 00:18:46', '2016-07-18 00:18:46', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2016-07-18 00:18:46', '2016-07-18 00:18:46', '', 0, 'http://localhost/wordpress/checkout/', 0, 'page', '', 0),
(13, 1, '2016-07-18 00:18:46', '2016-07-18 00:18:46', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2016-07-18 00:18:46', '2016-07-18 00:18:46', '', 0, 'http://localhost/wordpress/my-account/', 0, 'page', '', 0),
(15, 1, '2016-07-19 02:30:41', '2016-07-19 02:30:41', 'Book', 'Book', '', 'publish', 'open', 'closed', '', 'book', '', '', '2016-07-19 02:30:55', '2016-07-19 02:30:55', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=15', 0, 'product', '', 0),
(16, 1, '2016-07-19 02:29:45', '2016-07-19 02:29:45', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2016-08-16 01:28:55', '2016-08-16 01:28:55', '', 0, 'http://localhost/wordpress/?p=16', 9, 'nav_menu_item', '', 0),
(17, 1, '2016-07-19 02:29:45', '2016-07-19 02:29:45', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2016-08-16 01:28:54', '2016-08-16 01:28:54', '', 0, 'http://localhost/wordpress/?p=17', 8, 'nav_menu_item', '', 0),
(19, 1, '2016-07-19 02:29:45', '2016-07-19 02:29:45', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2016-08-16 01:28:54', '2016-08-16 01:28:54', '', 0, 'http://localhost/wordpress/?p=19', 7, 'nav_menu_item', '', 0),
(20, 1, '2016-07-19 02:31:13', '2016-07-19 02:31:13', 'ujhtyjhtyjhtyhntty', 'dgvgbgbrfgbrfgb', '', 'publish', 'open', 'closed', '', 'dgvgbgbrfgbrfgb', '', '', '2016-07-19 02:31:13', '2016-07-19 02:31:13', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=20', 0, 'product', '', 0),
(22, 1, '2016-08-09 03:30:29', '2016-08-09 03:30:29', '', 'portrait', '', 'inherit', 'open', 'closed', '', 'portrait', '', '', '2016-08-09 03:30:29', '2016-08-09 03:30:29', '', 0, 'http://localhost/wordpress/wp-content/uploads/2016/08/portrait.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2016-08-09 03:43:56', '2016-08-09 03:43:56', '', 'About Susan', '', 'publish', 'closed', 'closed', '', 'about-me', '', '', '2016-08-17 04:22:15', '2016-08-17 04:22:15', '', 0, 'http://localhost/wordpress/?page_id=23', 0, 'page', '', 0),
(24, 1, '2016-08-09 03:43:56', '2016-08-09 03:43:56', '', 'About Me', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-08-09 03:43:56', '2016-08-09 03:43:56', '', 23, 'http://localhost/wordpress/2016/08/09/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2016-08-09 03:45:14', '2016-08-09 03:45:14', '', 'My Book', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-08-09 03:45:14', '2016-08-09 03:45:14', '', 10, 'http://localhost/wordpress/2016/08/09/10-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2016-08-09 03:45:28', '2016-08-09 03:45:28', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2016-08-09 03:45:28', '2016-08-09 03:45:28', '', 0, 'http://localhost/wordpress/?page_id=26', 0, 'page', '', 0),
(27, 1, '2016-08-09 03:45:28', '2016-08-09 03:45:28', '', 'Services', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2016-08-09 03:45:28', '2016-08-09 03:45:28', '', 26, 'http://localhost/wordpress/2016/08/09/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2016-08-09 03:47:46', '2016-08-09 03:47:46', '', 'My Blog', '', 'publish', 'closed', 'closed', '', 'my-blog', '', '', '2016-08-09 03:47:46', '2016-08-09 03:47:46', '', 0, 'http://localhost/wordpress/?page_id=28', 0, 'page', '', 0),
(29, 1, '2016-08-09 03:47:46', '2016-08-09 03:47:46', '', 'My Blog', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-08-09 03:47:46', '2016-08-09 03:47:46', '', 28, 'http://localhost/wordpress/2016/08/09/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2016-08-09 03:48:09', '2016-08-09 03:48:09', '', 'Hypnotherapy Sessions', '', 'publish', 'closed', 'closed', '', 'hypnotherapy-sessions', '', '', '2016-08-09 03:48:09', '2016-08-09 03:48:09', '', 0, 'http://localhost/wordpress/?page_id=30', 0, 'page', '', 0),
(31, 1, '2016-08-09 03:48:09', '2016-08-09 03:48:09', '', 'Hypnotherapy Sessions', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-08-09 03:48:09', '2016-08-09 03:48:09', '', 30, 'http://localhost/wordpress/2016/08/09/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2016-08-09 03:48:19', '2016-08-09 03:48:19', '', 'Workshops', '', 'publish', 'closed', 'closed', '', 'workshops', '', '', '2016-08-09 03:48:19', '2016-08-09 03:48:19', '', 0, 'http://localhost/wordpress/?page_id=32', 0, 'page', '', 0),
(33, 1, '2016-08-09 03:48:19', '2016-08-09 03:48:19', '', 'Workshops', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2016-08-09 03:48:19', '2016-08-09 03:48:19', '', 32, 'http://localhost/wordpress/2016/08/09/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2016-08-09 03:48:30', '2016-08-09 03:48:30', '', 'Funeral Celebrant', '', 'publish', 'closed', 'closed', '', 'funeral-celebrant', '', '', '2016-08-09 03:48:30', '2016-08-09 03:48:30', '', 0, 'http://localhost/wordpress/?page_id=34', 0, 'page', '', 0),
(35, 1, '2016-08-09 03:48:30', '2016-08-09 03:48:30', '', 'Funeral Celebrant', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2016-08-09 03:48:30', '2016-08-09 03:48:30', '', 34, 'http://localhost/wordpress/2016/08/09/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2016-08-09 03:51:08', '2016-08-09 03:51:08', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2016-08-16 01:29:30', '2016-08-16 01:29:30', '', 0, 'http://localhost/wordpress/?p=36', 6, 'nav_menu_item', '', 0),
(37, 1, '2016-08-09 03:51:07', '2016-08-09 03:51:07', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2016-08-16 01:28:54', '2016-08-16 01:28:54', '', 0, 'http://localhost/wordpress/?p=37', 5, 'nav_menu_item', '', 0),
(38, 1, '2016-08-09 03:51:06', '2016-08-09 03:51:06', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2016-08-16 01:28:54', '2016-08-16 01:28:54', '', 0, 'http://localhost/wordpress/?p=38', 4, 'nav_menu_item', '', 0),
(39, 1, '2016-08-09 03:51:05', '2016-08-09 03:51:05', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2016-08-16 01:28:55', '2016-08-16 01:28:55', '', 0, 'http://localhost/wordpress/?p=39', 10, 'nav_menu_item', '', 0),
(40, 1, '2016-08-09 03:51:06', '2016-08-09 03:51:06', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2016-08-16 01:28:54', '2016-08-16 01:28:54', '', 0, 'http://localhost/wordpress/?p=40', 3, 'nav_menu_item', '', 0),
(41, 1, '2016-08-09 03:51:08', '2016-08-09 03:51:08', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2016-08-16 01:28:54', '2016-08-16 01:28:54', '', 0, 'http://localhost/wordpress/?p=41', 2, 'nav_menu_item', '', 0),
(42, 1, '2016-08-09 03:51:09', '2016-08-09 03:51:09', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2016-08-16 01:28:54', '2016-08-16 01:28:54', '', 0, 'http://localhost/wordpress/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2016-08-09 04:17:31', '2016-08-09 04:17:31', '', 'stars', '', 'inherit', 'open', 'closed', '', 'stars', '', '', '2016-08-09 04:17:31', '2016-08-09 04:17:31', '', 0, 'http://localhost/wordpress/wp-content/uploads/2016/08/stars.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2016-08-14 23:24:14', '2016-08-14 23:24:14', '', 'hypnotherapy', '', 'inherit', 'open', 'closed', '', 'hypnotherapy', '', '', '2016-08-14 23:24:14', '2016-08-14 23:24:14', '', 0, 'http://localhost/wordpress/wp-content/uploads/2016/08/hypnotherapy.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2016-08-14 23:29:21', '2016-08-14 23:29:21', '', 'iict member', '', 'inherit', 'open', 'closed', '', 'iict-member', '', '', '2016-08-14 23:29:21', '2016-08-14 23:29:21', '', 0, 'http://localhost/wordpress/wp-content/uploads/2016/08/iict-member.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2016-08-15 01:50:41', '2016-08-15 01:50:41', '', 'tara', '', 'inherit', 'open', 'closed', '', 'tara', '', '', '2016-08-15 01:50:41', '2016-08-15 01:50:41', '', 0, 'http://localhost/wordpress/wp-content/uploads/2016/08/tara.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2016-08-15 23:49:09', '2016-08-15 23:49:09', '', 'Phone Icon', '', 'inherit', 'open', 'closed', '', 'phone-icon', '', '', '2016-08-15 23:49:09', '2016-08-15 23:49:09', '', 0, 'http://localhost/wordpress/wp-content/uploads/2016/08/Phone-Icon.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2016-08-15 23:49:10', '2016-08-15 23:49:10', '', 'Email Icon', '', 'inherit', 'open', 'closed', '', 'email-icon', '', '', '2016-08-15 23:49:10', '2016-08-15 23:49:10', '', 0, 'http://localhost/wordpress/wp-content/uploads/2016/08/Email-Icon.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2016-08-16 00:14:13', '2016-08-16 00:14:13', '', 'google-plus', '', 'inherit', 'open', 'closed', '', 'google-plus', '', '', '2016-08-16 00:14:13', '2016-08-16 00:14:13', '', 0, 'http://localhost/wordpress/wp-content/uploads/2016/08/google-plus.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2016-08-16 00:14:14', '2016-08-16 00:14:14', '', 'share', '', 'inherit', 'open', 'closed', '', 'share', '', '', '2016-08-16 00:14:14', '2016-08-16 00:14:14', '', 0, 'http://localhost/wordpress/wp-content/uploads/2016/08/share.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2016-08-16 00:14:15', '2016-08-16 00:14:15', '', 'facebook', '', 'inherit', 'open', 'closed', '', 'facebook', '', '', '2016-08-16 00:14:15', '2016-08-16 00:14:15', '', 0, 'http://localhost/wordpress/wp-content/uploads/2016/08/facebook.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2016-08-16 02:07:58', '2016-08-16 02:07:58', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-08-16 02:07:58', '2016-08-16 02:07:58', '', 2, 'http://localhost/wordpress/2016/08/16/2-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2016-08-16 03:41:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-08-16 03:41:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=soliloquy&p=54', 0, 'soliloquy', '', 0),
(55, 1, '2016-08-16 03:50:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-08-16 03:50:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=soliloquy&p=55', 0, 'soliloquy', '', 0),
(56, 1, '2016-08-16 04:37:11', '2016-08-16 04:37:11', '', 'About Me', '', 'publish', 'closed', 'closed', '', 'about-me', '', '', '2016-08-17 04:00:28', '2016-08-17 04:00:28', '', 0, 'http://localhost/wordpress/?post_type=soliloquy&#038;p=56', 0, 'soliloquy', '', 0),
(57, 1, '2016-08-16 04:36:47', '2016-08-16 04:36:47', '', 'lorempixel1', '', 'inherit', 'open', 'closed', '', 'lorempixel1', '', '', '2016-08-16 04:36:47', '2016-08-16 04:36:47', '', 0, 'http://localhost/wordpress/wp-content/uploads/2016/08/lorempixel1.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2016-08-16 04:36:54', '2016-08-16 04:36:54', '', 'lorempixel2', '', 'inherit', 'open', 'closed', '', 'lorempixel2', '', '', '2016-08-16 04:36:54', '2016-08-16 04:36:54', '', 0, 'http://localhost/wordpress/wp-content/uploads/2016/08/lorempixel2.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2016-08-16 05:05:24', '2016-08-16 05:05:24', '<p>This is the WPForms preview page. All your form previews will be handled on this page.</p><p>The page is set to private, so it is not publically accessible. Please do not delete this page :) .</p>', 'WPForms Preview', '', 'private', 'closed', 'closed', '', 'wpforms-preview', '', '', '2016-08-16 05:05:24', '2016-08-16 05:05:24', '', 0, 'http://localhost/wordpress/wpforms-preview/', 0, 'page', '', 0),
(60, 1, '2016-08-16 05:06:00', '2016-08-16 05:06:00', '{"id":"60","field_id":4,"fields":{"0":{"id":"0","type":"name","label":"Name","format":"first-last","description":"","required":"1","size":"medium","simple_placeholder":"","simple_default":"","first_placeholder":"First Name","first_default":"","middle_placeholder":"","middle_default":"","last_placeholder":"Last Name","last_default":"","css":""},"1":{"id":"1","type":"email","label":"E-mail","description":"","required":"1","size":"medium","placeholder":"Your Email Address","css":""},"3":{"id":"3","type":"text","label":"Subject","description":"","required":"1","size":"medium","placeholder":"Subject","default_value":"","css":""},"2":{"id":"2","type":"textarea","label":"Message","description":"","required":"1","size":"medium","placeholder":"Enter Your Message","css":""}},"settings":{"form_title":"Email Me","form_desc":"","form_class":"","submit_text":"Email Me","submit_class":"","honeypot":"1","notification_enable":"1","notifications":{"1":{"email":"tjdowdell97@gmail.com","subject":"New Entry: Email Me","sender_name":"{field_id=\\"0\\"}","sender_address":"{field_id=\\"1\\"}","replyto":"","message":"{all_fields}"}},"confirmation_type":"message","confirmation_message":"Thanks for contacting me! I will be in touch with you shortly.","confirmation_message_scroll":"1","confirmation_page":"23","confirmation_redirect":""},"meta":{"template":"contact"}}', 'Email Me', '', 'publish', 'closed', 'closed', '', 'email-me', '', '', '2016-08-17 04:46:01', '2016-08-17 04:46:01', '', 0, 'http://localhost/wordpress/?post_type=wpforms&#038;p=60', 0, 'wpforms', '', 0),
(61, 1, '2016-08-17 04:22:15', '2016-08-17 04:22:15', '', 'About Susan', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-08-17 04:22:15', '2016-08-17 04:22:15', '', 23, 'http://localhost/wordpress/2016/08/17/23-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 1, 0),
(15, 3, 0),
(16, 2, 0),
(17, 2, 0),
(19, 2, 0),
(20, 3, 0),
(36, 2, 0),
(37, 2, 0),
(38, 2, 0),
(39, 2, 0),
(40, 2, 0),
(41, 2, 0),
(42, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 10),
(3, 3, 'product_type', '', 0, 2),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(2, 'Primary', 'primary', 0),
(3, 'simple', 'simple', 0),
(4, 'grouped', 'grouped', 0),
(5, 'variable', 'variable', 0),
(6, 'external', 'external', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'dowdellt'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '21'),
(16, 1, 'wp_user-settings', 'editor=html&hidetb=1'),
(17, 1, 'wp_user-settings-time', '1463975715'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(20, 1, 'session_tokens', 'a:2:{s:64:"fbd615bd97b08512dc3447f8d0870928dedbfa4e947066348f032aa89914445d";a:4:{s:10:"expiration";i:1471474881;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36";s:5:"login";i:1471302081;}s:64:"167172dc56e88d50ddbc875dfd108b5de4b3c608e944c04ad4f6fd067381cff7";a:4:{s:10:"expiration";i:1471569875;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36";s:5:"login";i:1471397075;}}'),
(21, 1, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:1:{s:32:"9bf31c7ff062936a96d3c8bd1f8f2ff3";a:9:{s:10:"product_id";i:15;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:3;s:10:"line_total";d:29.969999999999998863131622783839702606201171875;s:8:"line_tax";i:0;s:13:"line_subtotal";d:29.969999999999998863131622783839702606201171875;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}}'),
(24, 1, 'closedpostboxes_page', 'a:0:{}'),
(25, 1, 'metaboxhidden_page', 'a:4:{i:0;s:16:"commentstatusdiv";i:1;s:11:"commentsdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}');

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
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'dowdellt', '$P$BspHKDBzsW7zNUR5f3xsuM5Em.Xhsa.', 'dowdellt', 'tjdowdell97@gmail.com', '', '2016-05-23 03:45:16', '', 0, 'dowdellt');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8mb4_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) NOT NULL,
  `payment_token_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) NOT NULL,
  `gateway_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(8, '1', 'a:18:{s:4:"cart";s:395:"a:1:{s:32:"9bf31c7ff062936a96d3c8bd1f8f2ff3";a:9:{s:10:"product_id";i:15;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:3;s:10:"line_total";d:29.969999999999998863131622783839702606201171875;s:8:"line_tax";i:0;s:13:"line_subtotal";d:29.969999999999998863131622783839702606201171875;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";d:29.969999999999998863131622783839702606201171875;s:5:"total";i:0;s:8:"subtotal";d:29.969999999999998863131622783839702606201171875;s:15:"subtotal_ex_tax";d:29.969999999999998863131622783839702606201171875;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";i:0;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";}', 1471562143);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) NOT NULL,
  `zone_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) NOT NULL,
  `instance_id` bigint(20) NOT NULL,
  `method_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) NOT NULL,
  `zone_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL,
  `tax_rate_country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(191));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type` (`location_type`),
  ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type` (`location_type`),
  ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`(191)),
  ADD KEY `tax_rate_state` (`tax_rate_state`(191)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(191)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=715;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

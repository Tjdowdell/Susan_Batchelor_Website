-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2016 at 07:35 AM
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
(33, 'active_plugins', 'a:7:{i:0;s:37:"mailchimp-for-wp/mailchimp-for-wp.php";i:1;s:39:"siteorigin-panels/siteorigin-panels.php";i:2;s:33:"soliloquy-lite/soliloquy-lite.php";i:3;s:33:"sydney-toolbox/sydney-toolbox.php";i:4;s:35:"tjd_add_content/tjd_add_content.php";i:5;s:27:"woocommerce/woocommerce.php";i:6;s:24:"wpforms-lite/wpforms.php";}', 'yes'),
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
(99, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:1:{i:0;s:6:"text-3";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"footer-1";a:1:{i:0;s:6:"text-4";}s:8:"footer-2";a:1:{i:0;s:6:"text-5";}s:8:"footer-3";a:1:{i:0;s:6:"text-6";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:9:{i:1471933846;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1471952641;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1471967116;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1471995841;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1471996800;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1472010486;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1472010538;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1473120000;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(107, 'nonce_key', 'iJ&<>+1czNJByQ<v`sD)v/*>Qw)mSB+;)~^aoYp7x@Wr@@UEar:&=}m-JTb8L:n]', 'yes'),
(108, 'nonce_salt', 'DyWcdE#U(.D0a+V%K@:aBT[?*cdb:H+WWUmCQt+P$Z*^v>!+|NUHKJwwfwo*&F6n', 'yes'),
(117, 'auth_key', '>]MEsr{tvv7dc& VGka1tI{:W<r[9V`c{.Rhdvx+56k{Q;b~$W:*d*r@Wc-`I4-Y', 'yes'),
(118, 'auth_salt', 'o3?:(I)r+^1D^66aF#)$MS{DP2f&~S-Z2{D=o)iBou>_$xY3v{Gjh/E @=>>iVjT', 'yes'),
(119, 'logged_in_key', '3]l2`:_qk~vQh>iW+XpbWf&dgRL;zil@^N5+j4jFsPGA/XkLpqkt2yJ^ZF->F:0.', 'yes'),
(120, 'logged_in_salt', 'nNeYX,P :C)nH:MR,[v2grz_}7y.OX9odo4RE$zZrAT/yO2&N7.[D~Q-|@M$#Z~6', 'yes'),
(152, 'recently_activated', 'a:2:{s:17:"sumome/sumome.php";i:1471908198;s:19:"akismet/akismet.php";i:1471318749;}', 'yes'),
(154, '_transient_twentysixteen_categories', '1', 'yes'),
(164, 'current_theme', 'Sydney Child', 'yes'),
(165, 'theme_mods_html5blank-stable', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1471824511;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-3";i:1;s:6:"text-4";i:2;s:6:"text-5";i:3;s:6:"text-6";}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(166, 'theme_switched', '', 'yes'),
(167, 'theme_switched_via_customizer', '', 'yes'),
(171, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1463977502;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(183, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:21:"tjdowdell97@gmail.com";s:7:"version";s:5:"4.5.3";s:9:"timestamp";i:1468278494;}', 'yes'),
(184, 'theme_mods_sydney', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1471824578;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-3";i:1;s:6:"text-4";i:2;s:6:"text-5";i:3;s:6:"text-6";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"footer-1";N;s:8:"footer-2";N;s:8:"footer-3";N;}}}', 'yes'),
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
(363, 'woocommerce_tracker_last_send', '1471909683', 'yes'),
(397, '_transient_product_query-transient-version', '1471907848', 'yes'),
(398, '_transient_product-transient-version', '1468895473', 'yes'),
(407, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(412, 'product_cat_children', 'a:0:{}', 'yes'),
(415, '_transient_shipping-transient-version', '1468895517', 'yes'),
(434, '_transient_timeout_wc_low_stock_count', '1472080521', 'no'),
(435, '_transient_wc_low_stock_count', '0', 'no'),
(436, '_transient_timeout_wc_outofstock_count', '1472080521', 'no'),
(437, '_transient_wc_outofstock_count', '0', 'no'),
(486, 'woocommerce_db_version', '2.6.4', 'yes'),
(487, 'woocommerce_version', '2.6.4', 'yes'),
(488, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(489, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:8:"approved";s:1:"1";s:14:"total_comments";i:1;s:3:"all";i:1;s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(497, 'theme_mods_sydney-child', 'a:17:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:16:"site_title_color";s:7:"#0a0a0a";s:15:"top_items_color";s:7:"#ffffff";s:19:"submenu_items_color";s:7:"#0a0a0a";s:13:"primary_color";s:7:"#0a0101";s:18:"submenu_background";s:7:"#f4f4f4";s:19:"wrapper_top_padding";i:0;s:22:"wrapper_bottom_padding";i:0;s:25:"footer_widgets_background";s:7:"#1b69cf";s:20:"footer_widgets_color";s:7:"#ffffff";s:17:"footer_background";s:7:"#1b69cf";s:12:"footer_color";s:7:"#ffffff";s:10:"menu_style";s:6:"inline";s:12:"header_image";s:13:"remove-header";s:17:"front_header_type";s:6:"slider";s:12:"hide_overlay";s:0:"";}', 'yes'),
(602, '_transient_timeout_external_ip_address_::1', '1471909487', 'no'),
(603, '_transient_external_ip_address_::1', '121.0.0.125', 'no'),
(617, '_site_transient_timeout_browser_4c9717c179f154741a00df005d8e11d2', '1471917325', 'yes'),
(618, '_site_transient_browser_4c9717c179f154741a00df005d8e11d2', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"52.0.2743.116";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
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
(673, 'sumome_site_id', 'c2fee9001e75c100b92b7d00ed63110056c14f0034c3b700342b5000770ebb00', 'yes'),
(676, 'wpforms_preview_page', '59', 'yes'),
(677, 'wpforms_version', '1.2.5.1', 'yes'),
(680, 'widget_wpforms-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(686, 'db_upgraded', '', 'yes'),
(688, 'can_compress_scripts', '0', 'no'),
(719, '_transient_timeout_wc_report_sales_by_date', '1471993846', 'no'),
(720, '_transient_wc_report_sales_by_date', 'a:14:{s:32:"572049f095d80569c0c4c52000a92f21";a:0:{}s:32:"7ef84e3128bf8d0e33d46d37390eaa00";a:0:{}s:32:"8c766e62bd99c1148d3804c246cc4a3f";a:0:{}s:32:"1ba7111020ca53ccb0765b6d1f12043c";N;s:32:"eb3847e7d162aee501b823370241bdd3";a:0:{}s:32:"3c7b04c660ee8d229c07f6d00007b498";a:0:{}s:32:"b096da618b4ce1ef991a00470f2ae12f";a:0:{}s:32:"6a088fcde6bea9369c5805a359a1b453";a:0:{}s:32:"12a2407af254b0ddfb6cde86116ab4b6";a:0:{}s:32:"6a7f2034b7dc0fba96101122703cb120";a:0:{}s:32:"7a1bd9ca4d5485129968a600ef453210";N;s:32:"83db481e30144850127e492a1491c80d";a:0:{}s:32:"52528faeba677e42d0745181c8b0f6a3";a:0:{}s:32:"ff6b5a08db14e517c2f3feda76018e61";a:0:{}}', 'no'),
(758, '_transient_timeout_wc_shipping_method_count_1_1468895517', '1474416268', 'no'),
(759, '_transient_wc_shipping_method_count_1_1468895517', '0', 'no'),
(813, '_transient_timeout_wc_admin_report', '1471993791', 'no'),
(814, '_transient_wc_admin_report', 'a:1:{s:32:"34d2df6e01103f0efcb400076ae7ddf4";a:0:{}}', 'no'),
(815, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1471950596', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(816, '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:26:"https://wordpress.org/news";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 16 Aug 2016 19:54:28 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wordpress.org/?v=4.7-alpha-38306";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"WordPress 4.6 “Pepper”";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wordpress.org/news/2016/08/pepper/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 16 Aug 2016 19:06:46 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:3:"4.6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4444";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:276:"Version 4.6 of WordPress, named “Pepper” in honor of jazz baritone saxophonist Park Frederick “Pepper” Adams III, is available for download or update in your WordPress dashboard. New features in 4.6 help you to focus on the important things while feeling more at home.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:27:"Dominik Schilling (ocean90)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:26658:"<p>Version 4.6 of WordPress, named “Pepper” in honor of jazz baritone saxophonist Park Frederick “Pepper” Adams III, is available for download or update in your WordPress dashboard. New features in 4.6 help you to focus on the important things while feeling more at home.</p>\n<p><iframe width=''632'' height=''354'' src=''https://videopress.com/embed/GbdhpGF3?hd=1'' frameborder=''0'' allowfullscreen></iframe><script src=''https://v0.wordpress.com/js/next/videopress-iframe.js?m=1435166243''></script></p>\n<hr />\n<h2 style="text-align: center">Streamlined Updates</h2>\n<p><img class="aligncenter wp-image-4454 size-large" src="https://i0.wp.com/wordpress.org/news/files/2016/08/streamlined-updates.png?resize=632%2C379&#038;ssl=1" srcset="https://i0.wp.com/wordpress.org/news/files/2016/08/streamlined-updates.png?resize=1024%2C614&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2016/08/streamlined-updates.png?resize=300%2C180&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2016/08/streamlined-updates.png?resize=768%2C461&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2016/08/streamlined-updates.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2016/08/streamlined-updates.png?w=1896&amp;ssl=1 1896w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></p>\n<p>Don’t lose your place: stay on the same page while you update, install, and delete your plugins and themes.</p>\n<hr />\n<h2 style="text-align: center">Native Fonts</h2>\n<p><img class="aligncenter wp-image-4455 size-large" src="https://i2.wp.com/wordpress.org/news/files/2016/08/native-fonts.png?resize=632%2C379&#038;ssl=1" srcset="https://i2.wp.com/wordpress.org/news/files/2016/08/native-fonts.png?resize=1024%2C614&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2016/08/native-fonts.png?resize=300%2C180&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2016/08/native-fonts.png?resize=768%2C461&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2016/08/native-fonts.png?w=1264&amp;ssl=1 1264w, https://i2.wp.com/wordpress.org/news/files/2016/08/native-fonts.png?w=1896&amp;ssl=1 1896w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></p>\n<p>The WordPress dashboard now takes advantage of the fonts you already have, making it load faster and letting you feel more at home on whatever device you use.</p>\n<hr />\n<h2 style="text-align: center">Editor Improvements</h2>\n<div style="float: left;width: 48%;margin: 0">\n<h3>Inline Link Checker</h3>\n<p><img class="aligncenter wp-image-4456 size-full" src="https://i1.wp.com/wordpress.org/news/files/2016/08/inline-link-checker.png?resize=632%2C379&#038;ssl=1" srcset="https://i1.wp.com/wordpress.org/news/files/2016/08/inline-link-checker.png?w=992&amp;ssl=1 992w, https://i1.wp.com/wordpress.org/news/files/2016/08/inline-link-checker.png?resize=300%2C180&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2016/08/inline-link-checker.png?resize=768%2C461&amp;ssl=1 768w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></p>\n<p>Ever accidentally made a link to https://wordpress.org/example.org? Now WordPress automatically checks to make sure you didn’t.</p>\n</div>\n<div style="float: right;width: 48%;margin: 0">\n<h3>Content Recovery</h3>\n<p><img class="aligncenter wp-image-4457 size-full" src="https://i1.wp.com/wordpress.org/news/files/2016/08/content-recovery.png?resize=632%2C379&#038;ssl=1" srcset="https://i1.wp.com/wordpress.org/news/files/2016/08/content-recovery.png?w=992&amp;ssl=1 992w, https://i1.wp.com/wordpress.org/news/files/2016/08/content-recovery.png?resize=300%2C180&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2016/08/content-recovery.png?resize=768%2C461&amp;ssl=1 768w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></p>\n<p>As you type, WordPress saves your content to the browser. Recovering saved content is even easier with WordPress 4.6.</p>\n</div>\n<hr style="clear: both" />\n<h2 style="text-align: center">Under The Hood</h2>\n<h3>Resource Hints</h3>\n<p><a href="https://make.wordpress.org/core/2016/07/06/resource-hints-in-4-6/">Resource hints help browsers</a> decide which resources to fetch and preprocess. WordPress 4.6 adds them automatically for your styles and scripts making your site even faster.</p>\n<h3>Robust Requests</h3>\n<p>The HTTP API now leverages the Requests library, improving HTTP standard support and adding case-insensitive headers, parallel HTTP requests, and support for Internationalized Domain Names.</p>\n<h3><code>WP_Term_Query</code> and <code>WP_Post_Type</code></h3>\n<p>A new <code><a href="https://developer.wordpress.org/reference/classes/wp_term_query">WP_Term_Query</a></code> class adds flexibility to query term information while a new <code><a href="https://developer.wordpress.org/reference/classes/wp_post_type">WP_Post_Type</a></code> object makes interacting with post types more predictable.</p>\n<h3>Meta Registration API</h3>\n<p>The Meta Registration API <a href="https://make.wordpress.org/core/2016/07/08/enhancing-register_meta-in-4-6/">has been expanded</a> to support types, descriptions, and REST API visibility.</p>\n<h3>Translations On Demand</h3>\n<p>WordPress will install and use the newest language packs for your plugins and themes as soon as they’re available from <a href="https://translate.wordpress.org/">WordPress.org’s community of translators</a>.</p>\n<h3>JavaScript Library Updates</h3>\n<p>Masonry 3.3.2, imagesLoaded 3.2.0, MediaElement.js 2.22.0, TinyMCE 4.4.1, and Backbone.js 1.3.3 are bundled.</p>\n<h3>Customizer APIs for Setting Validation and Notifications</h3>\n<p>Settings now have an <a href="https://make.wordpress.org/core/2016/07/05/customizer-apis-in-4-6-for-setting-validation-and-notifications/">API for enforcing validation constraints</a>. Likewise, customizer controls now support notifications, which are used to display validation errors instead of failing silently.</p>\n<h3>Multisite, now faster than ever</h3>\n<p>Cached and comprehensive site queries improve your network admin experience. The addition of <code><a href="https://developer.wordpress.org/reference/classes/wp_site_query">WP_Site_Query</a></code> and <code><a href="https://developer.wordpress.org/reference/classes/wp_network_query">WP_Network_Query</a></code> help craft advanced queries with less effort.</p>\n<hr />\n<h2 style="text-align: center">The Crew</h2>\n<p>This release was led by <a href="https://dominikschilling.de/">Dominik Schilling</a>, backed up by <a href="https://www.garthmortensen.com/">Garth Mortensen</a> as Release Deputy, and with the help of these fine individuals. There are <span style="font-weight: 400">272</span> contributors with props in this release. Pull up some Pepper Adams on your music service of choice, and check out some of their profiles:</p>\n<a href="https://profiles.wordpress.org/a5hleyrich">A5hleyRich</a>, <a href="https://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/achbed">achbed</a>, <a href="https://profiles.wordpress.org/adamsilverstein">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/adamsoucie">Adam Soucie</a>, <a href="https://profiles.wordpress.org/adrianosilvaferreira">Adriano Ferreira</a>, <a href="https://profiles.wordpress.org/afineman">afineman</a>, <a href="https://profiles.wordpress.org/mrahmadawais">Ahmad Awais</a>, <a href="https://profiles.wordpress.org/aidvu">aidvu</a>, <a href="https://profiles.wordpress.org/akibjorklund">Aki Bj&#246;rklund</a>, <a href="https://profiles.wordpress.org/xknown">Alex Concha</a>, <a href="https://profiles.wordpress.org/xavortm">Alex Dimitrov</a>, <a href="https://profiles.wordpress.org/alexkingorg">Alex King</a>, <a href="https://profiles.wordpress.org/viper007bond">Alex Mills (Viper007Bond)</a>, <a href="https://profiles.wordpress.org/alexvandervegt">alexvandervegt</a>, <a href="https://profiles.wordpress.org/ambrosey">Alice Brosey</a>, <a href="https://profiles.wordpress.org/aaires">Ana Aires</a>, <a href="https://profiles.wordpress.org/afercia">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/andg">Andrea Gandino</a>, <a href="https://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/rockwell15">Andrew Rockwell</a>, <a href="https://profiles.wordpress.org/afragen">Andy Fragen</a>, <a href="https://profiles.wordpress.org/andizer">Andy Meerwaldt</a>, <a href="https://profiles.wordpress.org/andy">Andy Skelton</a>, <a href="https://profiles.wordpress.org/anilbasnet">Anil Basnet</a>, <a href="https://profiles.wordpress.org/ankit-k-gupta">Ankit K Gupta</a>, <a href="https://profiles.wordpress.org/anneschmidt">anneschmidt</a>, <a href="https://profiles.wordpress.org/zuige">Antti Kuosmanen</a>, <a href="https://profiles.wordpress.org/ideag">Arunas Liuiza</a>, <a href="https://profiles.wordpress.org/barry">Barry</a>, <a href="https://profiles.wordpress.org/barryceelen">Barry Ceelen</a>, <a href="https://profiles.wordpress.org/bassgang">bassgang</a>, <a href="https://profiles.wordpress.org/kau-boy">Bernhard Kau</a>, <a href="https://profiles.wordpress.org/birgire">Birgir Erlendsson (birgire)</a>, <a href="https://profiles.wordpress.org/bobbingwide">bobbingwide</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone B. Gorges</a>, <a href="https://profiles.wordpress.org/bradt">Brad Touesnard</a>, <a href="https://profiles.wordpress.org/kraftbj">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/brianvan">brianvan</a>, <a href="https://profiles.wordpress.org/borgesbruno">Bruno Borges</a>, <a href="https://profiles.wordpress.org/bpetty">Bryan Petty</a>, <a href="https://profiles.wordpress.org/purcebr">Bryan Purcell</a>, <a href="https://profiles.wordpress.org/chandrapatel">Chandra Patel</a>, <a href="https://profiles.wordpress.org/chouby">Chouby</a>, <a href="https://profiles.wordpress.org/chriscct7">Chris Christoff (chriscct7)</a>, <a href="https://profiles.wordpress.org/chris_dev">Chris Mok</a>, <a href="https://profiles.wordpress.org/c3mdigital">Chris Olbekson</a>, <a href="https://profiles.wordpress.org/christophherr">Christoph Herr</a>, <a href="https://profiles.wordpress.org/cfinke">Christopher Finke</a>, <a href="https://profiles.wordpress.org/cliffseal">Cliff Seal</a>, <a href="https://profiles.wordpress.org/clubduece">clubduece</a>, <a href="https://profiles.wordpress.org/cmillerdev">cmillerdev</a>, <a href="https://profiles.wordpress.org/craig-ralston">Craig Ralston</a>, <a href="https://profiles.wordpress.org/crstauf">crstauf</a>, <a href="https://profiles.wordpress.org/dabnpits">dabnpits</a>, <a href="https://profiles.wordpress.org/danielbachhuber">Daniel Bachhuber</a>, <a href="https://profiles.wordpress.org/danielhuesken">Daniel H&#252;sken</a>, <a href="https://profiles.wordpress.org/mte90">Daniele Scasciafratte</a>, <a href="https://profiles.wordpress.org/dashaluna">dashaluna</a>, <a href="https://profiles.wordpress.org/davewarfel">davewarfel</a>, <a href="https://profiles.wordpress.org/davidakennedy">David A. Kennedy</a>, <a href="https://profiles.wordpress.org/davidanderson">David Anderson</a>, <a href="https://profiles.wordpress.org/dbrumbaugh10up">David Brumbaugh</a>, <a href="https://profiles.wordpress.org/dcavins">David Cavins</a>, <a href="https://profiles.wordpress.org/dlh">David Herrera</a>, <a href="https://profiles.wordpress.org/davidmosterd">David Mosterd</a>, <a href="https://profiles.wordpress.org/dshanske">David Shanske</a>, <a href="https://profiles.wordpress.org/realloc">Dennis Ploetner</a>, <a href="https://profiles.wordpress.org/valendesigns">Derek Herman</a>, <a href="https://profiles.wordpress.org/downstairsdev">Devin Price</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/dougwollison">Doug Wollison</a>, <a href="https://profiles.wordpress.org/drewapicture">Drew Jaynes</a>, <a href="https://profiles.wordpress.org/iseulde">Ella Iseulde Van Dorpe</a>, <a href="https://profiles.wordpress.org/elrae">elrae</a>, <a href="https://profiles.wordpress.org/ericlewis">Eric Andrew Lewis</a>, <a href="https://profiles.wordpress.org/ethitter">Erick Hitter</a>, <a href="https://profiles.wordpress.org/fab1en">Fabien Quatravaux</a>, <a href="https://profiles.wordpress.org/faison">Faison</a>, <a href="https://profiles.wordpress.org/flixos90">Felix Arntz</a>, <a href="https://profiles.wordpress.org/flyingdr">flyingdr</a>, <a href="https://profiles.wordpress.org/foliovision">FolioVision</a>, <a href="https://profiles.wordpress.org/francescobagnoli">francescobagnoli</a>, <a href="https://profiles.wordpress.org/bueltge">Frank Bueltge</a>, <a href="https://profiles.wordpress.org/frank-klein">Frank Klein</a>, <a href="https://profiles.wordpress.org/efarem">Frank Martin</a>, <a href="https://profiles.wordpress.org/frozzare">Fredrik Forsmo</a>, <a href="https://profiles.wordpress.org/mintindeed">Gabriel Koen</a>, <a href="https://profiles.wordpress.org/gma992">Gabriel Maldonado</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/gblsm">gblsm</a>, <a href="https://profiles.wordpress.org/geekysoft">Geeky Software</a>, <a href="https://profiles.wordpress.org/georgestephanis">George Stephanis</a>, <a href="https://profiles.wordpress.org/hardeepasrani">Hardeep Asrani</a>, <a href="https://profiles.wordpress.org/helen">Helen Hou-Sandí</a>, <a href="https://profiles.wordpress.org/henrywright">Henry Wright</a>, <a href="https://profiles.wordpress.org/hugobaeta">Hugo Baeta</a>, <a href="https://profiles.wordpress.org/polevaultweb">Iain Poulson</a>, <a href="https://profiles.wordpress.org/iandunn">Ian Dunn</a>, <a href="https://profiles.wordpress.org/igmoweb">Ignacio Cruz Moreno</a>, <a href="https://profiles.wordpress.org/imath">imath</a>, <a href="https://profiles.wordpress.org/inderpreet99">Inderpreet Singh</a>, <a href="https://profiles.wordpress.org/ipstenu">Ipstenu (Mika Epstein)</a>, <a href="https://profiles.wordpress.org/jdgrimes">J.D. Grimes</a>, <a href="https://profiles.wordpress.org/macmanx">James Huff</a>, <a href="https://profiles.wordpress.org/jnylen0">James Nylen</a>, <a href="https://profiles.wordpress.org/underdude">Janne Ala-&#196;ij&#228;l&#228;</a>, <a href="https://profiles.wordpress.org/jaspermdegroot">Jasper de Groot</a>, <a href="https://profiles.wordpress.org/javorszky">javorszky</a>, <a href="https://profiles.wordpress.org/jfarthing84">Jeff Farthing</a>, <a href="https://profiles.wordpress.org/cheffheid">Jeffrey de Wit</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/endocreative">Jeremy Green</a>, <a href="https://profiles.wordpress.org/jeherve">Jeremy Herve</a>, <a href="https://profiles.wordpress.org/jmichaelward">Jeremy Ward</a>, <a href="https://profiles.wordpress.org/jerrysarcastic">Jerry Bates (jerrysarcastic)</a>, <a href="https://profiles.wordpress.org/jesin">Jesin A</a>, <a href="https://profiles.wordpress.org/jipmoors">Jip Moors</a>, <a href="https://profiles.wordpress.org/joedolson">Joe Dolson</a>, <a href="https://profiles.wordpress.org/joehoyle">Joe Hoyle</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/joelwills">Joel Williams</a>, <a href="https://profiles.wordpress.org/j-falk">Johan Falk</a>, <a href="https://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby">John James Jacoby</a>, <a href="https://profiles.wordpress.org/johnpgreen">John P. Green</a>, <a href="https://profiles.wordpress.org/john_schlick">John_Schlick</a>, <a href="https://profiles.wordpress.org/kenshino">Jon (Kenshino)</a>, <a href="https://profiles.wordpress.org/jbrinley">Jonathan Brinley</a>, <a href="https://profiles.wordpress.org/spacedmonkey">Jonny Harris</a>, <a href="https://profiles.wordpress.org/joostdevalk">Joost de Valk</a>, <a href="https://profiles.wordpress.org/josephscott">Joseph Scott</a>, <a href="https://profiles.wordpress.org/shelob9">Josh Pollock</a>, <a href="https://profiles.wordpress.org/joshuagoodwin">Joshua Goodwin</a>, <a href="https://profiles.wordpress.org/jpdavoutian">jpdavoutian</a>, <a href="https://profiles.wordpress.org/jrf">jrf</a>, <a href="https://profiles.wordpress.org/jsternberg">jsternberg</a>, <a href="https://profiles.wordpress.org/juanfra">Juanfra Aldasoro</a>, <a href="https://profiles.wordpress.org/juhise">Juhi Saxena</a>, <a href="https://profiles.wordpress.org/julesaus">julesaus</a>, <a href="https://profiles.wordpress.org/justinsainton">Justin Sainton</a>, <a href="https://profiles.wordpress.org/ryelle">Kelly Dwan</a>, <a href="https://profiles.wordpress.org/khag7">Kevin Hagerty</a>, <a href="https://profiles.wordpress.org/ixkaito">Kite</a>, <a href="https://profiles.wordpress.org/kjbenk">kjbenk</a>, <a href="https://profiles.wordpress.org/kovshenin">Konstantin Kovshenin</a>, <a href="https://profiles.wordpress.org/obenland">Konstantin Obenland</a>, <a href="https://profiles.wordpress.org/kurtpayne">Kurt Payne</a>, <a href="https://profiles.wordpress.org/offereins">Laurens Offereins</a>, <a href="https://profiles.wordpress.org/lukecavanagh">Luke Cavanagh</a>, <a href="https://profiles.wordpress.org/latz">Lutz Schr&#246;er</a>, <a href="https://profiles.wordpress.org/mpol">Marcel Pol</a>, <a href="https://profiles.wordpress.org/clorith">Marius L. J. (Clorith)</a>, <a href="https://profiles.wordpress.org/markjaquith">Mark Jaquith</a>, <a href="https://profiles.wordpress.org/mapk">Mark Uraine</a>, <a href="https://profiles.wordpress.org/martinkrcho">martin.krcho</a>, <a href="https://profiles.wordpress.org/mattmiklic">Matt Miklic</a>, <a href="https://profiles.wordpress.org/matt">Matt Mullenweg</a>, <a href="https://profiles.wordpress.org/borkweb">Matthew Batchelder</a>, <a href="https://profiles.wordpress.org/mattyrob">mattyrob</a>, <a href="https://profiles.wordpress.org/wzislam">Mayeenul Islam</a>, <a href="https://profiles.wordpress.org/mdwheele">mdwheele</a>, <a href="https://profiles.wordpress.org/medariox">medariox</a>, <a href="https://profiles.wordpress.org/mehulkaklotar">Mehul Kaklotar</a>, <a href="https://profiles.wordpress.org/meitar">Meitar</a>, <a href="https://profiles.wordpress.org/melchoyce">Mel Choyce</a>, <a href="https://profiles.wordpress.org/roseapplemedia">Michael</a>, <a href="https://profiles.wordpress.org/michaelarestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/michael-arestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/michaelbeil">Michael Beil</a>, <a href="https://profiles.wordpress.org/mbijon">Mike Bijon</a>, <a href="https://profiles.wordpress.org/mikehansenme">Mike Hansen</a>, <a href="https://profiles.wordpress.org/mikeschroder">Mike Schroder</a>, <a href="https://profiles.wordpress.org/dimadin">Milan Dinić</a>, <a href="https://profiles.wordpress.org/morganestes">Morgan Estes</a>, <a href="https://profiles.wordpress.org/mt8biz">moto hachi ( mt8.biz )</a>, <a href="https://profiles.wordpress.org/m_uysl">Mustafa Uysal</a>, <a href="https://profiles.wordpress.org/nicholas_io">N&#237;cholas Andr&#233;</a>, <a href="https://profiles.wordpress.org/nextendweb">Nextendweb</a>, <a href="https://profiles.wordpress.org/niallkennedy">Niall Kennedy</a>, <a href="https://profiles.wordpress.org/celloexpressions">Nick Halsey</a>, <a href="https://profiles.wordpress.org/nikschavan">Nikhil Chavan</a>, <a href="https://profiles.wordpress.org/rabmalin">Nilambar Sharma</a>, <a href="https://profiles.wordpress.org/ninos-ego">Ninos</a>, <a href="https://profiles.wordpress.org/alleynoah">Noah</a>, <a href="https://profiles.wordpress.org/noahsilverstein">noahsilverstein</a>, <a href="https://profiles.wordpress.org/odysseygate">odyssey</a>, <a href="https://profiles.wordpress.org/ojrask">ojrask</a>, <a href="https://profiles.wordpress.org/olarmarius">Olar Marius</a>, <a href="https://profiles.wordpress.org/ovann86">ovann86</a>, <a href="https://profiles.wordpress.org/pansotdev">pansotdev</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/pbearne">Paul Bearne</a>, <a href="https://profiles.wordpress.org/paulwilde">Paul Wilde</a>, <a href="https://profiles.wordpress.org/pavelevap">pavelevap</a>, <a href="https://profiles.wordpress.org/pcarvalho">pcarvalho</a>, <a href="https://profiles.wordpress.org/westi">Peter Westwood</a>, <a href="https://profiles.wordpress.org/peterwilsoncc">Peter Wilson</a>, <a href="https://profiles.wordpress.org/peterrknight">PeterRKnight</a>, <a href="https://profiles.wordpress.org/walbo">Petter Walb&#248; Johnsg&#229;rd</a>, <a href="https://profiles.wordpress.org/petya">Petya Raykovska</a>, <a href="https://profiles.wordpress.org/wizzard_">Pieter</a>, <a href="https://profiles.wordpress.org/pollett">Pollett</a>, <a href="https://profiles.wordpress.org/postpostmodern">postpostmodern</a>, <a href="https://profiles.wordpress.org/presskopp">Presskopp</a>, <a href="https://profiles.wordpress.org/prettyboymp">prettyboymp</a>, <a href="https://profiles.wordpress.org/r-a-y">r-a-y</a>, <a href="https://profiles.wordpress.org/rachelbaker">Rachel Baker</a>, <a href="https://profiles.wordpress.org/rafaelangeline">rafaelangeline</a>, <a href="https://profiles.wordpress.org/zetaraffix">raffaella isidori</a>, <a href="https://profiles.wordpress.org/rahulsprajapati">Rahul Prajapati</a>, <a href="https://profiles.wordpress.org/ramiy">Rami Yushuvaev</a>, <a href="https://profiles.wordpress.org/rianrietveld">Rian Rietveld </a>, <a href="https://profiles.wordpress.org/iamfriendly">Richard Tape</a>, <a href="https://profiles.wordpress.org/littlerchicken">Robin Cornett</a>, <a href="https://profiles.wordpress.org/rodrigosprimo">Rodrigo Primo</a>, <a href="https://profiles.wordpress.org/ronalfy">Ronald Huereca</a>, <a href="https://profiles.wordpress.org/ruudjoyo">Ruud Laan</a>, <a href="https://profiles.wordpress.org/rmccue">Ryan McCue</a>, <a href="https://profiles.wordpress.org/welcher">Ryan Welcher</a>, <a href="https://profiles.wordpress.org/soean">S&#246;ren Wrede</a>, <a href="https://profiles.wordpress.org/samantha-miller">Samantha Miller</a>, <a href="https://profiles.wordpress.org/solarissmoke">Samir Shah</a>, <a href="https://profiles.wordpress.org/rosso99">Sara Rosso</a>, <a href="https://profiles.wordpress.org/schlessera">schlessera</a>, <a href="https://profiles.wordpress.org/scottbasgaard">Scott Basgaard</a>, <a href="https://profiles.wordpress.org/sc0ttkclark">Scott Kingsley Clark</a>, <a href="https://profiles.wordpress.org/coffee2code">Scott Reilly</a>, <a href="https://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="https://profiles.wordpress.org/screamingdev">screamingdev</a>, <a href="https://profiles.wordpress.org/sebastianpisula">Sebastian Pisula</a>, <a href="https://profiles.wordpress.org/semil">semil</a>, <a href="https://profiles.wordpress.org/sergeybiryukov">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/shahpranaf">shahpranaf</a>, <a href="https://profiles.wordpress.org/sidati">Sidati</a>, <a href="https://profiles.wordpress.org/neverything">Silvan Hagen</a>, <a href="https://profiles.wordpress.org/simonvik">Simon Vikstr&#246;m</a>, <a href="https://profiles.wordpress.org/sirjonathan">sirjonathan</a>, <a href="https://profiles.wordpress.org/smerriman">smerriman</a>, <a href="https://profiles.wordpress.org/southp">southp</a>, <a href="https://profiles.wordpress.org/metodiew">Stanko Metodiev</a>, <a href="https://profiles.wordpress.org/stephdau">Stephane Daury (stephdau)</a>, <a href="https://profiles.wordpress.org/netweb">Stephen Edgar</a>, <a href="https://profiles.wordpress.org/stephenharris">Stephen Harris</a>, <a href="https://profiles.wordpress.org/coderste">Stephen Hinett</a>, <a href="https://profiles.wordpress.org/stevenkword">Steven Word</a>, <a href="https://profiles.wordpress.org/stubgo">stubgo</a>, <a href="https://profiles.wordpress.org/stuporglue">stuporglue</a>, <a href="https://profiles.wordpress.org/sudar">Sudar Muthu</a>, <a href="https://profiles.wordpress.org/patilswapnilv">Swapnil V. Patil</a>, <a href="https://profiles.wordpress.org/tacoverdo">Taco Verdonschot</a>, <a href="https://profiles.wordpress.org/iamtakashi">Takashi Irie</a>, <a href="https://profiles.wordpress.org/karmatosed">Tammie Lister</a>, <a href="https://profiles.wordpress.org/tlovett1">Taylor Lovett</a>, <a href="https://profiles.wordpress.org/themiked">theMikeD</a>, <a href="https://profiles.wordpress.org/thomaswm">thomaswm</a>, <a href="https://profiles.wordpress.org/tfrommen">Thorsten Frommen</a>, <a href="https://profiles.wordpress.org/timothyblynjacobs">Timothy Jacobs</a>, <a href="https://profiles.wordpress.org/tloureiro">tloureiro</a>, <a href="https://profiles.wordpress.org/travisnorthcutt">Travis Northcutt</a>, <a href="https://profiles.wordpress.org/grapplerulrich">Ulrich</a>, <a href="https://profiles.wordpress.org/unyson">Unyson</a>, <a href="https://profiles.wordpress.org/szepeviktor">Viktor Sz&#233;pe</a>, <a href="https://profiles.wordpress.org/vishalkakadiya">Vishal Kakadiya</a>, <a href="https://profiles.wordpress.org/vortfu">vortfu</a>, <a href="https://profiles.wordpress.org/svovaf">vovafeldman</a>, <a href="https://profiles.wordpress.org/websupporter">websupporter</a>, <a href="https://profiles.wordpress.org/westonruter">Weston Ruter</a>, <a href="https://profiles.wordpress.org/wp_smith">wp_smith</a>, <a href="https://profiles.wordpress.org/wpfo">wpfo</a>, <a href="https://profiles.wordpress.org/xavivars">Xavi Ivars</a>, <a href="https://profiles.wordpress.org/yoavf">Yoav Farhi</a>, <a href="https://profiles.wordpress.org/tollmanz">Zack Tollman</a>, and <a href="https://profiles.wordpress.org/zakb8">zakb8</a>.\n<p>&nbsp;</p>\n<p>Special thanks go to <a href="https://jerrysarcastic.com/">Jerry Bates</a> for producing the release video and <a href="http://hugobaeta.com/">Hugo Baeta</a> for providing marketing graphics.</p>\n<p>Finally, thanks to all the community translators who worked on WordPress 4.6. Their efforts make it possible to use WordPress 4.6 in 52 languages. The WordPress 4.6 release video has been captioned into 43 languages.</p>\n<p>If you want to follow along or help out, check out <a href="https://make.wordpress.org/">Make WordPress</a> and our <a href="https://make.wordpress.org/core/">core development blog</a>. Thanks for choosing WordPress. See you soon for version 4.7!</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4444";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:17:"WordPress 4.6 RC2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/news/2016/08/wordpress-4-6-rc2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Aug 2016 00:31:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4427";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:341:"The second release candidate for WordPress 4.6 is now available. We’ve made over 30 changes since the first release candidate. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.6 on Tuesday, August 16, but we need [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:27:"Dominik Schilling (ocean90)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3442:"<p>The second release candidate for WordPress 4.6 is now available.</p>\n<p>We’ve made over <a href="https://core.trac.wordpress.org/log/branches/4.6/src?action=stop_on_copy&amp;mode=follow_copy&amp;rev=38246&amp;stop_rev=38170&amp;limit=200&amp;verbose=on&amp;sfp_email=&amp;sfph_mail=">30 changes</a> since the first release candidate. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.6 on <strong>Tuesday, August 16</strong>, but we need <em>your</em> help to get there.</p>\n<p>If you haven’t tested 4.6 yet, now is the time!</p>\n<p><strong>Think you&#8217;ve found a bug?</strong> Please post to the <a href="https://wordpress.org/support/forum/alphabeta/">Alpha/Beta support forum</a>. If any known issues come up, you&#8217;ll be able to <a href="https://core.trac.wordpress.org/report/5">find them here</a>.</p>\n<p>To test WordPress 4.6, you can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin or you can <a href="https://wordpress.org/wordpress-4.6-RC2.zip">download the release candidate here</a> (zip).</p>\n<p>For more information about what’s new in version 4.6, check out the <a href="https://wordpress.org/news/2016/06/wordpress-4-6-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-2/">Beta 2</a>, <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-3/">Beta 3</a>, <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-4/">Beta 4</a>, and <a href="https://wordpress.org/news/2016/07/wordpress-4-6-release-candidate/">RC 1</a> blog posts.</p>\n<p>A few changes of note since the first release candidate:</p>\n<ul>\n<li>Support for custom HTTP methods and proxy authentication has been restored.</li>\n<li>Various fixes for the streamlined updates, including better failure messages and error handling, basic back-compat styling for custom update notifications, and additional and standardized JavaScript events.</li>\n<li>Unnecessary reference parameters have been removed from new multisite functions.</li>\n<li>A compatibility issue with PHP 7.0.9 (and PHP 7.1) has been fixed.</li>\n</ul>\n<p><strong>Developers</strong>, please test your plugins and themes against WordPress 4.6 and update your plugin&#8217;s <em>Tested up to</em> version in the readme to 4.6. If you find compatibility problems please be sure to post to the support forums so we can figure those out before the final release – we never want to break things.</p>\n<p>Be sure to read the <a href="https://make.wordpress.org/core/2016/07/26/wordpress-4-6-field-guide/">in-depth field guide</a>, a post with all the developer-focused changes that take place under the hood.</p>\n<p><strong>Translators</strong>, strings are now frozen, including the About Page, so you are clear to translate! <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p>Happy testing!</p>\n<p><em>The verdict is in,</em><br />\n<em>Can I haz all the features,</em><br />\n<em>Your best WordPress yet.</em></p>\n<p><img src="https://s.w.org/images/core/emoji/2/72x72/1f3f3.png" alt="🏳" class="wp-smiley" style="height: 1em; max-height: 1em;" />️‍<img src="https://s.w.org/images/core/emoji/2/72x72/1f308.png" alt="🌈" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4427";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"WordPress 4.6 Release Candidate";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"https://wordpress.org/news/2016/07/wordpress-4-6-release-candidate/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jul 2016 19:14:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4416";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:337:"The release candidate for WordPress 4.6 is now available. We’ve made a few refinements since releasing Beta 4 a week ago. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.6 on Tuesday, August 16, but we need [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:27:"Dominik Schilling (ocean90)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2428:"<p>The release candidate for WordPress 4.6 is now available.</p>\n<p>We’ve made <a href="https://core.trac.wordpress.org/log/trunk/src?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=38169&amp;stop_rev=38124&amp;limit=200&amp;verbose=on">a few refinements</a> since releasing Beta 4 a week ago. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.6 on <strong>Tuesday, August 16</strong>, but we need <em>your</em> help to get there.</p>\n<p>If you haven’t tested 4.6 yet, now is the time!</p>\n<p><strong>Think you&#8217;ve found a bug?</strong> Please post to the <a href="https://wordpress.org/support/forum/alphabeta/">Alpha/Beta support forum</a>. If any known issues come up, you&#8217;ll be able to <a href="https://core.trac.wordpress.org/report/5">find them here</a>.</p>\n<p>To test WordPress 4.6, you can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin or you can <a href="https://wordpress.org/wordpress-4.6-RC1.zip">download the release candidate here</a> (zip).</p>\n<p>For more information about what’s new in version 4.6, check out the <a href="https://wordpress.org/news/2016/06/wordpress-4-6-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-2/">Beta 2</a>, <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-3/">Beta 3</a>, and <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-4/">Beta 4</a> blog posts.</p>\n<p><strong>Developers</strong>, please test your plugins and themes against WordPress 4.6 and update your plugin&#8217;s <em>Tested up to</em> version in the readme to 4.6. If you find compatibility problems please be sure to post to the support forums so we can figure those out before the final release – we never want to break things.</p>\n<p>Be sure to read the <a href="https://make.wordpress.org/core/2016/07/26/wordpress-4-6-field-guide/">in-depth field guide</a>, a post with all the developer-focused changes that take place under the hood.</p>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p>Happy testing!</p>\n<p><em>Der Sommer ist da,</em><br />\n<em>Zeit für ein neues Release.</em><br />\n<em>Bald ist es soweit.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4416";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.6 Beta 4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2016/07/wordpress-4-6-beta-4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 20 Jul 2016 18:49:17 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4396";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.6 Beta 4 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.6, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:27:"Dominik Schilling (ocean90)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4309:"<p>WordPress 4.6 Beta 4 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.6, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.6-beta4.zip">download the beta here</a> (zip).</p>\n<p>For more information on what’s new in 4.6, check out the <a href="https://wordpress.org/news/2016/06/wordpress-4-6-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-2/">Beta 2</a>, and <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-3/">Beta 3</a> blog posts, along with <a href="https://make.wordpress.org/core/tag/4-6+dev-notes/">in-depth field guides</a>. This is the final <a href="https://make.wordpress.org/core/version-4-6-project-schedule/">planned beta</a> of WordPress 4.6, with a release candidate scheduled for next week.</p>\n<p>Some of the fixes in Beta 4 include:</p>\n<ul>\n<li><strong>Media</strong>: <code>alt</code> attributes are now always added to images inserted from URLs (<a href="https://core.trac.wordpress.org/ticket/36735">#36735</a>).</li>\n<li>Object subtype handling has been removed from <code>register_meta()</code>. Details about this change are explained in <a href="https://make.wordpress.org/core/2016/07/20/additional-register_meta-changes-in-4-6/">a post for developers</a>.</li>\n<li><strong>Resource hints</strong> are now limited to enqueued assets (<a href="https://core.trac.wordpress.org/ticket/37385">#37385</a>).</li>\n<li>A regression with query alterations introduced by the new <code>WP_Term_Query</code> has been fixed (<a href="https://core.trac.wordpress.org/ticket/37378">#37378</a>).</li>\n<li>The Ajax searches for <strong>installed and new plugins</strong> have been enhanced to fix several accessibility issues and to improve compatibility with older browsers. (<a href="https://core.trac.wordpress.org/ticket/37233">#37233</a>, <a href="https://core.trac.wordpress.org/ticket/37373">#37373</a>)</li>\n<li>The media player <strong>MediaElement.js</strong> has been updated to 2.22.0 to fix YouTube video embeds (<a href="https://core.trac.wordpress.org/ticket/37363">#37363</a>).</li>\n<li>The <strong>Import screen</strong> was overhauled, improving accessibility and making it much easier to install and run an importer (<a href="https://core.trac.wordpress.org/ticket/35191">#35191</a>).</li>\n<li><strong>Emoji support</strong> has been updated to include all of the latest Unicode 9 emoji characters (<a href="https://core.trac.wordpress.org/ticket/37361">#37361</a>). 🤠🥕🥓<img src="https://s.w.org/images/core/emoji/2/72x72/1f57a.png" alt="🕺" class="wp-smiley" style="height: 1em; max-height: 1em;" /><img src="https://s.w.org/images/core/emoji/2/72x72/1f3fd.png" alt="🏽" class="wp-smiley" style="height: 1em; max-height: 1em;" />🤝<img src="https://s.w.org/images/core/emoji/2/72x72/1f3ff.png" alt="🏿" class="wp-smiley" style="height: 1em; max-height: 1em;" /></li>\n<li><strong>Various bug fixes</strong>. We’ve made <a href="https://core.trac.wordpress.org/log/trunk/src?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=38123&amp;stop_rev=38060&amp;limit=200&amp;verbose=on">more than 60 changes</a> during the last week.</li>\n</ul>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p>If you think you’ve found a bug, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a bug report, <a href="https://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.6">everything we’ve fixed</a>.</p>\n<p>Happy testing!</p>\n<p><em>This is Beta 4,</em><br />\n<em>The last before RC 1.</em><br />\n<em>Please test all the things.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4396";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.6 Beta 3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2016/07/wordpress-4-6-beta-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 13 Jul 2016 19:00:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4386";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.6 Beta 3 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.6, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:27:"Dominik Schilling (ocean90)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3169:"<p>WordPress 4.6 Beta 3 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.6, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.6-beta3.zip">download the beta here</a> (zip).</p>\n<p>For more information on what’s new in 4.6, check out the <a href="https://wordpress.org/news/2016/06/wordpress-4-6-beta-1/">Beta 1</a> and <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-2/">Beta 2</a> blog posts, along with <a href="https://make.wordpress.org/core/tag/4-6+dev-notes/">in-depth field guides on make/core</a>. Some of the fixes in Beta 3 include:</p>\n<ul>\n<li><strong>Revisions:</strong> Autosaves can now be restored when revisions are disabled (<a href="https://core.trac.wordpress.org/ticket/36262">#36262</a>).</li>\n<li>An improved <strong>handling of PHP&#8217;s memory limit</strong> which doesn&#8217;t lower the limit anymore (<a href="https://core.trac.wordpress.org/ticket/32075">#</a><a class="closed ticket" title="defect (bug): Only set WP_MAX_MEMORY_LIMIT by default when its greater than memory_limit (closed: fixed)" href="https://core.trac.wordpress.org/ticket/32075">32075</a>).</li>\n<li><strong>TinyMCE</strong> has been updated to 4.4.0 (<a href="https://core.trac.wordpress.org/ticket/32075">#</a><a class="closed ticket" title="defect (bug): TinyMCE 4.4.0 (closed: fixed)" href="https://core.trac.wordpress.org/ticket/37327">37327</a>).</li>\n<li><strong>HTTP API:</strong> Proxy settings weren&#8217;t honored by the new HTTP library. This has been fixed (<a href="https://core.trac.wordpress.org/ticket/37107">#37107</a>).</li>\n<li>Improved handling of <strong>UTF-8 address headers for emails </strong>(<a href="https://core.trac.wordpress.org/ticket/21659">#21659</a>).</li>\n<li><strong>Various bug fixes</strong>. We’ve made <a href="https://core.trac.wordpress.org/log/trunk/src?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=38059&amp;stop_rev=37992&amp;limit=200&amp;verbose=on">more than 65 changes</a> during the last week.</li>\n</ul>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p>If you think you’ve found a bug, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a bug report, <a href="https://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.6">everything we’ve fixed</a>.</p>\n<p>Happy testing!</p>\n<p><em>Beta 3 is here,</em><br />\n<em>The more testing, the better.</em><br />\n<em>Gotta catch ‘em all!</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4386";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.6 Beta 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2016/07/wordpress-4-6-beta-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 06 Jul 2016 18:43:37 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4371";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.6 Beta 2 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.6, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:27:"Dominik Schilling (ocean90)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2803:"<p>WordPress 4.6 Beta 2 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.6, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.6-beta2.zip">download the beta here</a> (zip).</p>\n<p>Notable changes since WordPress 4.6 Beta 1:</p>\n<ul>\n<li><strong>Meta:</strong> The fallback authentication for the previous registration method has been restored. Also, retrieving registered metadata now works and non-core object types are no longer forcibly blocked. See <a href="https://core.trac.wordpress.org/ticket/35658">#35658</a>.</li>\n<li><strong>REST API:</strong> The order of setting sanitization and validation has been reversed; validation now occurs prior to sanitization. Previously, the sanitization callback ran before the validation callback. See <a href="https://core.trac.wordpress.org/ticket/37192">#37192</a>.</li>\n<li><strong>Customize:</strong> The order of setting sanitization and validation has been reversed; validation now occurs prior to sanitization. See <a href="https://core.trac.wordpress.org/ticket/37247">#37247</a>.</li>\n<li><strong>HTTP API:</strong> <code>WP_Http::request()</code> returns an array again. See <a href="https://core.trac.wordpress.org/ticket/37097">#37097</a>.</li>\n<li><strong>Various bug fixes</strong>. We’ve made <a href="https://core.trac.wordpress.org/log/trunk/src?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=37992&amp;stop_rev=37925&amp;limit=200&amp;verbose=on">just over 50 changes</a> in the last week.</li>\n</ul>\n<p>For more of what’s new in version 4.6, <a href="https://wordpress.org/news/2016/06/wordpress-4-6-beta-1/">check out the Beta 1 blog post</a>.</p>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p>If you think you’ve found a bug, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a bug report, <a href="https://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.6">everything we’ve fixed</a>.</p>\n<p>Happy testing!</p>\n<p><em>Teenage Beta 2</em><br />\n<em>Thirteen years of pressing words</em><br />\n<em>Rejoice with testing!</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4371";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.6 Beta 1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2016/06/wordpress-4-6-beta-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 30 Jun 2016 01:22:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4343";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.6 Beta 1 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.6, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:27:"Dominik Schilling (ocean90)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:5954:"<p>WordPress 4.6 Beta 1 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.6, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.6-beta1.zip">download the beta here</a> (zip).</p>\n<p>WordPress 4.6 is slated for release on <a href="https://make.wordpress.org/core/version-4-6-project-schedule/">August 16</a>, but to get there, we need your help testing what we have been working on, including:</p>\n<ul>\n<li><strong>Shiny Updates v2</strong> (<a href="https://core.trac.wordpress.org/changeset/37714">[37714]</a>) &#8211; <a href="https://make.wordpress.org/core/features/shiny-updates/">Shiny Updates</a> replaces progress updates with a simpler and more straight forward experience when installing, updating, and deleting plugins and themes.</li>\n<li><strong>Native Fonts in the Admin</strong> (<a href="https://core.trac.wordpress.org/ticket/36753">#36753</a>) &#8211; Experience faster load times, especially when working offline, a removal of a third-party dependency, and a more <a href="https://make.wordpress.org/core/features/font-natively/">native-feeling experience</a> as the lines between the mobile web and native applications continue to blur.</li>\n<li><strong>Editor Improvements</strong> &#8211; A more reliable recovery mode (<a href="https://core.trac.wordpress.org/ticket/37025">#37025</a>) and detection of broken URLs while you type them (<a href="https://core.trac.wordpress.org/ticket/36638">#36638</a>).</li>\n</ul>\n<p>There have been changes for developers to explore as well:</p>\n<ul>\n<li><strong>Resource Hints</strong> (<a href="https://core.trac.wordpress.org/ticket/34292">#34292</a>) &#8211; Allow browsers to prefetch specific pages, render them in the background, perform DNS lookups, or to begin the connection handshake (DNS, TCP, TLS) in the background.</li>\n<li>New <code>WP_Site_Query</code> (<a href="https://core.trac.wordpress.org/ticket/35791">#35791</a>) and <code>WP_Network_Query</code> (<a href="https://core.trac.wordpress.org/ticket/32504">#32504</a>) classes to query sites and networks with lazy loading for details.</li>\n<li><strong>Requests</strong> (<a href="https://core.trac.wordpress.org/ticket/33055">#33055</a>) &#8211; A new PHP library for HTTP requests that supports parallel requests and more.</li>\n<li><code>WP_Term_Query</code> (<a href="https://core.trac.wordpress.org/ticket/35381">#35381</a>) is modeled on existing query classes and provides a more consistent structure for generating term queries.</li>\n<li><strong>Language Packs</strong> (<a href="https://core.trac.wordpress.org/ticket/34114">#34114</a>, <a href="https://core.trac.wordpress.org/ticket/34213">#34213</a>) &#8211; Translations managed through <a href="https://translate.wordpress.org">translate.wordpress.org</a> now have a higher priority and are loaded just-in-time.</li>\n<li><code>WP_Post_Type</code> (<a href="https://core.trac.wordpress.org/ticket/36217">#36217</a>) provides easier access to post type objects and their underlying properties.</li>\n<li>The <strong>Widgets API</strong> (<a href="https://core.trac.wordpress.org/ticket/28216">#28216</a>) was enhanced to support registering pre-instantiated widgets.</li>\n<li>Index definitions are now normalized by <code>dbDelta()</code> (<a href="https://core.trac.wordpress.org/changeset/37583">[37583]</a>).</li>\n<li><strong>Comments</strong> can now be stored in a persistent object cache (<a href="https://core.trac.wordpress.org/ticket/36906">#36906</a>).</li>\n<li><strong>External Libraries</strong> were updated to the latest versions &#8211; Masonry to 3.3.2 and imagesLoaded to 3.2.0 (<a href="https://core.trac.wordpress.org/ticket/32802">#32802</a>), MediaElement.js to 2.21.2 (<a href="https://core.trac.wordpress.org/ticket/36759">#36759</a>), and TinyMCE to 4.3.13 (<a href="https://core.trac.wordpress.org/ticket/37225">#37225</a>).</li>\n<li><strong>REST API</strong> responses now include an auto-discovery header (<a href="https://core.trac.wordpress.org/ticket/35580">#35580</a>) and a refreshed nonce when responding to an authenticated response (<a href="https://core.trac.wordpress.org/ticket/35662">#35662</a>).</li>\n<li>Expanded <strong>Meta Registration API</strong> via <code>register_meta()</code> (<a href="https://core.trac.wordpress.org/ticket/35658">#35658</a>).</li>\n<li><strong>Customizer</strong> &#8211; Improved API for <a href="https://make.wordpress.org/core/2016/05/04/improving-setting-validation-in-the-customizer/">setting validation</a> (<a href="https://core.trac.wordpress.org/ticket/34893">#34893</a>, <a href="https://core.trac.wordpress.org/ticket/36944">#36944</a>).</li>\n</ul>\n<p>If you want a more in-depth view of what major changes have made it into 4.6, <a href="https://make.wordpress.org/core/tag/4-6/">check out posts tagged with 4.6 on the main development blog</a>, or look at a <a href="https://core.trac.wordpress.org/query?status=closed&amp;resolution=fixed&amp;milestone=4.6&amp;group=component&amp;order=priority">list of everything</a> that’s changed.</p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs.</a></p>\n<p>Happy testing!</p>\n<p><em>More Shiny Updates</em><br />\n<em>In 4.6 Beta 1.</em><br />\n<em>And Font Natively.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4343";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.5.3 Maintenance and Security Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/news/2016/06/wordpress-4-5-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 18 Jun 2016 09:38:15 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4311";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:460:"WordPress 4.5.3 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.5.2 and earlier are affected by several security issues: redirect bypass in the customizer, reported by Yassine Aboukir; two different XSS problems via attachment names, reported by Jouko Pynnönen and Divyesh Prajapati; revision history information disclosure, reported [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Adam Silverstein";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3571:"<p>WordPress 4.5.3 is now available. This is a <strong>security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>WordPress versions 4.5.2 and earlier are affected by several security issues: redirect bypass in the customizer, reported by <a href="http://yassineaboukir.com">Yassine Aboukir</a>; two different XSS problems via attachment names, reported by <a href="https://klikki.fi/">Jouko Pynnönen</a> and <a href="https://twitter.com/divy_er">Divyesh Prajapati</a>; revision history information disclosure, reported independently by <a href="https://profiles.wordpress.org/johnbillion">John Blackbourn</a> from the WordPress security team and by Dan Moen from the Wordfence Research Team; oEmbed denial of service reported by Jennifer Dodd from Automattic; unauthorized category removal from a post, reported by David Herrera from <a href="https://www.alleyinteractive.com/">Alley Interactive</a>; password change via stolen cookie, reported by <a href="https://blogwaffe.com/">Michael Adams</a> from the WordPress security team; and some less secure <code>sanitize_file_name</code> edge cases reported by <a href="http://peter.westwood.name/">Peter Westwood</a> of  the WordPress security team.</p>\n<p>Thank you to the reporters for practicing <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible disclosure</a>.</p>\n<p>In addition to the security issues above, WordPress 4.5.3 fixes 17 bugs from 4.5, 4.5.1 and 4.5.2. For more information, see the <a href="https://codex.wordpress.org/Version_4.5.3">release notes</a> or consult the <a href="https://core.trac.wordpress.org/query?milestone=4.5.3">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.5.3</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.5.3.</p>\n<p>Thanks to everyone who contributed to 4.5.3:</p>\n<p><a href="https://profiles.wordpress.org/boonebgorges">Boone Gorges</a>, <a href="https://profiles.wordpress.org/neverything">Silvan Hagen</a>, <a href="https://profiles.wordpress.org/vortfu">vortfu</a>, <a href="https://profiles.wordpress.org/ericlewis">Eric Andrew Lewis</a>, <a href="https://profiles.wordpress.org/nbachiyski">Nikolay Bachiyski</a>,  <a href="https://profiles.wordpress.org/mdawaffe">Michael Adams</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/westonruter">Weston Ruter</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/rachelbaker">Rachel Baker</a>, <a href="https://profiles.wordpress.org/xknown">Alex Concha</a>, <a href="https://profiles.wordpress.org/jmdodd">Jennifer M. Dodd</a>, <a href="https://profiles.wordpress.org/kraftbj">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/iseulde">Ella Iseulde Van Dorpe</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/SergeyBiryukov">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/dlh/">David Herrera</a> and <a href="https://profiles.wordpress.org/adamsilverstein">Adam Silverstein</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4311";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:32:"WordPress 4.5.2 Security Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/news/2016/05/wordpress-4-5-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 06 May 2016 19:17:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4290";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:381:"WordPress 4.5.2 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.5.1 and earlier are affected by a SOME vulnerability through Plupload, the third-party library WordPress uses for uploading files. WordPress versions 4.2 through 4.5.1 are vulnerable to reflected XSS [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Helen Hou-Sandi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1669:"<p>WordPress 4.5.2 is now available. This is a <strong>security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>WordPress versions 4.5.1 and earlier are affected by a <abbr title="Same-Origin Method Execution">SOME</abbr> vulnerability through Plupload, the third-party library WordPress uses for uploading files. WordPress versions 4.2 through 4.5.1 are vulnerable to reflected XSS using specially crafted URIs through MediaElement.js, the third-party library used for media players. MediaElement.js and Plupload have also released updates fixing these issues.</p>\n<p>Both issues were analyzed and reported by Mario Heiderich, Masato Kinugawa, and Filedescriptor from <a href="https://cure53.de/">Cure53</a>. Thanks to the team for practicing <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible disclosure</a>, and to the Plupload and MediaElement.js teams for working closely with us to coördinate and fix these issues.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.5.2</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.5.2.</p>\n<p>Additionally, there are multiple widely publicized vulnerabilities in the ImageMagick image processing library, which is used by a number of hosts and is supported in WordPress. For our current response to these issues, see <a href="https://make.wordpress.org/core/2016/05/06/imagemagick-vulnerability-information/">this post on the core development blog</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4290";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"WordPress 4.5.1 Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/news/2016/04/wordpress-4-5-1-maintenance-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 26 Apr 2016 18:58:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:3:"4.5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4269";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:358:"After about six million downloads of WordPress 4.5, we are pleased to announce the immediate availability of WordPress 4.5.1, a maintenance release. This release fixes 12 bugs, chief among them a singular class issue that broke sites based on the Twenty Eleven theme, an incompatibility between certain Chrome versions and the visual editor, and an [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Adam Silverstein";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2134:"<p>After about six million downloads of WordPress 4.5, we are pleased to announce the immediate availability of WordPress 4.5.1, a maintenance release.</p>\n<p>This release fixes 12 bugs, chief among them a singular class issue that broke sites based on the Twenty Eleven theme, an incompatibility between certain Chrome versions and the visual editor, and an Imagick bug that could break media uploads. This maintenance release fixes a total of 12 bugs in Version 4.5. <span style="line-height: 1.5">For more information, see the </span><a style="line-height: 1.5" href="https://codex.wordpress.org/Version_4.5.1">release notes</a><span style="line-height: 1.5"> or consult the </span><a style="line-height: 1.5" href="https://core.trac.wordpress.org/log/branches/4.5?rev=37295&amp;stop_rev=37182">list of changes</a><span style="line-height: 1.5">.</span></p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.5.1</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.5.1.</p>\n<p>Thanks to everyone who contributed to 4.5.1:</p>\n<p><a href="https://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/afercia">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone Gorges</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/flixos90">Felix Arntz</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/gblsm">gblsm</a>, <a href="https://profiles.wordpress.org/helen">Helen Hou-Sandi</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="https://profiles.wordpress.org/celloexpressions">Nick Halsey</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, and <a href="https://profiles.wordpress.org/WiZZarD_">Pieter</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4269";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:32:"https://wordpress.org/news/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:4:"site";a:1:{i:0;a:5:{s:4:"data";s:8:"14607090";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:9:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Mon, 22 Aug 2016 23:10:33 GMT";s:12:"content-type";s:34:"application/rss+xml; charset=UTF-8";s:25:"strict-transport-security";s:11:"max-age=360";s:6:"x-olaf";s:3:"⛄";s:13:"last-modified";s:29:"Tue, 16 Aug 2016 19:54:28 GMT";s:4:"link";s:63:"<https://wordpress.org/news/wp-json/>; rel="https://api.w.org/"";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}}s:5:"build";s:14:"20160522103442";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(817, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1471950596', 'no'),
(818, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1471907396', 'no'),
(819, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1471950615', 'no'),
(820, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 22 Aug 2016 22:52:07 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Really Simple CAPTCHA";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/really-simple-captcha/#post-9542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Mar 2009 02:17:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"9542@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Really Simple CAPTCHA is a CAPTCHA module intended to be called from other plugins. It is originally created for my Contact Form 7 plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Hello Dolly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/hello-dolly/#post-5790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 May 2008 22:11:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"5790@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"18101@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"363@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Duplicate Post";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/duplicate-post/#post-2646";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Dec 2007 17:40:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2646@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:22:"Clone posts and pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Lopo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"Yoast SEO";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"8321@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:114:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"15@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2141@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"Google Analytics by MonsterInsights";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2316@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:113:"Connect Google Analytics with WordPress by adding your Google Analytics tracking code. Get the stats that matter.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Syed Balkhi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29860@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2572@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"23862@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:107:"Increase your traffic, view your stats, speed up your site, and protect yourself from hackers with Jetpack.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Automattic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Regenerate Thumbnails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/regenerate-thumbnails/#post-6743";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 23 Aug 2008 14:38:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"6743@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"Allows you to regenerate your thumbnails after changing the thumbnail sizes.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:25:"Alex Mills (Viper007Bond)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"W3 Total Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/w3-total-cache/#post-12073";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2009 18:46:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"12073@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:132:"Easy Web Performance Optimization (WPO) using caching: browser, page, object, database, minify and content delivery network support.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Frederick Townes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"1169@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 15 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"753@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"The most downloaded plugin for WordPress (almost 30 million downloads). Use All in One SEO Pack to automatically optimize your site for Search Engines";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29832@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"Secure your website with the Wordfence security plugin for WordPress.  Wordfence provides free enterprise-class WordPress security, protecting your we";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"25254@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"51888@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2082@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:58:"Extends and enhances TinyMCE, the WordPress Visual Editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"132@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26907@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Samir Shah";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Multibyte Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wp-multibyte-patch/#post-28395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Jul 2011 12:22:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"28395@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Multibyte functionality enhancement for the WordPress Japanese package.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"plugin-master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"50539@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:127:"Displays Google Analytics reports in your WordPress Dashboard. Inserts the latest Google Analytics tracking code in your pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"UpdraftPlus WordPress Backup Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"38058@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Clef Two-Factor Authentication";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wpclef/#post-47509";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Dec 2012 01:25:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"47509@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:139:"Modern two-factor that people love to use: strong authentication without passwords or tokens; single sign on/off; magical login experience.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Dave Ross";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Black Studio TinyMCE Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/plugins/black-studio-tinymce-widget/#post-31973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Nov 2011 15:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"31973@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"The visual editor widget for Wordpress.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Marco Chiesi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"Duplicator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/duplicator/#post-26607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2011 12:15:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26607@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Duplicate, clone, backup, move and transfer an entire site from one location to another.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Cory Lamle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"21738@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:146:"Take the guesswork out of WordPress security. iThemes Security offers 30+ ways to lock down WordPress in an easy-to-use WordPress security plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"iThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Meta Slider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/ml-slider/#post-49521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Feb 2013 16:56:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"49521@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Easy to use WordPress Slider plugin. Create responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Matcha Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:12:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Mon, 22 Aug 2016 23:10:52 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:7:"expires";s:29:"Mon, 22 Aug 2016 23:27:07 GMT";s:13:"cache-control";s:0:"";s:6:"pragma";s:0:"";s:13:"last-modified";s:31:"Mon, 22 Aug 2016 22:52:07 +0000";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";s:16:"content-encoding";s:4:"gzip";}}s:5:"build";s:14:"20160522103442";}', 'no'),
(821, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1471950615', 'no'),
(822, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1471907415', 'no'),
(823, '_transient_timeout_plugin_slugs', '1472003301', 'no'),
(824, '_transient_plugin_slugs', 'a:11:{i:0;s:35:"tjd_add_content/tjd_add_content.php";i:1;s:19:"akismet/akismet.php";i:2;s:9:"hello.php";i:3;s:37:"mailchimp-for-wp/mailchimp-for-wp.php";i:4;s:39:"siteorigin-panels/siteorigin-panels.php";i:5;s:33:"soliloquy-lite/soliloquy-lite.php";i:6;s:33:"sydney-toolbox/sydney-toolbox.php";i:7;s:27:"woocommerce/woocommerce.php";i:8;s:41:"wp-database-backup/wp-database-backup.php";i:9;s:24:"wpforms-lite/wpforms.php";i:10;s:24:"wordpress-seo/wp-seo.php";}', 'no'),
(825, '_transient_timeout_dash_fe2922e4dab38d163882ac0453e47f7b', '1471950615', 'no'),
(826, '_transient_dash_fe2922e4dab38d163882ac0453e47f7b', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2016/08/pepper/''>WordPress 4.6 “Pepper”</a> <span class="rss-date">August 16, 2016</span><div class="rssSummary">Version 4.6 of WordPress, named “Pepper” in honor of jazz baritone saxophonist Park Frederick “Pepper” Adams III, is available for download or update in your WordPress dashboard. New features in 4.6 help you to focus on the important things while feeling more at home.</div></li></ul></div><div class="rss-widget"><p><strong>RSS Error</strong>: Array</p></div><div class="rss-widget"><ul><li class="dashboard-news-plugin"><span>Popular Plugin:</span> Clef Two-Factor Authentication&nbsp;<a href="plugin-install.php?tab=plugin-information&amp;plugin=wpclef&amp;_wpnonce=e7613a04f7&amp;TB_iframe=true&amp;width=600&amp;height=800" class="thickbox open-plugin-details-modal" aria-label="Install Clef Two-Factor Authentication">(Install)</a></li></ul></div>', 'no'),
(827, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1471918342', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(828, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5981";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3695";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3648";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3163";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2824";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2439";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2240";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2110";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2070";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2060";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"2009";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1949";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1883";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1814";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1717";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1600";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1559";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1428";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1337";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1293";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1252";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1123";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1110";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1014";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:4:"1009";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:4:"1008";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"942";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"932";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"926";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"919";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"919";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"862";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"849";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"807";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"800";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"794";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"777";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"771";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"767";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"766";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"755";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"749";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"721";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"716";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"702";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"699";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"697";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"697";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"693";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"679";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"667";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"648";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"625";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"625";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"616";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"606";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"603";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"601";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"598";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"590";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"586";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"575";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"573";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"562";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"562";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"546";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"543";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"540";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"526";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"525";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"520";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"518";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"518";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"516";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"489";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"479";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"472";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"472";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"464";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"461";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"453";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"446";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"441";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"435";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"428";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"428";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"426";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"425";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"422";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"415";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"415";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"411";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"408";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"407";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"406";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"406";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"405";}s:7:"profile";a:3:{s:4:"name";s:7:"profile";s:4:"slug";s:7:"profile";s:5:"count";s:3:"404";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"401";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"401";}}', 'no'),
(835, '_transient_timeout__sol_cache_all', '1471994479', 'no'),
(836, '_transient__sol_cache_all', 'a:1:{i:0;a:3:{s:2:"id";i:56;s:6:"slider";a:2:{i:57;a:9:{s:6:"status";s:6:"active";s:2:"id";i:57;s:13:"attachment_id";i:57;s:3:"src";s:69:"http://localhost/wordpress/wp-content/uploads/2016/08/lorempixel1.jpg";s:5:"title";s:11:"lorempixel1";s:4:"link";s:0:"";s:3:"alt";s:11:"lorempixel1";s:7:"caption";s:0:"";s:4:"type";s:5:"image";}i:58;a:9:{s:6:"status";s:6:"active";s:2:"id";i:58;s:13:"attachment_id";i:58;s:3:"src";s:69:"http://localhost/wordpress/wp-content/uploads/2016/08/lorempixel2.jpg";s:5:"title";s:11:"lorempixel2";s:4:"link";s:0:"";s:3:"alt";s:11:"lorempixel2";s:7:"caption";s:0:"";s:4:"type";s:5:"image";}}s:6:"config";a:14:{s:4:"type";s:7:"default";s:12:"slider_theme";s:4:"base";s:12:"slider_width";i:1366;s:13:"slider_height";i:768;s:10:"transition";s:4:"fade";s:8:"duration";i:5000;s:5:"speed";i:400;s:6:"gutter";i:20;s:6:"slider";i:0;s:9:"aria_live";s:6:"polite";s:7:"classes";a:1:{i:0;s:0:"";}s:5:"title";s:8:"About Me";s:4:"slug";s:8:"about-me";s:3:"rtl";i:0;}}}', 'no'),
(838, '_transient_timeout__sol_cache_50', '1471994726', 'no'),
(839, '_transient__sol_cache_50', 'a:3:{s:2:"id";i:56;s:6:"slider";a:2:{i:57;a:9:{s:6:"status";s:6:"active";s:2:"id";i:57;s:13:"attachment_id";i:57;s:3:"src";s:69:"http://localhost/wordpress/wp-content/uploads/2016/08/lorempixel1.jpg";s:5:"title";s:11:"lorempixel1";s:4:"link";s:0:"";s:3:"alt";s:11:"lorempixel1";s:7:"caption";s:0:"";s:4:"type";s:5:"image";}i:58;a:9:{s:6:"status";s:6:"active";s:2:"id";i:58;s:13:"attachment_id";i:58;s:3:"src";s:69:"http://localhost/wordpress/wp-content/uploads/2016/08/lorempixel2.jpg";s:5:"title";s:11:"lorempixel2";s:4:"link";s:0:"";s:3:"alt";s:11:"lorempixel2";s:7:"caption";s:0:"";s:4:"type";s:5:"image";}}s:6:"config";a:14:{s:4:"type";s:7:"default";s:12:"slider_theme";s:4:"base";s:12:"slider_width";i:1366;s:13:"slider_height";i:768;s:10:"transition";s:4:"fade";s:8:"duration";i:5000;s:5:"speed";i:400;s:6:"gutter";i:20;s:6:"slider";i:0;s:9:"aria_live";s:6:"polite";s:7:"classes";a:1:{i:0;s:0:"";}s:5:"title";s:8:"About Me";s:4:"slug";s:8:"about-me";s:3:"rtl";i:0;}}', 'no'),
(842, '_transient_timeout_wc_related_15', '1471998455', 'no'),
(843, '_transient_wc_related_15', 'a:0:{}', 'no'),
(854, 'widget_mc4wp_form_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(855, 'mc4wp_version', '4.0.2', 'yes'),
(856, 'mc4wp_flash_messages', 'a:0:{}', 'no'),
(857, '_transient_timeout_mc4wp_remote_content_icontent-blocksid106689', '1472003310', 'no'),
(858, '_transient_mc4wp_remote_content_icontent-blocksid106689', '<div style="border: 5px dotted #cc4444; padding: 0 20px; background: white;">\r\n<h3>MailChimp for WordPress Premium</h3>\r\n<p>This plugin has a Premium add-on, unlocking several powerful features. <a href="https://mc4wp.com/features/#utm_source=wp-plugin&utm_medium=mailchimp-for-wp&utm_campaign=upgrade-box">Have a look at its benefits</a>!</p>\r\n</div>\r\n', 'no'),
(859, 'mc4wp', 'a:2:{s:7:"api_key";s:37:"d66efaab0c6ef4834b71ab2c614ca19f-us14";s:20:"allow_usage_tracking";i:0;}', 'yes'),
(862, '_transient_timeout_mc4wp_mailchimp_lists_v3', '1472176148', 'no'),
(863, '_transient_mc4wp_mailchimp_lists_v3', 'a:1:{s:10:"f82724f937";O:20:"MC4WP_MailChimp_List":6:{s:2:"id";s:10:"f82724f937";s:6:"web_id";s:4:"5553";s:4:"name";s:19:"General Subscribers";s:16:"subscriber_count";i:1;s:12:"merge_fields";a:3:{i:0;O:27:"MC4WP_MailChimp_Merge_Field":7:{s:4:"name";s:13:"Email Address";s:10:"field_type";s:5:"email";s:3:"tag";s:5:"EMAIL";s:8:"required";b:1;s:7:"choices";a:0:{}s:6:"public";b:1;s:13:"default_value";s:0:"";}i:1;O:27:"MC4WP_MailChimp_Merge_Field":7:{s:4:"name";s:10:"First Name";s:10:"field_type";s:4:"text";s:3:"tag";s:5:"FNAME";s:8:"required";b:0;s:7:"choices";a:0:{}s:6:"public";b:1;s:13:"default_value";s:0:"";}i:2;O:27:"MC4WP_MailChimp_Merge_Field":7:{s:4:"name";s:9:"Last Name";s:10:"field_type";s:4:"text";s:3:"tag";s:5:"LNAME";s:8:"required";b:0;s:7:"choices";a:0:{}s:6:"public";b:1;s:13:"default_value";s:0:"";}}s:19:"interest_categories";a:0:{}}}', 'no'),
(864, '_transient_timeout_mc4wp_mailchimp_lists_v3_fallback', '1474508948', 'no'),
(865, '_transient_mc4wp_mailchimp_lists_v3_fallback', 'a:1:{s:10:"f82724f937";O:20:"MC4WP_MailChimp_List":6:{s:2:"id";s:10:"f82724f937";s:6:"web_id";s:4:"5553";s:4:"name";s:19:"General Subscribers";s:16:"subscriber_count";i:1;s:12:"merge_fields";a:3:{i:0;O:27:"MC4WP_MailChimp_Merge_Field":7:{s:4:"name";s:13:"Email Address";s:10:"field_type";s:5:"email";s:3:"tag";s:5:"EMAIL";s:8:"required";b:1;s:7:"choices";a:0:{}s:6:"public";b:1;s:13:"default_value";s:0:"";}i:1;O:27:"MC4WP_MailChimp_Merge_Field":7:{s:4:"name";s:10:"First Name";s:10:"field_type";s:4:"text";s:3:"tag";s:5:"FNAME";s:8:"required";b:0;s:7:"choices";a:0:{}s:6:"public";b:1;s:13:"default_value";s:0:"";}i:2;O:27:"MC4WP_MailChimp_Merge_Field":7:{s:4:"name";s:9:"Last Name";s:10:"field_type";s:4:"text";s:3:"tag";s:5:"LNAME";s:8:"required";b:0;s:7:"choices";a:0:{}s:6:"public";b:1;s:13:"default_value";s:0:"";}}s:19:"interest_categories";a:0:{}}}', 'no'),
(866, 'mc4wp_form_stylesheets', 'a:1:{i:0;s:5:"basic";}', 'yes'),
(867, 'mc4wp_form_preview_id', '71', 'no'),
(876, 'mc4wp_default_form_id', '70', 'yes'),
(881, '_site_transient_timeout_theme_roots', '1471925735', 'no'),
(882, '_site_transient_theme_roots', 'a:6:{s:17:"html5blank-stable";s:7:"/themes";s:12:"sydney-child";s:7:"/themes";s:6:"sydney";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(883, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:63:"https://downloads.wordpress.org/release/en_AU/wordpress-4.6.zip";s:6:"locale";s:5:"en_AU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/en_AU/wordpress-4.6.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.6";s:7:"version";s:3:"4.6";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1471923942;s:15:"version_checked";s:3:"4.6";s:12:"translations";a:0:{}}', 'no'),
(884, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1471923951;s:7:"checked";a:6:{s:17:"html5blank-stable";s:5:"1.4.3";s:12:"sydney-child";s:5:"1.0.0";s:6:"sydney";s:4:"1.31";s:13:"twentyfifteen";s:3:"1.6";s:14:"twentyfourteen";s:3:"1.8";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(885, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1471923947;s:8:"response";a:0:{}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:13:"wordpress-seo";s:8:"language";s:5:"en_AU";s:7:"version";s:5:"3.4.2";s:7:"updated";s:19:"2016-06-16 09:21:25";s:7:"package";s:80:"https://downloads.wordpress.org/translation/plugin/wordpress-seo/3.4.2/en_AU.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:10:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:6:"3.1.11";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/akismet.3.1.11.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:37:"mailchimp-for-wp/mailchimp-for-wp.php";O:8:"stdClass":6:{s:2:"id";s:5:"41550";s:4:"slug";s:16:"mailchimp-for-wp";s:6:"plugin";s:37:"mailchimp-for-wp/mailchimp-for-wp.php";s:11:"new_version";s:5:"4.0.2";s:3:"url";s:47:"https://wordpress.org/plugins/mailchimp-for-wp/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/mailchimp-for-wp.4.0.2.zip";}s:39:"siteorigin-panels/siteorigin-panels.php";O:8:"stdClass":6:{s:2:"id";s:5:"40030";s:4:"slug";s:17:"siteorigin-panels";s:6:"plugin";s:39:"siteorigin-panels/siteorigin-panels.php";s:11:"new_version";s:6:"2.4.13";s:3:"url";s:48:"https://wordpress.org/plugins/siteorigin-panels/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/siteorigin-panels.2.4.13.zip";}s:33:"soliloquy-lite/soliloquy-lite.php";O:8:"stdClass":6:{s:2:"id";s:5:"33515";s:4:"slug";s:14:"soliloquy-lite";s:6:"plugin";s:33:"soliloquy-lite/soliloquy-lite.php";s:11:"new_version";s:7:"2.5.0.4";s:3:"url";s:45:"https://wordpress.org/plugins/soliloquy-lite/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/soliloquy-lite.zip";}s:33:"sydney-toolbox/sydney-toolbox.php";O:8:"stdClass":6:{s:2:"id";s:5:"70155";s:4:"slug";s:14:"sydney-toolbox";s:6:"plugin";s:33:"sydney-toolbox/sydney-toolbox.php";s:11:"new_version";s:4:"1.01";s:3:"url";s:45:"https://wordpress.org/plugins/sydney-toolbox/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/sydney-toolbox.1.01.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"2.6.4";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.2.6.4.zip";}s:41:"wp-database-backup/wp-database-backup.php";O:8:"stdClass":6:{s:2:"id";s:5:"48888";s:4:"slug";s:18:"wp-database-backup";s:6:"plugin";s:41:"wp-database-backup/wp-database-backup.php";s:11:"new_version";s:5:"4.3.3";s:3:"url";s:49:"https://wordpress.org/plugins/wp-database-backup/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/wp-database-backup.zip";}s:24:"wpforms-lite/wpforms.php";O:8:"stdClass":6:{s:2:"id";s:5:"70135";s:4:"slug";s:12:"wpforms-lite";s:6:"plugin";s:24:"wpforms-lite/wpforms.php";s:11:"new_version";s:7:"1.2.5.1";s:3:"url";s:43:"https://wordpress.org/plugins/wpforms-lite/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/wpforms-lite.zip";}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":6:{s:2:"id";s:4:"5899";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:5:"3.4.2";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wordpress-seo.3.4.2.zip";}}}', 'no'),
(891, '_transient_is_multi_author', '0', 'yes');

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
(7, 6, '_edit_lock', '1471824480:1'),
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
(108, 23, '_edit_lock', '1471822223:1'),
(109, 23, '_wp_page_template', 'page-templates/child_sydney_about_me.php'),
(110, 10, '_edit_lock', '1471911539:1'),
(111, 10, '_edit_last', '1'),
(112, 10, '_wp_page_template', 'page-templates/page_fullwidth.php'),
(113, 26, '_edit_last', '1'),
(114, 26, '_wp_page_template', 'page-templates/child_sydney_services.php'),
(115, 26, '_edit_lock', '1471832775:1'),
(116, 28, '_edit_last', '1'),
(117, 28, '_wp_page_template', 'default'),
(118, 28, '_edit_lock', '1471916687:1'),
(119, 30, '_edit_last', '1'),
(120, 30, '_wp_page_template', 'page-templates/child_sydney_hypnotherapy-sessions.php'),
(121, 30, '_edit_lock', '1471838026:1'),
(122, 32, '_edit_last', '1'),
(123, 32, '_wp_page_template', 'page-templates/child_sydney_workshop.php'),
(124, 32, '_edit_lock', '1471838242:1'),
(125, 34, '_edit_last', '1'),
(126, 34, '_wp_page_template', 'page-templates/child_sydney_funeral.php'),
(127, 34, '_edit_lock', '1471839478:1'),
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
(254, 23, '2.1_information', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(255, 11, '_edit_lock', '1471824159:1'),
(256, 26, '1.1_hypnotherapy_sessions_main_title', 'Hypnotherapy'),
(257, 26, '1.3_sessions_text', 'Hypnotherapy is a form of relaxation and visualisation.  You will be happy to learn that you are aware and in control at all times during the session.  Most sessions take about 1.5 hours as we work on issues in your life.  By working together we can work out the best way forward for yourself and how best to work through your issues.  This level of relaxation is a way of connecting to your true feelings and in a safe environment expressing who you really are and the goals you have and the strategies to accomplish those goals.'),
(258, 26, '1.2_sessions_title', 'Sessions'),
(260, 26, '1.4_past_life_title', 'Past Life Therapy'),
(261, 26, '1.5_past_life_text', 'This is very powerful healing work and is my specialist field.  Using relaxation to regress to another time amazing healing can take place as you understand why things are happening in your life.  This regression is undertaken in a very safe space and very much experienced as if watching a DVD with an understanding that is “all knowing”. '),
(262, 26, '2.1_workshop_title', 'Workshops'),
(263, 26, '2.3_workshop_text', 'As a certified workshop leader I guide you in a group setting to experience some amazing exercises which allow you to open up the belief that you are worthy, deserve to live a fulfilled life and to believe in yourself.  These workshops are empowering and leave you with an incredible and valuable sense of really understanding yourself.  They also open up a feeling of connection to the universe and each other.\r\n'),
(264, 26, '2.2_workshop_subtitle', 'Heal your Life® Inspired by Louise L. Hay'),
(265, 26, '2.2_workshop_subtitle', 'Heal your Life® Inspired by Louise L. Hay'),
(266, 26, '3.1_funeral_celebrant_title', 'Funeral Service'),
(267, 26, '3.2_funeral_celebrant_subtitle', 'Funeral Celebrant'),
(268, 26, '3.3_funeral_celebrant_text', 'I am also a Funeral Celebrant and I feel very privileged to help those who are grieving at a most difficult time in life.  To be that support and to be respectful to the family’s wishes at this time is very important to me.  My gift is to be of service.  I hope that you won’t require my services but if you should, I offer a very professional, caring, understanding and stress-free service working closely with the Oceanview Funeral Home.'),
(270, 26, '0.1_page_title', 'What I Have To Offer'),
(271, 26, '0.2_page_title_text', 'Information about what you do goes here'),
(272, 30, '1.1_hypnotherapy_title', 'Hypnotherapy'),
(273, 30, '1.2_hypnotherapy_text', 'Overview of what you do for this specific service'),
(274, 30, '4.1_selling_title', 'Book A Session With Me'),
(275, 30, '4.2_selling_text', '(selling point description for the service)'),
(276, 30, '2.1_session_title', 'Hypnotherapy'),
(277, 30, '2.2_session_text', '(description of what you do for this)'),
(278, 30, '3.1_past_life_title', 'Past Life Therapy'),
(279, 30, '3.2_past_life_text', '(description of what you do for this)'),
(280, 32, '1.1_workshop_main_title', 'Heal your Life® Workshops inspired by Louise L Hay'),
(281, 32, '1.2_workshop_description', '(description of what is involved in the workshops)'),
(285, 34, '1.1_funeral_celebrant_title', 'Funeral Celebrant'),
(286, 34, '1.2_funeral_celebrant_description', '(description of what a funeral celebrant does)'),
(287, 32, '2.1_selling_title', 'Book A Workshop With Me'),
(288, 32, '2.2_selling_text', '(selling point description for the service)'),
(289, 34, '2.1_selling_title', 'Book For A Funeral Service'),
(290, 34, '2.2_selling_text', '(selling point description for the service)'),
(291, 20, '_wp_trash_meta_status', 'publish'),
(292, 20, '_wp_trash_meta_time', '1471907848'),
(293, 20, '_wp_desired_post_slug', 'dgvgbgbrfgbrfgb'),
(294, 12, '_edit_lock', '1471911328:1'),
(295, 12, '_edit_last', '1'),
(296, 12, '_wp_page_template', 'page-templates/page_fullwidth.php'),
(297, 13, '_edit_lock', '1471911366:1'),
(298, 69, '_menu_item_type', 'post_type'),
(299, 69, '_menu_item_menu_item_parent', '0'),
(300, 69, '_menu_item_object_id', '15'),
(301, 69, '_menu_item_object', 'product'),
(302, 69, '_menu_item_target', ''),
(303, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(304, 69, '_menu_item_xfn', ''),
(305, 69, '_menu_item_url', ''),
(307, 70, '_mc4wp_settings', 'a:8:{s:5:"lists";a:1:{i:0;s:10:"f82724f937";}s:15:"required_fields";s:11:"EMAIL,FNAME";s:12:"double_optin";s:1:"1";s:15:"update_existing";s:1:"0";s:17:"replace_interests";s:1:"1";s:18:"hide_after_success";s:1:"0";s:8:"redirect";s:0:"";s:3:"css";s:5:"basic";}'),
(308, 71, '_mc4wp_settings', 'a:8:{s:15:"required_fields";s:11:"EMAIL,FNAME";s:5:"lists";a:1:{i:0;s:10:"f82724f937";}s:12:"double_optin";s:1:"1";s:15:"update_existing";s:1:"0";s:17:"replace_interests";s:1:"1";s:18:"hide_after_success";s:1:"0";s:8:"redirect";s:0:"";s:3:"css";s:1:"0";}'),
(309, 71, 'text_subscribed', 'Thank you, your sign-up request was successful! Please check your email inbox to confirm.'),
(310, 71, 'text_invalid_email', 'Please provide a valid email address.'),
(311, 71, 'text_required_field_missing', 'Please fill in the required fields.'),
(312, 71, 'text_already_subscribed', 'Given email address is already subscribed, thank you!'),
(313, 71, 'text_error', 'Oops. Something went wrong. Please try again later.'),
(314, 71, 'text_unsubscribed', 'You were successfully unsubscribed.'),
(315, 71, 'text_not_subscribed', 'Given email address is not subscribed.'),
(316, 71, 'text_no_lists_selected', 'Please select at least one list.'),
(317, 71, 'text_updated', 'Thank you, your records have been updated!'),
(318, 70, 'text_subscribed', 'Thank you, your sign-up request was successful! Please check your email inbox to confirm.'),
(319, 70, 'text_invalid_email', 'Please provide a valid email address.'),
(320, 70, 'text_required_field_missing', 'Please fill in the required fields.'),
(321, 70, 'text_already_subscribed', 'Given email address is already subscribed, thank you!'),
(322, 70, 'text_error', 'Oops. Something went wrong. Please try again later.'),
(323, 70, 'text_unsubscribed', 'You were successfully unsubscribed.'),
(324, 70, 'text_not_subscribed', 'Given email address is not subscribed.'),
(325, 70, 'text_no_lists_selected', 'Please select at least one list.'),
(326, 70, 'text_updated', 'Thank you, your records have been updated!');

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
(10, 1, '2016-07-18 00:18:46', '2016-07-18 00:18:46', '', 'My Book', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2016-08-22 23:22:22', '2016-08-22 23:22:22', '', 0, 'http://localhost/wordpress/shop/', 0, 'page', '', 0),
(11, 1, '2016-07-18 00:18:46', '2016-07-18 00:18:46', '[woocommerce_cart]', 'Basket', '', 'publish', 'closed', 'closed', '', 'basket', '', '', '2016-07-18 00:18:46', '2016-07-18 00:18:46', '', 0, 'http://localhost/wordpress/basket/', 0, 'page', '', 0),
(12, 1, '2016-07-18 00:18:46', '2016-07-18 00:18:46', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2016-08-23 00:16:53', '2016-08-23 00:16:53', '', 0, 'http://localhost/wordpress/checkout/', 0, 'page', '', 0),
(13, 1, '2016-07-18 00:18:46', '2016-07-18 00:18:46', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2016-07-18 00:18:46', '2016-07-18 00:18:46', '', 0, 'http://localhost/wordpress/my-account/', 0, 'page', '', 0),
(15, 1, '2016-07-19 02:30:41', '2016-07-19 02:30:41', 'Book', 'Book', '', 'publish', 'open', 'closed', '', 'book', '', '', '2016-07-19 02:30:55', '2016-07-19 02:30:55', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=15', 0, 'product', '', 0),
(16, 1, '2016-07-19 02:29:45', '2016-07-19 02:29:45', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2016-08-23 00:22:03', '2016-08-23 00:22:03', '', 0, 'http://localhost/wordpress/?p=16', 9, 'nav_menu_item', '', 0),
(17, 1, '2016-07-19 02:29:45', '2016-07-19 02:29:45', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2016-08-23 00:22:03', '2016-08-23 00:22:03', '', 0, 'http://localhost/wordpress/?p=17', 8, 'nav_menu_item', '', 0),
(20, 1, '2016-07-19 02:31:13', '2016-07-19 02:31:13', 'ujhtyjhtyjhtyhntty', 'dgvgbgbrfgbrfgb', '', 'trash', 'open', 'closed', '', 'dgvgbgbrfgbrfgb__trashed', '', '', '2016-08-22 23:17:28', '2016-08-22 23:17:28', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=20', 0, 'product', '', 0),
(22, 1, '2016-08-09 03:30:29', '2016-08-09 03:30:29', '', 'portrait', '', 'inherit', 'open', 'closed', '', 'portrait', '', '', '2016-08-09 03:30:29', '2016-08-09 03:30:29', '', 0, 'http://localhost/wordpress/wp-content/uploads/2016/08/portrait.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2016-08-09 03:43:56', '2016-08-09 03:43:56', '', 'About Susan', '', 'publish', 'closed', 'closed', '', 'about-me', '', '', '2016-08-17 04:22:15', '2016-08-17 04:22:15', '', 0, 'http://localhost/wordpress/?page_id=23', 0, 'page', '', 0),
(24, 1, '2016-08-09 03:43:56', '2016-08-09 03:43:56', '', 'About Me', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-08-09 03:43:56', '2016-08-09 03:43:56', '', 23, 'http://localhost/wordpress/2016/08/09/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2016-08-09 03:45:14', '2016-08-09 03:45:14', '', 'My Book', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-08-09 03:45:14', '2016-08-09 03:45:14', '', 10, 'http://localhost/wordpress/2016/08/09/10-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2016-08-09 03:45:28', '2016-08-09 03:45:28', '', 'Services', '', 'publish', 'closed', 'closed', '', 'service', '', '', '2016-08-22 02:23:31', '2016-08-22 02:23:31', '', 0, 'http://localhost/wordpress/?page_id=26', 0, 'page', '', 0),
(27, 1, '2016-08-09 03:45:28', '2016-08-09 03:45:28', '', 'Services', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2016-08-09 03:45:28', '2016-08-09 03:45:28', '', 26, 'http://localhost/wordpress/2016/08/09/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2016-08-09 03:47:46', '2016-08-09 03:47:46', '', 'My Blog', '', 'publish', 'closed', 'closed', '', 'my-blog', '', '', '2016-08-09 03:47:46', '2016-08-09 03:47:46', '', 0, 'http://localhost/wordpress/?page_id=28', 0, 'page', '', 0),
(29, 1, '2016-08-09 03:47:46', '2016-08-09 03:47:46', '', 'My Blog', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-08-09 03:47:46', '2016-08-09 03:47:46', '', 28, 'http://localhost/wordpress/2016/08/09/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2016-08-09 03:48:09', '2016-08-09 03:48:09', '', 'Hypnotherapy Sessions', '', 'publish', 'closed', 'closed', '', 'hypnotherapy-sessions', '', '', '2016-08-22 03:37:08', '2016-08-22 03:37:08', '', 0, 'http://localhost/wordpress/?page_id=30', 0, 'page', '', 0),
(31, 1, '2016-08-09 03:48:09', '2016-08-09 03:48:09', '', 'Hypnotherapy Sessions', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-08-09 03:48:09', '2016-08-09 03:48:09', '', 30, 'http://localhost/wordpress/2016/08/09/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2016-08-09 03:48:19', '2016-08-09 03:48:19', '', 'Workshops', '', 'publish', 'closed', 'closed', '', 'workshops', '', '', '2016-08-22 03:53:27', '2016-08-22 03:53:27', '', 0, 'http://localhost/wordpress/?page_id=32', 0, 'page', '', 0),
(33, 1, '2016-08-09 03:48:19', '2016-08-09 03:48:19', '', 'Workshops', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2016-08-09 03:48:19', '2016-08-09 03:48:19', '', 32, 'http://localhost/wordpress/2016/08/09/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2016-08-09 03:48:30', '2016-08-09 03:48:30', '', 'Funeral Celebrant', '', 'publish', 'closed', 'closed', '', 'funeral-celebrant', '', '', '2016-08-22 03:59:36', '2016-08-22 03:59:36', '', 0, 'http://localhost/wordpress/?page_id=34', 0, 'page', '', 0),
(35, 1, '2016-08-09 03:48:30', '2016-08-09 03:48:30', '', 'Funeral Celebrant', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2016-08-09 03:48:30', '2016-08-09 03:48:30', '', 34, 'http://localhost/wordpress/2016/08/09/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2016-08-09 03:51:08', '2016-08-09 03:51:08', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2016-08-23 00:22:02', '2016-08-23 00:22:02', '', 0, 'http://localhost/wordpress/?p=36', 6, 'nav_menu_item', '', 0),
(37, 1, '2016-08-09 03:51:07', '2016-08-09 03:51:07', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2016-08-23 00:22:02', '2016-08-23 00:22:02', '', 0, 'http://localhost/wordpress/?p=37', 5, 'nav_menu_item', '', 0),
(38, 1, '2016-08-09 03:51:06', '2016-08-09 03:51:06', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2016-08-23 00:22:02', '2016-08-23 00:22:02', '', 0, 'http://localhost/wordpress/?p=38', 4, 'nav_menu_item', '', 0),
(39, 1, '2016-08-09 03:51:05', '2016-08-09 03:51:05', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2016-08-23 00:22:03', '2016-08-23 00:22:03', '', 0, 'http://localhost/wordpress/?p=39', 10, 'nav_menu_item', '', 0),
(40, 1, '2016-08-09 03:51:06', '2016-08-09 03:51:06', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2016-08-23 00:22:02', '2016-08-23 00:22:02', '', 0, 'http://localhost/wordpress/?p=40', 3, 'nav_menu_item', '', 0),
(41, 1, '2016-08-09 03:51:08', '2016-08-09 03:51:08', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2016-08-23 00:22:02', '2016-08-23 00:22:02', '', 0, 'http://localhost/wordpress/?p=41', 2, 'nav_menu_item', '', 0),
(42, 1, '2016-08-09 03:51:09', '2016-08-09 03:51:09', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2016-08-23 00:22:02', '2016-08-23 00:22:02', '', 0, 'http://localhost/wordpress/?p=42', 1, 'nav_menu_item', '', 0),
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
(56, 1, '2016-08-16 04:37:11', '2016-08-16 04:37:11', '', 'About Me', '', 'publish', 'closed', 'closed', '', 'about-me', '', '', '2016-08-17 04:00:28', '2016-08-17 04:00:28', '', 0, 'http://localhost/wordpress/?post_type=soliloquy&#038;p=56', 0, 'soliloquy', '', 0),
(57, 1, '2016-08-16 04:36:47', '2016-08-16 04:36:47', '', 'lorempixel1', '', 'inherit', 'open', 'closed', '', 'lorempixel1', '', '', '2016-08-16 04:36:47', '2016-08-16 04:36:47', '', 0, 'http://localhost/wordpress/wp-content/uploads/2016/08/lorempixel1.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2016-08-16 04:36:54', '2016-08-16 04:36:54', '', 'lorempixel2', '', 'inherit', 'open', 'closed', '', 'lorempixel2', '', '', '2016-08-16 04:36:54', '2016-08-16 04:36:54', '', 0, 'http://localhost/wordpress/wp-content/uploads/2016/08/lorempixel2.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2016-08-16 05:05:24', '2016-08-16 05:05:24', '<p>This is the WPForms preview page. All your form previews will be handled on this page.</p><p>The page is set to private, so it is not publically accessible. Please do not delete this page :) .</p>', 'WPForms Preview', '', 'private', 'closed', 'closed', '', 'wpforms-preview', '', '', '2016-08-16 05:05:24', '2016-08-16 05:05:24', '', 0, 'http://localhost/wordpress/wpforms-preview/', 0, 'page', '', 0),
(60, 1, '2016-08-16 05:06:00', '2016-08-16 05:06:00', '{"id":"60","field_id":4,"fields":{"0":{"id":"0","type":"name","label":"Name","format":"first-last","description":"","required":"1","size":"medium","simple_placeholder":"","simple_default":"","first_placeholder":"First Name","first_default":"","middle_placeholder":"","middle_default":"","last_placeholder":"Last Name","last_default":"","css":""},"1":{"id":"1","type":"email","label":"E-mail","description":"","required":"1","size":"medium","placeholder":"Your Email Address","css":""},"3":{"id":"3","type":"text","label":"Subject","description":"","required":"1","size":"medium","placeholder":"Subject","default_value":"","css":""},"2":{"id":"2","type":"textarea","label":"Message","description":"","required":"1","size":"medium","placeholder":"Enter Your Message","css":""}},"settings":{"form_title":"Email Me","form_desc":"","form_class":"","submit_text":"Email Me","submit_class":"","honeypot":"1","notification_enable":"1","notifications":{"1":{"email":"tjdowdell97@gmail.com","subject":"New Entry: Email Me","sender_name":"{field_id=\\"0\\"}","sender_address":"{field_id=\\"1\\"}","replyto":"","message":"{all_fields}"}},"confirmation_type":"message","confirmation_message":"Thanks for contacting me! I will be in touch with you shortly.","confirmation_message_scroll":"1","confirmation_page":"23","confirmation_redirect":""},"meta":{"template":"contact"}}', 'Email Me', '', 'publish', 'closed', 'closed', '', 'email-me', '', '', '2016-08-17 04:46:01', '2016-08-17 04:46:01', '', 0, 'http://localhost/wordpress/?post_type=wpforms&#038;p=60', 0, 'wpforms', '', 0),
(61, 1, '2016-08-17 04:22:15', '2016-08-17 04:22:15', '', 'About Susan', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-08-17 04:22:15', '2016-08-17 04:22:15', '', 23, 'http://localhost/wordpress/2016/08/17/23-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2016-08-21 23:03:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-08-21 23:03:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=62', 0, 'post', '', 0),
(63, 1, '2016-08-21 23:37:51', '2016-08-21 23:37:51', 'gregergergergrgergreger', 'Services', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2016-08-21 23:37:51', '2016-08-21 23:37:51', '', 26, 'http://localhost/wordpress/2016/08/21/26-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2016-08-21 23:38:04', '2016-08-21 23:38:04', 'gregergergergrgergreger', 'Services', '', 'inherit', 'closed', 'closed', '', '26-autosave-v1', '', '', '2016-08-21 23:38:04', '2016-08-21 23:38:04', '', 26, 'http://localhost/wordpress/2016/08/21/26-autosave-v1/', 0, 'revision', '', 0),
(65, 1, '2016-08-21 23:38:22', '2016-08-21 23:38:22', '', 'Services', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2016-08-21 23:38:22', '2016-08-21 23:38:22', '', 26, 'http://localhost/wordpress/2016/08/21/26-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2016-08-22 00:30:34', '2016-08-22 00:30:34', 'dgsdgg', 'Services', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2016-08-22 00:30:34', '2016-08-22 00:30:34', '', 26, 'http://localhost/wordpress/2016/08/22/26-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2016-08-22 00:30:53', '2016-08-22 00:30:53', '', 'Services', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2016-08-22 00:30:53', '2016-08-22 00:30:53', '', 26, 'http://localhost/wordpress/2016/08/22/26-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2016-08-23 00:16:53', '2016-08-23 00:16:53', '[woocommerce_checkout]', 'Checkout', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-08-23 00:16:53', '2016-08-23 00:16:53', '', 12, 'http://localhost/wordpress/2016/08/23/12-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2016-08-23 00:22:03', '2016-08-23 00:22:03', '', 'My Book', '', 'publish', 'closed', 'closed', '', 'my-book', '', '', '2016-08-23 00:22:03', '2016-08-23 00:22:03', '', 0, 'http://localhost/wordpress/?p=69', 7, 'nav_menu_item', '', 0),
(70, 1, '2016-08-23 04:37:16', '2016-08-23 04:37:16', '<p>\r\n    <label>Your Name:</label>\r\n    <input type="text" name="FNAME" placeholder="Your First and Last Name" required />\r\n	<label>Email address: </label>\r\n	<input type="email" name="EMAIL" placeholder="Your email address" required />\r\n</p>\r\n\r\n<p>\r\n	<input type="submit" value="Sign up" />\r\n</p>', 'Subscribe', '', 'publish', 'closed', 'closed', '', 'subscribe', '', '', '2016-08-23 04:37:16', '2016-08-23 04:37:16', '', 0, 'http://localhost/wordpress/mc4wp-form/subscribe/', 0, 'mc4wp-form', '', 0),
(71, 1, '2016-08-23 02:56:50', '2016-08-23 02:56:50', '<p>\r\n    <label>Your Name</label>\r\n    <input type="text" name="FNAME" placeholder="Your First and Last Name" required>\r\n	<label>Email address: </label>\r\n	<input type="email" name="EMAIL" placeholder="Your email address" required />\r\n</p>\r\n\r\n<p>\r\n	<input type="submit" value="Sign up" />\r\n</p>', 'Subscribe', '', 'preview', 'closed', 'closed', '', 'subscribe-2', '', '', '2016-08-23 02:56:50', '2016-08-23 02:56:50', '', 0, 'http://localhost/wordpress/mc4wp-form/subscribe-2/', 0, 'mc4wp-form', '', 0),
(72, 1, '2016-08-23 01:50:36', '0000-00-00 00:00:00', '[mc4wp_form]', 'MailChimp for WordPress: Form Preview', '', 'draft', 'closed', 'closed', '', 'mc4wp-form-preview', '', '', '2016-08-23 01:50:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=72', 0, 'page', '', 0);

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
(20, 3, 0),
(36, 2, 0),
(37, 2, 0),
(38, 2, 0),
(39, 2, 0),
(40, 2, 0),
(41, 2, 0),
(42, 2, 0),
(69, 2, 0);

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
(3, 3, 'product_type', '', 0, 1),
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
(15, 1, 'wp_dashboard_quick_press_last_post_id', '62'),
(16, 1, 'wp_user-settings', 'editor=html&hidetb=1'),
(17, 1, 'wp_user-settings-time', '1463975715'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(20, 1, 'session_tokens', 'a:3:{s:64:"d0d24e5b7f8150953c0d8f0b1cd8811c265ea04de695eb0e327c65cc4cd8fbd6";a:4:{s:10:"expiration";i:1471993423;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36";s:5:"login";i:1471820623;}s:64:"f1a6a3f0351f208cc53765eacf55fc2a108c91ee5440db30755245c38c0c348e";a:4:{s:10:"expiration";i:1472080186;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36";s:5:"login";i:1471907386;}s:64:"d00aa1c012bef057bd9e42c41e8258750b09a32350415c685a90c54a863a6537";a:4:{s:10:"expiration";i:1472080246;s:2:"ip";s:3:"::1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36";s:5:"login";i:1471907446;}}'),
(21, 1, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:1:{s:32:"9bf31c7ff062936a96d3c8bd1f8f2ff3";a:9:{s:10:"product_id";i:15;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:9.9900000000000002131628207280300557613372802734375;s:8:"line_tax";i:0;s:13:"line_subtotal";d:9.9900000000000002131628207280300557613372802734375;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}}'),
(24, 1, 'closedpostboxes_page', 'a:0:{}'),
(25, 1, 'metaboxhidden_page', 'a:5:{i:0;s:16:"so-panels-panels";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}');

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
(19, '1', 'a:21:{s:4:"cart";s:401:"a:1:{s:32:"9bf31c7ff062936a96d3c8bd1f8f2ff3";a:9:{s:10:"product_id";i:15;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:9.9900000000000002131628207280300557613372802734375;s:8:"line_tax";i:0;s:13:"line_subtotal";d:9.9900000000000002131628207280300557613372802734375;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";d:9.9900000000000002131628207280300557613372802734375;s:5:"total";d:9.9900000000000002131628207280300557613372802734375;s:8:"subtotal";d:9.9900000000000002131628207280300557613372802734375;s:15:"subtotal_ex_tax";d:9.9900000000000002131628207280300557613372802734375;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";N;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";s:21:"chosen_payment_method";s:6:"cheque";s:8:"customer";s:385:"a:14:{s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:3:"QLD";s:7:"country";s:2:"AU";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:3:"QLD";s:16:"shipping_country";s:2:"AU";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:1;}";s:10:"wc_notices";N;}', 1471993088);

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=893;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
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
  MODIFY `session_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
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

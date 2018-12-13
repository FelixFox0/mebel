-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 13 2018 г., 12:19
-- Версия сервера: 5.5.45
-- Версия PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `mebel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `oc_address`
--

CREATE TABLE IF NOT EXISTS `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 1, 'Test1', 'admin', '', 'Ipsum', '', 'Ipsum', '', 1, 1, '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_affiliate`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_affiliate_activity`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_activity` (
  `affiliate_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_affiliate_login`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_affiliate_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api`
--

CREATE TABLE IF NOT EXISTS `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `name`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'iOGb0Dau54pFVaNr4kme5OKu3eojmp2YqoKLdjOA6GM9qEhNiNboPCidk7oQejRb2GFomUVGqimR5giPSLGSlGK0KgQQlzZhX03xiZhfJAkQYCPt9mErlEIPOsxvDR3qeD2PnWHoGRwO5z4zgeBSONsqboJiqxqTeVemSVx3SC10uk2mWPwQu1PBUksDenOWswSX2UmLRbKDGR9qlC4IJrsaSxVFWE16qla0oTxhZ7mGBx5Qzm4qUE5jjHucZbwN', 1, '2016-07-18 12:05:12', '2016-07-18 12:05:12');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_ip`
--

CREATE TABLE IF NOT EXISTS `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_session`
--

CREATE TABLE IF NOT EXISTS `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `oc_api_session`
--

INSERT INTO `oc_api_session` (`api_session_id`, `api_id`, `token`, `session_id`, `session_name`, `ip`, `date_added`, `date_modified`) VALUES
(1, 1, 'odtvHyXP7hrDCT8ekuhzYJOe5wAMX9sg', 'av16j8vffuku3c3rm8fncth605', 'temp_session_5bdfad6e9752e', '127.0.0.1', '2018-11-05 03:39:43', '2018-11-05 03:39:43'),
(2, 1, 'Du3OcvNMc9HfhIr16pRkAtkxHHjSPKKD', 'av16j8vffuku3c3rm8fncth605', 'temp_session_5bdfadb0e248f', '127.0.0.1', '2018-11-05 03:40:50', '2018-11-05 03:40:50'),
(3, 1, 'fFaFMZv91P2e6SxK4vKagHMtQFmkdlWm', 'av16j8vffuku3c3rm8fncth605', 'temp_session_5bdfadb6d33da', '127.0.0.1', '2018-11-05 03:40:55', '2018-11-05 03:41:35'),
(4, 1, 'yHsN08TVm5K44Uu2Yq0Ljh7OStudLPKE', 'av16j8vffuku3c3rm8fncth605', 'temp_session_5bdfadefc1aec', '127.0.0.1', '2018-11-05 03:41:52', '2018-11-05 03:41:52'),
(5, 1, '1GmNevqoQ4truRyKopRfpKOkGT0EcMWN', 'av16j8vffuku3c3rm8fncth605', 'temp_session_5bdfae11e73b6', '127.0.0.1', '2018-11-05 03:42:27', '2018-11-05 03:42:27'),
(6, 1, 'eeaFPaJUS6VEKoXFx1kR4mCokbP41snU', 'av16j8vffuku3c3rm8fncth605', 'temp_session_5bdfae3075891', '127.0.0.1', '2018-11-05 03:42:57', '2018-11-05 03:43:05'),
(7, 1, 'VexvcPISfnAl43vcUnc74JWLfEEFYmjs', 'av16j8vffuku3c3rm8fncth605', 'temp_session_5bdfae3d0dec2', '127.0.0.1', '2018-11-05 03:43:10', '2018-11-05 03:43:10');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute`
--

CREATE TABLE IF NOT EXISTS `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8),
(12, 7, 1300),
(13, 7, 2600),
(14, 7, 540),
(15, 8, 0),
(16, 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_description`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed'),
(1, 3, 'Description'),
(2, 3, 'No. of Cores'),
(4, 3, 'test 1'),
(5, 3, 'test 2'),
(6, 3, 'test 3'),
(7, 3, 'test 4'),
(8, 3, 'test 5'),
(9, 3, 'test 6'),
(10, 3, 'test 7'),
(11, 3, 'test 8'),
(3, 3, 'Clockspeed'),
(12, 2, 'Длина'),
(12, 3, 'Длина'),
(13, 2, 'Высота'),
(13, 3, 'Высота'),
(14, 2, 'Ширина'),
(14, 3, 'Ширина'),
(15, 2, 'Корпус'),
(15, 3, 'Корпус'),
(16, 2, 'Кромка'),
(16, 3, 'Кромка');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4),
(7, 1),
(8, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor'),
(3, 3, 'Memory'),
(4, 3, 'Technical'),
(5, 3, 'Motherboard'),
(6, 3, 'Processor'),
(7, 2, 'Размер, мм'),
(7, 3, 'Размер, мм'),
(8, 2, 'Материалы'),
(8, 3, 'Материалы');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner`
--

CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner_image`
--

CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=99 ;

--
-- Дамп данных таблицы `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(79, 7, 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(87, 6, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(94, 8, '', 'catalog/demo/manufacturer/nfl.png', 0),
(95, 8, '', 'catalog/demo/manufacturer/redbull.png', 0),
(96, 8, '', 'catalog/demo/manufacturer/sony.png', 0),
(91, 8, '', 'catalog/demo/manufacturer/cocacola.png', 0),
(92, 8, '', 'catalog/demo/manufacturer/burgerking.png', 0),
(93, 8, '', 'catalog/demo/manufacturer/canon.png', 0),
(88, 8, '', 'catalog/demo/manufacturer/harley.png', 0),
(89, 8, '', 'catalog/demo/manufacturer/dell.png', 0),
(90, 8, '', 'catalog/demo/manufacturer/disney.png', 0),
(80, 7, '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(97, 8, '', 'catalog/demo/manufacturer/starbucks.png', 0),
(98, 8, '', 'catalog/demo/manufacturer/nintendo.png', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner_image_description`
--

CREATE TABLE IF NOT EXISTS `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(79, 2, 7, 'iPhone 6'),
(87, 2, 6, 'HP Banner'),
(93, 2, 8, 'Canon'),
(92, 2, 8, 'Burger King'),
(91, 2, 8, 'Coca Cola'),
(90, 2, 8, 'Disney'),
(89, 2, 8, 'Dell'),
(80, 2, 7, 'MacBookAir'),
(88, 2, 8, 'Harley Davidson'),
(94, 2, 8, 'NFL'),
(95, 2, 8, 'RedBull'),
(96, 2, 8, 'Sony'),
(97, 2, 8, 'Starbucks'),
(98, 2, 8, 'Nintendo'),
(79, 3, 7, 'iPhone 6'),
(87, 3, 6, 'HP Banner'),
(93, 3, 8, 'Canon'),
(92, 3, 8, 'Burger King'),
(91, 3, 8, 'Coca Cola'),
(90, 3, 8, 'Disney'),
(89, 3, 8, 'Dell'),
(80, 3, 7, 'MacBookAir'),
(88, 3, 8, 'Harley Davidson'),
(94, 3, 8, 'NFL'),
(95, 3, 8, 'RedBull'),
(96, 3, 8, 'Sony'),
(97, 3, 8, 'Starbucks'),
(98, 3, 8, 'Nintendo');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blog`
--

CREATE TABLE IF NOT EXISTS `oc_blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `allow_comment` int(1) NOT NULL DEFAULT '1',
  `count_read` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `oc_blog`
--

INSERT INTO `oc_blog` (`blog_id`, `allow_comment`, `count_read`, `sort_order`, `status`, `author`, `date_added`, `image`) VALUES
(16, 1, 2, 0, 1, 'John', '2016-07-20 10:39:38', 'catalog/demo_content/post-3.jpg'),
(17, 1, 0, 0, 1, 'John', '2016-07-20 10:40:07', 'catalog/demo_content/post-2.jpg'),
(18, 1, 2, 0, 1, 'John', '2016-07-20 10:40:39', 'catalog/demo_content/post-1.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blog_category`
--

CREATE TABLE IF NOT EXISTS `oc_blog_category` (
  `blog_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`blog_category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=50 ;

--
-- Дамп данных таблицы `oc_blog_category`
--

INSERT INTO `oc_blog_category` (`blog_category_id`, `parent_id`, `sort_order`, `date_added`, `status`) VALUES
(49, 0, 0, '2016-07-20 10:43:11', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blog_category_description`
--

CREATE TABLE IF NOT EXISTS `oc_blog_category_description` (
  `blog_category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `meta_keywords` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`blog_category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `oc_blog_category_description`
--

INSERT INTO `oc_blog_category_description` (`blog_category_id`, `language_id`, `name`, `page_title`, `meta_keywords`, `meta_description`, `description`) VALUES
(49, 2, 'tests cat', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blog_category_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_blog_category_to_layout` (
  `blog_category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blog_category_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_blog_category_to_store` (
  `blog_category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `oc_blog_category_to_store`
--

INSERT INTO `oc_blog_category_to_store` (`blog_category_id`, `store_id`) VALUES
(49, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blog_comment`
--

CREATE TABLE IF NOT EXISTS `oc_blog_comment` (
  `blog_comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `date_added` datetime DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`blog_comment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blog_description`
--

CREATE TABLE IF NOT EXISTS `oc_blog_description` (
  `blog_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(128) COLLATE utf8_bin NOT NULL,
  `page_title` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_bin NOT NULL,
  `short_description` text COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `tags` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `oc_blog_description`
--

INSERT INTO `oc_blog_description` (`blog_id`, `language_id`, `title`, `page_title`, `meta_keyword`, `meta_description`, `short_description`, `description`, `tags`) VALUES
(16, 2, 'Blog Test 1', 'Test ', '', '', '', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \r\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \r\ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate \r\nvelit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint \r\noccaecat cupidatat non proident, sunt in culpa qui officia deserunt \r\nmollit anim id est laborum.&lt;/p&gt;&lt;p&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem \r\naccusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab\r\n illo inventore veritatis et quasi architecto beatae vitae dicta sunt \r\nexplicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut \r\nodit aut fugit, sed quia consequuntur magni dolores eos qui ratione \r\nvoluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum \r\nquia dolor sit amet, consectetur, adipisci velit, sed quia non numquam \r\neius modi tempora incidunt ut labore et dolore magnam aliquam quaerat \r\nvoluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam \r\ncorporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?\r\n Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse \r\nquam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo \r\nvoluptas nulla pariatur?&lt;/p&gt;&lt;p&gt;But I must explain to you how all this mistaken idea of denouncing \r\npleasure and praising pain was born and I will give you a complete \r\naccount of the system, and expound the actual teachings of the great \r\nexplorer of the truth, the master-builder of human happiness. No one \r\nrejects, dislikes, or avoids pleasure itself, because it is pleasure, \r\nbut because those who do not know how to pursue pleasure rationally \r\nencounter consequences that are extremely painful. Nor again is there \r\nanyone who loves or pursues or desires to obtain pain of itself, because\r\n it is pain, but because occasionally circumstances occur in which toil \r\nand pain can procure him some great pleasure. To take a trivial example,\r\n which of us ever undertakes laborious physical exercise, except to \r\nobtain some advantage from it? But who has any right to find fault with a\r\n man who chooses to enjoy a pleasure that has no annoying consequences, \r\nor one who avoids a pain that produces no resultant pleasure?&lt;br&gt;&lt;/p&gt;', ''),
(17, 2, 'Blog Test 2', 'Test 2', '', '', '', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&lt;/p&gt;', ''),
(18, 2, 'Blog Test 3', 'Test 3', '', '', '', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;&lt;hr&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&lt;/p&gt;', ''),
(18, 3, 'Blog Test 3', '', '', '', '', '', ''),
(17, 3, 'Blog Test 2', '', '', '', '', '', ''),
(16, 3, 'Blog Test 1', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blog_related`
--

CREATE TABLE IF NOT EXISTS `oc_blog_related` (
  `parent_blog_id` int(11) NOT NULL DEFAULT '0',
  `child_blog_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blog_to_category`
--

CREATE TABLE IF NOT EXISTS `oc_blog_to_category` (
  `blog_id` int(11) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_id`,`blog_category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `oc_blog_to_category`
--

INSERT INTO `oc_blog_to_category` (`blog_id`, `blog_category_id`) VALUES
(16, 49),
(17, 49),
(18, 49);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blog_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_blog_to_layout` (
  `blog_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blog_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_blog_to_store` (
  `blog_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `oc_blog_to_store`
--

INSERT INTO `oc_blog_to_store` (`blog_id`, `store_id`) VALUES
(16, 0),
(17, 0),
(18, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_cart`
--

CREATE TABLE IF NOT EXISTS `oc_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category`
--

CREATE TABLE IF NOT EXISTS `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- Дамп данных таблицы `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(63, '', 0, 1, 1, 3, 1, '2018-11-03 21:27:10', '2018-11-03 21:27:10'),
(64, '', 0, 1, 1, 4, 1, '2018-11-03 21:27:38', '2018-11-03 21:27:38'),
(65, '', 0, 1, 1, 5, 1, '2018-11-03 21:28:13', '2018-11-03 21:28:13'),
(66, '', 0, 1, 1, 6, 1, '2018-11-03 21:28:37', '2018-11-03 21:28:37'),
(67, '', 0, 1, 1, 7, 1, '2018-11-03 21:28:59', '2018-11-03 21:28:59'),
(68, '', 0, 1, 1, 8, 1, '2018-11-03 21:29:26', '2018-11-03 21:29:26'),
(69, '', 0, 1, 1, 9, 1, '2018-11-03 21:29:59', '2018-11-03 21:29:59'),
(70, '', 0, 1, 1, 10, 1, '2018-11-03 21:30:14', '2018-11-03 21:30:14'),
(61, '', 0, 1, 1, 1, 1, '2018-11-03 21:26:25', '2018-11-03 21:26:25'),
(62, '', 0, 1, 1, 2, 1, '2018-11-03 21:26:49', '2018-11-03 21:26:49'),
(60, 'catalog/demo_content/armchair.jpg', 0, 1, 1, 0, 1, '2018-11-03 21:25:47', '2018-11-05 02:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_description`
--

CREATE TABLE IF NOT EXISTS `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(60, 2, 'Комплекты', '&lt;div class=&quot;categories-view__content-desc&quot;&gt;\r\n                    Кресло в отличии от дивана позволяет сохранить личное пространство.\r\n                    Удобное и уютное кресло с высокими подлокотниками позволит почувствовать себя в полном одиночестве даже в шумном холе торгового центра..\r\n                &lt;/div&gt;\r\n                &lt;div class=&quot;categories-view__content-links&quot;&gt;\r\n                    &lt;a href=&quot;#&quot; class=&quot;link _color-sky&quot;&gt;Как выбрать кресло? Совет дизайнера.&lt;/a&gt;\r\n                    &lt;a href=&quot;#&quot; class=&quot;link _color-sky&quot;&gt;Как мы доставляем и собираем мягкую мебель?&lt;/a&gt;\r\n                &lt;/div&gt;', 'Комплекты', '', ''),
(61, 2, 'Шкафы', '', 'Шкафы', '', ''),
(62, 2, 'Комоды', '', 'Комоды', '', ''),
(63, 2, 'Столы', '', 'Столы', '', ''),
(64, 2, 'Кресла', '', 'Кресла', '', ''),
(65, 2, 'Стулья', '', 'Стулья', '', ''),
(66, 2, 'Диваны', '', 'Диваны', '', ''),
(67, 2, 'Кровати', '', 'Кровати', '', ''),
(68, 2, 'Матрассы', '', 'Матрассы', '', ''),
(69, 2, 'Декор', '', 'Декор', '', ''),
(70, 2, 'Свет', '', 'Свет', '', ''),
(61, 3, 'Шкафы', '', 'Шкафы', '', ''),
(62, 3, 'Комоды', '', 'Комоды', '', ''),
(63, 3, 'Столы', '', 'Столы', '', ''),
(64, 3, 'Кресла', '', 'Кресла', '', ''),
(65, 3, 'Стулья', '', 'Стулья', '', ''),
(66, 3, 'Диваны', '', 'Диваны', '', ''),
(67, 3, 'Кровати', '', 'Кровати', '', ''),
(68, 3, 'Матрассы', '', 'Матрассы', '', ''),
(69, 3, 'Декор', '', 'Декор', '', ''),
(70, 3, 'Свет', '', 'Свет', '', ''),
(60, 3, 'Комплекты', '', 'Комплекты', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_filter`
--

CREATE TABLE IF NOT EXISTS `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_filter`
--

INSERT INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES
(60, 1),
(60, 2),
(60, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_path`
--

CREATE TABLE IF NOT EXISTS `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(65, 65, 0),
(63, 63, 0),
(70, 70, 0),
(68, 68, 0),
(67, 67, 0),
(61, 61, 0),
(69, 69, 0),
(66, 66, 0),
(64, 64, 0),
(62, 62, 0),
(60, 60, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(60, 0, 0),
(68, 0, 0),
(66, 0, 0),
(67, 0, 0),
(65, 0, 0),
(64, 0, 0),
(63, 0, 0),
(62, 0, 0),
(61, 0, 0),
(69, 0, 0),
(70, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_country`
--

CREATE TABLE IF NOT EXISTS `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=258 ;

--
-- Дамп данных таблицы `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon`
--

CREATE TABLE IF NOT EXISTS `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_category`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_history`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_product`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_currency`
--

CREATE TABLE IF NOT EXISTS `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(4, 'USD', 'USD', '', '', '', 0.00000000, 0, '2018-11-05 03:42:47'),
(2, 'грн', 'UAH', '', '', '2', 1.00000000, 1, '2018-11-29 01:24:53');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer`
--

CREATE TABLE IF NOT EXISTS `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 0, 'Test1', 'admin', 'test@nomail.com', '4654564654', '', 'a0b43cf494422400c94612d38c38d02f44a36b5d', 'Zcab37n8C', NULL, NULL, 1, 1, '', '127.0.0.1', 1, 1, 0, '', '', '2016-07-21 16:13:01');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_activity`
--

CREATE TABLE IF NOT EXISTS `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `oc_customer_activity`
--

INSERT INTO `oc_customer_activity` (`customer_activity_id`, `customer_id`, `key`, `data`, `ip`, `date_added`) VALUES
(1, 1, 'register', '{"customer_id":1,"name":"Test1 admin"}', '127.0.0.1', '2016-07-21 16:13:02'),
(2, 1, 'order_account', '{"customer_id":"1","name":"Test1 admin","order_id":1}', '127.0.0.1', '2016-07-21 16:13:23');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 2, 'Default', 'test'),
(1, 3, 'Default', 'test');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_history`
--

CREATE TABLE IF NOT EXISTS `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_ip`
--

CREATE TABLE IF NOT EXISTS `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '127.0.0.1', '2016-07-21 16:13:02');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_login`
--

CREATE TABLE IF NOT EXISTS `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_online`
--

CREATE TABLE IF NOT EXISTS `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_reward`
--

CREATE TABLE IF NOT EXISTS `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_wishlist`
--

CREATE TABLE IF NOT EXISTS `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_description`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value_description`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download`
--

CREATE TABLE IF NOT EXISTS `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download_description`
--

CREATE TABLE IF NOT EXISTS `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_event`
--

CREATE TABLE IF NOT EXISTS `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension`
--

CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1477 ;

--
-- Дамп данных таблицы `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(1465, 'module', 'banner'),
(5, 'total', 'total'),
(1432, 'module', 'revslideropencart'),
(9, 'shipping', 'flat'),
(1467, 'module', 'cosyone_bannerwall'),
(1466, 'module', 'information'),
(1464, 'module', 'featured'),
(17, 'payment', 'free_checkout'),
(20, 'theme', 'theme_default'),
(1428, 'module', 'cosyone'),
(1433, 'module', 'revslideroutput'),
(1435, 'module', 'showintabs'),
(1436, 'module', 'showintabs_output'),
(1438, 'module', 'cosyone_testimonial'),
(1441, 'module', 'cosyone_content'),
(1442, 'module', 'cosyone_twitterfeed'),
(1443, 'module', 'cosyone_socials'),
(1445, 'module', 'newsletter'),
(1446, 'module', 'cosyone_recently'),
(1448, 'module', 'd_ajax_search'),
(1450, 'module', 'cosyone_carousel'),
(1451, 'module', 'quickcheckout'),
(1452, 'module', 'faqmanager'),
(1458, 'module', 'mega_filter'),
(1460, 'module', 'filter'),
(1461, 'module', 'blog_latest'),
(1463, 'module', 'category'),
(1468, 'module', 'cosyone_banner'),
(1471, 'module', 'html'),
(1475, 'module', 'topmodule'),
(1474, 'module', 'topmodule'),
(1476, 'module', 'topmodule');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter`
--

CREATE TABLE IF NOT EXISTS `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `oc_filter`
--

INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES
(3, 1, 0),
(2, 1, 0),
(1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_description`
--

CREATE TABLE IF NOT EXISTS `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_filter_description`
--

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES
(3, 2, 1, 'Yellow'),
(2, 2, 1, 'Blue'),
(1, 2, 1, 'Red'),
(3, 3, 1, 'Yellow'),
(2, 3, 1, 'Blue'),
(1, 3, 1, 'Red');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group`
--

CREATE TABLE IF NOT EXISTS `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `oc_filter_group`
--

INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_filter_group_description`
--

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES
(1, 2, 'Select color'),
(1, 3, 'Select color');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_geo_zone`
--

CREATE TABLE IF NOT EXISTS `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information`
--

CREATE TABLE IF NOT EXISTS `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1),
(7, 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_description`
--

CREATE TABLE IF NOT EXISTS `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 2, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 2, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 2, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 2, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(4, 3, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 3, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 3, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 3, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(7, 2, 'Контакты', '&lt;div class=&quot;contacts&quot;&gt;\r\n    &lt;div class=&quot;contacts__container&quot;&gt;\r\n        &lt;h2 class=&quot;contacts__title title&quot;&gt;Контакты&lt;/h2&gt;\r\n        &lt;div class=&quot;contacts__desc&quot;&gt;\r\n            Приходите к нам в шоурум, будем рады ответить на интересующие Вас вопросы.\r\n            В наших магазинах вы можете ознакомится с нашими товарами, образцами материалов, получить\r\n            консультацию и советы нашего специалиста. А также оформить заказ, либо забрать\r\n            товар в случае самовывоза.\r\n        &lt;/div&gt;\r\n        &lt;div class=&quot;contacts__item&quot;&gt;\r\n            &lt;div class=&quot;contacts__item-title&quot;&gt;Одесса №1&lt;/div&gt;\r\n            &lt;div class=&quot;contacts__item-info-row&quot;&gt;\r\n                &lt;div class=&quot;contacts__item-info-block&quot;&gt;\r\n                    ул. Семена Палия, 125, магазин 290\r\n                    &lt;div class=&quot;contacts__item-info-schedule&quot;&gt;Вт - Вс, с 9:00 до 14:00&lt;/div&gt;\r\n                &lt;/div&gt;\r\n                &lt;div class=&quot;contacts__item-info-block&quot;&gt;\r\n                    (050) 755-55-45\r\n                    &lt;div class=&quot;contacts__item-info-schedule&quot;&gt;c 10:00 до 20:00&lt;/div&gt;\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class=&quot;contacts__item-map-row&quot;&gt;\r\n                &lt;div class=&quot;contacts__item-map-wrap&quot;&gt;\r\n                    &lt;div class=&quot;contacts__item-map-overlay&quot;&gt;Нажмите для просмотра&lt;/div&gt;\r\n                    &lt;div class=&quot;contacts__item-map&quot;&gt;&lt;/div&gt;\r\n                &lt;/div&gt;\r\n                &lt;div class=&quot;contacts__item-map-photo&quot;&gt;\r\n                    &lt;img src=&quot;images/showroom-big.jpg&quot;&gt;\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;\r\n        &lt;/div&gt;\r\n        &lt;div class=&quot;contacts__item&quot;&gt;\r\n            &lt;div class=&quot;contacts__item-title&quot;&gt;Київ&lt;/div&gt;\r\n            &lt;div class=&quot;contacts__item-info-row&quot;&gt;\r\n                &lt;div class=&quot;contacts__item-info-block&quot;&gt;\r\n                    Контрактова площа, 2/1, 2 этаж, магазин 77\r\n                    &lt;div class=&quot;contacts__item-info-schedule&quot;&gt;Вт - Вс, с 9:00 до 14:00&lt;/div&gt;\r\n                &lt;/div&gt;\r\n                &lt;div class=&quot;contacts__item-info-block&quot;&gt;\r\n                    (050) 555-45-55\r\n                    &lt;div class=&quot;contacts__item-info-schedule&quot;&gt;c 10:00 до 20:00&lt;/div&gt;\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class=&quot;contacts__item-map-row&quot;&gt;\r\n                &lt;div class=&quot;contacts__item-map-wrap&quot;&gt;\r\n                    &lt;div class=&quot;contacts__item-map-overlay&quot;&gt;Нажмите для просмотра&lt;/div&gt;\r\n                    &lt;div class=&quot;contacts__item-map&quot;&gt;&lt;/div&gt;\r\n                &lt;/div&gt;\r\n                &lt;div class=&quot;contacts__item-map-photo&quot;&gt;\r\n                    &lt;img src=&quot;images/showroom-big.jpg&quot; alt=&quot;showroom&quot;&gt;\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;\r\n        &lt;/div&gt;\r\n        &lt;div class=&quot;contacts__personal&quot;&gt;\r\n            &lt;div class=&quot;contacts__personal-item&quot;&gt;\r\n                &lt;img class=&quot;contacts__personal-image&quot; src=&quot;images/face-1.jpg&quot; alt=&quot;personal-1&quot;&gt;\r\n                &lt;div class=&quot;contacts__personal-department&quot;&gt;Отдел продаж:&lt;/div&gt;\r\n                &lt;div class=&quot;contacts__personal-name&quot;&gt;Стецкий Сергей Алексеевич&lt;/div&gt;\r\n                &lt;a href=&quot;tel:+380505554555&quot; class=&quot;contacts__personal-link&quot;&gt;+38 (050) 555 - 45 - 55&lt;/a&gt;\r\n                &lt;a href=&quot;mailto:vkusnayamebel@gmail.com&quot; class=&quot;contacts__personal-link&quot;&gt;vkusnayamebel@gmail.com&lt;/a&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class=&quot;contacts__personal-item&quot;&gt;\r\n                &lt;img class=&quot;contacts__personal-image&quot; src=&quot;images/face-2.jpg&quot; alt=&quot;personal-2&quot;&gt;\r\n                &lt;div class=&quot;contacts__personal-department&quot;&gt;Отдел логистики:&lt;/div&gt;\r\n                &lt;div class=&quot;contacts__personal-name&quot;&gt;Хомчик Виктория Вадимовна&lt;/div&gt;\r\n                &lt;a href=&quot;tel:+380505554555&quot; class=&quot;contacts__personal-link&quot;&gt;+38 (050) 555 - 45 - 55&lt;/a&gt;\r\n                &lt;a href=&quot;mailto:vkusnayamebel@gmail.com&quot; class=&quot;contacts__personal-link&quot;&gt;vkusnayamebel@gmail.com&lt;/a&gt;\r\n            &lt;/div&gt;\r\n        &lt;/div&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;', 'Контакты', '', ''),
(7, 3, 'Контакты', '&lt;div class=&quot;contacts&quot;&gt;\r\n    &lt;div class=&quot;contacts__container&quot;&gt;\r\n        &lt;h2 class=&quot;contacts__title title&quot;&gt;Контакты&lt;/h2&gt;\r\n        &lt;div class=&quot;contacts__desc&quot;&gt;\r\n            Приходите к нам в шоурум, будем рады ответить на интересующие Вас вопросы.\r\n            В наших магазинах вы можете ознакомится с нашими товарами, образцами материалов, получить\r\n            консультацию и советы нашего специалиста. А также оформить заказ, либо забрать\r\n            товар в случае самовывоза.\r\n        &lt;/div&gt;\r\n        &lt;div class=&quot;contacts__item&quot;&gt;\r\n            &lt;div class=&quot;contacts__item-title&quot;&gt;Одесса №1&lt;/div&gt;\r\n            &lt;div class=&quot;contacts__item-info-row&quot;&gt;\r\n                &lt;div class=&quot;contacts__item-info-block&quot;&gt;\r\n                    ул. Семена Палия, 125, магазин 290\r\n                    &lt;div class=&quot;contacts__item-info-schedule&quot;&gt;Вт - Вс, с 9:00 до 14:00&lt;/div&gt;\r\n                &lt;/div&gt;\r\n                &lt;div class=&quot;contacts__item-info-block&quot;&gt;\r\n                    (050) 755-55-45\r\n                    &lt;div class=&quot;contacts__item-info-schedule&quot;&gt;c 10:00 до 20:00&lt;/div&gt;\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class=&quot;contacts__item-map-row&quot;&gt;\r\n                &lt;div class=&quot;contacts__item-map-wrap&quot;&gt;\r\n                    &lt;div class=&quot;contacts__item-map-overlay&quot;&gt;Нажмите для просмотра&lt;/div&gt;\r\n                    &lt;div class=&quot;contacts__item-map&quot;&gt;&lt;/div&gt;\r\n                &lt;/div&gt;\r\n                &lt;div class=&quot;contacts__item-map-photo&quot;&gt;\r\n                    &lt;img src=&quot;images/showroom-big.jpg&quot;&gt;\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;\r\n        &lt;/div&gt;\r\n        &lt;div class=&quot;contacts__item&quot;&gt;\r\n            &lt;div class=&quot;contacts__item-title&quot;&gt;Київ&lt;/div&gt;\r\n            &lt;div class=&quot;contacts__item-info-row&quot;&gt;\r\n                &lt;div class=&quot;contacts__item-info-block&quot;&gt;\r\n                    Контрактова площа, 2/1, 2 этаж, магазин 77\r\n                    &lt;div class=&quot;contacts__item-info-schedule&quot;&gt;Вт - Вс, с 9:00 до 14:00&lt;/div&gt;\r\n                &lt;/div&gt;\r\n                &lt;div class=&quot;contacts__item-info-block&quot;&gt;\r\n                    (050) 555-45-55\r\n                    &lt;div class=&quot;contacts__item-info-schedule&quot;&gt;c 10:00 до 20:00&lt;/div&gt;\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class=&quot;contacts__item-map-row&quot;&gt;\r\n                &lt;div class=&quot;contacts__item-map-wrap&quot;&gt;\r\n                    &lt;div class=&quot;contacts__item-map-overlay&quot;&gt;Нажмите для просмотра&lt;/div&gt;\r\n                    &lt;div class=&quot;contacts__item-map&quot;&gt;&lt;/div&gt;\r\n                &lt;/div&gt;\r\n                &lt;div class=&quot;contacts__item-map-photo&quot;&gt;\r\n                    &lt;img src=&quot;images/showroom-big.jpg&quot; alt=&quot;showroom&quot;&gt;\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;\r\n        &lt;/div&gt;\r\n        &lt;div class=&quot;contacts__personal&quot;&gt;\r\n            &lt;div class=&quot;contacts__personal-item&quot;&gt;\r\n                &lt;img class=&quot;contacts__personal-image&quot; src=&quot;images/face-1.jpg&quot; alt=&quot;personal-1&quot;&gt;\r\n                &lt;div class=&quot;contacts__personal-department&quot;&gt;Отдел продаж:&lt;/div&gt;\r\n                &lt;div class=&quot;contacts__personal-name&quot;&gt;Стецкий Сергей Алексеевич&lt;/div&gt;\r\n                &lt;a href=&quot;tel:+380505554555&quot; class=&quot;contacts__personal-link&quot;&gt;+38 (050) 555 - 45 - 55&lt;/a&gt;\r\n                &lt;a href=&quot;mailto:vkusnayamebel@gmail.com&quot; class=&quot;contacts__personal-link&quot;&gt;vkusnayamebel@gmail.com&lt;/a&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class=&quot;contacts__personal-item&quot;&gt;\r\n                &lt;img class=&quot;contacts__personal-image&quot; src=&quot;images/face-2.jpg&quot; alt=&quot;personal-2&quot;&gt;\r\n                &lt;div class=&quot;contacts__personal-department&quot;&gt;Отдел логистики:&lt;/div&gt;\r\n                &lt;div class=&quot;contacts__personal-name&quot;&gt;Хомчик Виктория Вадимовна&lt;/div&gt;\r\n                &lt;a href=&quot;tel:+380505554555&quot; class=&quot;contacts__personal-link&quot;&gt;+38 (050) 555 - 45 - 55&lt;/a&gt;\r\n                &lt;a href=&quot;mailto:vkusnayamebel@gmail.com&quot; class=&quot;contacts__personal-link&quot;&gt;vkusnayamebel@gmail.com&lt;/a&gt;\r\n            &lt;/div&gt;\r\n        &lt;/div&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;', 'Контакты', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(7, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_language`
--

CREATE TABLE IF NOT EXISTS `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(2, 'Рус', 'ru-ru', '', '', '', 1, 1),
(3, 'Укр', 'uk-ua', '', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout`
--

CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search'),
(14, 'Footer'),
(15, 'Mega Filter PRO');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_module`
--

CREATE TABLE IF NOT EXISTS `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=227 ;

--
-- Дамп данных таблицы `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(150, 10, 'account', 'column_left', 1),
(172, 6, 'account', 'column_left', 1),
(207, 14, 'cosyone_socials.40', 'footer', 1),
(226, 1, 'blog_latest.45', 'content_bottom', 3),
(225, 1, 'featured.46', 'content_bottom', 2),
(224, 1, 'category', 'content_top', 1),
(141, 5, 'newsletter.42', 'column_left', 3),
(145, 13, 'newsletter.42', 'column_left', 3),
(148, 8, 'newsletter.42', 'column_left', 3),
(223, 1, 'cosyone_banner.47', 'content_top', 0),
(199, 3, 'filter', 'column_left', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_route`
--

CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=111 ;

--
-- Дамп данных таблицы `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(88, 6, 0, 'account/%'),
(81, 10, 0, 'affiliate/%'),
(110, 1, 0, 'common/home'),
(103, 2, 0, 'product/product'),
(78, 11, 0, 'information/information'),
(86, 7, 0, 'checkout/%'),
(79, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(75, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(77, 13, 0, 'product/search'),
(64, 15, 0, 'blog/%'),
(76, 5, 0, 'product/manufacturer/info'),
(87, 7, 0, 'quickcheckout/%'),
(89, 15, 0, 'module/mega_filter/results'),
(100, 3, 0, 'product/category'),
(105, 14, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class`
--

CREATE TABLE IF NOT EXISTS `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class_description`
--

CREATE TABLE IF NOT EXISTS `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in'),
(1, 3, 'Centimeter', 'cm'),
(2, 3, 'Millimeter', 'mm'),
(3, 3, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_location`
--

CREATE TABLE IF NOT EXISTS `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer`
--

CREATE TABLE IF NOT EXISTS `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_marketing`
--

CREATE TABLE IF NOT EXISTS `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_mfilter_url_alias`
--

CREATE TABLE IF NOT EXISTS `oc_mfilter_url_alias` (
  `mfilter_url_alias_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `path` text COLLATE utf8_unicode_ci NOT NULL,
  `mfp` text COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mfilter_url_alias_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_modification`
--

CREATE TABLE IF NOT EXISTS `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_module`
--

CREATE TABLE IF NOT EXISTS `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Дамп данных таблицы `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(36, 'Home page carousel', 'cosyone_carousel', '{"name":"Home page carousel","title":{"2":"Brands carousel"},"banner_id":"8","grid":"[[0, 2], [320, 3], [550, 4], [999, 5], [1200, 6]]","width":"165","height":"80","status":"1"}'),
(42, 'Column subscribe', 'newsletter', '{"name":"Column subscribe","style":"default","show_once":"1","delay":"0","block":{"1":"&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;"},"status":"1"}'),
(43, 'Column promos', 'cosyone_content', '{"save":"0","status":"1","name":"Column promos","template":"info2","columns":"column-1","module_title":{"1":""},"sections":{"1":{"title":{"1":""},"block":{"1":"&lt;p&gt;&lt;i class=&quot;fa fa-truck&quot;&gt;&lt;\\/i&gt;&lt;\\/p&gt;&lt;h3&gt;Free Delivery&lt;\\/h3&gt;&lt;p&gt;Lorem dolor item lorem dolor item lorem. &lt;a class=&quot;contrast_font&quot; href=&quot;#&quot;&gt;Read more&lt;\\/a&gt;&lt;\\/p&gt;"}},"2":{"title":{"1":""},"block":{"1":"&lt;p&gt;&lt;i class=&quot;fa fa-lock&quot;&gt;&lt;\\/i&gt;&lt;\\/p&gt;&lt;h3&gt;Secure Payments&lt;\\/h3&gt;&lt;p&gt;Lorem dolor item lorem dolor item. &lt;a class=&quot;contrast_font&quot; href=&quot;#&quot;&gt;Read more&lt;\\/a&gt;&lt;\\/p&gt;"}},"3":{"title":{"1":""},"block":{"1":"&lt;p&gt;&lt;i class=&quot;fa fa-cube&quot;&gt;&lt;\\/i&gt;&lt;\\/p&gt;&lt;h3&gt;Sample Promo Title&lt;\\/h3&gt;&lt;p&gt;Lorem dolor item lorem dolor item lorem. &lt;a class=&quot;contrast_font&quot; href=&quot;#&quot;&gt;Read more&lt;\\/a&gt;&lt;\\/p&gt;"}}}}'),
(33, 'Home Full Width', 'revslideroutput', '{"name":"Home Full Width","slider_id":"1","status":"1"}'),
(35, 'Home page tabs', 'showintabs_output', '{"name":"Home page tabs","status":"1","selected_tabs":{"tabs":["1","2","5"]},"limit":"8","image_width":"263","image_height":"263","columns":"grid4","carousel":"1"}'),
(37, 'Home testimonials', 'cosyone_testimonial', '{"name":"Home testimonials","testimonial_title":{"2":"Testimonials"},"testimonial_limit":"5","testimonial_character_limit":"190","testimonial_columns":"grid3","testimonial_carousel":"1","testimonial_contrast":"1","status":"1"}'),
(39, 'Custom tekst', 'cosyone_content', '{"save":"stay","status":"1","name":"Custom tekst","template":"info1","columns":"column-3","module_title":{"2":"Custom tekst"},"sections":{"1":{"title":{"2":"CUSTOM"},"block":{"2":"&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \\r\\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \\r\\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \\r\\ncommodo consequat.&lt;br&gt;&lt;\\/p&gt;"}},"2":{"title":{"2":"CUSTOM 2"},"block":{"2":"&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \\r\\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \\r\\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \\r\\ncommodo consequat.&lt;br&gt;&lt;\\/p&gt;"}},"3":{"title":{"2":"CUSTOM 3"},"block":{"2":"&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \\r\\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \\r\\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \\r\\ncommodo consequat.&lt;br&gt;&lt;\\/p&gt;"}}}}'),
(40, 'Footer Socials', 'cosyone_socials', '{"save":"stay","status":"1","name":"Footer Socials","module_title":{"2":"","3":""},"sections":{"1":{"social_type":"fa-vk","link":"#","link_type":"external","tooltip":"&lt;svg class=&quot;footer__socials-icon&quot; width=&quot;30px&quot; height=&quot;17px&quot;&gt;                     &lt;path d=&quot;M0.126,2.184 C0.126,2.184 4.388,12.377 9.503,15.383 C9.503,15.383 11.615,17.266 16.059,16.966 C16.059,16.966 17.509,17.219 17.547,15.746 C17.586,14.273 18.024,13.112 18.775,13.021 C19.526,12.929 21.063,14.873 21.439,15.305 C21.815,15.736 22.801,16.992 24.547,16.992 C26.293,16.992 28.360,16.992 28.360,16.992 C28.360,16.992 29.684,16.982 29.953,16.239 C30.223,15.497 29.243,14.312 28.648,13.669 C28.052,13.027 25.529,10.765 25.226,10.140 C24.923,9.513 25.353,8.669 26.297,7.492 C27.241,6.314 29.596,3.557 29.927,2.170 C30.259,0.785 29.058,0.999 28.073,1.002 C27.088,1.006 23.816,1.002 23.816,1.002 C23.816,1.002 23.132,0.876 22.797,1.782 C22.462,2.686 20.875,5.971 19.532,7.414 C18.190,8.857 17.513,8.446 17.495,6.297 C17.477,4.149 17.840,1.343 17.338,0.716 C16.836,0.090 15.568,-0.076 13.760,-0.010 C11.952,0.055 10.613,0.001 9.999,0.976 C9.999,0.976 9.768,1.221 10.104,1.261 C10.439,1.302 11.668,1.379 11.749,3.390 C11.830,5.402 12.030,8.220 10.913,8.348 C9.797,8.477 7.408,3.906 7.022,3.079 C6.636,2.250 6.280,1.630 6.160,1.483 C6.040,1.337 5.670,1.016 5.037,1.016 C4.403,1.016 0.753,1.016 0.753,1.016 C0.753,1.016 -0.370,1.031 0.126,2.184 Z&quot;\\/&gt;                 &lt;\\/svg&gt;"},"2":{"social_type":"fa-facebook","link":"#","link_type":"external","tooltip":"&lt;svg class=&quot;footer__socials-icon&quot; width=&quot;14px&quot; height=&quot;26px&quot;&gt;                     &lt;path d=&quot;M14.000,4.983 L14.000,-0.001 L10.376,-0.001 C6.770,-0.001 3.989,2.931 3.989,6.548 L3.989,8.978 L-0.000,8.978 L-0.000,13.991 L3.989,13.991 L3.989,25.999 L8.998,25.999 L8.998,13.991 L14.000,13.991 L14.000,8.978 L8.998,8.978 L8.998,6.302 C8.998,5.574 9.587,4.983 10.313,4.983 L14.000,4.983 Z&quot;\\/&gt;                 &lt;\\/svg&gt; "},"3":{"social_type":"fa-instagram","link":"#","link_type":"external","tooltip":"&lt;svg class=&quot;footer__socials-icon&quot; width=&quot;25px&quot; height=&quot;25px&quot;&gt;                     &lt;path d=&quot;M18.000,24.999 L7.000,24.999 C3.134,24.999 -0.000,21.865 -0.000,17.999 L-0.000,6.999 C-0.000,3.133 3.134,-0.001 7.000,-0.001 L18.000,-0.001 C21.866,-0.001 25.000,3.133 25.000,6.999 L25.000,17.999 C25.000,21.865 21.866,24.999 18.000,24.999 ZM23.000,6.999 C23.000,4.238 20.761,1.999 18.000,1.999 L7.000,1.999 C4.239,1.999 2.000,4.238 2.000,6.999 L2.000,17.999 C2.000,20.761 4.239,22.999 7.000,22.999 L18.000,22.999 C20.761,22.999 23.000,20.761 23.000,17.999 L23.000,6.999 ZM19.500,6.999 C18.672,6.999 18.000,6.327 18.000,5.499 C18.000,4.671 18.672,3.999 19.500,3.999 C20.328,3.999 21.000,4.671 21.000,5.499 C21.000,6.327 20.328,6.999 19.500,6.999 ZM12.500,18.999 C8.910,18.999 6.000,16.089 6.000,12.499 C6.000,8.909 8.910,5.999 12.500,5.999 C16.090,5.999 19.000,8.909 19.000,12.499 C19.000,16.089 16.090,18.999 12.500,18.999 ZM12.500,7.999 C10.015,7.999 8.000,10.014 8.000,12.499 C8.000,14.984 10.015,16.999 12.500,16.999 C14.985,16.999 17.000,14.984 17.000,12.499 C17.000,10.014 14.985,7.999 12.500,7.999 Z&quot;\\/&gt;                 &lt;\\/svg&gt;"},"4":{"social_type":"fa-youtube","link":"#","link_type":"external","tooltip":"&lt;svg class=&quot;footer__socials-icon&quot; width=&quot;29px&quot; height=&quot;22px&quot;&gt;                     &lt;path d=&quot;M26.241,19.686 C24.403,21.155 20.150,20.871 14.495,20.985 C8.840,20.871 4.586,21.155 2.749,19.686 C0.750,18.335 1.136,15.076 0.980,10.920 C1.136,6.765 0.750,3.631 2.749,2.280 C4.586,0.811 8.840,1.095 14.495,0.980 C20.150,1.095 24.403,0.811 26.241,2.280 C28.240,3.631 27.854,6.765 28.010,10.920 C27.854,15.076 28.240,18.335 26.241,19.686 ZM11.000,5.999 L11.000,15.999 L19.000,10.999 L11.000,5.999 Z&quot;\\/&gt;                 &lt;\\/svg&gt;"},"5":{"social_type":"fa-google-plus","link":"#","link_type":"external","tooltip":"&lt;svg class=&quot;footer__socials-icon&quot; width=&quot;37px&quot; height=&quot;24px&quot;&gt;                     &lt;path d=&quot;M37.000,12.905 L32.906,12.905 L32.906,17.062 L29.906,17.062 L29.906,12.905 L25.844,12.905 L25.844,9.906 L29.906,9.906 L29.906,5.718 L32.906,5.718 L32.906,9.906 L37.000,9.906 L37.000,12.905 ZM11.761,23.999 C5.265,23.999 -0.000,18.574 -0.000,11.965 C-0.000,5.356 5.265,-0.002 11.761,-0.002 C14.807,-0.002 17.583,1.178 19.672,3.111 L16.306,6.595 C15.090,5.543 13.515,4.907 11.794,4.907 C7.944,4.907 4.823,8.082 4.823,11.999 C4.823,15.916 7.944,19.092 11.794,19.092 C15.579,19.092 17.355,17.127 18.127,14.385 L11.761,14.385 L11.761,9.612 L22.795,9.612 C22.797,9.703 23.059,10.646 23.059,12.234 C23.059,18.843 18.828,23.999 11.761,23.999 Z&quot;\\/&gt;                 &lt;\\/svg&gt;"}}}'),
(41, 'Column top rated', 'showintabs_output', '{"name":"Column top rated","status":"1","selected_tabs":{"tabs":["5"]},"limit":"4","image_width":"60","image_height":"60","columns":"grid1","carousel":"0"}'),
(44, 'Recently viewed product page', 'cosyone_recently', '{"name":"Recently viewed product page","limit":"3","width":"262","height":"262","grid":"grid3","status":"1"}'),
(45, 'blog', 'blog_latest', '{"name":"blog","limit":"10","columns":"1","carousel":"0","characters":"200","thumb":"1","width":"500","height":"360","status":"1"}'),
(46, 'Самые Вкусные Предложения', 'featured', '{"name":"\\u0421\\u0430\\u043c\\u044b\\u0435 \\u0412\\u043a\\u0443\\u0441\\u043d\\u044b\\u0435 \\u041f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f","product_name":"","product":["42","30","47","28"],"limit":"4","width":"265","height":"284","status":"1"}'),
(47, 'Banner', 'cosyone_banner', '{"save":"stay","status":"1","name":"Banner","module_title":{"2":"","3":""},"columns":"column1","sections":{"2":{"thumb_image":"catalog\\/demo_content\\/parallax.jpg","block":{"2":"&lt;h1 class=&quot;showcase__title&quot;&gt;\\r\\n        &lt;span class=&quot;showcase__title-small&quot;&gt;\\u0412\\u043a\\u0443\\u0441\\u043d\\u0430\\u044f \\u043c\\u0435\\u0431\\u0435\\u043b\\u044c,&lt;\\/span&gt;\\r\\n        \\u0412\\u043a\\u0443\\u0441\\u043d\\u044b\\u0435 \\u0446\\u0435\\u043d\\u044b\\r\\n    &lt;\\/h1&gt;","3":"&lt;h1 class=&quot;showcase__title&quot;&gt;\\r\\n        &lt;span class=&quot;showcase__title-small&quot;&gt;\\u0412\\u043a\\u0443\\u0441\\u043d\\u0430\\u044f \\u043c\\u0435\\u0431\\u0435\\u043b\\u044c,&lt;\\/span&gt;\\r\\n        \\u0412\\u043a\\u0443\\u0441\\u043d\\u044b\\u0435 \\u0446\\u0435\\u043d\\u044b\\r\\n    &lt;\\/h1&gt;"}}}}'),
(49, 'Header_top_module', 'topmodule', '{"name":"Header_top_module","module_description":{"2":{"title":"\\u041d\\u0430 \\u041d\\u043e\\u0432\\u044b\\u0439 \\u0413\\u043e\\u0434 \\u0434\\u0430\\u0440\\u0438\\u043c \\u0441\\u043a\\u0438\\u0434\\u043a\\u0438 \\u043d\\u0430 \\u0432\\u0441\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u044b 3%"},"3":{"title":"\\u041d\\u0430 \\u041d\\u043e\\u0432\\u044b\\u0439 \\u0413\\u043e\\u0434 \\u0434\\u0430\\u0440\\u0438\\u043c \\u0441\\u043a\\u0438\\u0434\\u043a\\u0438 \\u043d\\u0430 \\u0432\\u0441\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u044b 3%"}},"status":"1"}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_newsletter`
--

CREATE TABLE IF NOT EXISTS `oc_newsletter` (
  `email` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option`
--

CREATE TABLE IF NOT EXISTS `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `large_samples` tinyint(3) unsigned DEFAULT NULL,
  `full_list` tinyint(3) unsigned DEFAULT NULL,
  `view` tinyint(3) NOT NULL DEFAULT '0',
  `group_by` varchar(255) DEFAULT NULL,
  `show_in_cart` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Дамп данных таблицы `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`, `large_samples`, `full_list`, `view`, `group_by`, `show_in_cart`) VALUES
(1, 'radio', 1, NULL, 0, 0, NULL, NULL),
(2, 'checkbox', 2, 0, 0, 0, NULL, NULL),
(4, 'text', 3, 0, 0, 0, NULL, NULL),
(5, 'select', 4, 0, 0, 0, NULL, NULL),
(6, 'textarea', 5, 0, 0, 0, NULL, NULL),
(7, 'file', 6, 0, 0, 0, NULL, NULL),
(8, 'date', 7, 0, 0, 0, NULL, NULL),
(9, 'time', 8, 0, 0, 0, NULL, NULL),
(10, 'datetime', 9, 0, 0, 0, NULL, NULL),
(11, 'select', 10, 0, 0, 0, NULL, NULL),
(12, 'date', 11, 0, 0, 0, NULL, NULL),
(13, 'text', 0, 0, 0, 0, NULL, NULL),
(14, 'radio', 0, 0, 255, 0, NULL, NULL),
(15, 'image', 0, 1, 0, 0, NULL, NULL),
(16, 'image', 0, 1, 0, 0, NULL, NULL),
(17, 'image', 0, 0, 2, 1, NULL, NULL),
(18, 'text', 1, 0, 0, 0, '1', NULL),
(19, 'text', 2, 0, 0, 0, '1', NULL),
(20, 'text', 3, 0, 0, 0, '1', NULL),
(21, 'radio', 4, 0, 0, 0, NULL, NULL),
(22, 'text', 2, 0, 0, 0, '1111', NULL),
(23, 'text', 2, 0, 0, 0, '1111', NULL),
(24, 'text', 2, 0, 0, 0, '333', NULL),
(25, 'text', 2, 0, 0, 0, '1111', NULL),
(26, 'checkbox', 0, 0, 0, 0, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_description`
--

CREATE TABLE IF NOT EXISTS `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`, `description`, `group_name`) VALUES
(1, 2, 'Radio', NULL, NULL),
(2, 2, 'Checkbox', NULL, NULL),
(4, 2, 'Text', NULL, NULL),
(6, 2, 'Textarea', NULL, NULL),
(8, 2, 'Date', NULL, NULL),
(7, 2, 'File', NULL, NULL),
(5, 2, 'Select', NULL, NULL),
(9, 2, 'Time', NULL, NULL),
(10, 2, 'Date &amp; Time', NULL, NULL),
(12, 2, 'Delivery Date', NULL, NULL),
(11, 2, 'Size', NULL, NULL),
(13, 2, 'Text', NULL, NULL),
(1, 3, 'Radio', NULL, NULL),
(2, 3, 'Checkbox', NULL, NULL),
(4, 3, 'Text', NULL, NULL),
(6, 3, 'Textarea', NULL, NULL),
(8, 3, 'Date', NULL, NULL),
(7, 3, 'File', NULL, NULL),
(5, 3, 'Select', NULL, NULL),
(9, 3, 'Time', NULL, NULL),
(10, 3, 'Date &amp; Time', NULL, NULL),
(12, 3, 'Delivery Date', NULL, NULL),
(11, 3, 'Size', NULL, NULL),
(13, 3, 'Text', NULL, NULL),
(14, 2, 'тест', NULL, NULL),
(14, 3, 'тест', NULL, NULL),
(15, 2, 'Цвет профиля', NULL, NULL),
(15, 3, 'Цвет профиля', NULL, NULL),
(16, 2, 'Цвет корпуса', NULL, NULL),
(16, 3, 'Цвет корпуса', NULL, NULL),
(17, 3, 'Рисунок на зеркале', NULL, NULL),
(17, 2, 'Рисунок на зеркале', NULL, NULL),
(19, 3, 'Ширина', 'Описание 22222222222222', 'мм'),
(21, 2, 'Раздвижная система', NULL, NULL),
(21, 3, 'Раздвижная система', NULL, NULL),
(22, 2, 'тест2', '11', NULL),
(22, 3, 'тест2', '22', NULL),
(23, 2, 'тест2', '11', NULL),
(23, 3, 'тест2', '22', NULL),
(24, 3, 'тест2', '7777', NULL),
(24, 2, 'тест2', '666', NULL),
(25, 2, 'тест2', '11', NULL),
(25, 3, 'тест2', '22', NULL),
(19, 2, 'Ширина', 'Описание 111111111111111', 'мм'),
(20, 2, 'Глубина', 'Описание 11111111', 'мм'),
(18, 2, 'Высота', 'Описание 11111111', 'мм'),
(20, 3, 'Глубина', 'Описание 11111111', 'мм'),
(18, 3, 'Высота', 'Описание 11111111', 'мм'),
(26, 3, 'Сборка изделия', 'Сборка изделия\r\n', ''),
(26, 2, 'Сборка изделия', 'Сборка изделия\r\n', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Дамп данных таблицы `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3),
(49, 14, '', 0),
(50, 15, 'catalog/Fall-beautiful-nature-22666764-900-562.jpg', 0),
(51, 15, 'catalog/bluebird-640x400-1.jpg', 0),
(52, 16, 'catalog/1456944747naturehike.jpg', 0),
(53, 16, 'catalog/Fall-beautiful-nature-22666764-900-562.jpg', 0),
(54, 16, 'catalog/bluebird-640x400-1.jpg', 0),
(58, 17, 'catalog/demo/hp_2.jpg', 0),
(57, 17, 'catalog/demo/canon_eos_5d_3.jpg', 0),
(56, 17, 'catalog/demo/canon_eos_5d_2.jpg', 0),
(55, 17, 'catalog/demo/canon_eos_5d_1.jpg', 0),
(59, 17, 'catalog/demo/htc_touch_hd_1.jpg', 0),
(60, 21, '', 1),
(61, 21, '', 2),
(62, 21, '', 3),
(63, 26, '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value_description`
--

CREATE TABLE IF NOT EXISTS `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small'),
(43, 3, 1, 'Large'),
(32, 3, 1, 'Small'),
(45, 3, 2, 'Checkbox 4'),
(44, 3, 2, 'Checkbox 3'),
(31, 3, 1, 'Medium'),
(42, 3, 5, 'Yellow'),
(41, 3, 5, 'Green'),
(39, 3, 5, 'Red'),
(40, 3, 5, 'Blue'),
(23, 3, 2, 'Checkbox 1'),
(24, 3, 2, 'Checkbox 2'),
(48, 3, 11, 'Large'),
(47, 3, 11, 'Medium'),
(46, 3, 11, 'Small'),
(49, 3, 14, 'тест'),
(49, 2, 14, 'тест'),
(50, 2, 15, 'Цвет профиля'),
(50, 3, 15, 'Цвет профиля'),
(51, 2, 15, 'Цвет профиля'),
(51, 3, 15, 'Цвет профиля'),
(52, 2, 16, 'Цвет корпуса'),
(52, 3, 16, 'Цвет корпуса'),
(53, 2, 16, 'Цвет корпуса'),
(53, 3, 16, 'Цвет корпуса'),
(54, 2, 16, 'Цвет корпуса'),
(54, 3, 16, 'Цвет корпуса'),
(59, 3, 17, 'Рисунок на зеркале'),
(59, 2, 17, 'Рисунок на зеркале'),
(58, 3, 17, 'Рисунок на зеркале'),
(58, 2, 17, 'Рисунок на зеркале'),
(57, 3, 17, 'Рисунок на зеркале'),
(57, 2, 17, 'Рисунок на зеркале'),
(56, 3, 17, 'Рисунок на зеркале'),
(56, 2, 17, 'Рисунок на зеркале'),
(55, 3, 17, 'Рисунок на зеркале'),
(55, 2, 17, 'Рисунок на зеркале'),
(60, 2, 21, 'Браун'),
(60, 3, 21, 'Браун'),
(61, 2, 21, 'Смарт'),
(61, 3, 21, 'Смарт'),
(62, 2, 21, 'Rolla'),
(62, 3, 21, 'Rolla'),
(63, 3, 26, 'Сборка изделия'),
(63, 2, 26, 'Сборка изделия');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order`
--

CREATE TABLE IF NOT EXISTS `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_custom_field`
--

CREATE TABLE IF NOT EXISTS `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_history`
--

CREATE TABLE IF NOT EXISTS `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_option`
--

CREATE TABLE IF NOT EXISTS `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_product`
--

CREATE TABLE IF NOT EXISTS `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_status`
--

CREATE TABLE IF NOT EXISTS `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired'),
(2, 3, 'Processing'),
(3, 3, 'Shipped'),
(7, 3, 'Canceled'),
(5, 3, 'Complete'),
(8, 3, 'Denied'),
(9, 3, 'Canceled Reversal'),
(10, 3, 'Failed'),
(11, 3, 'Refunded'),
(12, 3, 'Reversed'),
(13, 3, 'Chargeback'),
(1, 3, 'Pending'),
(16, 3, 'Voided'),
(15, 3, 'Processed'),
(14, 3, 'Expired');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_total`
--

CREATE TABLE IF NOT EXISTS `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_voucher`
--

CREATE TABLE IF NOT EXISTS `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product`
--

CREATE TABLE IF NOT EXISTS `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Дамп данных таблицы `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(28, 'Product 1', '', '', '', '', '', '', '', 939, 7, 'catalog/demo/htc_touch_hd_1.jpg', 5, 1, '100.0000', 200, 9, '2009-02-03', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 9, '2009-02-03 16:06:50', '2018-11-03 21:44:10'),
(29, 'Product 2', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/palm_treo_pro_1.jpg', 6, 1, '279.9900', 0, 9, '2009-02-03', '133.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 0, '2009-02-03 16:42:17', '2011-09-30 01:06:08'),
(30, 'Product 3', '', '', '', '', '', '', '', 7, 6, 'catalog/demo/canon_eos_5d_1.jpg', 9, 1, '100.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 3, '2009-02-03 16:59:00', '2018-11-03 21:43:32'),
(31, 'Product 4', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/nikon_d300_1.jpg', 0, 1, '80.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 0, '2009-02-03 17:00:10', '2016-07-22 15:07:48'),
(32, 'Product 5', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/ipod_touch_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 17:07:26', '2011-09-30 01:07:22'),
(33, 'Product 6', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/samsung_syncmaster_941bw.jpg', 0, 1, '200.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 17:08:31', '2011-09-30 01:06:29'),
(34, 'Product 7', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/ipod_shuffle_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:07:54', '2011-09-30 01:07:17'),
(35, 'Product 8', '', '', '', '', '', '', '', 1000, 5, '', 0, 0, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 18:08:31', '2011-09-30 01:06:17'),
(36, 'Product 9', '', '', '', '', '', '', '', 994, 6, 'catalog/demo/ipod_nano_1.jpg', 8, 0, '100.0000', 100, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:09:19', '2011-09-30 01:07:12'),
(40, 'product 11', '', '', '', '', '', '', '', 970, 5, 'catalog/demo/iphone_1.jpg', 8, 1, '101.0000', 0, 9, '2009-02-03', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:12', '2011-09-30 01:06:53'),
(41, 'Product 14', '', '', '', '', '', '', '', 977, 5, 'catalog/demo/imac_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:26', '2011-09-30 01:06:44'),
(42, 'Product 15', '', '', '', '', '', '', '', 990, 5, 'catalog/demo/apple_cinema_30.jpg', 8, 1, '100.0000', 400, 9, '2009-02-04', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 2, 0, 1, 35, '2009-02-03 21:07:37', '2018-11-05 09:09:24'),
(43, 'Product 16', '', '', '', '', '', '', '', 929, 5, 'catalog/demo/macbook_1.jpg', 8, 0, '500.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:07:49', '2011-09-30 01:05:46'),
(44, 'Product 17', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/macbook_air_1.jpg', 8, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:00', '2011-09-30 01:05:53'),
(45, 'Product 18', '', '', '', '', '', '', '', 998, 5, 'catalog/demo/macbook_pro_1.jpg', 8, 1, '2000.0000', 0, 100, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:17', '2011-09-15 22:22:01'),
(46, 'Product 19', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/sony_vaio_1.jpg', 10, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 1, '2009-02-03 21:08:29', '2011-09-30 01:06:39'),
(47, 'Product 21', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/hp_1.jpg', 7, 1, '100.0000', 400, 9, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 2, '2009-02-03 21:08:40', '2018-11-03 21:43:47'),
(48, 'product 20', 'test 1', '', '', '', '', '', 'test 2', 995, 5, 'catalog/demo/ipod_classic_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-08', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 2, '2009-02-08 17:21:51', '2011-09-30 01:07:06'),
(49, 'SAM1', '', '', '', '', '', '', '', 0, 8, 'catalog/demo/samsung_tab_1.jpg', 0, 1, '199.9900', 0, 9, '2011-04-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 283, '2011-04-26 08:57:34', '2018-11-28 23:37:39');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_attribute`
--

CREATE TABLE IF NOT EXISTS `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(43, 2, 2, '1'),
(47, 2, 3, '4'),
(43, 4, 2, '8gb'),
(42, 3, 3, '100mhz'),
(43, 2, 3, '1'),
(47, 2, 2, '4'),
(43, 4, 3, '8gb'),
(42, 3, 2, '100mhz'),
(47, 4, 2, '16GB'),
(47, 4, 3, '16GB'),
(49, 16, 2, 'ПВХ 0,5 мм'),
(49, 15, 3, 'Ламинированное ДСП, Алюминий, Зеркало'),
(49, 15, 2, 'Ламинированное ДСП, Алюминий, Зеркало'),
(49, 14, 3, '540'),
(49, 14, 2, '540'),
(49, 13, 2, '2600'),
(49, 13, 3, '2600'),
(49, 12, 3, '1300'),
(49, 12, 2, '1300'),
(49, 16, 3, 'ПВХ 0,5 мм');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_description`
--

CREATE TABLE IF NOT EXISTS `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `short_description` text,
  `additional_description` text,
  `delivery_description` text,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `short_description`, `additional_description`, `delivery_description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(35, 2, 'Product 8', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', NULL, NULL, NULL, '', 'Product 8', '', ''),
(48, 2, 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', NULL, NULL, NULL, '', 'iPod Classic', '', ''),
(40, 2, 'iPhone', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', NULL, NULL, NULL, '', 'iPhone', '', ''),
(28, 3, 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', NULL, NULL, NULL, '', '	 HTC Touch HD', '', ''),
(44, 2, 'MacBook Air', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', NULL, NULL, NULL, '', 'MacBook Air', '', ''),
(45, 2, 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', NULL, NULL, NULL, '', 'MacBook Pro', '', ''),
(29, 2, 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', NULL, NULL, NULL, '', 'Palm Treo Pro', '', ''),
(36, 2, 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', NULL, NULL, NULL, '', 'iPod Nano', '', ''),
(46, 2, 'Sony VAIO', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', NULL, NULL, NULL, '', 'Sony VAIO', '', ''),
(47, 3, 'HP LP3065', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', NULL, NULL, NULL, '', 'HP LP3065', '', ''),
(32, 2, 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', NULL, NULL, NULL, '', '	 iPod Touch', '', ''),
(41, 2, 'iMac', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there&acute;s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife &acute;08, and it&acute;s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', NULL, NULL, NULL, '', 'iMac', '', ''),
(33, 2, 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n', NULL, NULL, NULL, '', 'Samsung SyncMaster 941BW', '', ''),
(34, 2, 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', NULL, NULL, NULL, '', 'iPod Shuffle', '', ''),
(43, 2, 'MacBook', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', NULL, NULL, NULL, '', 'MacBook', '', ''),
(31, 2, 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', NULL, NULL, NULL, '', 'Nikon D300', '', ''),
(42, 3, 'Apple Cinema 30&quot;', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there''s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it''s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple''s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO ''03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', '', '', 'Apple Cinema 30', '', ''),
(30, 3, 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon''s press material for the EOS 5D states that it ''defines (a) new D-SLR category'', while we''re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably ''chunkier''). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR''s, an important difference when compared to the latter is that the EOS 5D doesn''t have any environmental seals. While Canon don''t specifically refer to the EOS 5D as a ''professional'' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they''ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', NULL, NULL, NULL, '', 'sdf', '', ''),
(35, 3, 'Product 8', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', NULL, NULL, NULL, '', 'Product 8', '', ''),
(48, 3, 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', NULL, NULL, NULL, '', 'iPod Classic', '', ''),
(40, 3, 'iPhone', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', NULL, NULL, NULL, '', 'iPhone', '', ''),
(28, 2, 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', NULL, NULL, NULL, '', '	 HTC Touch HD', '', ''),
(44, 3, 'MacBook Air', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', NULL, NULL, NULL, '', 'MacBook Air', '', ''),
(45, 3, 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', NULL, NULL, NULL, '', 'MacBook Pro', '', ''),
(29, 3, 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', NULL, NULL, NULL, '', 'Palm Treo Pro', '', ''),
(36, 3, 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', NULL, NULL, NULL, '', 'iPod Nano', '', ''),
(46, 3, 'Sony VAIO', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', NULL, NULL, NULL, '', 'Sony VAIO', '', ''),
(47, 2, 'HP LP3065', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', NULL, NULL, NULL, '', 'HP LP3065', '', ''),
(32, 3, 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', NULL, NULL, NULL, '', '	 iPod Touch', '', ''),
(41, 3, 'iMac', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there&acute;s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife &acute;08, and it&acute;s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', NULL, NULL, NULL, '', 'iMac', '', ''),
(33, 3, 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n', NULL, NULL, NULL, '', 'Samsung SyncMaster 941BW', '', ''),
(34, 3, 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', NULL, NULL, NULL, '', 'iPod Shuffle', '', ''),
(43, 3, 'MacBook', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', NULL, NULL, NULL, '', 'MacBook', '', ''),
(31, 3, 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', NULL, NULL, NULL, '', 'Nikon D300', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `short_description`, `additional_description`, `delivery_description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(49, 2, 'Samsung Galaxy Tab 10.1', '&lt;div class=&quot;product-page__description-block&quot;&gt;\r\n                &lt;img class=&quot;product-page__description-img _left&quot; src=&quot;images/product-1-desc.jpg&quot; alt=&quot;product desc&quot;&gt;\r\n                &lt;div class=&quot;product-page__description-text&quot;&gt;\r\n                    &lt;h3 class=&quot;product-page__description-title&quot;&gt;Надежная раздвижная система&lt;/h3&gt;\r\n                    &lt;p&gt;\r\n                        Основной отличительной особенностью шкафа-купе от обычного шкафа (\r\n                        с распашными дверями) являются раздвижные двери. Чаще всего шкафы-купе\r\n                        можно увидеть в интерьере спальни, гостиной или прихожей. За счет своей\r\n                        конструкции они экономят свободное пространство и позволяют хранить множество\r\n                        нужных вещей. Шкафы-купе бывают встроенные и корпусные.\r\n                    &lt;/p&gt;\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;\r\n\r\n            &lt;div class=&quot;product-page__description-block&quot;&gt;\r\n                &lt;img class=&quot;product-page__description-img _right&quot; src=&quot;images/product-2-desc.jpg&quot; alt=&quot;product desc&quot;&gt;\r\n                &lt;div class=&quot;product-page__description-text&quot;&gt;\r\n                    &lt;h3 class=&quot;product-page__description-title&quot;&gt;Максимальное использование полезной емкости&lt;/h3&gt;\r\n                    &lt;p&gt;\r\n                        Система раздвижных дверей для шкафа-купе может включать в себя дверную раму\r\n                        (стальной или алюминиевый профиль, обрамляющий дверное полотно по периметру\r\n                        и придающий ему жёсткость), направляющие (треки, рельсы), ролики и некоторые\r\n                        другие элементы (поворотные механизмы, демпферы, упоры и пр.). В совокупности\r\n                        эти элементы образуют систему раздвижных дверей шкафа-купе, от качества которой\r\n                        зависит плавность и лёгкость хода, и в конечном итоге, срок службы изделия.\r\n                    &lt;/p&gt;\r\n                    &lt;p&gt;\r\n                        Существуют системы, где ролики или упоры могут крепится к дверному полотну\r\n                        из натурального дерева или других материалов без металлического обрамления\r\n                        Все системы раздвижных дверей можно поделить на две группы — двери с опорой\r\n                        на нижние направляющие и двери, подвешенные на верхний трек. Дверное полотно\r\n                        шкафа-купе может иметь деления на части, которые в свою очередь могут быть из\r\n                        различных материалов: стекло, оргстекло, лакобель, зеркало, ламинированного ДсТП, МДФ и т. д.\r\n                    &lt;/p&gt;\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;\r\n            &lt;img src=&quot;images/product-desc-full.jpg&quot; class=&quot;product-page__description-img&quot; alt=&quot;product desc&quot;&gt;\r\n            &lt;div class=&quot;product-page__installation&quot;&gt;\r\n                &lt;h3 class=&quot;product-page__description-title&quot;&gt;Сборка и установка&lt;/h3&gt;\r\n                &lt;p&gt;\r\n                    При использовании шкафа купе нет необходимости в дополнительном пространстве\r\n                    перед шкафом для открытия,  как в шкафу с распашными дверями, но двери шкафа-купе\r\n                    уменьшают на 70—120 мм его полезную глубину, также система шкафа-купе налагает дополнительные\r\n                    ограничения на расположение выдвижных и откидных элементов.\r\n                &lt;/p&gt;\r\n            &lt;/div&gt;', 'Шкаф-купе двухдверный с фасадами из ДСП (цвет ДСП на выбор). По Вашему желанию цвета ДСП могут комбинироваться. Шкафы-купе давно стали неотъемлемой частью современного интерьера, открывая и расширяя пространство нашего дома, они отличаются отличной функциональностью, эргономичными данными и возможностью выбрать наружное оформление', '                                    &lt;ul class=&quot;product-page__data-list&quot;&gt;\r\n                                        &lt;li class=&quot;product-page__data-list-item&quot;&gt;Доводчики на фасадах&lt;/li&gt;\r\n                                        &lt;li class=&quot;product-page__data-list-item&quot;&gt;Телескопические направляющие&lt;/li&gt;\r\n                                        &lt;li class=&quot;product-page__data-list-item&quot;&gt;Анодированная фурнитура&lt;/li&gt;\r\n                                        &lt;li class=&quot;product-page__data-list-item&quot;&gt;Внутренняя светодиодная подсветка&lt;/li&gt;\r\n                                    &lt;/ul&gt;\r\n                                    &lt;ul class=&quot;product-page__data-list&quot;&gt;\r\n                                        &lt;li class=&quot;product-page__data-list-item&quot;&gt;Выдвижные вешалки&lt;/li&gt;\r\n                                        &lt;li class=&quot;product-page__data-list-item&quot;&gt;Корзина для обуви, мм: 500 х 350 х 200&lt;/li&gt;\r\n                                        &lt;li class=&quot;product-page__data-list-item&quot;&gt;Гарантия 12 месяцев&lt;/li&gt;\r\n                                    &lt;/ul&gt;', '&lt;div class=&quot;product-page__delivery-price-row&quot;&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-char&quot;&gt;Доставка по Одессе &lt;/span&gt;\r\n                            &lt;span class=&quot;dots-separator&quot;&gt;&lt;/span&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-value&quot;&gt;Бесплатно&lt;/span&gt;\r\n                        &lt;/div&gt;\r\n                        &lt;div class=&quot;product-page__delivery-price-row&quot;&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-char&quot;&gt;Самовывоз из магазина &lt;/span&gt;\r\n                            &lt;span class=&quot;dots-separator&quot;&gt;&lt;/span&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-value&quot;&gt;Бесплатно&lt;/span&gt;\r\n                        &lt;/div&gt;\r\n                        &lt;div class=&quot;product-page__delivery-price-row&quot;&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-char&quot;&gt;Выезд дизайнера&lt;/span&gt;\r\n                            &lt;span class=&quot;dots-separator&quot;&gt;&lt;/span&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-value&quot;&gt;Бесплатно&lt;/span&gt;\r\n                        &lt;/div&gt;\r\n                        &lt;div class=&quot;product-page__delivery-price-row&quot;&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-char&quot;&gt;Сборка и Установка&lt;/span&gt;\r\n                            &lt;span class=&quot;dots-separator&quot;&gt;&lt;/span&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-value&quot;&gt;Бесплатно&lt;/span&gt;\r\n                        &lt;/div&gt;\r\n                        &lt;div class=&quot;product-page__delivery-price-row&quot;&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-char&quot;&gt;Предоплата&lt;/span&gt;\r\n                            &lt;span class=&quot;dots-separator&quot;&gt;&lt;/span&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-value&quot;&gt;50%&lt;/span&gt;\r\n                        &lt;/div&gt;\r\n                        &lt;p class=&quot;product-page__delivery-text&quot;&gt;\r\n                            При заказе на сумму 3500 грн и выше,\r\n                            действует бесплатная доставки,\r\n                            бесплатный выезд дизайнера,\r\n                            а также бесплатная сборка и установка.\r\n                        &lt;/p&gt;\r\n                        &lt;p class=&quot;product-page__delivery-text&quot;&gt;\r\n                            Заказ отправляется в работу после\r\n                            оформления договора и предоплаты 50%\r\n                        &lt;/p&gt;\r\n                        &lt;a href=&quot;#&quot; class=&quot;link _color-orange _font-sm&quot;&gt;\r\n                            &lt;span class=&quot;link__text&quot;&gt;Детальная информация&lt;/span&gt;\r\n                        &lt;/a&gt;', '', 'Samsung Galaxy Tab 10.1', '', ''),
(42, 2, 'Apple Cinema 30&quot;', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there''s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it''s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple''s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO ''03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '&lt;p&gt;1&lt;/p&gt;', '&lt;p&gt;2&lt;/p&gt;', '&lt;p&gt;3&lt;/p&gt;', '', 'Apple Cinema 30', '', ''),
(30, 2, 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon''s press material for the EOS 5D states that it ''defines (a) new D-SLR category'', while we''re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably ''chunkier''). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR''s, an important difference when compared to the latter is that the EOS 5D doesn''t have any environmental seals. While Canon don''t specifically refer to the EOS 5D as a ''professional'' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they''ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', NULL, NULL, NULL, '', 'sdf', '', ''),
(49, 3, 'Samsung Galaxy Tab 10.1', '&lt;div class=&quot;product-page__description-block&quot;&gt;\r\n                &lt;img class=&quot;product-page__description-img _left&quot; src=&quot;images/product-1-desc.jpg&quot; alt=&quot;product desc&quot;&gt;\r\n                &lt;div class=&quot;product-page__description-text&quot;&gt;\r\n                    &lt;h3 class=&quot;product-page__description-title&quot;&gt;Надежная раздвижная система&lt;/h3&gt;\r\n                    &lt;p&gt;\r\n                        Основной отличительной особенностью шкафа-купе от обычного шкафа (\r\n                        с распашными дверями) являются раздвижные двери. Чаще всего шкафы-купе\r\n                        можно увидеть в интерьере спальни, гостиной или прихожей. За счет своей\r\n                        конструкции они экономят свободное пространство и позволяют хранить множество\r\n                        нужных вещей. Шкафы-купе бывают встроенные и корпусные.\r\n                    &lt;/p&gt;\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;\r\n\r\n            &lt;div class=&quot;product-page__description-block&quot;&gt;\r\n                &lt;img class=&quot;product-page__description-img _right&quot; src=&quot;images/product-2-desc.jpg&quot; alt=&quot;product desc&quot;&gt;\r\n                &lt;div class=&quot;product-page__description-text&quot;&gt;\r\n                    &lt;h3 class=&quot;product-page__description-title&quot;&gt;Максимальное использование полезной емкости&lt;/h3&gt;\r\n                    &lt;p&gt;\r\n                        Система раздвижных дверей для шкафа-купе может включать в себя дверную раму\r\n                        (стальной или алюминиевый профиль, обрамляющий дверное полотно по периметру\r\n                        и придающий ему жёсткость), направляющие (треки, рельсы), ролики и некоторые\r\n                        другие элементы (поворотные механизмы, демпферы, упоры и пр.). В совокупности\r\n                        эти элементы образуют систему раздвижных дверей шкафа-купе, от качества которой\r\n                        зависит плавность и лёгкость хода, и в конечном итоге, срок службы изделия.\r\n                    &lt;/p&gt;\r\n                    &lt;p&gt;\r\n                        Существуют системы, где ролики или упоры могут крепится к дверному полотну\r\n                        из натурального дерева или других материалов без металлического обрамления\r\n                        Все системы раздвижных дверей можно поделить на две группы — двери с опорой\r\n                        на нижние направляющие и двери, подвешенные на верхний трек. Дверное полотно\r\n                        шкафа-купе может иметь деления на части, которые в свою очередь могут быть из\r\n                        различных материалов: стекло, оргстекло, лакобель, зеркало, ламинированного ДсТП, МДФ и т. д.\r\n                    &lt;/p&gt;\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;\r\n            &lt;img src=&quot;images/product-desc-full.jpg&quot; class=&quot;product-page__description-img&quot; alt=&quot;product desc&quot;&gt;\r\n            &lt;div class=&quot;product-page__installation&quot;&gt;\r\n                &lt;h3 class=&quot;product-page__description-title&quot;&gt;Сборка и установка&lt;/h3&gt;\r\n                &lt;p&gt;\r\n                    При использовании шкафа купе нет необходимости в дополнительном пространстве\r\n                    перед шкафом для открытия,  как в шкафу с распашными дверями, но двери шкафа-купе\r\n                    уменьшают на 70—120 мм его полезную глубину, также система шкафа-купе налагает дополнительные\r\n                    ограничения на расположение выдвижных и откидных элементов.\r\n                &lt;/p&gt;\r\n            &lt;/div&gt;', 'Шкаф-купе двухдверный с фасадами из ДСП (цвет ДСП на выбор). По Вашему желанию цвета ДСП могут комбинироваться. Шкафы-купе давно стали неотъемлемой частью современного интерьера, открывая и расширяя пространство нашего дома, они отличаются отличной функциональностью, эргономичными данными и возможностью выбрать наружное оформление', '                                    &lt;ul class=&quot;product-page__data-list&quot;&gt;\r\n                                        &lt;li class=&quot;product-page__data-list-item&quot;&gt;Доводчики на фасадах&lt;/li&gt;\r\n                                        &lt;li class=&quot;product-page__data-list-item&quot;&gt;Телескопические направляющие&lt;/li&gt;\r\n                                        &lt;li class=&quot;product-page__data-list-item&quot;&gt;Анодированная фурнитура&lt;/li&gt;\r\n                                        &lt;li class=&quot;product-page__data-list-item&quot;&gt;Внутренняя светодиодная подсветка&lt;/li&gt;\r\n                                    &lt;/ul&gt;\r\n                                    &lt;ul class=&quot;product-page__data-list&quot;&gt;\r\n                                        &lt;li class=&quot;product-page__data-list-item&quot;&gt;Выдвижные вешалки&lt;/li&gt;\r\n                                        &lt;li class=&quot;product-page__data-list-item&quot;&gt;Корзина для обуви, мм: 500 х 350 х 200&lt;/li&gt;\r\n                                        &lt;li class=&quot;product-page__data-list-item&quot;&gt;Гарантия 12 месяцев&lt;/li&gt;\r\n                                    &lt;/ul&gt;', '&lt;div class=&quot;product-page__delivery-price-row&quot;&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-char&quot;&gt;Доставка по Одессе &lt;/span&gt;\r\n                            &lt;span class=&quot;dots-separator&quot;&gt;&lt;/span&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-value&quot;&gt;Бесплатно&lt;/span&gt;\r\n                        &lt;/div&gt;\r\n                        &lt;div class=&quot;product-page__delivery-price-row&quot;&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-char&quot;&gt;Самовывоз из магазина &lt;/span&gt;\r\n                            &lt;span class=&quot;dots-separator&quot;&gt;&lt;/span&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-value&quot;&gt;Бесплатно&lt;/span&gt;\r\n                        &lt;/div&gt;\r\n                        &lt;div class=&quot;product-page__delivery-price-row&quot;&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-char&quot;&gt;Выезд дизайнера&lt;/span&gt;\r\n                            &lt;span class=&quot;dots-separator&quot;&gt;&lt;/span&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-value&quot;&gt;Бесплатно&lt;/span&gt;\r\n                        &lt;/div&gt;\r\n                        &lt;div class=&quot;product-page__delivery-price-row&quot;&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-char&quot;&gt;Сборка и Установка&lt;/span&gt;\r\n                            &lt;span class=&quot;dots-separator&quot;&gt;&lt;/span&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-value&quot;&gt;Бесплатно&lt;/span&gt;\r\n                        &lt;/div&gt;\r\n                        &lt;div class=&quot;product-page__delivery-price-row&quot;&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-char&quot;&gt;Предоплата&lt;/span&gt;\r\n                            &lt;span class=&quot;dots-separator&quot;&gt;&lt;/span&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-value&quot;&gt;50%&lt;/span&gt;\r\n                        &lt;/div&gt;\r\n                        &lt;p class=&quot;product-page__delivery-text&quot;&gt;\r\n                            При заказе на сумму 3500 грн и выше,\r\n                            действует бесплатная доставки,\r\n                            бесплатный выезд дизайнера,\r\n                            а также бесплатная сборка и установка.\r\n                        &lt;/p&gt;\r\n                        &lt;p class=&quot;product-page__delivery-text&quot;&gt;\r\n                            Заказ отправляется в работу после\r\n                            оформления договора и предоплаты 50%\r\n                        &lt;/p&gt;\r\n                        &lt;a href=&quot;#&quot; class=&quot;link _color-orange _font-sm&quot;&gt;\r\n                            &lt;span class=&quot;link__text&quot;&gt;Детальная информация&lt;/span&gt;\r\n                        &lt;/a&gt;', '', 'Samsung Galaxy Tab 10.1', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_discount`
--

CREATE TABLE IF NOT EXISTS `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=465 ;

--
-- Дамп данных таблицы `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(464, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(463, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(462, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_filter`
--

CREATE TABLE IF NOT EXISTS `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_filter`
--

INSERT INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES
(30, 3),
(31, 2),
(42, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_image`
--

CREATE TABLE IF NOT EXISTS `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2470 ;

--
-- Дамп данных таблицы `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2379, 30, 'catalog/demo/canon_eos_5d_2.jpg', 0),
(2381, 47, 'catalog/demo/hp_2.jpg', 0),
(2383, 28, 'catalog/demo/htc_touch_hd_3.jpg', 0),
(2351, 41, 'catalog/demo/imac_3.jpg', 0),
(1982, 40, 'catalog/demo/iphone_6.jpg', 0),
(2001, 36, 'catalog/demo/ipod_nano_5.jpg', 0),
(2000, 36, 'catalog/demo/ipod_nano_4.jpg', 0),
(2005, 34, 'catalog/demo/ipod_shuffle_5.jpg', 0),
(2004, 34, 'catalog/demo/ipod_shuffle_4.jpg', 0),
(2011, 32, 'catalog/demo/ipod_touch_7.jpg', 0),
(2010, 32, 'catalog/demo/ipod_touch_6.jpg', 0),
(2009, 32, 'catalog/demo/ipod_touch_5.jpg', 0),
(1971, 43, 'catalog/demo/macbook_5.jpg', 0),
(1970, 43, 'catalog/demo/macbook_4.jpg', 0),
(1974, 44, 'catalog/demo/macbook_air_4.jpg', 0),
(1973, 44, 'catalog/demo/macbook_air_2.jpg', 0),
(1977, 45, 'catalog/demo/macbook_pro_2.jpg', 0),
(1976, 45, 'catalog/demo/macbook_pro_3.jpg', 0),
(2365, 31, 'catalog/demo/nikon_d300_5.jpg', 0),
(2364, 31, 'catalog/demo/nikon_d300_4.jpg', 0),
(1988, 29, 'catalog/demo/palm_treo_pro_3.jpg', 0),
(1995, 46, 'catalog/demo/sony_vaio_5.jpg', 0),
(1994, 46, 'catalog/demo/sony_vaio_4.jpg', 0),
(1991, 48, 'catalog/demo/ipod_classic_4.jpg', 0),
(1990, 48, 'catalog/demo/ipod_classic_3.jpg', 0),
(1981, 40, 'catalog/demo/iphone_2.jpg', 0),
(1980, 40, 'catalog/demo/iphone_5.jpg', 0),
(2378, 30, 'catalog/demo/canon_eos_5d_3.jpg', 0),
(2380, 47, 'catalog/demo/hp_3.jpg', 0),
(2382, 28, 'catalog/demo/htc_touch_hd_2.jpg', 0),
(2350, 41, 'catalog/demo/imac_2.jpg', 0),
(1979, 40, 'catalog/demo/iphone_3.jpg', 0),
(1978, 40, 'catalog/demo/iphone_4.jpg', 0),
(1989, 48, 'catalog/demo/ipod_classic_2.jpg', 0),
(1999, 36, 'catalog/demo/ipod_nano_2.jpg', 0),
(1998, 36, 'catalog/demo/ipod_nano_3.jpg', 0),
(2003, 34, 'catalog/demo/ipod_shuffle_2.jpg', 0),
(2002, 34, 'catalog/demo/ipod_shuffle_3.jpg', 0),
(2008, 32, 'catalog/demo/ipod_touch_2.jpg', 0),
(2007, 32, 'catalog/demo/ipod_touch_3.jpg', 0),
(2006, 32, 'catalog/demo/ipod_touch_4.jpg', 0),
(1969, 43, 'catalog/demo/macbook_2.jpg', 0),
(1968, 43, 'catalog/demo/macbook_3.jpg', 0),
(1972, 44, 'catalog/demo/macbook_air_3.jpg', 0),
(1975, 45, 'catalog/demo/macbook_pro_4.jpg', 0),
(2363, 31, 'catalog/demo/nikon_d300_2.jpg', 0),
(2362, 31, 'catalog/demo/nikon_d300_3.jpg', 0),
(1987, 29, 'catalog/demo/palm_treo_pro_2.jpg', 0),
(1993, 46, 'catalog/demo/sony_vaio_2.jpg', 0),
(1992, 46, 'catalog/demo/sony_vaio_3.jpg', 0),
(2469, 49, 'catalog/demo/samsung_tab_2.jpg', 0),
(2468, 49, 'catalog/demo/samsung_tab_3.jpg', 0),
(2467, 49, 'catalog/demo/samsung_tab_4.jpg', 0),
(2466, 49, 'catalog/demo/samsung_tab_5.jpg', 0),
(2465, 49, 'catalog/demo/samsung_tab_6.jpg', 0),
(2464, 49, 'catalog/demo/samsung_tab_7.jpg', 0),
(2439, 42, 'catalog/demo/canon_eos_5d_1.jpg', 0),
(2438, 42, 'catalog/demo/canon_eos_5d_2.jpg', 0),
(2437, 42, 'catalog/demo/canon_logo.jpg', 0),
(2436, 42, 'catalog/demo/compaq_presario.jpg', 0),
(2435, 42, 'catalog/demo/hp_1.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option`
--

CREATE TABLE IF NOT EXISTS `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=236 ;

--
-- Дамп данных таблицы `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(224, 35, 11, '', 1),
(225, 47, 12, '2011-04-22', 1),
(221, 42, 9, '22:25', 1),
(226, 30, 5, '', 1),
(220, 42, 10, '2011-02-20 22:25', 1),
(223, 42, 2, '', 1),
(217, 42, 5, '', 1),
(209, 42, 6, '', 1),
(218, 42, 1, '', 1),
(233, 49, 20, '600', 1),
(229, 49, 17, '', 1),
(208, 42, 4, 'test', 1),
(222, 42, 7, '', 1),
(232, 49, 19, '1500', 1),
(231, 49, 18, '2400', 1),
(234, 49, 21, '', 1),
(227, 49, 16, '', 1),
(219, 42, 8, '2011-02-20', 1),
(230, 42, 17, '', 1),
(228, 49, 15, '', 1),
(235, 49, 26, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`),
  KEY `option_value_id` (`option_value_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Дамп данных таблицы `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(9, 223, 42, 2, 24, 194, 1, '20.00', '+', 0, '+', '20.00000000', '+'),
(27, 230, 42, 17, 55, 1, 0, '0.00', '+', 0, '+', '0.00000000', '+'),
(28, 230, 42, 17, 56, 1, 0, '0.00', '+', 0, '+', '0.00000000', '+'),
(11, 223, 42, 2, 45, 3998, 1, '40.00', '+', 0, '+', '40.00000000', '+'),
(8, 223, 42, 2, 23, 48, 1, '10.00', '+', 0, '+', '10.00000000', '+'),
(12, 224, 35, 11, 46, 0, 1, '5.00', '+', 0, '+', '0.00000000', '+'),
(13, 224, 35, 11, 47, 10, 1, '10.00', '+', 0, '+', '0.00000000', '+'),
(14, 224, 35, 11, 48, 15, 1, '15.00', '+', 0, '+', '0.00000000', '+'),
(16, 226, 30, 5, 40, 5, 1, '0.00', '+', 0, '+', '0.00000000', '+'),
(15, 226, 30, 5, 39, 2, 1, '0.00', '+', 0, '+', '0.00000000', '+'),
(10, 223, 42, 2, 44, 2696, 1, '30.00', '+', 0, '+', '30.00000000', '+'),
(1, 217, 42, 5, 41, 100, 0, '1.00', '+', 0, '+', '1.00000000', '+'),
(4, 217, 42, 5, 39, 92, 1, '4.00', '+', 0, '+', '4.00000000', '+'),
(2, 217, 42, 5, 42, 200, 1, '2.00', '+', 0, '+', '2.00000000', '+'),
(21, 229, 49, 17, 59, 1, 1, '0.00', '+', 0, '+', '0.00000000', '+'),
(20, 229, 49, 17, 57, 1, 1, '0.00', '+', 0, '+', '0.00000000', '+'),
(19, 229, 49, 17, 55, 1, 1, '0.00', '+', 0, '+', '0.00000000', '+'),
(22, 229, 49, 17, 56, 1, 1, '0.00', '+', 0, '+', '0.00000000', '+'),
(23, 229, 49, 17, 58, 1, 1, '0.00', '+', 0, '+', '0.00000000', '+'),
(32, 234, 49, 21, 61, 1, 1, '0.00', '+', 0, '+', '0.00000000', '+'),
(31, 234, 49, 21, 62, 1, 1, '0.00', '+', 0, '+', '0.00000000', '+'),
(30, 234, 49, 21, 60, 1, 1, '0.00', '+', 0, '+', '0.00000000', '+'),
(17, 227, 49, 16, 52, 1, 1, '0.00', '+', 0, '+', '0.00000000', '+'),
(25, 227, 49, 16, 54, 1, 1, '0.00', '+', 0, '+', '0.00000000', '+'),
(7, 218, 42, 1, 43, 300, 1, '30.00', '+', 3, '+', '30.00000000', '+'),
(5, 218, 42, 1, 32, 96, 1, '10.00', '+', 1, '+', '10.00000000', '+'),
(6, 218, 42, 1, 31, 146, 1, '20.00', '+', 2, '-', '20.00000000', '+'),
(26, 227, 49, 16, 53, 1, 1, '0.00', '+', 0, '+', '0.00000000', '+'),
(18, 228, 49, 15, 50, 1, 1, '0.00', '+', 0, '+', '0.00000000', '+'),
(24, 228, 49, 15, 51, 1, 1, '0.00', '+', 0, '+', '0.00000000', '+'),
(3, 217, 42, 5, 40, 300, 0, '3.00', '+', 0, '+', '3.00000000', '+'),
(29, 230, 42, 17, 56, 1, 0, '0.00', '+', 0, '+', '0.00000000', '+'),
(33, 235, 49, 26, 63, 1, 0, '80.00', '+', 0, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_related`
--

CREATE TABLE IF NOT EXISTS `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(28, 49),
(40, 42),
(41, 42),
(42, 40),
(42, 41),
(42, 49),
(49, 28),
(49, 42);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_reward`
--

CREATE TABLE IF NOT EXISTS `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=569 ;

--
-- Дамп данных таблицы `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(563, 42, 1, 100),
(552, 47, 1, 300),
(553, 28, 1, 400),
(329, 43, 1, 600),
(339, 29, 1, 0),
(343, 48, 1, 0),
(335, 40, 1, 0),
(551, 30, 1, 200),
(331, 44, 1, 700),
(333, 45, 1, 800),
(425, 35, 1, 0),
(345, 33, 1, 0),
(347, 46, 1, 0),
(545, 41, 1, 0),
(351, 36, 1, 0),
(353, 34, 1, 0),
(355, 32, 1, 0),
(568, 49, 1, 1000);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_special`
--

CREATE TABLE IF NOT EXISTS `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=452 ;

--
-- Дамп данных таблицы `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(451, 42, 1, 1, '90.0000', '0000-00-00', '0000-00-00'),
(447, 30, 1, 2, '90.0000', '0000-00-00', '0000-00-00'),
(446, 30, 1, 1, '80.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_tab`
--

CREATE TABLE IF NOT EXISTS `oc_product_tab` (
  `product_id` int(11) NOT NULL,
  `tab_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text COLLATE utf8_bin NOT NULL,
  `position` tinyint(1) DEFAULT NULL,
  `show_empty` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`product_id`,`tab_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_category`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(28, 60),
(30, 60),
(42, 60),
(47, 60);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_download`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(42, 0, 0),
(31, 0, 0),
(30, 0, 0),
(47, 0, 0),
(28, 0, 0),
(49, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_question`
--

CREATE TABLE IF NOT EXISTS `oc_question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(1) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `answer` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL,
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `notify` tinyint(1) NOT NULL DEFAULT '1',
  `date_added` datetime DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`question_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_recurring_description`
--

CREATE TABLE IF NOT EXISTS `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return`
--

CREATE TABLE IF NOT EXISTS `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_action`
--

CREATE TABLE IF NOT EXISTS `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent'),
(1, 3, 'Refunded'),
(2, 3, 'Credit Issued'),
(3, 3, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_history`
--

CREATE TABLE IF NOT EXISTS `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_reason`
--

CREATE TABLE IF NOT EXISTS `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details'),
(1, 3, 'Dead On Arrival'),
(2, 3, 'Received Wrong Item'),
(3, 3, 'Order Error'),
(4, 3, 'Faulty, please supply details'),
(5, 3, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_status`
--

CREATE TABLE IF NOT EXISTS `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products'),
(1, 3, 'Pending'),
(3, 3, 'Complete'),
(2, 3, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_review`
--

CREATE TABLE IF NOT EXISTS `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 49, 0, 'ererer', 'fasdfasdfasdfasdfasdfsadfasdf', 1, 1, '2018-11-20 23:00:50', '2018-11-20 23:52:11'),
(2, 49, 0, 'прверка 123', '$.magnificPopup.open({\r\n                items: {\r\n                    src: ''#mfp-response-success''\r\n                },\r\n                type: ''inline''\r\n            })', 1, 1, '2018-11-20 23:03:28', '2018-11-20 23:52:15'),
(3, 49, 0, 'прверка 123', '$.magnificPopup.open({\r\n                items: {\r\n                    src: ''#mfp-response-success''\r\n                },\r\n                type: ''inline''\r\n            })', 1, 1, '2018-11-20 23:07:27', '2018-11-20 23:52:19'),
(4, 49, 0, 'прверка 123', '$.magnificPopup.open({\r\n                items: {\r\n                    src: ''#mfp-response-success''\r\n                },\r\n                type: ''inline''\r\n            })', 1, 1, '2018-11-20 23:19:23', '2018-11-20 23:52:23');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_revslider_attachment_images`
--

CREATE TABLE IF NOT EXISTS `oc_revslider_attachment_images` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_revslider_css`
--

CREATE TABLE IF NOT EXISTS `oc_revslider_css` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `handle` text NOT NULL,
  `settings` text,
  `hover` text,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Дамп данных таблицы `oc_revslider_css`
--

INSERT INTO `oc_revslider_css` (`id`, `handle`, `settings`, `hover`, `params`) VALUES
(1, '.tp-caption.lightgrey_divider', NULL, NULL, '{"text-decoration":"none","background-color":"rgba(235, 235, 235, 1)","width":"370px","height":"3px","background-position":"initial initial","background-repeat":"initial initial","border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(2, '.tp-caption.contrast_font_heading', NULL, NULL, '{"font-size":"60px","color":"#ffffff","line-height":"56px","font-family":"\\"Roboto\\", serif"}'),
(3, '.tp-caption.contrast_font_heading_dark', NULL, NULL, '{"font-size":"60px","color":"#222222","line-height":"56px","font-family":"\\"Roboto\\", serif"}'),
(4, '.tp-caption.contrast_font_heading_primary', NULL, NULL, '{"font-size":"60px","color":"#d6a916","line-height":"56px","font-family":"\\"Roboto\\", serif"}'),
(5, '.tp-caption.contrast_font_heading_secondary', NULL, NULL, '{"font-size":"60px","line-height":"56px","color":"#276658","font-family":"\\"Roboto\\", serif"}'),
(6, '.tp-caption.contrast_font_heading2', NULL, NULL, '{"font-size":"48px","color":"#ffffff","line-height":"56px","font-family":"\\"Roboto\\", serif"}'),
(7, '.tp-caption.contrast_font_heading2_dark', NULL, NULL, '{"font-size":"48px","color":"#222222","line-height":"56px","font-family":"\\"Roboto\\", serif"}'),
(8, '.tp-caption.contrast_font_heading2_primary', NULL, NULL, '{"font-size":"48px","color":"#d6a916","line-height":"56px","font-family":"\\"Roboto\\", serif"}'),
(9, '.tp-caption.contrast_font_heading2_secondary', NULL, NULL, '{"font-size":"48px","line-height":"56px","color":"#276658","font-family":"\\"Roboto\\", serif"}'),
(10, '.tp-caption.contrast_font_sub_heading', NULL, NULL, '{"font-size":"30px","color":"#ffffff","line-height":"56px","font-family":"\\"Roboto\\", serif"}'),
(11, '.tp-caption.contrast_font_sub_heading_dark', NULL, NULL, '{"font-size":"30px","color":"#222222","line-height":"56px","font-family":"\\"Roboto\\", serif"}'),
(12, '.tp-caption.contrast_font_sub_heading_primary', NULL, NULL, '{"font-size":"30px","color":"#d6a916","line-height":"56px","font-family":"\\"Roboto\\", serif"}'),
(13, '.tp-caption.contrast_font_sub_heading_secondary', NULL, NULL, '{"font-size":"30px","line-height":"56px","color":"#276658","font-family":"\\"Roboto\\", serif"}'),
(14, '.tp-caption.contrast_font', NULL, NULL, '{"font-size":"17px","color":"rgb(255, 255, 255)","font-family":"\\"Roboto\\",serif","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}'),
(15, '.tp-caption.contrast_font_dark', NULL, NULL, '{"font-size":"17px","color":"#222222","font-family":"\\"Roboto\\", serif"}'),
(16, '.tp-caption.contrast_font_primary', NULL, NULL, '{"font-size":"17px","color":"#d6a916","font-family":"\\"Roboto\\", serif"}'),
(17, '.tp-caption.contrast_font_secondary', NULL, NULL, '{"font-size":"17px","color":"#276658","font-family":"\\"Roboto\\", serif"}'),
(18, '.tp-caption.contrast_font_slider_button', '{"hover":"true"}', '{"border-color":"#ffffff","transition":"border-color 400ms","font-family":"\\"Roboto\\", serif"}', '{"color":"#ffffff","border":"2px solid","border-color":"transparent","border-top-color":"#ffffff","display":"inline-block","padding":"12px 25px","transition":"border-color 400ms","font-family":"\\"Roboto\\", serif"}'),
(19, '.tp-caption.contrast_font_slider_button_dark', '{"hover":"true"}', '{"border-color":"#222222","transition":"border-color 400ms","font-family":"\\"Roboto\\", serif"}', '{"color":"#222222","border":"2px solid","border-color":"transparent","border-top-color":"#222222","display":"inline-block","padding":"12px 25px","transition":"border-color 400ms","font-family":"\\"Roboto\\", serif"}'),
(20, '.tp-caption.contrast_font_slider_button_primary', '{"hover":"true"}', '{"border-color":"#d6a916","transition":"border-color 400ms","font-family":"\\"Roboto\\", serif"}', '{"color":"#d6a916","border":"2px solid","border-color":"transparent","border-top-color":"#d6a916","display":"inline-block","padding":"12px 25px","transition":"border-color 400ms","font-family":"\\"Roboto\\", serif"}'),
(21, '.tp-caption.contrast_font_slider_button_secondary', '{"hover":"true"}', '{"border-color":"#276658","transition":"border-color 400ms","font-family":"\\"Roboto\\", serif"}', '{"color":"#276658","border":"2px solid","border-color":"transparent","border-top-color":"#276658","display":"inline-block","padding":"12px 25px","transition":"border-color 400ms","font-family":"\\"Roboto\\", serif"}'),
(22, '.tp-caption.main_font_heading', NULL, NULL, '{"font-size":"60px","color":"#ffffff","line-height":"56px","font-family":"\\"Roboto\\", serif"}'),
(23, '.tp-caption.main_font_heading_dark', NULL, NULL, '{"font-size":"60px","color":"#222222","line-height":"56px","font-family":"\\"Roboto\\", serif"}'),
(24, '.tp-caption.main_font_heading_primary', NULL, NULL, '{"font-size":"60px","color":"#d6a916","line-height":"56px","font-family":"\\"Roboto\\", serif"}'),
(25, '.tp-caption.main_font_heading_secondary', NULL, NULL, '{"font-size":"60px","line-height":"56px","color":"#276658","font-family":"\\"Roboto\\", serif"}'),
(26, '.tp-caption.main_font_heading2', NULL, NULL, '{"font-size":"48px","color":"#ffffff","line-height":"56px","font-family":"\\"Roboto\\", serif"}'),
(27, '.tp-caption.main_font_heading2_dark', NULL, NULL, '{"font-size":"48px","color":"#222222","line-height":"56px","font-family":"\\"Roboto\\", serif"}'),
(28, '.tp-caption.main_font_heading2_primary', NULL, NULL, '{"font-size":"48px","color":"#d6a916","line-height":"56px","font-family":"\\"Roboto\\", serif"}'),
(29, '.tp-caption.main_font_heading2_secondary', NULL, NULL, '{"font-size":"48px","line-height":"56px","color":"#276658","font-family":"\\"Roboto\\", serif"}'),
(30, '.tp-caption.main_font_sub_heading', NULL, NULL, '{"font-size":"30px","color":"#ffffff","line-height":"56px","font-family":"\\"Roboto\\", serif"}'),
(31, '.tp-caption.main_font_sub_heading_dark', NULL, NULL, '{"font-size":"30px","color":"#222222","line-height":"56px","font-family":"\\"Roboto\\", serif"}'),
(32, '.tp-caption.main_font_sub_heading_primary', NULL, NULL, '{"font-size":"30px","color":"#d6a916","line-height":"56px","font-family":"\\"Roboto\\", serif"}'),
(33, '.tp-caption.main_font_sub_heading_secondary', NULL, NULL, '{"font-size":"30px","line-height":"56px","color":"#276658","font-family":"\\"Roboto\\", serif"}'),
(34, '.tp-caption.main_font', NULL, NULL, '{"font-size":"17px","color":"#ffffff","font-family":"\\"Roboto\\", serif"}'),
(35, '.tp-caption.main_font_dark', NULL, NULL, '{"font-size":"17px","color":"#222222","font-family":"\\"Roboto\\", serif"}'),
(36, '.tp-caption.main_font_primary', NULL, NULL, '{"font-size":"17px","color":"#d6a916","font-family":"\\"Roboto\\", serif"}'),
(37, '.tp-caption.main_font_secondary', NULL, NULL, '{"font-size":"17px","color":"#276658","font-family":"\\"Roboto\\", serif"}'),
(38, '.tp-caption.main_font_slider_button', '{"hover":"true"}', '{"border-color":"#ffffff","transition":"border-color 400ms","font-family":"\\"Roboto\\", serif"}', '{"color":"#ffffff","border":"2px solid","border-color":"transparent","border-top-color":"#ffffff","display":"inline-block","padding":"12px 25px","transition":"border-color 400ms","font-family":"\\"Roboto\\", serif"}'),
(39, '.tp-caption.main_font_slider_button_dark', '{"hover":"true"}', '{"border-color":"#222222","transition":"border-color 400ms","font-family":"\\"Roboto\\", serif"}', '{"color":"#222222","border":"2px solid","border-color":"transparent","border-top-color":"#222222","display":"inline-block","padding":"12px 25px","transition":"border-color 400ms","font-family":"\\"Roboto\\", serif"}'),
(40, '.tp-caption.main_font_slider_button_primary', '{"hover":"true"}', '{"border-color":"#d6a916","transition":"border-color 400ms","font-family":"\\"Roboto\\", serif"}', '{"color":"#d6a916","border":"2px solid","border-color":"transparent","border-top-color":"#d6a916","display":"inline-block","padding":"12px 25px","transition":"border-color 400ms","font-family":"\\"Roboto\\", serif"}'),
(41, '.tp-caption.main_font_slider_button_secondary', '{"hover":"true"}', '{"border-color":"#276658","transition":"border-color 400ms","font-family":"\\"Roboto\\", serif"}', '{"color":"#276658","border":"2px solid","border-color":"transparent","border-top-color":"#276658","display":"inline-block","padding":"12px 25px","transition":"border-color 400ms","font-family":"\\"Roboto\\", serif"}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_revslider_layer_animations`
--

CREATE TABLE IF NOT EXISTS `oc_revslider_layer_animations` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `handle` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_revslider_settings`
--

CREATE TABLE IF NOT EXISTS `oc_revslider_settings` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `general` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_revslider_sliders`
--

CREATE TABLE IF NOT EXISTS `oc_revslider_sliders` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `alias` tinytext,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `oc_revslider_sliders`
--

INSERT INTO `oc_revslider_sliders` (`id`, `title`, `alias`, `params`) VALUES
(1, 'home_slider_fullwidth', 'home_slider_fullwidth', '{"title":"home_slider_fullwidth","alias":"home_slider_fullwidth","source_type":"gallery","post_types":"product","post_category":"category_20","post_sortby":"ID","prd_img_width":"880","prd_img_height":"345","posts_sort_direction":"DESC","max_slider_posts":"30","excerpt_limit":"55","slider_template_id":"","posts_list":"","slider_type":"fullwidth","fullscreen_offset_container":"","fullscreen_offset_size":"","fullscreen_min_height":"","full_screen_align_force":"off","auto_height":"off","force_full_width":"on","min_height":"0","width":"1140","height":"550","responsitive_w1":"940","responsitive_sw1":"770","responsitive_w2":"780","responsitive_sw2":"500","responsitive_w3":"510","responsitive_sw3":"310","responsitive_w4":"0","responsitive_sw4":"0","responsitive_w5":"0","responsitive_sw5":"0","responsitive_w6":"0","responsitive_sw6":"0","delay":"8000","shuffle":"off","lazy_load":"off","use_wpml":"off","enable_static_layers":"off","next_slide_on_window_focus":"off","simplify_ie8_ios4":"off","stop_slider":"off","stop_after_loops":0,"stop_at_slide":2,"show_timerbar":"bottom","loop_slide":"loop","position":"center","margin_top":0,"margin_bottom":30,"margin_left":0,"margin_right":0,"shadow_type":"0","padding":0,"background_color":"#E9E9E9","background_dotted_overlay":"none","show_background_image":"false","background_image":"","bg_fit":"cover","bg_repeat":"no-repeat","bg_position":"center top","stop_on_hover":"on","keyboard_navigation":"off","navigation_style":"custom","navigaion_type":"bullet","navigation_arrows":"solo","navigaion_always_on":"true","hide_thumbs":200,"navigaion_align_hor":"center","navigaion_align_vert":"bottom","navigaion_offset_hor":"0","navigaion_offset_vert":20,"leftarrow_align_hor":"left","leftarrow_align_vert":"center","leftarrow_offset_hor":20,"leftarrow_offset_vert":0,"rightarrow_align_hor":"right","rightarrow_align_vert":"center","rightarrow_offset_hor":20,"rightarrow_offset_vert":0,"thumb_width":100,"thumb_height":50,"thumb_amount":5,"use_spinner":"0","spinner_color":"#FFFFFF","use_parallax":"off","disable_parallax_mobile":"off","parallax_type":"mouse","parallax_bg_freeze":"off","parallax_level_1":"5","parallax_level_2":"10","parallax_level_3":"15","parallax_level_4":"20","parallax_level_5":"25","parallax_level_6":"30","parallax_level_7":"35","parallax_level_8":"40","parallax_level_9":"45","parallax_level_10":"50","touchenabled":"on","swipe_velocity":75,"swipe_min_touches":1,"drag_block_vertical":"false","disable_on_mobile":"off","disable_kenburns_on_mobile":"off","hide_slider_under":0,"hide_defined_layers_under":0,"hide_all_layers_under":0,"hide_arrows_on_mobile":"off","hide_bullets_on_mobile":"off","hide_thumbs_on_mobile":"off","hide_thumbs_under_resolution":0,"hide_thumbs_delay_mobile":1500,"start_with_slide":"1","first_transition_active":"false","first_transition_type":"fade","first_transition_duration":300,"first_transition_slot_amount":7,"reset_transitions":"","reset_transition_duration":0,"0":"Execute settings on all slides","jquery_noconflict":"off","js_to_body":"false","output_type":"none","custom_css":"","custom_javascript":"","template":"false"}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_revslider_slides`
--

CREATE TABLE IF NOT EXISTS `oc_revslider_slides` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `slider_id` int(9) NOT NULL,
  `slide_order` int(11) NOT NULL,
  `params` text NOT NULL,
  `layers` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `oc_revslider_slides`
--

INSERT INTO `oc_revslider_slides` (`id`, `slider_id`, `slide_order`, `params`, `layers`) VALUES
(1, 1, 1, '{"background_type":"image","image":"http:\\/\\/testtheme.net\\/image\\/catalog\\/revslider_media_folder\\/slider1.jpg","title":"Slide","state":"published","date_from":"","date_to":"","slide_transition":"fade","0":"Remove","slot_amount":7,"transition_rotation":0,"transition_duration":300,"delay":"","save_performance":"off","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","class_attr":"","id_attr":"","attr_attr":"","data_attr":"","slide_bg_color":"#E7E7E7","slide_bg_external":"","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"center top","bg_position_x":"0","bg_position_y":"0","bg_end_position_x":"0","bg_end_position_y":"0","bg_end_position":"center top","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","kb_duration":"8000","kb_easing":"Linear.easeNone","0":"Remove"}', '[{"text":"BY CHARLES AND RAY EAMES","type":"text","left":450,"top":145,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"randomrotate","easing":"Back.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","speed":800,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"main_font","time":500,"endtime":"7700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":"0","endTimeFinal":7600,"endSpeedFinal":300,"realEndTime":8000,"timeLast":7600,"endWithSlide":true,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":"","static_end":"1","static_start":"1"},{"text":"<b>EAMES MOLDED PLASTIC <\\/b>","type":"text","left":196,"top":185,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"sfb","easing":"Back.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","speed":700,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"contrast_font_heading","time":1000,"endtime":"7700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":"1","endTimeFinal":7650,"endSpeedFinal":300,"realEndTime":8000,"timeLast":7650,"endWithSlide":true,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":"","static_end":"1","static_start":"1"},{"text":"<b>SIDE CHAIR<\\/b>","type":"text","left":400,"top":242,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"sfb","easing":"Back.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","speed":700,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"contrast_font_heading","time":1300,"endtime":7700,"endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":394,"height":56,"serial":"2","endTimeFinal":7700,"endSpeedFinal":300,"realEndTime":8000,"timeLast":7700,"endWithSlide":true,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":"","static_end":"1","static_start":"1"},{"text":"<a href=\\"http:\\/\\/www.google.com\\">BUY NOW!<\\/a>","type":"text","left":500,"top":340,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"sfb","easing":"Back.easeInOut","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","speed":700,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"main_font_slider_button","time":1600,"endtime":"7300","endspeed":700,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":"3","endTimeFinal":7300,"endSpeedFinal":700,"realEndTime":8000,"timeLast":7300,"endWithSlide":true,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":"","static_end":"1","static_start":"1"},{"style":"","text":"Image 5","type":"image","image_url":"http:\\/\\/www.velikorodnov.com\\/opencart\\/cosyone\\/demo20\\/image\\/catalog\\/revslider_media_folder\\/circle.png","left":206,"top":50,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"sft","easing":"easeOutBack","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","speed":700,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","time":1600,"endtime":"7700","endspeed":700,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":120,"height":120,"serial":"4","endTimeFinal":7300,"endSpeedFinal":700,"realEndTime":8000,"timeLast":7300,"endWithSlide":true,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":"","static_start":"1","static_end":"1"},{"text":"for only","type":"text","left":238,"top":83,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"sft","easing":"easeOutBack","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","speed":700,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"contrast_font","time":1600,"endtime":7700,"endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":62,"height":17,"serial":"5","endTimeFinal":7700,"endSpeedFinal":300,"realEndTime":8000,"timeLast":7700,"endWithSlide":true,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":"","static_start":"1","static_end":"1"},{"text":"<b>$299<\\/b>","type":"text","left":232,"top":90,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"sft","easing":"easeOutBack","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","speed":700,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"contrast_font_sub_heading","time":1600,"endtime":7700,"endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":"6","endTimeFinal":7700,"endSpeedFinal":300,"realEndTime":8000,"timeLast":7700,"endWithSlide":true,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":"","static_start":"1","static_end":"1"}]'),
(3, 1, 2, '{"background_type":"image","image":"http:\\/\\/testtheme.net\\/image\\/catalog\\/revslider_media_folder\\/slideshow-full-1980x550.png","title":"Slide 2","state":"published","date_from":"","date_to":"","slide_transition":"slidehorizontal","0":"Remove","slot_amount":7,"transition_rotation":0,"transition_duration":900,"delay":"","save_performance":"off","enable_link":"false","link_type":"regular","link":"","link_open_in":"same","slide_link":"nothing","link_pos":"front","slide_thumb":"","class_attr":"","id_attr":"","attr_attr":"","data_attr":"","slide_bg_color":"#E7E7E7","slide_bg_external":"","bg_fit":"cover","bg_fit_x":"100","bg_fit_y":"100","bg_repeat":"no-repeat","bg_position":"center top","bg_position_x":"0","bg_position_y":"0","bg_end_position_x":"0","bg_end_position_y":"0","bg_end_position":"center top","kenburn_effect":"off","kb_start_fit":"100","kb_end_fit":"100","kb_duration":"8000","kb_easing":"Linear.easeNone","0":"Remove"}', '[{"text":"SHAPES, SIZES AND STYLES","type":"text","left":1,"top":120,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"sfl","easing":"easeOutBack","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":600,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"main_font","time":900,"endtime":"7700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":"0","endTimeFinal":7700,"endSpeedFinal":300,"realEndTime":8000,"timeLast":7500,"endWithSlide":true,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"<b>THINGS<\\/b> <span class=\\"light_font\\">THAT<\\/span>","type":"text","left":0,"top":160,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"tp-fade","easing":"easeOutBack","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":600,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"contrast_font_heading","time":1200,"endtime":"7700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":"1","endTimeFinal":7700,"endSpeedFinal":300,"realEndTime":8000,"timeLast":7100,"endWithSlide":true,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"<span class=\\"light_font\\">WORKS<\\/span> <b>PERFECTLY<\\/b>","type":"text","left":1,"top":220,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"sfl","easing":"easeOutBack","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":600,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"contrast_font_heading","time":1500,"endtime":"7700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":"2","endTimeFinal":7700,"endSpeedFinal":300,"realEndTime":8000,"timeLast":6800,"endWithSlide":true,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"<b>FOR YOU<\\/b>","type":"text","left":0,"top":275,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"sfl","easing":"easeOutBack","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":600,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"contrast_font_heading","time":1800,"endtime":"7700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":"3","endTimeFinal":7700,"endSpeedFinal":300,"realEndTime":8000,"timeLast":6500,"endWithSlide":true,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""},{"text":"<a href=\\"#\\">FIND IT HERE<\\/a>","type":"text","left":0,"top":370,"loop_animation":"none","loop_easing":"Power3.easeInOut","loop_speed":"2","loop_startdeg":"-20","loop_enddeg":"20","loop_xorigin":"50","loop_yorigin":"50","loop_xstart":"0","loop_xend":"0","loop_ystart":"0","loop_yend":"0","loop_zoomstart":"1","loop_zoomend":"1","loop_angle":"0","loop_radius":"10","animation":"sfb","easing":"easeOutBack","split":"none","endsplit":"none","splitdelay":"10","endsplitdelay":"10","max_height":"auto","max_width":"auto","2d_rotation":"0","2d_origin_x":"50","2d_origin_y":"50","parallax_level":"-","whitespace":"nowrap","static_start":"1","static_end":"2","speed":600,"align_hor":"left","align_vert":"top","hiddenunder":false,"resizeme":true,"link":"","link_open_in":"same","link_slide":"nothing","scrollunder_offset":"","style":"main_font_slider_button","time":1800,"endtime":"7700","endspeed":300,"endanimation":"auto","endeasing":"nothing","corner_left":"nothing","corner_right":"nothing","width":-1,"height":-1,"serial":"4","endTimeFinal":7700,"endSpeedFinal":300,"realEndTime":8000,"timeLast":6500,"endWithSlide":true,"alt":"","scaleX":"","scaleY":"","scaleProportional":false,"attrID":"","attrClasses":"","attrTitle":"","attrRel":"","link_id":"","link_class":"","link_title":"","link_rel":""}]');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_revslider_static_slides`
--

CREATE TABLE IF NOT EXISTS `oc_revslider_static_slides` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `slider_id` int(9) NOT NULL,
  `params` text NOT NULL,
  `layers` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_setting`
--

CREATE TABLE IF NOT EXISTS `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` longtext NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=111767 ;

--
-- Дамп данных таблицы `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(111376, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(111652, 0, 'config', 'config_error_log', '1', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(111375, 0, 'shipping', 'shipping_status', '1', 0),
(111374, 0, 'shipping', 'shipping_estimator', '0', 0),
(111766, 0, 'cosyone', 'cosyone_custom_javascript_content', '', 0),
(34, 0, 'flat', 'flat_sort_order', '1', 0),
(35, 0, 'flat', 'flat_status', '1', 0),
(36, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(37, 0, 'flat', 'flat_tax_class_id', '9', 0),
(41, 0, 'flat', 'flat_cost', '5.00', 0),
(111653, 0, 'config', 'config_error_filename', 'error.log', 0),
(111651, 0, 'config', 'config_error_display', '1', 0),
(111469, 0, 'category', 'category_status', '1', 0),
(158, 0, 'account', 'account_status', '1', 0),
(159, 0, 'affiliate', 'affiliate_status', '1', 0),
(795, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(108634, 0, 'theme_default', 'theme_default_image_wishlist_height', '100', 0),
(108633, 0, 'theme_default', 'theme_default_image_wishlist_width', '100', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(111648, 0, 'config', 'config_file_max_size', '300000', 0),
(111649, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(111650, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(794, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(108635, 0, 'theme_default', 'theme_default_image_cart_width', '100', 0),
(108636, 0, 'theme_default', 'theme_default_image_cart_height', '100', 0),
(774, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(775, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(111629, 0, 'config', 'config_ftp_password', '', 0),
(111630, 0, 'config', 'config_ftp_root', '', 0),
(111631, 0, 'config', 'config_ftp_status', '0', 0),
(111632, 0, 'config', 'config_mail_protocol', 'mail', 0),
(111633, 0, 'config', 'config_mail_parameter', '', 0),
(111634, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(111635, 0, 'config', 'config_mail_smtp_username', '', 0),
(111636, 0, 'config', 'config_mail_smtp_password', '', 0),
(111637, 0, 'config', 'config_mail_smtp_port', '25', 0),
(111638, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(111639, 0, 'config', 'config_mail_alert', '', 0),
(111640, 0, 'config', 'config_maintenance', '0', 0),
(111641, 0, 'config', 'config_seo_url', '1', 0),
(111642, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(111627, 0, 'config', 'config_ftp_port', '21', 0),
(111643, 0, 'config', 'config_compression', '0', 0),
(111644, 0, 'config', 'config_secure', '0', 0),
(111645, 0, 'config', 'config_password', '1', 0),
(111646, 0, 'config', 'config_shared', '0', 0),
(111647, 0, 'config', 'config_encryption', 'XFdp6dqwDGeKiQC8UikuOjhR1bMUPNHyDb6rey2Vn7TMVbgMPjuQpkbhb5el0lWLzDxhyGLnIbO2lwIc8ajtCJYgDpzgQcx6rQQwYMGqTfrnADok9WPHYE9aL9HJbfITGiyabXyIuRWvZC1nfQ8N4VSoKZfx65jFwogVhFI1QgTlH71800WDDpFM3yGxxVpaZhoUSOntApLFGnVGmw9IUvj2CGg0bCyMdOzfqc8Nyf1FD6qj8ToAMfjP4qQwZLGpaOlrbE4CfSlJ7me1M4gEWR8ONRfASRFDIMvJx93KZxoeEFqLenvw5CqpbFrc0kQBieK0ngdmgB2c92x9nFClcgkBSpFSVAmBiTD9J573txV4dFOmtLasuAYq845gktb0wYnxoGenRJupg4nEvTiT1fc6XDTzW08wTzKdJ5ymfegn0C2yvlr3TFQzbUL8mN15Th5ksqNLBFx5UyuhadFVMraDOCR9cr0xTGxHU3qw0dF4wDINmxrGxjKL3Ohq0aocG0wkb9A0HoCNUbWu5o1qiY5GHVwdqGjwZlIp55VSF6cg5acgvwVe5SG0d3ekCM3bJ7Gq33yu0fKLitVhDOIBEuitoXYZdrsMIpm8XGm2q8ih3uFkhIU1J80HybrGYpcuzFEH9FT7psYTwYOVAOUFhfcULTQmfO2dcng7L09s2Fv6SvkGH98Sqdn085m0FcCPzaneVjagAeu2Rj1kTNKh3iy6ZrOeYwJU3pGOlKfOpKtVhY6hc4USSy0qCSmNspr6D1DRvLep1CSOwpD6BUrTvHMaYAWGmR94FXvYDuFulOptxpAVPrLNczSQaYwdGitEz1JQuQE83OVl5Z7vnr54IEE4H7MzlI0l0uirx8fvuf3fItCjWPxX5D1FbWoXf9i9h5UgPJuSas2Sxndz0VTkdFFRBjwagulLddmKsHM5KHJM9h3PhCVkpC8B92CPQvaAA8cin7oXoDGWeXgg0EUEbKUdO1KvqjQPQrRaedFLn8z7UwM8lDl0L42C1hPmvIe6', 0),
(111628, 0, 'config', 'config_ftp_username', '', 0),
(111626, 0, 'config', 'config_ftp_hostname', 'testtheme.net', 0),
(111625, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(111624, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(111623, 0, 'config', 'config_captcha_page', '["review","return","contact"]', 1),
(111622, 0, 'config', 'config_captcha', '', 0),
(111620, 0, 'config', 'config_return_id', '0', 0),
(111621, 0, 'config', 'config_return_status_id', '2', 0),
(111619, 0, 'config', 'config_affiliate_mail', '0', 0),
(111618, 0, 'config', 'config_affiliate_id', '0', 0),
(111617, 0, 'config', 'config_affiliate_commission', '', 0),
(111615, 0, 'config', 'config_affiliate_approval', '0', 0),
(111616, 0, 'config', 'config_affiliate_auto', '0', 0),
(111614, 0, 'config', 'config_stock_checkout', '0', 0),
(111613, 0, 'config', 'config_stock_warning', '0', 0),
(111611, 0, 'config', 'config_api_id', '1', 0),
(111612, 0, 'config', 'config_stock_display', '0', 0),
(111610, 0, 'config', 'config_order_mail', '0', 0),
(111609, 0, 'config', 'config_fraud_status_id', '7', 0),
(111608, 0, 'config', 'config_complete_status', '["5","3"]', 1),
(111607, 0, 'config', 'config_processing_status', '["5","1","2","12","3"]', 1),
(111605, 0, 'config', 'config_checkout_id', '5', 0),
(111606, 0, 'config', 'config_order_status_id', '1', 0),
(410, 0, 'shopme', 'shopme_header_style', 'header1', 0),
(411, 0, 'shopme', 'shopme_footer_columns', 'col-xs-12', 0),
(412, 0, 'shopme', 'shopme_menu_type', 'default', 0),
(413, 0, 'shopme', 'shopme_header_login', 'enabled', 0),
(414, 0, 'shopme', 'shopme_header_wishlist', 'enabled', 0),
(415, 0, 'shopme', 'shopme_header_compare', 'enabled', 0),
(416, 0, 'shopme', 'shopme_header_cart', 'enabled', 0),
(417, 0, 'shopme', 'shopme_header_search', 'enabled', 0),
(418, 0, 'shopme', 'shopme_refine_image_w', '190', 0),
(419, 0, 'shopme', 'shopme_refine_image_h', '190', 0),
(420, 0, 'shopme', 'shopme_category_thumb', '0', 0),
(421, 0, 'shopme', 'shopme_category_refine', '0', 0),
(422, 0, 'shopme', 'shopme_brands_per_row', 'grid3', 0),
(423, 0, 'shopme', 'shopme_brands_image_w', '240', 0),
(424, 0, 'shopme', 'shopme_brands_image_h', '115', 0),
(425, 0, 'shopme', 'shopme_default_view', 'grid', 0),
(426, 0, 'shopme', 'shopme_grid_category', 'grid3', 0),
(427, 0, 'shopme', 'shopme_grid_related', 'grid3', 0),
(110513, 0, 'blogsetting', 'blogsetting_post_thumbs_w', '848', 0),
(110512, 0, 'blogsetting', 'blogsetting_post_thumb', '1', 0),
(110511, 0, 'blogsetting', 'blogsetting_share', '1', 0),
(110510, 0, 'blogsetting', 'blogsetting_post_author', '1', 0),
(110509, 0, 'blogsetting', 'blogsetting_post_page_view', '1', 0),
(110508, 0, 'blogsetting', 'blogsetting_post_comments_count', '1', 0),
(110507, 0, 'blogsetting', 'blogsetting_post_date_added', '1', 0),
(110506, 0, 'blogsetting', 'blogsetting_author', '1', 0),
(110505, 0, 'blogsetting', 'blogsetting_page_view', '1', 0),
(110504, 0, 'blogsetting', 'blogsetting_comments_count', '1', 0),
(110503, 0, 'blogsetting', 'blogsetting_date_added', '1', 0),
(110502, 0, 'blogsetting', 'blogsetting_thumbs_h', '371', 0),
(110501, 0, 'blogsetting', 'blogsetting_thumbs_w', '500', 0),
(110500, 0, 'blogsetting', 'blogsetting_layout', '1', 0),
(110499, 0, 'blogsetting', 'blogsetting_blogs_per_page', '5', 0),
(110498, 0, 'blogsetting', 'blogsetting_home_meta_keyword', '{"2":""}', 1),
(110497, 0, 'blogsetting', 'blogsetting_home_meta_description', '{"2":""}', 1),
(110496, 0, 'blogsetting', 'blogsetting_home_description', '{"2":""}', 1),
(110494, 0, 'blogsetting', 'blogsetting_home_title', '{"2":""}', 1),
(110495, 0, 'blogsetting', 'blogsetting_home_page_title', '{"2":""}', 1),
(109244, 0, 'mega_filter_seo', 'mega_filter_seo', '{"enabled":"0"}', 1),
(110519, 0, 'blogsetting', 'blogsetting_rel_characters', '100', 0),
(110520, 0, 'blogsetting', 'blogsetting_comment_per_page', '5', 0),
(110521, 0, 'blogsetting', 'blogsetting_comment_approve', '1', 0),
(110522, 0, 'blogsetting', 'blogsetting_comment_notification', '1', 0),
(110523, 0, 'blogsetting', 'blogsetting_author_change', '1', 0),
(110514, 0, 'blogsetting', 'blogsetting_post_thumbs_h', '471', 0),
(110515, 0, 'blogsetting', 'blogsetting_rel_blog_per_row', '2', 0),
(110516, 0, 'blogsetting', 'blogsetting_rel_thumb', '1', 0),
(110517, 0, 'blogsetting', 'blogsetting_rel_thumbs_w', '409', 0),
(111765, 0, 'cosyone', 'cosyone_use_custom_javascript', '0', 0),
(111763, 0, 'cosyone', 'cosyone_use_custom_css', '0', 0),
(111764, 0, 'cosyone', 'cosyone_custom_css_content', '', 0),
(111762, 0, 'cosyone', 'cosyone_use_font_bold', '700', 0),
(111761, 0, 'cosyone', 'cosyone_use_font_semibold', '500', 0),
(111760, 0, 'cosyone', 'cosyone_use_font_regular', '400', 0),
(111759, 0, 'cosyone', 'cosyone_use_font_light', '300', 0),
(111758, 0, 'cosyone', 'cosyone_font2_name', 'font-family: ''Roboto'', sans-serif;', 0),
(111757, 0, 'cosyone', 'cosyone_font2_import', 'Roboto:400,300,500,700', 0),
(111756, 0, 'cosyone', 'cosyone_font1_name', 'font-family: ''Roboto'', sans-serif;', 0),
(111603, 0, 'config', 'config_cart_weight', '0', 0),
(773, 0, 'theme_default', 'theme_default_status', '1', 0),
(772, 0, 'theme_default', 'theme_default_directory', 'cosyone', 0),
(111754, 0, 'cosyone', 'cosyone_use_custom_font', '1', 0),
(111755, 0, 'cosyone', 'cosyone_font1_import', 'Roboto:400,300,500,700', 0),
(111752, 0, 'cosyone', 'cosyone_button2_hover_border', '8c0303', 0),
(111753, 0, 'cosyone', 'cosyone_button2_hover_background', '8c0303', 0),
(111748, 0, 'cosyone', 'cosyone_button2_color', '8c0303', 0),
(111749, 0, 'cosyone', 'cosyone_button2_border', '8c0303', 0),
(111750, 0, 'cosyone', 'cosyone_button2_background', 'ffffff', 0),
(111751, 0, 'cosyone', 'cosyone_button2_hover_color', 'ffffff', 0),
(111747, 0, 'cosyone', 'cosyone_button_hover_background', '545454', 0),
(111738, 0, 'cosyone', 'cosyone_offer_color', 'b01e3b', 0),
(111739, 0, 'cosyone', 'cosyone_salebadge_background', 'b01e3b', 0),
(111740, 0, 'cosyone', 'cosyone_price_color', '8c0303', 0),
(111741, 0, 'cosyone', 'cosyone_icons_background_hover', '492a2f', 0),
(111742, 0, 'cosyone', 'cosyone_button_color', '545454', 0),
(111743, 0, 'cosyone', 'cosyone_button_border', '545454', 0),
(111744, 0, 'cosyone', 'cosyone_button_background', 'ffffff', 0),
(111745, 0, 'cosyone', 'cosyone_button_hover_color', 'ffffff', 0),
(111746, 0, 'cosyone', 'cosyone_button_hover_border', '545454', 0),
(111736, 0, 'cosyone', 'cosyone_primary_color', 'b01e3b', 0),
(111737, 0, 'cosyone', 'cosyone_secondary_color', '492a2f', 0),
(111734, 0, 'cosyone', 'cosyone_shortcut_separator', '', 0),
(111735, 0, 'cosyone', 'cosyone_link_hover_color', '8c0303', 0),
(111733, 0, 'cosyone', 'cosyone_menu_link_background_hover', '8c0303', 0),
(111732, 0, 'cosyone', 'cosyone_menu_link_color_hover', 'ffffff', 0),
(111731, 0, 'cosyone', 'cosyone_menu_link_color', '222226', 0),
(111729, 0, 'cosyone', 'cosyone_top_border_link_hover', 'ffffff', 0),
(111730, 0, 'cosyone', 'cosyone_menu_background', 'ffffff', 0),
(111717, 0, 'cosyone', 'cosyone_ie_text', '{"2":"","3":""}', 1),
(111718, 0, 'cosyone', 'cosyone_ie_url', '', 0),
(111719, 0, 'cosyone', 'cosyone_ie_update_text', '{"2":"","3":""}', 1),
(111720, 0, 'cosyone', 'cosyone_use_custom', '1', 0),
(111721, 0, 'cosyone', 'cosyone_container_layout', '', 0),
(111722, 0, 'cosyone', 'cosyone_body_background', 'ffffff', 0),
(111723, 0, 'cosyone', 'cosyone_body_image', 'none.png', 0),
(111724, 0, 'cosyone', 'cosyone_custom_bg_icon', '', 0),
(111725, 0, 'cosyone', 'cosyone_top_border_background', '2b2b2b', 0),
(111726, 0, 'cosyone', 'cosyone_top_border_border', '2b2b2b', 0),
(111727, 0, 'cosyone', 'cosyone_top_border_text', 'bdbfbf', 0),
(111728, 0, 'cosyone', 'cosyone_top_border_link', 'd7d9d9', 0),
(111713, 0, 'cosyone', 'cosyone_readmore_url', 'index.php?route=information/information&amp;information_id=3', 0),
(111714, 0, 'cosyone', 'cosyone_cookie_button_readmore', '{"2":"\\u041f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435","3":""}', 1),
(111715, 0, 'cosyone', 'cosyone_cookie_button_accept', '{"2":"Accept","3":""}', 1),
(111716, 0, 'cosyone', 'cosyone_use_ie', '0', 0),
(111711, 0, 'cosyone', 'cosyone_use_cookie', '0', 0),
(111712, 0, 'cosyone', 'cosyone_cookie_text', '{"2":"This website uses cookies in order to work correctly. No personal data is stored","3":""}', 1),
(111710, 0, 'cosyone', 'cosyone_footer_payment_icon', '', 0),
(111709, 0, 'cosyone', 'cosyone_footer_custom_block', '{"2":"&lt;p&gt;Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Donec sit amet eros.&lt;\\/p&gt;&lt;p&gt;Email us: &lt;a href=&quot;mailto:company@companyname.com&quot;&gt;company@company.com&lt;\\/a&gt;&lt;br&gt;&lt;\\/p&gt;","3":""}', 1),
(111699, 0, 'cosyone', 'cosyone_text_ql', '{"2":"Quicklook","3":""}', 1),
(111700, 0, 'cosyone', 'cosyone_default_product_style', 'style-2', 0),
(111701, 0, 'cosyone', 'cosyone_default_view', 'grid', 0),
(111702, 0, 'cosyone', 'cosyone_grid_category', 'grid3', 0),
(3825, 0, 'showintabs', 'showintabs_tab', '{"1":{"title":{"1":"Popular"},"data_source":"PG","product_group":"PP","filter_category":"ALL","filter_manufacturer":"ALL","sort":"pd.name"},"2":{"title":{"1":"Latest"},"data_source":"PG","product_group":"LA","filter_category":"ALL","filter_manufacturer":"ALL","sort":"pd.name"},"5":{"title":{"1":"Top rated"},"product_group":"BS","data_source":"CQ","filter_category":"ALL","filter_manufacturer":"ALL","sort":"rating"}}', 1),
(2408, 0, 'testimonial', 'testimonial_admin_approved', '0', 0),
(2409, 0, 'testimonial', 'testimonial_default_rating', '3', 0),
(3824, 0, 'cosyone_twitterfeed', 'cosyone_twitterfeed_status', '1', 0),
(3823, 0, 'cosyone_twitterfeed', 'cosyone_twitterfeed_limit', '1', 0),
(3821, 0, 'cosyone_twitterfeed', 'cosyone_twitterfeed_title', '{"en":"Latest Tweets", "1":"Latest Tweets", "2":"Latest Tweets"}', 1),
(3822, 0, 'cosyone_twitterfeed', 'cosyone_twitterfeed_widget_id', 'Enter your twitter username here', 0),
(2642, 0, 'newsletter', 'newsletter_global_status', '1', 0),
(3190, 0, 'd_ajax_search', 'd_ajax_search', '{"search_on_off":"1","search_width":"100%","search_max_symbols":"14","search_max_results":"5","search_first_symbols":"on","search_product_on":"on","search_product_sort":"1","search_category_on":"on","search_category_sort":"2","search_manufacturer_on":"on","search_manufacturer_sort":"3","search_information_on":"on","search_information_sort":"4","search_price":"on","search_special":"on","search_tax":"on"}', 1),
(108632, 0, 'theme_default', 'theme_default_image_compare_height', '100', 0),
(108631, 0, 'theme_default', 'theme_default_image_compare_width', '100', 0),
(108630, 0, 'theme_default', 'theme_default_image_related_height', '262', 0),
(108629, 0, 'theme_default', 'theme_default_image_related_width', '262', 0),
(108628, 0, 'theme_default', 'theme_default_image_additional_height', '100', 0),
(108627, 0, 'theme_default', 'theme_default_image_additional_width', '100', 0),
(108626, 0, 'theme_default', 'theme_default_image_product_height', '262', 0),
(108625, 0, 'theme_default', 'theme_default_image_product_width', '262', 0),
(108624, 0, 'theme_default', 'theme_default_image_popup_height', '750', 0),
(108623, 0, 'theme_default', 'theme_default_image_popup_width', '750', 0),
(108622, 0, 'theme_default', 'theme_default_image_thumb_height', '360', 0),
(108621, 0, 'theme_default', 'theme_default_image_thumb_width', '360', 0),
(108620, 0, 'theme_default', 'theme_default_image_category_height', '150', 0),
(108619, 0, 'theme_default', 'theme_default_image_category_width', '248', 0),
(108637, 0, 'quickcheckout', 'quickcheckout_status', '1', 0),
(108638, 0, 'quickcheckout', 'quickcheckout_load_screen', '1', 0),
(108639, 0, 'quickcheckout', 'quickcheckout_payment_logo', '1', 0),
(108640, 0, 'quickcheckout', 'quickcheckout_payment', '1', 0),
(108641, 0, 'quickcheckout', 'quickcheckout_shipping', '1', 0),
(108642, 0, 'quickcheckout', 'quickcheckout_edit_cart', '1', 0),
(108643, 0, 'quickcheckout', 'quickcheckout_highlight_error', '1', 0),
(108644, 0, 'quickcheckout', 'quickcheckout_text_error', '1', 0),
(108645, 0, 'quickcheckout', 'quickcheckout_layout', '2', 0),
(108646, 0, 'quickcheckout', 'quickcheckout_slide_effect', '0', 0),
(108647, 0, 'quickcheckout', 'quickcheckout_debug', '0', 0),
(108648, 0, 'quickcheckout', 'quickcheckout_auto_submit', '0', 0),
(108649, 0, 'quickcheckout', 'quickcheckout_responsive', '0', 0),
(108650, 0, 'quickcheckout', 'quickcheckout_country_reload', '0', 0),
(108651, 0, 'quickcheckout', 'quickcheckout_payment_reload', '0', 0),
(108652, 0, 'quickcheckout', 'quickcheckout_shipping_reload', '0', 0),
(108653, 0, 'quickcheckout', 'quickcheckout_field_firstname', '{"display":"1","required":"1","default":"","sort_order":"1"}', 1),
(108654, 0, 'quickcheckout', 'quickcheckout_field_lastname', '{"display":"1","required":"1","default":"","sort_order":"2"}', 1),
(108655, 0, 'quickcheckout', 'quickcheckout_field_email', '{"display":"1","required":"1","default":"","sort_order":"3"}', 1),
(108656, 0, 'quickcheckout', 'quickcheckout_field_telephone', '{"display":"1","required":"1","default":"","sort_order":"4"}', 1),
(108657, 0, 'quickcheckout', 'quickcheckout_field_fax', '{"display":"0","required":"0","default":"","sort_order":"5"}', 1),
(108658, 0, 'quickcheckout', 'quickcheckout_field_company', '{"display":"1","required":"0","default":"","sort_order":"6"}', 1),
(108659, 0, 'quickcheckout', 'quickcheckout_field_customer_group', '{"display":"1","required":"","default":"","sort_order":"7"}', 1),
(108660, 0, 'quickcheckout', 'quickcheckout_field_address_1', '{"display":"1","required":"1","default":"","sort_order":"9"}', 1),
(108661, 0, 'quickcheckout', 'quickcheckout_field_address_2', '{"display":"0","required":"0","default":"","sort_order":"10"}', 1),
(108662, 0, 'quickcheckout', 'quickcheckout_field_city', '{"display":"1","required":"1","default":"","sort_order":"11"}', 1),
(108663, 0, 'quickcheckout', 'quickcheckout_field_postcode', '{"display":"1","required":"0","default":"","sort_order":"12"}', 1),
(108664, 0, 'quickcheckout', 'quickcheckout_field_country', '{"display":"1","required":"1","default":"1","sort_order":"13"}', 1),
(108665, 0, 'quickcheckout', 'quickcheckout_field_zone', '{"display":"1","required":"0","default":"1","sort_order":"14"}', 1),
(108666, 0, 'quickcheckout', 'quickcheckout_field_newsletter', '{"display":"1","required":"0","default":"1","sort_order":""}', 1),
(108667, 0, 'quickcheckout', 'quickcheckout_field_register', '{"display":"1","required":"0","default":"","sort_order":""}', 1),
(108668, 0, 'quickcheckout', 'quickcheckout_coupon', '1', 0),
(108669, 0, 'quickcheckout', 'quickcheckout_voucher', '1', 0),
(108670, 0, 'quickcheckout', 'quickcheckout_reward', '1', 0),
(108671, 0, 'quickcheckout', 'quickcheckout_cart', '1', 0),
(108672, 0, 'quickcheckout', 'quickcheckout_shipping_module', '1', 0),
(108673, 0, 'quickcheckout', 'quickcheckout_payment_module', '1', 0),
(108674, 0, 'quickcheckout', 'quickcheckout_login_module', '1', 0),
(108675, 0, 'quickcheckout', 'quickcheckout_html_header', '[]', 1),
(108676, 0, 'quickcheckout', 'quickcheckout_html_footer', '[]', 1),
(108677, 0, 'quickcheckout', 'quickcheckout_survey', '0', 0),
(108678, 0, 'quickcheckout', 'quickcheckout_survey_required', '0', 0),
(108679, 0, 'quickcheckout', 'quickcheckout_survey_text', '[]', 1),
(108680, 0, 'quickcheckout', 'quickcheckout_delivery', '0', 0),
(108681, 0, 'quickcheckout', 'quickcheckout_delivery_time', '0', 0),
(108682, 0, 'quickcheckout', 'quickcheckout_delivery_required', '0', 0),
(108683, 0, 'quickcheckout', 'quickcheckout_delivery_unavailable', '"31-10-2013", "08-11-2013", "25-12-2013"', 0),
(108684, 0, 'quickcheckout', 'quickcheckout_delivery_min', '1', 0),
(108685, 0, 'quickcheckout', 'quickcheckout_delivery_max', '30', 0),
(108686, 0, 'quickcheckout', 'quickcheckout_delivery_days_of_week', '', 0),
(110518, 0, 'blogsetting', 'blogsetting_rel_thumbs_h', '227', 0),
(111703, 0, 'cosyone', 'cosyone_grid_related', 'grid3', 0),
(111704, 0, 'cosyone', 'cosyone_rollover_effect', 'enabled', 0),
(111705, 0, 'cosyone', 'cosyone_percentage_sale_badge', 'enabled', 0),
(111706, 0, 'cosyone', 'cosyone_brand', 'enabled', 0),
(111707, 0, 'cosyone', 'cosyone_footer_columns', 'column-1', 0),
(111708, 0, 'cosyone', 'cosyone_footer_custom_block_title', '{"2":"\\u041e \\u043d\\u0430\\u0441","3":""}', 1),
(111698, 0, 'cosyone', 'cosyone_google_map', '&lt;iframe src=&quot;https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2747.844484286991!2d30.73512050521403!3d46.47158831182546!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40c63183b9f31953%3A0x2a269ca5534fb7e4!2z0LLRg9C70LjRhtGPINCc0LDQu9CwINCQ0YDQvdCw0YPRgtGB0YzQutCwLCA2NCwg0J7QtNC10YHQsCwg0J7QtNC10YHRjNC60LAg0L7QsdC70LDRgdGC0Yw!5e0!3m2!1sru!2sua!4v1468840192551&quot; width=&quot;600&quot; height=&quot;450&quot; frameborder=&quot;0&quot; style=&quot;border:0&quot; allowfullscreen&gt;&lt;/iframe&gt;', 0),
(111697, 0, 'cosyone', 'cosyone_refine_image_h', '160', 0),
(111696, 0, 'cosyone', 'cosyone_refine_image_w', '250', 0),
(111694, 0, 'cosyone', 'cosyone_category_refine', 'enabled', 0),
(111695, 0, 'cosyone', 'cosyone_category_per_row', 'grid4', 0),
(111693, 0, 'cosyone', 'cosyone_category_thumb', 'enabled', 0),
(111692, 0, 'cosyone', 'cosyone_image_options', 'thumbs', 0),
(111691, 0, 'cosyone', 'cosyone_product_zoom', 'cloud-zoom-gallery', 0),
(111690, 0, 'cosyone', 'cosyone_product_hurry', 'header_border', 0),
(111688, 0, 'cosyone', 'cosyone_product_yousave', 'enabled', 0),
(111689, 0, 'cosyone', 'cosyone_product_countdown', 'header_border', 0),
(111687, 0, 'cosyone', 'cosyone_product_share', 'content', 0),
(111684, 0, 'cosyone', 'cosyone_menu_block_width', '1140', 0),
(111685, 0, 'cosyone', 'cosyone_custom_menu_block_title', '{"2":"Custom block","3":""}', 1),
(111686, 0, 'cosyone', 'cosyone_menu_custom_block_content', '{"2":"","3":""}', 1),
(111604, 0, 'config', 'config_checkout_guest', '1', 0),
(111602, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(111601, 0, 'config', 'config_account_mail', '0', 0),
(111600, 0, 'config', 'config_account_id', '0', 0),
(111599, 0, 'config', 'config_login_attempts', '5', 0),
(111598, 0, 'config', 'config_customer_price', '0', 0),
(111597, 0, 'config', 'config_customer_group_display', '["1"]', 1),
(111595, 0, 'config', 'config_customer_online', '0', 0),
(111596, 0, 'config', 'config_customer_group_id', '1', 0),
(111594, 0, 'config', 'config_tax_customer', 'shipping', 0),
(111592, 0, 'config', 'config_tax', '1', 0),
(111593, 0, 'config', 'config_tax_default', 'shipping', 0),
(111591, 0, 'config', 'config_voucher_max', '1000', 0),
(111590, 0, 'config', 'config_voucher_min', '1', 0),
(111589, 0, 'config', 'config_review_mail', '0', 0),
(110849, 0, 'mega_filter_module', 'mega_filter_module', '{"1":{"title":{"2":"Mega Filter PRO"},"layout_id":["3"],"store_id":[0],"position":"column_left","status":"1","sort_order":""}}', 1),
(110850, 0, 'mega_filter_settings', 'mega_filter_settings', '{"show_number_of_products":"1","calculate_number_of_products":"1","show_loader_over_results":"1","css_style":"","content_selector":"#mfilter-content-container","refresh_results":"immediately","attribs":{"price":{"enabled":"1","sort_order":"-1"}},"layout_c":"3","display_live_filter":{"items":"1"}}', 1),
(110851, 0, 'mega_filter_status', 'mega_filter_status', '1', 0),
(110852, 0, 'mfilter_version', 'mfilter_version', '2.0.2.1', 0),
(111055, 0, 'filter', 'filter_status', '1', 0),
(111588, 0, 'config', 'config_review_guest', '1', 0),
(111577, 0, 'config', 'config_country_id', '222', 0),
(111578, 0, 'config', 'config_zone_id', '3563', 0),
(111579, 0, 'config', 'config_language', 'ru-ru', 0),
(111580, 0, 'config', 'config_admin_language', 'ru-ru', 0),
(111587, 0, 'config', 'config_review_status', '1', 0),
(111586, 0, 'config', 'config_limit_admin', '20', 0),
(111585, 0, 'config', 'config_product_count', '0', 0),
(111584, 0, 'config', 'config_weight_class_id', '1', 0),
(111583, 0, 'config', 'config_length_class_id', '1', 0),
(111582, 0, 'config', 'config_currency_auto', '1', 0),
(111581, 0, 'config', 'config_currency', 'UAH', 0),
(111576, 0, 'config', 'config_comment', 'Вт - Вс, с 9:00 до 14:00', 0),
(111575, 0, 'config', 'config_open', 'c 10:00 до 20:00', 0),
(111574, 0, 'config', 'config_image', '', 0),
(111572, 0, 'config', 'config_telephone', '123456789', 0),
(111573, 0, 'config', 'config_fax', '', 0),
(111570, 0, 'config', 'config_geocode', '', 0),
(111571, 0, 'config', 'config_email', 'iragrinchuk@gmail.com', 0),
(111569, 0, 'config', 'config_address', 'Address 1', 0),
(111568, 0, 'config', 'config_owner', 'Your Name', 0),
(111567, 0, 'config', 'config_name', 'Your Store', 0),
(111566, 0, 'config', 'config_layout_id', '4', 0),
(111565, 0, 'config', 'config_theme', 'theme_default', 0),
(111564, 0, 'config', 'config_meta_keyword', '', 0),
(111563, 0, 'config', 'config_meta_description', 'My Store', 0),
(111562, 0, 'config', 'config_meta_title', 'Вкусная мебель', 0),
(111679, 0, 'cosyone', 'cosyone_custom_menu_title5', '{"2":"","3":""}', 1),
(111680, 0, 'cosyone', 'cosyone_custom_menu_url5', '', 0),
(111681, 0, 'cosyone', 'cosyone_custom_menu_title6', '{"2":"","3":""}', 1),
(111682, 0, 'cosyone', 'cosyone_custom_menu_url6', '', 0),
(111683, 0, 'cosyone', 'cosyone_custom_menu_block', 'disabled', 0),
(111677, 0, 'cosyone', 'cosyone_custom_menu_title4', '{"2":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442","3":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442"}', 1),
(111678, 0, 'cosyone', 'cosyone_custom_menu_url4', '/contact', 0),
(111676, 0, 'cosyone', 'cosyone_custom_menu_url3', '#', 0),
(111675, 0, 'cosyone', 'cosyone_custom_menu_title3', '{"2":"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0438 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430","3":"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0438 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430"}', 1),
(111674, 0, 'cosyone', 'cosyone_custom_menu_url2', '#', 0),
(111673, 0, 'cosyone', 'cosyone_custom_menu_title2', '{"2":"\\u041f\\u043e\\u043b\\u0435\\u0437\\u043d\\u043e\\u0435","3":"\\u041a\\u043e\\u0440\\u0438\\u0441\\u043d\\u0435"}', 1),
(111671, 0, 'cosyone', 'cosyone_custom_menu_title1', '{"2":"\\u041e \\u043d\\u0430\\u0441","3":"\\u041f\\u0440\\u043e \\u043d\\u0430\\u0441"}', 1),
(111672, 0, 'cosyone', 'cosyone_custom_menu_url1', '#', 0),
(111670, 0, 'cosyone', 'cosyone_menu_mega_second_image_h', '100', 0),
(111669, 0, 'cosyone', 'cosyone_menu_mega_second_image_w', '165', 0),
(111668, 0, 'cosyone', 'cosyone_menu_mega_second_thumb', 'disabled', 0),
(111667, 0, 'cosyone', 'cosyone_menu_border', 'header_border', 0),
(111666, 0, 'cosyone', 'cosyone_show_home_icon', 'disabled', 0),
(111665, 0, 'cosyone', 'cosyone_menu_sticky', 'sticky_menu', 0),
(111664, 0, 'cosyone', 'cosyone_top_promo_message', '{"2":"&lt;b&gt;Free shipping&lt;\\/b&gt; on orders over $100. Need Help? &lt;b&gt;866.526.3979&lt;\\/b&gt;","3":""}', 1),
(111663, 0, 'cosyone', 'cosyone_header_cart', 'enabled', 0),
(111662, 0, 'cosyone', 'cosyone_header_search', 'enabled', 0),
(111661, 0, 'cosyone', 'cosyone_header_compare', 'enabled', 0),
(111660, 0, 'cosyone', 'cosyone_header_wishlist', 'enabled', 0),
(111659, 0, 'cosyone', 'cosyone_header_login', 'enabled', 0),
(111658, 0, 'cosyone', 'cosyone_header_style', 'header1', 0),
(111657, 0, 'cosyone', 'cosyone_use_retina', '', 0),
(111656, 0, 'cosyone', 'cosyone_use_breadcrumb', '', 0),
(111655, 0, 'cosyone', 'cosyone_use_responsive', 'enabled', 0),
(111654, 0, 'cosyone', 'cosyone_max_width', '1140', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_stock_status`
--

CREATE TABLE IF NOT EXISTS `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days'),
(7, 3, 'In Stock'),
(8, 3, 'Pre-Order'),
(5, 3, 'Out Of Stock'),
(6, 3, '2-3 Days');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_store`
--

CREATE TABLE IF NOT EXISTS `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tab`
--

CREATE TABLE IF NOT EXISTS `oc_tab` (
  `tab_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `position` tinyint(1) NOT NULL DEFAULT '1',
  `show_empty` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tab_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tab_description`
--

CREATE TABLE IF NOT EXISTS `oc_tab_description` (
  `tab_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`tab_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tag_cloud`
--

CREATE TABLE IF NOT EXISTS `oc_tag_cloud` (
  `qty` int(11) NOT NULL,
  `tag` varchar(255) COLLATE utf8_bin NOT NULL,
  `language_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`tag`,`language_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `oc_tag_cloud`
--

INSERT INTO `oc_tag_cloud` (`qty`, `tag`, `language_id`, `store_id`) VALUES
(1, 'Apple', 1, 0),
(1, 'iPhone', 1, 0),
(1, 'Canon', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_class`
--

CREATE TABLE IF NOT EXISTS `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

--
-- Дамп данных таблицы `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate_to_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rule`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=129 ;

--
-- Дамп данных таблицы `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_testimonial`
--

CREATE TABLE IF NOT EXISTS `oc_testimonial` (
  `testimonial_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `city` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(96) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `rating` int(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`testimonial_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `oc_testimonial`
--

INSERT INTO `oc_testimonial` (`testimonial_id`, `name`, `city`, `email`, `status`, `rating`, `date_added`) VALUES
(1, 'John Doe', 'New York', 'sample@example.com', 1, 5, '2015-03-06 21:08:34'),
(2, 'Johanna Doe', 'Stockholm', 'sample@example.com', 1, 5, '2015-03-06 21:09:23'),
(3, 'Some Guy', 'London', 'sample@example.com', 1, 4, '2015-03-06 21:10:02'),
(4, 'Steve Jobs', 'Los Angeles', 'sample@example.com', 1, 5, '2015-03-06 21:10:46'),
(5, 'Karl', 'Madrid', 'sample@example.com', 1, 5, '2015-03-06 21:11:26'),
(6, 'Lorem', 'Ipsum', 'test@nomail.com', 1, 5, '2016-07-20 11:03:21'),
(7, 'Lorem ', 'Ipsum', 'john@yopmail.com', 1, 3, '2016-07-20 11:03:59'),
(8, 'John', 'Ipsum', 'huiuf@hg.ui', 1, 4, '2016-07-20 11:04:43');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_testimonial_description`
--

CREATE TABLE IF NOT EXISTS `oc_testimonial_description` (
  `testimonial_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`testimonial_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `oc_testimonial_description`
--

INSERT INTO `oc_testimonial_description` (`testimonial_id`, `language_id`, `title`, `description`) VALUES
(1, 1, 'Testimonial Sample Title', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
(2, 1, 'Testimonial Sample Title 2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
(3, 1, 'Testimonial Sample Title 3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
(4, 1, 'Testimonial Sample Title 4', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
(5, 1, 'Testimonial Sample Title 5', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
(6, 2, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(7, 2, 'Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(8, 2, 'John', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_upload`
--

CREATE TABLE IF NOT EXISTS `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `oc_upload`
--

INSERT INTO `oc_upload` (`upload_id`, `name`, `filename`, `code`, `date_added`) VALUES
(1, 'slideshow-full-1980x550.png', 'slideshow-full-1980x550.png.ChQUIAHrsMas8YjFVVJ6jxjsXIFH8Nll', '94e9795ddfe024f4c3aa4f3b829ec91f1a69a4a1', '2016-07-20 10:31:59');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_url_alias`
--

CREATE TABLE IF NOT EXISTS `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=939 ;

--
-- Дамп данных таблицы `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(824, 'product_id=48', 'ipod-classic'),
(730, 'manufacturer_id=8', 'apple'),
(772, 'information_id=4', 'about_us'),
(932, 'product_id=42', 'test'),
(916, 'category_id=70', 'svet'),
(928, 'category_id=60', 'komplekty'),
(907, 'category_id=61', 'shkafy'),
(908, 'category_id=62', 'komody'),
(909, 'category_id=63', 'stoly'),
(910, 'category_id=64', 'kresla'),
(911, 'category_id=65', 'stul-ya'),
(912, 'category_id=66', 'divany'),
(913, 'category_id=67', 'krovati'),
(914, 'category_id=68', 'matrassy'),
(915, 'category_id=69', 'dekor'),
(918, 'product_id=30', 'canon-eos-5d'),
(919, 'product_id=47', 'hp-lp3065'),
(920, 'product_id=28', 'htc-touch-hd'),
(812, 'product_id=43', 'macbook'),
(813, 'product_id=44', 'macbook-air'),
(814, 'product_id=45', 'macbook-pro'),
(866, 'product_id=31', 'nikon-d300'),
(817, 'product_id=29', 'palm-treo-pro'),
(818, 'product_id=35', 'product-8'),
(937, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(820, 'product_id=33', 'samsung-syncmaster-941bw'),
(821, 'product_id=46', 'sony-vaio'),
(837, 'product_id=41', 'imac'),
(823, 'product_id=40', 'iphone'),
(825, 'product_id=36', 'ipod-nano'),
(826, 'product_id=34', 'ipod-shuffle'),
(827, 'product_id=32', 'ipod-touch'),
(828, 'manufacturer_id=9', 'canon'),
(829, 'manufacturer_id=5', 'htc'),
(830, 'manufacturer_id=7', 'hewlett-packard'),
(831, 'manufacturer_id=6', 'palm'),
(832, 'manufacturer_id=10', 'sony'),
(841, 'information_id=6', 'delivery'),
(842, 'information_id=3', 'privacy'),
(843, 'information_id=5', 'terms'),
(869, 'account/wishlist', 'wishlist'),
(870, 'account/account', 'my-account'),
(871, 'checkout/cart', 'shopping-cart'),
(872, 'checkout/checkout', 'checkout'),
(873, 'account/login', 'login'),
(874, 'account/logout', 'logout'),
(875, 'account/order', 'order-history'),
(876, 'account/newsletter', 'newsletter'),
(877, 'product/special', 'specials'),
(878, 'affiliate/account', 'affiliates'),
(879, 'checkout/voucher', 'gift-vouchers'),
(880, 'product/manufacturer', 'brands'),
(881, 'information/contact', 'contact-us'),
(882, 'account/return/insert', 'request-return'),
(883, 'information/sitemap', 'sitemap'),
(884, 'account/forgotten', 'forgot-password'),
(885, 'account/download', 'downloads'),
(886, 'account/return', 'returns'),
(887, 'account/transaction', 'transactions'),
(888, 'account/register', 'create-account'),
(889, 'product/compare', 'compare-products'),
(890, 'product/search', 'search'),
(891, 'account/edit', 'edit-account'),
(892, 'account/password', 'change-password'),
(893, 'account/address', 'address-book'),
(894, 'account/reward', 'reward-points'),
(895, 'affiliate/edit', 'edit-affiliate-account'),
(896, 'affiliate/password', 'change-affiliate-password'),
(897, 'affiliate/payment', 'affiliate-payment-options'),
(898, 'affiliate/tracking', 'affiliate-tracking-code'),
(899, 'affiliate/transaction', 'affiliate-transactions'),
(900, 'affiliate/logout', 'affiliate-logout'),
(901, 'affiliate/forgotten', 'affiliate-forgot-password'),
(902, 'affiliate/register', 'create-affiliate-account'),
(903, 'affiliate/login', 'affiliate-login'),
(904, 'common/home', ''),
(938, 'information_id=7', 'contact');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user`
--

CREATE TABLE IF NOT EXISTS `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '69cab140edb6bfde263615efb4ca08adcec8c6bd', '65RxkeSiw', 'John', 'Doe', 'iragrinchuk@gmail.com', '', '', '127.0.0.1', 1, '2016-07-18 12:05:12');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user_group`
--

CREATE TABLE IF NOT EXISTS `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{"access":["analytics\\/google_analytics","blog\\/blog","blog\\/blog_category","blog\\/blog_comment","blog\\/blog_setting","captcha\\/basic_captcha","captcha\\/google_captcha","catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/question","catalog\\/recurring","catalog\\/review","catalog\\/tab","catalog\\/testimonial","common\\/column_left","common\\/filemanager","common\\/menu","common\\/profile","common\\/stats","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/language","design\\/layout","design\\/theme","event\\/theme","extension\\/analytics","extension\\/captcha","extension\\/feed","extension\\/fraud","extension\\/installer","extension\\/modification","extension\\/module","extension\\/newsletter","extension\\/openbay","extension\\/payment","extension\\/shipping","extension\\/theme","extension\\/total","feed\\/google_base","feed\\/google_sitemap","feed\\/openbaypro","fraud\\/fraudlabspro","fraud\\/ip","fraud\\/maxmind","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","module\\/account","module\\/adv_ajaxfilter","module\\/affiliate","module\\/amazon_login","module\\/amazon_pay","module\\/banner","module\\/bestseller","module\\/blog_category","module\\/blog_latest","module\\/carousel","module\\/category","module\\/cosyone","module\\/cosyone_banner","module\\/cosyone_bannerwall","module\\/cosyone_carousel","module\\/cosyone_category","module\\/cosyone_content","module\\/cosyone_deals","module\\/cosyone_productbrand","module\\/cosyone_recently","module\\/cosyone_socials","module\\/cosyone_tagcloud","module\\/cosyone_testimonial","module\\/cosyone_twitterfeed","module\\/d_ajax_search","module\\/ebay_listing","module\\/faqmanager","module\\/featured","module\\/filter","module\\/google_hangouts","module\\/html","module\\/information","module\\/latest","module\\/laybuy_layout","module\\/mega_filter","module\\/newsletter","module\\/pp_button","module\\/pp_login","module\\/quickcheckout","module\\/revslideropencart","module\\/revslideroutput","module\\/sagepay_direct_cards","module\\/sagepay_server_cards","module\\/showintabs","module\\/showintabs_output","module\\/slideshow","module\\/special","module\\/store","module\\/testModul","openbay\\/amazon","openbay\\/amazon_listing","openbay\\/amazon_product","openbay\\/amazonus","openbay\\/amazonus_listing","openbay\\/amazonus_product","openbay\\/ebay","openbay\\/ebay_profile","openbay\\/ebay_template","openbay\\/etsy","openbay\\/etsy_product","openbay\\/etsy_shipping","openbay\\/etsy_shop","openbay\\/fba","payment\\/amazon_login_pay","payment\\/authorizenet_aim","payment\\/authorizenet_sim","payment\\/bank_transfer","payment\\/bluepay_hosted","payment\\/bluepay_redirect","payment\\/cardinity","payment\\/cheque","payment\\/cod","payment\\/eway","payment\\/firstdata","payment\\/firstdata_remote","payment\\/free_checkout","payment\\/g2apay","payment\\/globalpay","payment\\/globalpay_remote","payment\\/klarna_account","payment\\/klarna_invoice","payment\\/laybuy","payment\\/liqpay","payment\\/nochex","payment\\/paymate","payment\\/paypoint","payment\\/payza","payment\\/perpetual_payments","payment\\/pp_express","payment\\/pp_payflow","payment\\/pp_payflow_iframe","payment\\/pp_pro","payment\\/pp_pro_iframe","payment\\/pp_standard","payment\\/realex","payment\\/realex_remote","payment\\/sagepay_direct","payment\\/sagepay_server","payment\\/sagepay_us","payment\\/securetrading_pp","payment\\/securetrading_ws","payment\\/skrill","payment\\/twocheckout","payment\\/web_payment_software","payment\\/worldpay","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","shipping\\/auspost","shipping\\/citylink","shipping\\/fedex","shipping\\/flat","shipping\\/free","shipping\\/item","shipping\\/parcelforce_48","shipping\\/pickup","shipping\\/royal_mail","shipping\\/ups","shipping\\/usps","shipping\\/weight","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","theme\\/theme_default","tool\\/backup","tool\\/error_log","tool\\/upload","total\\/coupon","total\\/credit","total\\/handling","total\\/klarna_fee","total\\/low_order_fee","total\\/reward","total\\/shipping","total\\/sub_total","total\\/tax","total\\/total","total\\/voucher","user\\/api","user\\/user","user\\/user_permission","module\\/banner","module\\/information","module\\/cosyone_bannerwall","module\\/cosyone_banner","module\\/bestseller","module\\/testModul","module\\/html","module\\/top_module","module\\/top_module","module\\/topmodule","module\\/topmodule","module\\/topmodule"],"modify":["analytics\\/google_analytics","blog\\/blog","blog\\/blog_category","blog\\/blog_comment","blog\\/blog_setting","captcha\\/basic_captcha","captcha\\/google_captcha","catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/question","catalog\\/recurring","catalog\\/review","catalog\\/tab","catalog\\/testimonial","common\\/column_left","common\\/filemanager","common\\/menu","common\\/profile","common\\/stats","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/language","design\\/layout","design\\/theme","event\\/theme","extension\\/analytics","extension\\/captcha","extension\\/feed","extension\\/fraud","extension\\/installer","extension\\/modification","extension\\/module","extension\\/newsletter","extension\\/openbay","extension\\/payment","extension\\/shipping","extension\\/theme","extension\\/total","feed\\/google_base","feed\\/google_sitemap","feed\\/openbaypro","fraud\\/fraudlabspro","fraud\\/ip","fraud\\/maxmind","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","module\\/account","module\\/adv_ajaxfilter","module\\/affiliate","module\\/amazon_login","module\\/amazon_pay","module\\/banner","module\\/bestseller","module\\/blog_category","module\\/blog_latest","module\\/carousel","module\\/category","module\\/cosyone","module\\/cosyone_banner","module\\/cosyone_bannerwall","module\\/cosyone_carousel","module\\/cosyone_category","module\\/cosyone_content","module\\/cosyone_deals","module\\/cosyone_productbrand","module\\/cosyone_recently","module\\/cosyone_socials","module\\/cosyone_tagcloud","module\\/cosyone_testimonial","module\\/cosyone_twitterfeed","module\\/d_ajax_search","module\\/ebay_listing","module\\/faqmanager","module\\/featured","module\\/filter","module\\/google_hangouts","module\\/html","module\\/information","module\\/latest","module\\/laybuy_layout","module\\/mega_filter","module\\/newsletter","module\\/pp_button","module\\/pp_login","module\\/quickcheckout","module\\/revslideropencart","module\\/revslideroutput","module\\/sagepay_direct_cards","module\\/sagepay_server_cards","module\\/showintabs","module\\/showintabs_output","module\\/slideshow","module\\/special","module\\/store","module\\/testModul","openbay\\/amazon","openbay\\/amazon_listing","openbay\\/amazon_product","openbay\\/amazonus","openbay\\/amazonus_listing","openbay\\/amazonus_product","openbay\\/ebay","openbay\\/ebay_profile","openbay\\/ebay_template","openbay\\/etsy","openbay\\/etsy_product","openbay\\/etsy_shipping","openbay\\/etsy_shop","openbay\\/fba","payment\\/amazon_login_pay","payment\\/authorizenet_aim","payment\\/authorizenet_sim","payment\\/bank_transfer","payment\\/bluepay_hosted","payment\\/bluepay_redirect","payment\\/cardinity","payment\\/cheque","payment\\/cod","payment\\/eway","payment\\/firstdata","payment\\/firstdata_remote","payment\\/free_checkout","payment\\/g2apay","payment\\/globalpay","payment\\/globalpay_remote","payment\\/klarna_account","payment\\/klarna_invoice","payment\\/laybuy","payment\\/liqpay","payment\\/nochex","payment\\/paymate","payment\\/paypoint","payment\\/payza","payment\\/perpetual_payments","payment\\/pp_express","payment\\/pp_payflow","payment\\/pp_payflow_iframe","payment\\/pp_pro","payment\\/pp_pro_iframe","payment\\/pp_standard","payment\\/realex","payment\\/realex_remote","payment\\/sagepay_direct","payment\\/sagepay_server","payment\\/sagepay_us","payment\\/securetrading_pp","payment\\/securetrading_ws","payment\\/skrill","payment\\/twocheckout","payment\\/web_payment_software","payment\\/worldpay","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","shipping\\/auspost","shipping\\/citylink","shipping\\/fedex","shipping\\/flat","shipping\\/free","shipping\\/item","shipping\\/parcelforce_48","shipping\\/pickup","shipping\\/royal_mail","shipping\\/ups","shipping\\/usps","shipping\\/weight","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","theme\\/theme_default","tool\\/backup","tool\\/error_log","tool\\/upload","total\\/coupon","total\\/credit","total\\/handling","total\\/klarna_fee","total\\/low_order_fee","total\\/reward","total\\/shipping","total\\/sub_total","total\\/tax","total\\/total","total\\/voucher","user\\/api","user\\/user","user\\/user_permission","module\\/banner","module\\/information","module\\/cosyone_bannerwall","module\\/cosyone_banner","module\\/bestseller","module\\/testModul","module\\/html","module\\/top_module","module\\/top_module","module\\/topmodule","module\\/topmodule","module\\/topmodule"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher`
--

CREATE TABLE IF NOT EXISTS `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_history`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme_description`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General'),
(6, 3, 'Christmas'),
(7, 3, 'Birthday'),
(8, 3, 'General');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class`
--

CREATE TABLE IF NOT EXISTS `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class_description`
--

CREATE TABLE IF NOT EXISTS `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz'),
(1, 3, 'Kilogram', 'kg'),
(2, 3, 'Gram', 'g'),
(5, 3, 'Pound ', 'lb'),
(6, 3, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone`
--

CREATE TABLE IF NOT EXISTS `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `major` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4234 ;

--
-- Дамп данных таблицы `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`, `major`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1, 1),
(2, 1, 'Badghis', 'BDG', 1, 1),
(3, 1, 'Baghlan', 'BGL', 1, 1),
(4, 1, 'Balkh', 'BAL', 1, NULL),
(5, 1, 'Bamian', 'BAM', 1, NULL),
(6, 1, 'Farah', 'FRA', 1, NULL),
(7, 1, 'Faryab', 'FYB', 1, NULL),
(8, 1, 'Ghazni', 'GHA', 1, NULL),
(9, 1, 'Ghowr', 'GHO', 1, NULL),
(10, 1, 'Helmand', 'HEL', 1, NULL),
(11, 1, 'Herat', 'HER', 1, NULL),
(12, 1, 'Jowzjan', 'JOW', 1, NULL),
(13, 1, 'Kabul', 'KAB', 1, NULL),
(14, 1, 'Kandahar', 'KAN', 1, NULL),
(15, 1, 'Kapisa', 'KAP', 1, NULL),
(16, 1, 'Khost', 'KHO', 1, NULL),
(17, 1, 'Konar', 'KNR', 1, NULL),
(18, 1, 'Kondoz', 'KDZ', 1, NULL),
(19, 1, 'Laghman', 'LAG', 1, NULL),
(20, 1, 'Lowgar', 'LOW', 1, NULL),
(21, 1, 'Nangrahar', 'NAN', 1, NULL),
(22, 1, 'Nimruz', 'NIM', 1, NULL),
(23, 1, 'Nurestan', 'NUR', 1, NULL),
(24, 1, 'Oruzgan', 'ORU', 1, NULL),
(25, 1, 'Paktia', 'PIA', 1, NULL),
(26, 1, 'Paktika', 'PKA', 1, NULL),
(27, 1, 'Parwan', 'PAR', 1, NULL),
(28, 1, 'Samangan', 'SAM', 1, NULL),
(29, 1, 'Sar-e Pol', 'SAR', 1, NULL),
(30, 1, 'Takhar', 'TAK', 1, NULL),
(31, 1, 'Wardak', 'WAR', 1, NULL),
(32, 1, 'Zabol', 'ZAB', 1, NULL),
(33, 2, 'Berat', 'BR', 1, NULL),
(34, 2, 'Bulqize', 'BU', 1, NULL),
(35, 2, 'Delvine', 'DL', 1, NULL),
(36, 2, 'Devoll', 'DV', 1, NULL),
(37, 2, 'Diber', 'DI', 1, NULL),
(38, 2, 'Durres', 'DR', 1, NULL),
(39, 2, 'Elbasan', 'EL', 1, NULL),
(40, 2, 'Kolonje', 'ER', 1, NULL),
(41, 2, 'Fier', 'FR', 1, NULL),
(42, 2, 'Gjirokaster', 'GJ', 1, NULL),
(43, 2, 'Gramsh', 'GR', 1, NULL),
(44, 2, 'Has', 'HA', 1, NULL),
(45, 2, 'Kavaje', 'KA', 1, NULL),
(46, 2, 'Kurbin', 'KB', 1, NULL),
(47, 2, 'Kucove', 'KC', 1, NULL),
(48, 2, 'Korce', 'KO', 1, NULL),
(49, 2, 'Kruje', 'KR', 1, NULL),
(50, 2, 'Kukes', 'KU', 1, NULL),
(51, 2, 'Librazhd', 'LB', 1, NULL),
(52, 2, 'Lezhe', 'LE', 1, NULL),
(53, 2, 'Lushnje', 'LU', 1, NULL),
(54, 2, 'Malesi e Madhe', 'MM', 1, NULL),
(55, 2, 'Mallakaster', 'MK', 1, NULL),
(56, 2, 'Mat', 'MT', 1, NULL),
(57, 2, 'Mirdite', 'MR', 1, NULL),
(58, 2, 'Peqin', 'PQ', 1, NULL),
(59, 2, 'Permet', 'PR', 1, NULL),
(60, 2, 'Pogradec', 'PG', 1, NULL),
(61, 2, 'Puke', 'PU', 1, NULL),
(62, 2, 'Shkoder', 'SH', 1, NULL),
(63, 2, 'Skrapar', 'SK', 1, NULL),
(64, 2, 'Sarande', 'SR', 1, NULL),
(65, 2, 'Tepelene', 'TE', 1, NULL),
(66, 2, 'Tropoje', 'TP', 1, NULL),
(67, 2, 'Tirane', 'TR', 1, NULL),
(68, 2, 'Vlore', 'VL', 1, NULL),
(69, 3, 'Adrar', 'ADR', 1, NULL),
(70, 3, 'Ain Defla', 'ADE', 1, NULL),
(71, 3, 'Ain Temouchent', 'ATE', 1, NULL),
(72, 3, 'Alger', 'ALG', 1, NULL),
(73, 3, 'Annaba', 'ANN', 1, NULL),
(74, 3, 'Batna', 'BAT', 1, NULL),
(75, 3, 'Bechar', 'BEC', 1, NULL),
(76, 3, 'Bejaia', 'BEJ', 1, NULL),
(77, 3, 'Biskra', 'BIS', 1, NULL),
(78, 3, 'Blida', 'BLI', 1, NULL),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1, NULL),
(80, 3, 'Bouira', 'BOA', 1, NULL),
(81, 3, 'Boumerdes', 'BMD', 1, NULL),
(82, 3, 'Chlef', 'CHL', 1, NULL),
(83, 3, 'Constantine', 'CON', 1, NULL),
(84, 3, 'Djelfa', 'DJE', 1, NULL),
(85, 3, 'El Bayadh', 'EBA', 1, NULL),
(86, 3, 'El Oued', 'EOU', 1, NULL),
(87, 3, 'El Tarf', 'ETA', 1, NULL),
(88, 3, 'Ghardaia', 'GHA', 1, NULL),
(89, 3, 'Guelma', 'GUE', 1, NULL),
(90, 3, 'Illizi', 'ILL', 1, NULL),
(91, 3, 'Jijel', 'JIJ', 1, NULL),
(92, 3, 'Khenchela', 'KHE', 1, NULL),
(93, 3, 'Laghouat', 'LAG', 1, NULL),
(94, 3, 'Muaskar', 'MUA', 1, NULL),
(95, 3, 'Medea', 'MED', 1, NULL),
(96, 3, 'Mila', 'MIL', 1, NULL),
(97, 3, 'Mostaganem', 'MOS', 1, NULL),
(98, 3, 'M''Sila', 'MSI', 1, NULL),
(99, 3, 'Naama', 'NAA', 1, NULL),
(100, 3, 'Oran', 'ORA', 1, NULL),
(101, 3, 'Ouargla', 'OUA', 1, NULL),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1, NULL),
(103, 3, 'Relizane', 'REL', 1, NULL),
(104, 3, 'Saida', 'SAI', 1, NULL),
(105, 3, 'Setif', 'SET', 1, NULL),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1, NULL),
(107, 3, 'Skikda', 'SKI', 1, NULL),
(108, 3, 'Souk Ahras', 'SAH', 1, NULL),
(109, 3, 'Tamanghasset', 'TAM', 1, NULL),
(110, 3, 'Tebessa', 'TEB', 1, NULL),
(111, 3, 'Tiaret', 'TIA', 1, NULL),
(112, 3, 'Tindouf', 'TIN', 1, NULL),
(113, 3, 'Tipaza', 'TIP', 1, NULL),
(114, 3, 'Tissemsilt', 'TIS', 1, NULL),
(115, 3, 'Tizi Ouzou', 'TOU', 1, NULL),
(116, 3, 'Tlemcen', 'TLE', 1, NULL),
(117, 4, 'Eastern', 'E', 1, NULL),
(118, 4, 'Manu''a', 'M', 1, NULL),
(119, 4, 'Rose Island', 'R', 1, NULL),
(120, 4, 'Swains Island', 'S', 1, NULL),
(121, 4, 'Western', 'W', 1, NULL),
(122, 5, 'Andorra la Vella', 'ALV', 1, NULL),
(123, 5, 'Canillo', 'CAN', 1, NULL),
(124, 5, 'Encamp', 'ENC', 1, NULL),
(125, 5, 'Escaldes-Engordany', 'ESE', 1, NULL),
(126, 5, 'La Massana', 'LMA', 1, NULL),
(127, 5, 'Ordino', 'ORD', 1, NULL),
(128, 5, 'Sant Julia de Loria', 'SJL', 1, NULL),
(129, 6, 'Bengo', 'BGO', 1, NULL),
(130, 6, 'Benguela', 'BGU', 1, NULL),
(131, 6, 'Bie', 'BIE', 1, NULL),
(132, 6, 'Cabinda', 'CAB', 1, NULL),
(133, 6, 'Cuando-Cubango', 'CCU', 1, NULL),
(134, 6, 'Cuanza Norte', 'CNO', 1, NULL),
(135, 6, 'Cuanza Sul', 'CUS', 1, NULL),
(136, 6, 'Cunene', 'CNN', 1, NULL),
(137, 6, 'Huambo', 'HUA', 1, NULL),
(138, 6, 'Huila', 'HUI', 1, NULL),
(139, 6, 'Luanda', 'LUA', 1, NULL),
(140, 6, 'Lunda Norte', 'LNO', 1, NULL),
(141, 6, 'Lunda Sul', 'LSU', 1, NULL),
(142, 6, 'Malange', 'MAL', 1, NULL),
(143, 6, 'Moxico', 'MOX', 1, NULL),
(144, 6, 'Namibe', 'NAM', 1, NULL),
(145, 6, 'Uige', 'UIG', 1, NULL),
(146, 6, 'Zaire', 'ZAI', 1, NULL),
(147, 9, 'Saint George', 'ASG', 1, NULL),
(148, 9, 'Saint John', 'ASJ', 1, NULL),
(149, 9, 'Saint Mary', 'ASM', 1, NULL),
(150, 9, 'Saint Paul', 'ASL', 1, NULL),
(151, 9, 'Saint Peter', 'ASR', 1, NULL),
(152, 9, 'Saint Philip', 'ASH', 1, NULL),
(153, 9, 'Barbuda', 'BAR', 1, NULL),
(154, 9, 'Redonda', 'RED', 1, NULL),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1, NULL),
(156, 10, 'Buenos Aires', 'BA', 1, NULL),
(157, 10, 'Catamarca', 'CA', 1, NULL),
(158, 10, 'Chaco', 'CH', 1, NULL),
(159, 10, 'Chubut', 'CU', 1, NULL),
(160, 10, 'Cordoba', 'CO', 1, NULL),
(161, 10, 'Corrientes', 'CR', 1, NULL),
(162, 10, 'Distrito Federal', 'DF', 1, NULL),
(163, 10, 'Entre Rios', 'ER', 1, NULL),
(164, 10, 'Formosa', 'FO', 1, NULL),
(165, 10, 'Jujuy', 'JU', 1, NULL),
(166, 10, 'La Pampa', 'LP', 1, NULL),
(167, 10, 'La Rioja', 'LR', 1, NULL),
(168, 10, 'Mendoza', 'ME', 1, NULL),
(169, 10, 'Misiones', 'MI', 1, NULL),
(170, 10, 'Neuquen', 'NE', 1, NULL),
(171, 10, 'Rio Negro', 'RN', 1, NULL),
(172, 10, 'Salta', 'SA', 1, NULL),
(173, 10, 'San Juan', 'SJ', 1, NULL),
(174, 10, 'San Luis', 'SL', 1, NULL),
(175, 10, 'Santa Cruz', 'SC', 1, NULL),
(176, 10, 'Santa Fe', 'SF', 1, NULL),
(177, 10, 'Santiago del Estero', 'SD', 1, NULL),
(178, 10, 'Tierra del Fuego', 'TF', 1, NULL),
(179, 10, 'Tucuman', 'TU', 1, NULL),
(180, 11, 'Aragatsotn', 'AGT', 1, NULL),
(181, 11, 'Ararat', 'ARR', 1, NULL),
(182, 11, 'Armavir', 'ARM', 1, NULL),
(183, 11, 'Geghark''unik''', 'GEG', 1, NULL),
(184, 11, 'Kotayk''', 'KOT', 1, NULL),
(185, 11, 'Lorri', 'LOR', 1, NULL),
(186, 11, 'Shirak', 'SHI', 1, NULL),
(187, 11, 'Syunik''', 'SYU', 1, NULL),
(188, 11, 'Tavush', 'TAV', 1, NULL),
(189, 11, 'Vayots'' Dzor', 'VAY', 1, NULL),
(190, 11, 'Yerevan', 'YER', 1, NULL),
(191, 13, 'Australian Capital Territory', 'ACT', 1, NULL),
(192, 13, 'New South Wales', 'NSW', 1, NULL),
(193, 13, 'Northern Territory', 'NT', 1, NULL),
(194, 13, 'Queensland', 'QLD', 1, NULL),
(195, 13, 'South Australia', 'SA', 1, NULL),
(196, 13, 'Tasmania', 'TAS', 1, NULL),
(197, 13, 'Victoria', 'VIC', 1, NULL),
(198, 13, 'Western Australia', 'WA', 1, NULL),
(199, 14, 'Burgenland', 'BUR', 1, NULL),
(200, 14, 'Kärnten', 'KAR', 1, NULL),
(201, 14, 'Niederösterreich', 'NOS', 1, NULL),
(202, 14, 'Oberösterreich', 'OOS', 1, NULL),
(203, 14, 'Salzburg', 'SAL', 1, NULL),
(204, 14, 'Steiermark', 'STE', 1, NULL),
(205, 14, 'Tirol', 'TIR', 1, NULL),
(206, 14, 'Vorarlberg', 'VOR', 1, NULL),
(207, 14, 'Wien', 'WIE', 1, NULL),
(208, 15, 'Ali Bayramli', 'AB', 1, NULL),
(209, 15, 'Abseron', 'ABS', 1, NULL),
(210, 15, 'AgcabAdi', 'AGC', 1, NULL),
(211, 15, 'Agdam', 'AGM', 1, NULL),
(212, 15, 'Agdas', 'AGS', 1, NULL),
(213, 15, 'Agstafa', 'AGA', 1, NULL),
(214, 15, 'Agsu', 'AGU', 1, NULL),
(215, 15, 'Astara', 'AST', 1, NULL),
(216, 15, 'Baki', 'BA', 1, NULL),
(217, 15, 'BabAk', 'BAB', 1, NULL),
(218, 15, 'BalakAn', 'BAL', 1, NULL),
(219, 15, 'BArdA', 'BAR', 1, NULL),
(220, 15, 'Beylaqan', 'BEY', 1, NULL),
(221, 15, 'Bilasuvar', 'BIL', 1, NULL),
(222, 15, 'Cabrayil', 'CAB', 1, NULL),
(223, 15, 'Calilabab', 'CAL', 1, NULL),
(224, 15, 'Culfa', 'CUL', 1, NULL),
(225, 15, 'Daskasan', 'DAS', 1, NULL),
(226, 15, 'Davaci', 'DAV', 1, NULL),
(227, 15, 'Fuzuli', 'FUZ', 1, NULL),
(228, 15, 'Ganca', 'GA', 1, NULL),
(229, 15, 'Gadabay', 'GAD', 1, NULL),
(230, 15, 'Goranboy', 'GOR', 1, NULL),
(231, 15, 'Goycay', 'GOY', 1, NULL),
(232, 15, 'Haciqabul', 'HAC', 1, NULL),
(233, 15, 'Imisli', 'IMI', 1, NULL),
(234, 15, 'Ismayilli', 'ISM', 1, NULL),
(235, 15, 'Kalbacar', 'KAL', 1, NULL),
(236, 15, 'Kurdamir', 'KUR', 1, NULL),
(237, 15, 'Lankaran', 'LA', 1, NULL),
(238, 15, 'Lacin', 'LAC', 1, NULL),
(239, 15, 'Lankaran', 'LAN', 1, NULL),
(240, 15, 'Lerik', 'LER', 1, NULL),
(241, 15, 'Masalli', 'MAS', 1, NULL),
(242, 15, 'Mingacevir', 'MI', 1, NULL),
(243, 15, 'Naftalan', 'NA', 1, NULL),
(244, 15, 'Neftcala', 'NEF', 1, NULL),
(245, 15, 'Oguz', 'OGU', 1, NULL),
(246, 15, 'Ordubad', 'ORD', 1, NULL),
(247, 15, 'Qabala', 'QAB', 1, NULL),
(248, 15, 'Qax', 'QAX', 1, NULL),
(249, 15, 'Qazax', 'QAZ', 1, NULL),
(250, 15, 'Qobustan', 'QOB', 1, NULL),
(251, 15, 'Quba', 'QBA', 1, NULL),
(252, 15, 'Qubadli', 'QBI', 1, NULL),
(253, 15, 'Qusar', 'QUS', 1, NULL),
(254, 15, 'Saki', 'SA', 1, NULL),
(255, 15, 'Saatli', 'SAT', 1, NULL),
(256, 15, 'Sabirabad', 'SAB', 1, NULL),
(257, 15, 'Sadarak', 'SAD', 1, NULL),
(258, 15, 'Sahbuz', 'SAH', 1, NULL),
(259, 15, 'Saki', 'SAK', 1, NULL),
(260, 15, 'Salyan', 'SAL', 1, NULL),
(261, 15, 'Sumqayit', 'SM', 1, NULL),
(262, 15, 'Samaxi', 'SMI', 1, NULL),
(263, 15, 'Samkir', 'SKR', 1, NULL),
(264, 15, 'Samux', 'SMX', 1, NULL),
(265, 15, 'Sarur', 'SAR', 1, NULL),
(266, 15, 'Siyazan', 'SIY', 1, NULL),
(267, 15, 'Susa', 'SS', 1, NULL),
(268, 15, 'Susa', 'SUS', 1, NULL),
(269, 15, 'Tartar', 'TAR', 1, NULL),
(270, 15, 'Tovuz', 'TOV', 1, NULL),
(271, 15, 'Ucar', 'UCA', 1, NULL),
(272, 15, 'Xankandi', 'XA', 1, NULL),
(273, 15, 'Xacmaz', 'XAC', 1, NULL),
(274, 15, 'Xanlar', 'XAN', 1, NULL),
(275, 15, 'Xizi', 'XIZ', 1, NULL),
(276, 15, 'Xocali', 'XCI', 1, NULL),
(277, 15, 'Xocavand', 'XVD', 1, NULL),
(278, 15, 'Yardimli', 'YAR', 1, NULL),
(279, 15, 'Yevlax', 'YEV', 1, NULL),
(280, 15, 'Zangilan', 'ZAN', 1, NULL),
(281, 15, 'Zaqatala', 'ZAQ', 1, NULL),
(282, 15, 'Zardab', 'ZAR', 1, NULL),
(283, 15, 'Naxcivan', 'NX', 1, NULL),
(284, 16, 'Acklins', 'ACK', 1, NULL),
(285, 16, 'Berry Islands', 'BER', 1, NULL),
(286, 16, 'Bimini', 'BIM', 1, NULL),
(287, 16, 'Black Point', 'BLK', 1, NULL),
(288, 16, 'Cat Island', 'CAT', 1, NULL),
(289, 16, 'Central Abaco', 'CAB', 1, NULL),
(290, 16, 'Central Andros', 'CAN', 1, NULL),
(291, 16, 'Central Eleuthera', 'CEL', 1, NULL),
(292, 16, 'City of Freeport', 'FRE', 1, NULL),
(293, 16, 'Crooked Island', 'CRO', 1, NULL),
(294, 16, 'East Grand Bahama', 'EGB', 1, NULL),
(295, 16, 'Exuma', 'EXU', 1, NULL),
(296, 16, 'Grand Cay', 'GRD', 1, NULL),
(297, 16, 'Harbour Island', 'HAR', 1, NULL),
(298, 16, 'Hope Town', 'HOP', 1, NULL),
(299, 16, 'Inagua', 'INA', 1, NULL),
(300, 16, 'Long Island', 'LNG', 1, NULL),
(301, 16, 'Mangrove Cay', 'MAN', 1, NULL),
(302, 16, 'Mayaguana', 'MAY', 1, NULL),
(303, 16, 'Moore''s Island', 'MOO', 1, NULL),
(304, 16, 'North Abaco', 'NAB', 1, NULL),
(305, 16, 'North Andros', 'NAN', 1, NULL),
(306, 16, 'North Eleuthera', 'NEL', 1, NULL),
(307, 16, 'Ragged Island', 'RAG', 1, NULL),
(308, 16, 'Rum Cay', 'RUM', 1, NULL),
(309, 16, 'San Salvador', 'SAL', 1, NULL),
(310, 16, 'South Abaco', 'SAB', 1, NULL),
(311, 16, 'South Andros', 'SAN', 1, NULL),
(312, 16, 'South Eleuthera', 'SEL', 1, NULL),
(313, 16, 'Spanish Wells', 'SWE', 1, NULL),
(314, 16, 'West Grand Bahama', 'WGB', 1, NULL),
(315, 17, 'Capital', 'CAP', 1, NULL),
(316, 17, 'Central', 'CEN', 1, NULL),
(317, 17, 'Muharraq', 'MUH', 1, NULL),
(318, 17, 'Northern', 'NOR', 1, NULL),
(319, 17, 'Southern', 'SOU', 1, NULL),
(320, 18, 'Barisal', 'BAR', 1, NULL),
(321, 18, 'Chittagong', 'CHI', 1, NULL),
(322, 18, 'Dhaka', 'DHA', 1, NULL),
(323, 18, 'Khulna', 'KHU', 1, NULL),
(324, 18, 'Rajshahi', 'RAJ', 1, NULL),
(325, 18, 'Sylhet', 'SYL', 1, NULL),
(326, 19, 'Christ Church', 'CC', 1, NULL),
(327, 19, 'Saint Andrew', 'AND', 1, NULL),
(328, 19, 'Saint George', 'GEO', 1, NULL),
(329, 19, 'Saint James', 'JAM', 1, NULL),
(330, 19, 'Saint John', 'JOH', 1, NULL),
(331, 19, 'Saint Joseph', 'JOS', 1, NULL),
(332, 19, 'Saint Lucy', 'LUC', 1, NULL),
(333, 19, 'Saint Michael', 'MIC', 1, NULL),
(334, 19, 'Saint Peter', 'PET', 1, NULL),
(335, 19, 'Saint Philip', 'PHI', 1, NULL),
(336, 19, 'Saint Thomas', 'THO', 1, NULL),
(337, 20, 'Brestskaya (Brest)', 'BR', 1, NULL),
(338, 20, 'Homyel''skaya (Homyel'')', 'HO', 1, NULL),
(339, 20, 'Horad Minsk', 'HM', 1, NULL),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1, NULL),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1, NULL),
(342, 20, 'Minskaya', 'MI', 1, NULL),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1, NULL),
(344, 21, 'Antwerpen', 'VAN', 1, NULL),
(345, 21, 'Brabant Wallon', 'WBR', 1, NULL),
(346, 21, 'Hainaut', 'WHT', 1, NULL),
(347, 21, 'Liège', 'WLG', 1, NULL),
(348, 21, 'Limburg', 'VLI', 1, NULL),
(349, 21, 'Luxembourg', 'WLX', 1, NULL),
(350, 21, 'Namur', 'WNA', 1, NULL),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1, NULL),
(352, 21, 'Vlaams Brabant', 'VBR', 1, NULL),
(353, 21, 'West-Vlaanderen', 'VWV', 1, NULL),
(354, 22, 'Belize', 'BZ', 1, NULL),
(355, 22, 'Cayo', 'CY', 1, NULL),
(356, 22, 'Corozal', 'CR', 1, NULL),
(357, 22, 'Orange Walk', 'OW', 1, NULL),
(358, 22, 'Stann Creek', 'SC', 1, NULL),
(359, 22, 'Toledo', 'TO', 1, NULL),
(360, 23, 'Alibori', 'AL', 1, NULL),
(361, 23, 'Atakora', 'AK', 1, NULL),
(362, 23, 'Atlantique', 'AQ', 1, NULL),
(363, 23, 'Borgou', 'BO', 1, NULL),
(364, 23, 'Collines', 'CO', 1, NULL),
(365, 23, 'Donga', 'DO', 1, NULL),
(366, 23, 'Kouffo', 'KO', 1, NULL),
(367, 23, 'Littoral', 'LI', 1, NULL),
(368, 23, 'Mono', 'MO', 1, NULL),
(369, 23, 'Oueme', 'OU', 1, NULL),
(370, 23, 'Plateau', 'PL', 1, NULL),
(371, 23, 'Zou', 'ZO', 1, NULL),
(372, 24, 'Devonshire', 'DS', 1, NULL),
(373, 24, 'Hamilton City', 'HC', 1, NULL),
(374, 24, 'Hamilton', 'HA', 1, NULL),
(375, 24, 'Paget', 'PG', 1, NULL),
(376, 24, 'Pembroke', 'PB', 1, NULL),
(377, 24, 'Saint George City', 'GC', 1, NULL),
(378, 24, 'Saint George''s', 'SG', 1, NULL),
(379, 24, 'Sandys', 'SA', 1, NULL),
(380, 24, 'Smith''s', 'SM', 1, NULL),
(381, 24, 'Southampton', 'SH', 1, NULL),
(382, 24, 'Warwick', 'WA', 1, NULL),
(383, 25, 'Bumthang', 'BUM', 1, NULL),
(384, 25, 'Chukha', 'CHU', 1, NULL),
(385, 25, 'Dagana', 'DAG', 1, NULL),
(386, 25, 'Gasa', 'GAS', 1, NULL),
(387, 25, 'Haa', 'HAA', 1, NULL),
(388, 25, 'Lhuntse', 'LHU', 1, NULL),
(389, 25, 'Mongar', 'MON', 1, NULL),
(390, 25, 'Paro', 'PAR', 1, NULL),
(391, 25, 'Pemagatshel', 'PEM', 1, NULL),
(392, 25, 'Punakha', 'PUN', 1, NULL),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1, NULL),
(394, 25, 'Samtse', 'SAT', 1, NULL),
(395, 25, 'Sarpang', 'SAR', 1, NULL),
(396, 25, 'Thimphu', 'THI', 1, NULL),
(397, 25, 'Trashigang', 'TRG', 1, NULL),
(398, 25, 'Trashiyangste', 'TRY', 1, NULL),
(399, 25, 'Trongsa', 'TRO', 1, NULL),
(400, 25, 'Tsirang', 'TSI', 1, NULL),
(401, 25, 'Wangdue Phodrang', 'WPH', 1, NULL),
(402, 25, 'Zhemgang', 'ZHE', 1, NULL),
(403, 26, 'Beni', 'BEN', 1, NULL),
(404, 26, 'Chuquisaca', 'CHU', 1, NULL),
(405, 26, 'Cochabamba', 'COC', 1, NULL),
(406, 26, 'La Paz', 'LPZ', 1, NULL),
(407, 26, 'Oruro', 'ORU', 1, NULL),
(408, 26, 'Pando', 'PAN', 1, NULL),
(409, 26, 'Potosi', 'POT', 1, NULL),
(410, 26, 'Santa Cruz', 'SCZ', 1, NULL),
(411, 26, 'Tarija', 'TAR', 1, NULL),
(412, 27, 'Brcko district', 'BRO', 1, NULL),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1, NULL),
(414, 27, 'Posavski Kanton', 'FPO', 1, NULL),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1, NULL),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1, NULL),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1, NULL),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1, NULL),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1, NULL),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1, NULL),
(421, 27, 'Kanton Sarajevo', 'FSA', 1, NULL),
(422, 27, 'Zapadnobosanska', 'FZA', 1, NULL),
(423, 27, 'Banja Luka', 'SBL', 1, NULL),
(424, 27, 'Doboj', 'SDO', 1, NULL),
(425, 27, 'Bijeljina', 'SBI', 1, NULL),
(426, 27, 'Vlasenica', 'SVL', 1, NULL),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1, NULL),
(428, 27, 'Foca', 'SFO', 1, NULL),
(429, 27, 'Trebinje', 'STR', 1, NULL),
(430, 28, 'Central', 'CE', 1, NULL),
(431, 28, 'Ghanzi', 'GH', 1, NULL),
(432, 28, 'Kgalagadi', 'KD', 1, NULL),
(433, 28, 'Kgatleng', 'KT', 1, NULL),
(434, 28, 'Kweneng', 'KW', 1, NULL),
(435, 28, 'Ngamiland', 'NG', 1, NULL),
(436, 28, 'North East', 'NE', 1, NULL),
(437, 28, 'North West', 'NW', 1, NULL),
(438, 28, 'South East', 'SE', 1, NULL),
(439, 28, 'Southern', 'SO', 1, NULL),
(440, 30, 'Acre', 'AC', 1, NULL),
(441, 30, 'Alagoas', 'AL', 1, NULL),
(442, 30, 'Amapá', 'AP', 1, NULL),
(443, 30, 'Amazonas', 'AM', 1, NULL),
(444, 30, 'Bahia', 'BA', 1, NULL),
(445, 30, 'Ceará', 'CE', 1, NULL),
(446, 30, 'Distrito Federal', 'DF', 1, NULL),
(447, 30, 'Espírito Santo', 'ES', 1, NULL),
(448, 30, 'Goiás', 'GO', 1, NULL),
(449, 30, 'Maranhão', 'MA', 1, NULL),
(450, 30, 'Mato Grosso', 'MT', 1, NULL),
(451, 30, 'Mato Grosso do Sul', 'MS', 1, NULL),
(452, 30, 'Minas Gerais', 'MG', 1, NULL),
(453, 30, 'Pará', 'PA', 1, NULL),
(454, 30, 'Paraíba', 'PB', 1, NULL),
(455, 30, 'Paraná', 'PR', 1, NULL),
(456, 30, 'Pernambuco', 'PE', 1, NULL),
(457, 30, 'Piauí', 'PI', 1, NULL),
(458, 30, 'Rio de Janeiro', 'RJ', 1, NULL),
(459, 30, 'Rio Grande do Norte', 'RN', 1, NULL),
(460, 30, 'Rio Grande do Sul', 'RS', 1, NULL),
(461, 30, 'Rondônia', 'RO', 1, NULL),
(462, 30, 'Roraima', 'RR', 1, NULL),
(463, 30, 'Santa Catarina', 'SC', 1, NULL),
(464, 30, 'São Paulo', 'SP', 1, NULL),
(465, 30, 'Sergipe', 'SE', 1, NULL),
(466, 30, 'Tocantins', 'TO', 1, NULL),
(467, 31, 'Peros Banhos', 'PB', 1, NULL),
(468, 31, 'Salomon Islands', 'SI', 1, NULL),
(469, 31, 'Nelsons Island', 'NI', 1, NULL),
(470, 31, 'Three Brothers', 'TB', 1, NULL),
(471, 31, 'Eagle Islands', 'EA', 1, NULL),
(472, 31, 'Danger Island', 'DI', 1, NULL),
(473, 31, 'Egmont Islands', 'EG', 1, NULL),
(474, 31, 'Diego Garcia', 'DG', 1, NULL),
(475, 32, 'Belait', 'BEL', 1, NULL),
(476, 32, 'Brunei and Muara', 'BRM', 1, NULL),
(477, 32, 'Temburong', 'TEM', 1, NULL),
(478, 32, 'Tutong', 'TUT', 1, NULL),
(479, 33, 'Blagoevgrad', '', 1, NULL),
(480, 33, 'Burgas', '', 1, NULL),
(481, 33, 'Dobrich', '', 1, NULL),
(482, 33, 'Gabrovo', '', 1, NULL),
(483, 33, 'Haskovo', '', 1, NULL),
(484, 33, 'Kardjali', '', 1, NULL),
(485, 33, 'Kyustendil', '', 1, NULL),
(486, 33, 'Lovech', '', 1, NULL),
(487, 33, 'Montana', '', 1, NULL),
(488, 33, 'Pazardjik', '', 1, NULL),
(489, 33, 'Pernik', '', 1, NULL),
(490, 33, 'Pleven', '', 1, NULL),
(491, 33, 'Plovdiv', '', 1, NULL),
(492, 33, 'Razgrad', '', 1, NULL),
(493, 33, 'Shumen', '', 1, NULL),
(494, 33, 'Silistra', '', 1, NULL),
(495, 33, 'Sliven', '', 1, NULL),
(496, 33, 'Smolyan', '', 1, NULL),
(497, 33, 'Sofia', '', 1, NULL),
(498, 33, 'Sofia - town', '', 1, NULL),
(499, 33, 'Stara Zagora', '', 1, NULL),
(500, 33, 'Targovishte', '', 1, NULL),
(501, 33, 'Varna', '', 1, NULL),
(502, 33, 'Veliko Tarnovo', '', 1, NULL),
(503, 33, 'Vidin', '', 1, NULL),
(504, 33, 'Vratza', '', 1, NULL),
(505, 33, 'Yambol', '', 1, NULL),
(506, 34, 'Bale', 'BAL', 1, NULL),
(507, 34, 'Bam', 'BAM', 1, NULL),
(508, 34, 'Banwa', 'BAN', 1, NULL),
(509, 34, 'Bazega', 'BAZ', 1, NULL),
(510, 34, 'Bougouriba', 'BOR', 1, NULL),
(511, 34, 'Boulgou', 'BLG', 1, NULL),
(512, 34, 'Boulkiemde', 'BOK', 1, NULL),
(513, 34, 'Comoe', 'COM', 1, NULL),
(514, 34, 'Ganzourgou', 'GAN', 1, NULL),
(515, 34, 'Gnagna', 'GNA', 1, NULL),
(516, 34, 'Gourma', 'GOU', 1, NULL),
(517, 34, 'Houet', 'HOU', 1, NULL),
(518, 34, 'Ioba', 'IOA', 1, NULL),
(519, 34, 'Kadiogo', 'KAD', 1, NULL),
(520, 34, 'Kenedougou', 'KEN', 1, NULL),
(521, 34, 'Komondjari', 'KOD', 1, NULL),
(522, 34, 'Kompienga', 'KOP', 1, NULL),
(523, 34, 'Kossi', 'KOS', 1, NULL),
(524, 34, 'Koulpelogo', 'KOL', 1, NULL),
(525, 34, 'Kouritenga', 'KOT', 1, NULL),
(526, 34, 'Kourweogo', 'KOW', 1, NULL),
(527, 34, 'Leraba', 'LER', 1, NULL),
(528, 34, 'Loroum', 'LOR', 1, NULL),
(529, 34, 'Mouhoun', 'MOU', 1, NULL),
(530, 34, 'Nahouri', 'NAH', 1, NULL),
(531, 34, 'Namentenga', 'NAM', 1, NULL),
(532, 34, 'Nayala', 'NAY', 1, NULL),
(533, 34, 'Noumbiel', 'NOU', 1, NULL),
(534, 34, 'Oubritenga', 'OUB', 1, NULL),
(535, 34, 'Oudalan', 'OUD', 1, NULL),
(536, 34, 'Passore', 'PAS', 1, NULL),
(537, 34, 'Poni', 'PON', 1, NULL),
(538, 34, 'Sanguie', 'SAG', 1, NULL),
(539, 34, 'Sanmatenga', 'SAM', 1, NULL),
(540, 34, 'Seno', 'SEN', 1, NULL),
(541, 34, 'Sissili', 'SIS', 1, NULL),
(542, 34, 'Soum', 'SOM', 1, NULL),
(543, 34, 'Sourou', 'SOR', 1, NULL),
(544, 34, 'Tapoa', 'TAP', 1, NULL),
(545, 34, 'Tuy', 'TUY', 1, NULL),
(546, 34, 'Yagha', 'YAG', 1, NULL),
(547, 34, 'Yatenga', 'YAT', 1, NULL),
(548, 34, 'Ziro', 'ZIR', 1, NULL),
(549, 34, 'Zondoma', 'ZOD', 1, NULL),
(550, 34, 'Zoundweogo', 'ZOW', 1, NULL),
(551, 35, 'Bubanza', 'BB', 1, NULL),
(552, 35, 'Bujumbura', 'BJ', 1, NULL),
(553, 35, 'Bururi', 'BR', 1, NULL),
(554, 35, 'Cankuzo', 'CA', 1, NULL),
(555, 35, 'Cibitoke', 'CI', 1, NULL),
(556, 35, 'Gitega', 'GI', 1, NULL),
(557, 35, 'Karuzi', 'KR', 1, NULL),
(558, 35, 'Kayanza', 'KY', 1, NULL),
(559, 35, 'Kirundo', 'KI', 1, NULL),
(560, 35, 'Makamba', 'MA', 1, NULL),
(561, 35, 'Muramvya', 'MU', 1, NULL),
(562, 35, 'Muyinga', 'MY', 1, NULL),
(563, 35, 'Mwaro', 'MW', 1, NULL),
(564, 35, 'Ngozi', 'NG', 1, NULL),
(565, 35, 'Rutana', 'RT', 1, NULL),
(566, 35, 'Ruyigi', 'RY', 1, NULL),
(567, 36, 'Phnom Penh', 'PP', 1, NULL),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1, NULL),
(569, 36, 'Pailin', 'PA', 1, NULL),
(570, 36, 'Keb', 'KB', 1, NULL),
(571, 36, 'Banteay Meanchey', 'BM', 1, NULL),
(572, 36, 'Battambang', 'BA', 1, NULL),
(573, 36, 'Kampong Cham', 'KM', 1, NULL),
(574, 36, 'Kampong Chhnang', 'KN', 1, NULL),
(575, 36, 'Kampong Speu', 'KU', 1, NULL),
(576, 36, 'Kampong Som', 'KO', 1, NULL),
(577, 36, 'Kampong Thom', 'KT', 1, NULL),
(578, 36, 'Kampot', 'KP', 1, NULL),
(579, 36, 'Kandal', 'KL', 1, NULL),
(580, 36, 'Kaoh Kong', 'KK', 1, NULL),
(581, 36, 'Kratie', 'KR', 1, NULL),
(582, 36, 'Mondul Kiri', 'MK', 1, NULL),
(583, 36, 'Oddar Meancheay', 'OM', 1, NULL),
(584, 36, 'Pursat', 'PU', 1, NULL),
(585, 36, 'Preah Vihear', 'PR', 1, NULL),
(586, 36, 'Prey Veng', 'PG', 1, NULL),
(587, 36, 'Ratanak Kiri', 'RK', 1, NULL),
(588, 36, 'Siemreap', 'SI', 1, NULL),
(589, 36, 'Stung Treng', 'ST', 1, NULL),
(590, 36, 'Svay Rieng', 'SR', 1, NULL),
(591, 36, 'Takeo', 'TK', 1, NULL),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1, NULL),
(593, 37, 'Centre', 'CEN', 1, NULL),
(594, 37, 'East (Est)', 'EST', 1, NULL),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1, NULL),
(596, 37, 'Littoral', 'LIT', 1, NULL),
(597, 37, 'North (Nord)', 'NOR', 1, NULL),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1, NULL),
(599, 37, 'West (Ouest)', 'OUE', 1, NULL),
(600, 37, 'South (Sud)', 'SUD', 1, NULL),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1, NULL),
(602, 38, 'Alberta', 'AB', 1, NULL),
(603, 38, 'British Columbia', 'BC', 1, NULL),
(604, 38, 'Manitoba', 'MB', 1, NULL),
(605, 38, 'New Brunswick', 'NB', 1, NULL),
(606, 38, 'Newfoundland and Labrador', 'NL', 1, NULL),
(607, 38, 'Northwest Territories', 'NT', 1, NULL),
(608, 38, 'Nova Scotia', 'NS', 1, NULL),
(609, 38, 'Nunavut', 'NU', 1, NULL),
(610, 38, 'Ontario', 'ON', 1, NULL),
(611, 38, 'Prince Edward Island', 'PE', 1, NULL),
(612, 38, 'Qu&eacute;bec', 'QC', 1, NULL),
(613, 38, 'Saskatchewan', 'SK', 1, NULL),
(614, 38, 'Yukon Territory', 'YT', 1, NULL),
(615, 39, 'Boa Vista', 'BV', 1, NULL),
(616, 39, 'Brava', 'BR', 1, NULL),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1, NULL),
(618, 39, 'Maio', 'MA', 1, NULL),
(619, 39, 'Mosteiros', 'MO', 1, NULL),
(620, 39, 'Paul', 'PA', 1, NULL),
(621, 39, 'Porto Novo', 'PN', 1, NULL),
(622, 39, 'Praia', 'PR', 1, NULL),
(623, 39, 'Ribeira Grande', 'RG', 1, NULL),
(624, 39, 'Sal', 'SL', 1, NULL),
(625, 39, 'Santa Catarina', 'CA', 1, NULL),
(626, 39, 'Santa Cruz', 'CR', 1, NULL),
(627, 39, 'Sao Domingos', 'SD', 1, NULL),
(628, 39, 'Sao Filipe', 'SF', 1, NULL),
(629, 39, 'Sao Nicolau', 'SN', 1, NULL),
(630, 39, 'Sao Vicente', 'SV', 1, NULL),
(631, 39, 'Tarrafal', 'TA', 1, NULL),
(632, 40, 'Creek', 'CR', 1, NULL),
(633, 40, 'Eastern', 'EA', 1, NULL),
(634, 40, 'Midland', 'ML', 1, NULL),
(635, 40, 'South Town', 'ST', 1, NULL),
(636, 40, 'Spot Bay', 'SP', 1, NULL),
(637, 40, 'Stake Bay', 'SK', 1, NULL),
(638, 40, 'West End', 'WD', 1, NULL),
(639, 40, 'Western', 'WN', 1, NULL),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1, NULL),
(641, 41, 'Basse-Kotto', 'BKO', 1, NULL),
(642, 41, 'Haute-Kotto', 'HKO', 1, NULL),
(643, 41, 'Haut-Mbomou', 'HMB', 1, NULL),
(644, 41, 'Kemo', 'KEM', 1, NULL),
(645, 41, 'Lobaye', 'LOB', 1, NULL),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1, NULL),
(647, 41, 'Mbomou', 'MBO', 1, NULL),
(648, 41, 'Nana-Mambere', 'NMM', 1, NULL),
(649, 41, 'Ombella-M''Poko', 'OMP', 1, NULL),
(650, 41, 'Ouaka', 'OUK', 1, NULL),
(651, 41, 'Ouham', 'OUH', 1, NULL),
(652, 41, 'Ouham-Pende', 'OPE', 1, NULL),
(653, 41, 'Vakaga', 'VAK', 1, NULL),
(654, 41, 'Nana-Grebizi', 'NGR', 1, NULL),
(655, 41, 'Sangha-Mbaere', 'SMB', 1, NULL),
(656, 41, 'Bangui', 'BAN', 1, NULL),
(657, 42, 'Batha', 'BA', 1, NULL),
(658, 42, 'Biltine', 'BI', 1, NULL),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1, NULL),
(660, 42, 'Chari-Baguirmi', 'CB', 1, NULL),
(661, 42, 'Guera', 'GU', 1, NULL),
(662, 42, 'Kanem', 'KA', 1, NULL),
(663, 42, 'Lac', 'LA', 1, NULL),
(664, 42, 'Logone Occidental', 'LC', 1, NULL),
(665, 42, 'Logone Oriental', 'LR', 1, NULL),
(666, 42, 'Mayo-Kebbi', 'MK', 1, NULL),
(667, 42, 'Moyen-Chari', 'MC', 1, NULL),
(668, 42, 'Ouaddai', 'OU', 1, NULL),
(669, 42, 'Salamat', 'SA', 1, NULL),
(670, 42, 'Tandjile', 'TA', 1, NULL),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1, NULL),
(672, 43, 'Antofagasta', 'AN', 1, NULL),
(673, 43, 'Araucania', 'AR', 1, NULL),
(674, 43, 'Atacama', 'AT', 1, NULL),
(675, 43, 'Bio-Bio', 'BI', 1, NULL),
(676, 43, 'Coquimbo', 'CO', 1, NULL),
(677, 43, 'Libertador General Bernardo O''Higgins', 'LI', 1, NULL),
(678, 43, 'Los Lagos', 'LL', 1, NULL),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1, NULL),
(680, 43, 'Maule', 'ML', 1, NULL),
(681, 43, 'Region Metropolitana', 'RM', 1, NULL),
(682, 43, 'Tarapaca', 'TA', 1, NULL),
(683, 43, 'Valparaiso', 'VS', 1, NULL),
(684, 44, 'Anhui', 'AN', 1, NULL),
(685, 44, 'Beijing', 'BE', 1, NULL),
(686, 44, 'Chongqing', 'CH', 1, NULL),
(687, 44, 'Fujian', 'FU', 1, NULL),
(688, 44, 'Gansu', 'GA', 1, NULL),
(689, 44, 'Guangdong', 'GU', 1, NULL),
(690, 44, 'Guangxi', 'GX', 1, NULL),
(691, 44, 'Guizhou', 'GZ', 1, NULL),
(692, 44, 'Hainan', 'HA', 1, NULL),
(693, 44, 'Hebei', 'HB', 1, NULL),
(694, 44, 'Heilongjiang', 'HL', 1, NULL),
(695, 44, 'Henan', 'HE', 1, NULL),
(696, 44, 'Hong Kong', 'HK', 1, NULL),
(697, 44, 'Hubei', 'HU', 1, NULL),
(698, 44, 'Hunan', 'HN', 1, NULL),
(699, 44, 'Inner Mongolia', 'IM', 1, NULL),
(700, 44, 'Jiangsu', 'JI', 1, NULL),
(701, 44, 'Jiangxi', 'JX', 1, NULL),
(702, 44, 'Jilin', 'JL', 1, NULL),
(703, 44, 'Liaoning', 'LI', 1, NULL),
(704, 44, 'Macau', 'MA', 1, NULL),
(705, 44, 'Ningxia', 'NI', 1, NULL),
(706, 44, 'Shaanxi', 'SH', 1, NULL),
(707, 44, 'Shandong', 'SA', 1, NULL),
(708, 44, 'Shanghai', 'SG', 1, NULL),
(709, 44, 'Shanxi', 'SX', 1, NULL),
(710, 44, 'Sichuan', 'SI', 1, NULL),
(711, 44, 'Tianjin', 'TI', 1, NULL),
(712, 44, 'Xinjiang', 'XI', 1, NULL),
(713, 44, 'Yunnan', 'YU', 1, NULL),
(714, 44, 'Zhejiang', 'ZH', 1, NULL),
(715, 46, 'Direction Island', 'D', 1, NULL),
(716, 46, 'Home Island', 'H', 1, NULL),
(717, 46, 'Horsburgh Island', 'O', 1, NULL),
(718, 46, 'South Island', 'S', 1, NULL),
(719, 46, 'West Island', 'W', 1, NULL),
(720, 47, 'Amazonas', 'AMZ', 1, NULL),
(721, 47, 'Antioquia', 'ANT', 1, NULL),
(722, 47, 'Arauca', 'ARA', 1, NULL),
(723, 47, 'Atlantico', 'ATL', 1, NULL),
(724, 47, 'Bogota D.C.', 'BDC', 1, NULL),
(725, 47, 'Bolivar', 'BOL', 1, NULL),
(726, 47, 'Boyaca', 'BOY', 1, NULL),
(727, 47, 'Caldas', 'CAL', 1, NULL),
(728, 47, 'Caqueta', 'CAQ', 1, NULL),
(729, 47, 'Casanare', 'CAS', 1, NULL),
(730, 47, 'Cauca', 'CAU', 1, NULL),
(731, 47, 'Cesar', 'CES', 1, NULL),
(732, 47, 'Choco', 'CHO', 1, NULL),
(733, 47, 'Cordoba', 'COR', 1, NULL),
(734, 47, 'Cundinamarca', 'CAM', 1, NULL),
(735, 47, 'Guainia', 'GNA', 1, NULL),
(736, 47, 'Guajira', 'GJR', 1, NULL),
(737, 47, 'Guaviare', 'GVR', 1, NULL),
(738, 47, 'Huila', 'HUI', 1, NULL),
(739, 47, 'Magdalena', 'MAG', 1, NULL),
(740, 47, 'Meta', 'MET', 1, NULL),
(741, 47, 'Narino', 'NAR', 1, NULL),
(742, 47, 'Norte de Santander', 'NDS', 1, NULL),
(743, 47, 'Putumayo', 'PUT', 1, NULL),
(744, 47, 'Quindio', 'QUI', 1, NULL),
(745, 47, 'Risaralda', 'RIS', 1, NULL),
(746, 47, 'San Andres y Providencia', 'SAP', 1, NULL),
(747, 47, 'Santander', 'SAN', 1, NULL),
(748, 47, 'Sucre', 'SUC', 1, NULL),
(749, 47, 'Tolima', 'TOL', 1, NULL),
(750, 47, 'Valle del Cauca', 'VDC', 1, NULL),
(751, 47, 'Vaupes', 'VAU', 1, NULL),
(752, 47, 'Vichada', 'VIC', 1, NULL),
(753, 48, 'Grande Comore', 'G', 1, NULL),
(754, 48, 'Anjouan', 'A', 1, NULL),
(755, 48, 'Moheli', 'M', 1, NULL),
(756, 49, 'Bouenza', 'BO', 1, NULL),
(757, 49, 'Brazzaville', 'BR', 1, NULL),
(758, 49, 'Cuvette', 'CU', 1, NULL),
(759, 49, 'Cuvette-Ouest', 'CO', 1, NULL),
(760, 49, 'Kouilou', 'KO', 1, NULL),
(761, 49, 'Lekoumou', 'LE', 1, NULL),
(762, 49, 'Likouala', 'LI', 1, NULL),
(763, 49, 'Niari', 'NI', 1, NULL),
(764, 49, 'Plateaux', 'PL', 1, NULL),
(765, 49, 'Pool', 'PO', 1, NULL),
(766, 49, 'Sangha', 'SA', 1, NULL),
(767, 50, 'Pukapuka', 'PU', 1, NULL),
(768, 50, 'Rakahanga', 'RK', 1, NULL),
(769, 50, 'Manihiki', 'MK', 1, NULL),
(770, 50, 'Penrhyn', 'PE', 1, NULL),
(771, 50, 'Nassau Island', 'NI', 1, NULL),
(772, 50, 'Surwarrow', 'SU', 1, NULL),
(773, 50, 'Palmerston', 'PA', 1, NULL),
(774, 50, 'Aitutaki', 'AI', 1, NULL),
(775, 50, 'Manuae', 'MA', 1, NULL),
(776, 50, 'Takutea', 'TA', 1, NULL),
(777, 50, 'Mitiaro', 'MT', 1, NULL),
(778, 50, 'Atiu', 'AT', 1, NULL),
(779, 50, 'Mauke', 'MU', 1, NULL),
(780, 50, 'Rarotonga', 'RR', 1, NULL),
(781, 50, 'Mangaia', 'MG', 1, NULL),
(782, 51, 'Alajuela', 'AL', 1, NULL),
(783, 51, 'Cartago', 'CA', 1, NULL),
(784, 51, 'Guanacaste', 'GU', 1, NULL),
(785, 51, 'Heredia', 'HE', 1, NULL),
(786, 51, 'Limon', 'LI', 1, NULL),
(787, 51, 'Puntarenas', 'PU', 1, NULL),
(788, 51, 'San Jose', 'SJ', 1, NULL),
(789, 52, 'Abengourou', 'ABE', 1, NULL),
(790, 52, 'Abidjan', 'ABI', 1, NULL),
(791, 52, 'Aboisso', 'ABO', 1, NULL),
(792, 52, 'Adiake', 'ADI', 1, NULL),
(793, 52, 'Adzope', 'ADZ', 1, NULL),
(794, 52, 'Agboville', 'AGB', 1, NULL),
(795, 52, 'Agnibilekrou', 'AGN', 1, NULL),
(796, 52, 'Alepe', 'ALE', 1, NULL),
(797, 52, 'Bocanda', 'BOC', 1, NULL),
(798, 52, 'Bangolo', 'BAN', 1, NULL),
(799, 52, 'Beoumi', 'BEO', 1, NULL),
(800, 52, 'Biankouma', 'BIA', 1, NULL),
(801, 52, 'Bondoukou', 'BDK', 1, NULL),
(802, 52, 'Bongouanou', 'BGN', 1, NULL),
(803, 52, 'Bouafle', 'BFL', 1, NULL),
(804, 52, 'Bouake', 'BKE', 1, NULL),
(805, 52, 'Bouna', 'BNA', 1, NULL),
(806, 52, 'Boundiali', 'BDL', 1, NULL),
(807, 52, 'Dabakala', 'DKL', 1, NULL),
(808, 52, 'Dabou', 'DBU', 1, NULL),
(809, 52, 'Daloa', 'DAL', 1, NULL),
(810, 52, 'Danane', 'DAN', 1, NULL),
(811, 52, 'Daoukro', 'DAO', 1, NULL),
(812, 52, 'Dimbokro', 'DIM', 1, NULL),
(813, 52, 'Divo', 'DIV', 1, NULL),
(814, 52, 'Duekoue', 'DUE', 1, NULL),
(815, 52, 'Ferkessedougou', 'FER', 1, NULL),
(816, 52, 'Gagnoa', 'GAG', 1, NULL),
(817, 52, 'Grand-Bassam', 'GBA', 1, NULL),
(818, 52, 'Grand-Lahou', 'GLA', 1, NULL),
(819, 52, 'Guiglo', 'GUI', 1, NULL),
(820, 52, 'Issia', 'ISS', 1, NULL),
(821, 52, 'Jacqueville', 'JAC', 1, NULL),
(822, 52, 'Katiola', 'KAT', 1, NULL),
(823, 52, 'Korhogo', 'KOR', 1, NULL),
(824, 52, 'Lakota', 'LAK', 1, NULL),
(825, 52, 'Man', 'MAN', 1, NULL),
(826, 52, 'Mankono', 'MKN', 1, NULL),
(827, 52, 'Mbahiakro', 'MBA', 1, NULL),
(828, 52, 'Odienne', 'ODI', 1, NULL),
(829, 52, 'Oume', 'OUM', 1, NULL),
(830, 52, 'Sakassou', 'SAK', 1, NULL),
(831, 52, 'San-Pedro', 'SPE', 1, NULL),
(832, 52, 'Sassandra', 'SAS', 1, NULL),
(833, 52, 'Seguela', 'SEG', 1, NULL),
(834, 52, 'Sinfra', 'SIN', 1, NULL),
(835, 52, 'Soubre', 'SOU', 1, NULL),
(836, 52, 'Tabou', 'TAB', 1, NULL),
(837, 52, 'Tanda', 'TAN', 1, NULL),
(838, 52, 'Tiebissou', 'TIE', 1, NULL),
(839, 52, 'Tingrela', 'TIN', 1, NULL),
(840, 52, 'Tiassale', 'TIA', 1, NULL),
(841, 52, 'Touba', 'TBA', 1, NULL),
(842, 52, 'Toulepleu', 'TLP', 1, NULL),
(843, 52, 'Toumodi', 'TMD', 1, NULL),
(844, 52, 'Vavoua', 'VAV', 1, NULL),
(845, 52, 'Yamoussoukro', 'YAM', 1, NULL),
(846, 52, 'Zuenoula', 'ZUE', 1, NULL),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1, NULL),
(848, 53, 'Grad Zagreb', 'GZ', 1, NULL),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1, NULL),
(850, 53, 'Istarska', 'IS', 1, NULL),
(851, 53, 'Karlovačka', 'KA', 1, NULL),
(852, 53, 'Koprivničko-križevačka', 'KK', 1, NULL),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1, NULL),
(854, 53, 'Ličko-senjska', 'LS', 1, NULL),
(855, 53, 'Međimurska', 'ME', 1, NULL),
(856, 53, 'Osječko-baranjska', 'OB', 1, NULL),
(857, 53, 'Požeško-slavonska', 'PS', 1, NULL),
(858, 53, 'Primorsko-goranska', 'PG', 1, NULL),
(859, 53, 'Šibensko-kninska', 'SK', 1, NULL),
(860, 53, 'Sisačko-moslavačka', 'SM', 1, NULL),
(861, 53, 'Brodsko-posavska', 'BP', 1, NULL),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1, NULL),
(863, 53, 'Varaždinska', 'VA', 1, NULL),
(864, 53, 'Virovitičko-podravska', 'VP', 1, NULL),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1, NULL),
(866, 53, 'Zadarska', 'ZA', 1, NULL),
(867, 53, 'Zagrebačka', 'ZG', 1, NULL),
(868, 54, 'Camaguey', 'CA', 1, NULL),
(869, 54, 'Ciego de Avila', 'CD', 1, NULL),
(870, 54, 'Cienfuegos', 'CI', 1, NULL),
(871, 54, 'Ciudad de La Habana', 'CH', 1, NULL),
(872, 54, 'Granma', 'GR', 1, NULL),
(873, 54, 'Guantanamo', 'GU', 1, NULL),
(874, 54, 'Holguin', 'HO', 1, NULL),
(875, 54, 'Isla de la Juventud', 'IJ', 1, NULL),
(876, 54, 'La Habana', 'LH', 1, NULL),
(877, 54, 'Las Tunas', 'LT', 1, NULL),
(878, 54, 'Matanzas', 'MA', 1, NULL),
(879, 54, 'Pinar del Rio', 'PR', 1, NULL),
(880, 54, 'Sancti Spiritus', 'SS', 1, NULL),
(881, 54, 'Santiago de Cuba', 'SC', 1, NULL),
(882, 54, 'Villa Clara', 'VC', 1, NULL),
(883, 55, 'Famagusta', 'F', 1, NULL),
(884, 55, 'Kyrenia', 'K', 1, NULL),
(885, 55, 'Larnaca', 'A', 1, NULL),
(886, 55, 'Limassol', 'I', 1, NULL),
(887, 55, 'Nicosia', 'N', 1, NULL),
(888, 55, 'Paphos', 'P', 1, NULL),
(889, 56, 'Ústecký', 'U', 1, NULL),
(890, 56, 'Jihočeský', 'C', 1, NULL),
(891, 56, 'Jihomoravský', 'B', 1, NULL),
(892, 56, 'Karlovarský', 'K', 1, NULL),
(893, 56, 'Královehradecký', 'H', 1, NULL),
(894, 56, 'Liberecký', 'L', 1, NULL),
(895, 56, 'Moravskoslezský', 'T', 1, NULL),
(896, 56, 'Olomoucký', 'M', 1, NULL),
(897, 56, 'Pardubický', 'E', 1, NULL),
(898, 56, 'Plzeňský', 'P', 1, NULL),
(899, 56, 'Praha', 'A', 1, NULL),
(900, 56, 'Středočeský', 'S', 1, NULL),
(901, 56, 'Vysočina', 'J', 1, NULL),
(902, 56, 'Zlínský', 'Z', 1, NULL),
(903, 57, 'Arhus', 'AR', 1, NULL),
(904, 57, 'Bornholm', 'BH', 1, NULL),
(905, 57, 'Copenhagen', 'CO', 1, NULL),
(906, 57, 'Faroe Islands', 'FO', 1, NULL),
(907, 57, 'Frederiksborg', 'FR', 1, NULL),
(908, 57, 'Fyn', 'FY', 1, NULL),
(909, 57, 'Kobenhavn', 'KO', 1, NULL),
(910, 57, 'Nordjylland', 'NO', 1, NULL),
(911, 57, 'Ribe', 'RI', 1, NULL),
(912, 57, 'Ringkobing', 'RK', 1, NULL),
(913, 57, 'Roskilde', 'RO', 1, NULL),
(914, 57, 'Sonderjylland', 'SO', 1, NULL),
(915, 57, 'Storstrom', 'ST', 1, NULL),
(916, 57, 'Vejle', 'VK', 1, NULL),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1, NULL),
(918, 57, 'Viborg', 'VB', 1, NULL),
(919, 58, '''Ali Sabih', 'S', 1, NULL),
(920, 58, 'Dikhil', 'K', 1, NULL),
(921, 58, 'Djibouti', 'J', 1, NULL),
(922, 58, 'Obock', 'O', 1, NULL),
(923, 58, 'Tadjoura', 'T', 1, NULL),
(924, 59, 'Saint Andrew Parish', 'AND', 1, NULL),
(925, 59, 'Saint David Parish', 'DAV', 1, NULL),
(926, 59, 'Saint George Parish', 'GEO', 1, NULL),
(927, 59, 'Saint John Parish', 'JOH', 1, NULL),
(928, 59, 'Saint Joseph Parish', 'JOS', 1, NULL),
(929, 59, 'Saint Luke Parish', 'LUK', 1, NULL),
(930, 59, 'Saint Mark Parish', 'MAR', 1, NULL),
(931, 59, 'Saint Patrick Parish', 'PAT', 1, NULL),
(932, 59, 'Saint Paul Parish', 'PAU', 1, NULL),
(933, 59, 'Saint Peter Parish', 'PET', 1, NULL),
(934, 60, 'Distrito Nacional', 'DN', 1, NULL),
(935, 60, 'Azua', 'AZ', 1, NULL),
(936, 60, 'Baoruco', 'BC', 1, NULL),
(937, 60, 'Barahona', 'BH', 1, NULL),
(938, 60, 'Dajabon', 'DJ', 1, NULL),
(939, 60, 'Duarte', 'DU', 1, NULL),
(940, 60, 'Elias Pina', 'EL', 1, NULL),
(941, 60, 'El Seybo', 'SY', 1, NULL),
(942, 60, 'Espaillat', 'ET', 1, NULL),
(943, 60, 'Hato Mayor', 'HM', 1, NULL),
(944, 60, 'Independencia', 'IN', 1, NULL),
(945, 60, 'La Altagracia', 'AL', 1, NULL),
(946, 60, 'La Romana', 'RO', 1, NULL),
(947, 60, 'La Vega', 'VE', 1, NULL),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1, NULL),
(949, 60, 'Monsenor Nouel', 'MN', 1, NULL),
(950, 60, 'Monte Cristi', 'MC', 1, NULL),
(951, 60, 'Monte Plata', 'MP', 1, NULL),
(952, 60, 'Pedernales', 'PD', 1, NULL),
(953, 60, 'Peravia (Bani)', 'PR', 1, NULL),
(954, 60, 'Puerto Plata', 'PP', 1, NULL),
(955, 60, 'Salcedo', 'SL', 1, NULL),
(956, 60, 'Samana', 'SM', 1, NULL),
(957, 60, 'Sanchez Ramirez', 'SH', 1, NULL),
(958, 60, 'San Cristobal', 'SC', 1, NULL),
(959, 60, 'San Jose de Ocoa', 'JO', 1, NULL),
(960, 60, 'San Juan', 'SJ', 1, NULL),
(961, 60, 'San Pedro de Macoris', 'PM', 1, NULL),
(962, 60, 'Santiago', 'SA', 1, NULL),
(963, 60, 'Santiago Rodriguez', 'ST', 1, NULL),
(964, 60, 'Santo Domingo', 'SD', 1, NULL),
(965, 60, 'Valverde', 'VA', 1, NULL),
(966, 61, 'Aileu', 'AL', 1, NULL),
(967, 61, 'Ainaro', 'AN', 1, NULL),
(968, 61, 'Baucau', 'BA', 1, NULL),
(969, 61, 'Bobonaro', 'BO', 1, NULL),
(970, 61, 'Cova Lima', 'CO', 1, NULL),
(971, 61, 'Dili', 'DI', 1, NULL),
(972, 61, 'Ermera', 'ER', 1, NULL),
(973, 61, 'Lautem', 'LA', 1, NULL),
(974, 61, 'Liquica', 'LI', 1, NULL),
(975, 61, 'Manatuto', 'MT', 1, NULL),
(976, 61, 'Manufahi', 'MF', 1, NULL),
(977, 61, 'Oecussi', 'OE', 1, NULL),
(978, 61, 'Viqueque', 'VI', 1, NULL),
(979, 62, 'Azuay', 'AZU', 1, NULL),
(980, 62, 'Bolivar', 'BOL', 1, NULL),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1, NULL),
(982, 62, 'Carchi', 'CAR', 1, NULL),
(983, 62, 'Chimborazo', 'CHI', 1, NULL),
(984, 62, 'Cotopaxi', 'COT', 1, NULL),
(985, 62, 'El Oro', 'EOR', 1, NULL),
(986, 62, 'Esmeraldas', 'ESM', 1, NULL),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1, NULL),
(988, 62, 'Guayas', 'GUA', 1, NULL),
(989, 62, 'Imbabura', 'IMB', 1, NULL),
(990, 62, 'Loja', 'LOJ', 1, NULL),
(991, 62, 'Los Rios', 'LRO', 1, NULL),
(992, 62, 'Manab&iacute;', 'MAN', 1, NULL),
(993, 62, 'Morona Santiago', 'MSA', 1, NULL),
(994, 62, 'Napo', 'NAP', 1, NULL),
(995, 62, 'Orellana', 'ORE', 1, NULL),
(996, 62, 'Pastaza', 'PAS', 1, NULL),
(997, 62, 'Pichincha', 'PIC', 1, NULL),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1, NULL),
(999, 62, 'Tungurahua', 'TUN', 1, NULL),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1, NULL),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1, NULL),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1, NULL),
(1003, 63, 'Al Buhayrah', 'BHY', 1, NULL),
(1004, 63, 'Al Fayyum', 'FYM', 1, NULL),
(1005, 63, 'Al Gharbiyah', 'GBY', 1, NULL),
(1006, 63, 'Al Iskandariyah', 'IDR', 1, NULL),
(1007, 63, 'Al Isma''iliyah', 'IML', 1, NULL),
(1008, 63, 'Al Jizah', 'JZH', 1, NULL),
(1009, 63, 'Al Minufiyah', 'MFY', 1, NULL),
(1010, 63, 'Al Minya', 'MNY', 1, NULL),
(1011, 63, 'Al Qahirah', 'QHR', 1, NULL),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1, NULL),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1, NULL),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1, NULL),
(1015, 63, 'As Suways', 'SWY', 1, NULL),
(1016, 63, 'Aswan', 'ASW', 1, NULL),
(1017, 63, 'Asyut', 'ASY', 1, NULL),
(1018, 63, 'Bani Suwayf', 'BSW', 1, NULL),
(1019, 63, 'Bur Sa''id', 'BSD', 1, NULL),
(1020, 63, 'Dumyat', 'DMY', 1, NULL),
(1021, 63, 'Janub Sina''', 'JNS', 1, NULL),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1, NULL),
(1023, 63, 'Matruh', 'MAT', 1, NULL),
(1024, 63, 'Qina', 'QIN', 1, NULL),
(1025, 63, 'Shamal Sina''', 'SHS', 1, NULL),
(1026, 63, 'Suhaj', 'SUH', 1, NULL),
(1027, 64, 'Ahuachapan', 'AH', 1, NULL),
(1028, 64, 'Cabanas', 'CA', 1, NULL),
(1029, 64, 'Chalatenango', 'CH', 1, NULL),
(1030, 64, 'Cuscatlan', 'CU', 1, NULL),
(1031, 64, 'La Libertad', 'LB', 1, NULL),
(1032, 64, 'La Paz', 'PZ', 1, NULL),
(1033, 64, 'La Union', 'UN', 1, NULL),
(1034, 64, 'Morazan', 'MO', 1, NULL),
(1035, 64, 'San Miguel', 'SM', 1, NULL),
(1036, 64, 'San Salvador', 'SS', 1, NULL),
(1037, 64, 'San Vicente', 'SV', 1, NULL),
(1038, 64, 'Santa Ana', 'SA', 1, NULL),
(1039, 64, 'Sonsonate', 'SO', 1, NULL),
(1040, 64, 'Usulutan', 'US', 1, NULL),
(1041, 65, 'Provincia Annobon', 'AN', 1, NULL),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1, NULL),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1, NULL),
(1044, 65, 'Provincia Centro Sur', 'CS', 1, NULL),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1, NULL),
(1046, 65, 'Provincia Litoral', 'LI', 1, NULL),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1, NULL),
(1048, 66, 'Central (Maekel)', 'MA', 1, NULL),
(1049, 66, 'Anseba (Keren)', 'KE', 1, NULL),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1, NULL),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1, NULL),
(1052, 66, 'Southern (Debub)', 'DE', 1, NULL),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1, NULL),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1, NULL),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1, NULL),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1, NULL),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1, NULL),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1, NULL),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1, NULL),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1, NULL),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1, NULL),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1, NULL),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1, NULL),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1, NULL),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1, NULL),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1, NULL),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1, NULL),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1, NULL),
(1069, 68, 'Afar', 'AF', 1, NULL),
(1070, 68, 'Amhara', 'AH', 1, NULL),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1, NULL),
(1072, 68, 'Gambela', 'GB', 1, NULL),
(1073, 68, 'Hariai', 'HR', 1, NULL),
(1074, 68, 'Oromia', 'OR', 1, NULL),
(1075, 68, 'Somali', 'SM', 1, NULL),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1, NULL),
(1077, 68, 'Tigray', 'TG', 1, NULL),
(1078, 68, 'Addis Ababa', 'AA', 1, NULL),
(1079, 68, 'Dire Dawa', 'DD', 1, NULL),
(1080, 71, 'Central Division', 'C', 1, NULL),
(1081, 71, 'Northern Division', 'N', 1, NULL),
(1082, 71, 'Eastern Division', 'E', 1, NULL),
(1083, 71, 'Western Division', 'W', 1, NULL),
(1084, 71, 'Rotuma', 'R', 1, NULL),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1, NULL),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1, NULL),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1, NULL),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1, NULL),
(1089, 72, 'Lapin lääni', 'LA', 1, NULL),
(1090, 72, 'Oulun lääni', 'OU', 1, NULL),
(1114, 74, 'Ain', '01', 1, NULL),
(1115, 74, 'Aisne', '02', 1, NULL),
(1116, 74, 'Allier', '03', 1, NULL),
(1117, 74, 'Alpes de Haute Provence', '04', 1, NULL),
(1118, 74, 'Hautes-Alpes', '05', 1, NULL),
(1119, 74, 'Alpes Maritimes', '06', 1, NULL),
(1120, 74, 'Ard&egrave;che', '07', 1, NULL),
(1121, 74, 'Ardennes', '08', 1, NULL),
(1122, 74, 'Ari&egrave;ge', '09', 1, NULL),
(1123, 74, 'Aube', '10', 1, NULL),
(1124, 74, 'Aude', '11', 1, NULL),
(1125, 74, 'Aveyron', '12', 1, NULL),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1, NULL),
(1127, 74, 'Calvados', '14', 1, NULL),
(1128, 74, 'Cantal', '15', 1, NULL),
(1129, 74, 'Charente', '16', 1, NULL),
(1130, 74, 'Charente Maritime', '17', 1, NULL),
(1131, 74, 'Cher', '18', 1, NULL),
(1132, 74, 'Corr&egrave;ze', '19', 1, NULL),
(1133, 74, 'Corse du Sud', '2A', 1, NULL),
(1134, 74, 'Haute Corse', '2B', 1, NULL),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1, NULL),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1, NULL),
(1137, 74, 'Creuse', '23', 1, NULL),
(1138, 74, 'Dordogne', '24', 1, NULL),
(1139, 74, 'Doubs', '25', 1, NULL),
(1140, 74, 'Dr&ocirc;me', '26', 1, NULL),
(1141, 74, 'Eure', '27', 1, NULL),
(1142, 74, 'Eure et Loir', '28', 1, NULL),
(1143, 74, 'Finist&egrave;re', '29', 1, NULL),
(1144, 74, 'Gard', '30', 1, NULL),
(1145, 74, 'Haute Garonne', '31', 1, NULL),
(1146, 74, 'Gers', '32', 1, NULL),
(1147, 74, 'Gironde', '33', 1, NULL),
(1148, 74, 'H&eacute;rault', '34', 1, NULL),
(1149, 74, 'Ille et Vilaine', '35', 1, NULL),
(1150, 74, 'Indre', '36', 1, NULL),
(1151, 74, 'Indre et Loire', '37', 1, NULL),
(1152, 74, 'Is&eacute;re', '38', 1, NULL),
(1153, 74, 'Jura', '39', 1, NULL),
(1154, 74, 'Landes', '40', 1, NULL),
(1155, 74, 'Loir et Cher', '41', 1, NULL),
(1156, 74, 'Loire', '42', 1, NULL),
(1157, 74, 'Haute Loire', '43', 1, NULL),
(1158, 74, 'Loire Atlantique', '44', 1, NULL),
(1159, 74, 'Loiret', '45', 1, NULL),
(1160, 74, 'Lot', '46', 1, NULL),
(1161, 74, 'Lot et Garonne', '47', 1, NULL),
(1162, 74, 'Loz&egrave;re', '48', 1, NULL),
(1163, 74, 'Maine et Loire', '49', 1, NULL),
(1164, 74, 'Manche', '50', 1, NULL),
(1165, 74, 'Marne', '51', 1, NULL),
(1166, 74, 'Haute Marne', '52', 1, NULL),
(1167, 74, 'Mayenne', '53', 1, NULL),
(1168, 74, 'Meurthe et Moselle', '54', 1, NULL),
(1169, 74, 'Meuse', '55', 1, NULL),
(1170, 74, 'Morbihan', '56', 1, NULL),
(1171, 74, 'Moselle', '57', 1, NULL),
(1172, 74, 'Ni&egrave;vre', '58', 1, NULL),
(1173, 74, 'Nord', '59', 1, NULL),
(1174, 74, 'Oise', '60', 1, NULL),
(1175, 74, 'Orne', '61', 1, NULL),
(1176, 74, 'Pas de Calais', '62', 1, NULL),
(1177, 74, 'Puy de D&ocirc;me', '63', 1, NULL),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1, NULL),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1, NULL),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1, NULL),
(1181, 74, 'Bas Rhin', '67', 1, NULL),
(1182, 74, 'Haut Rhin', '68', 1, NULL),
(1183, 74, 'Rh&ocirc;ne', '69', 1, NULL),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1, NULL),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1, NULL),
(1186, 74, 'Sarthe', '72', 1, NULL),
(1187, 74, 'Savoie', '73', 1, NULL),
(1188, 74, 'Haute Savoie', '74', 1, NULL),
(1189, 74, 'Paris', '75', 1, NULL),
(1190, 74, 'Seine Maritime', '76', 1, NULL),
(1191, 74, 'Seine et Marne', '77', 1, NULL),
(1192, 74, 'Yvelines', '78', 1, NULL),
(1193, 74, 'Deux S&egrave;vres', '79', 1, NULL),
(1194, 74, 'Somme', '80', 1, NULL),
(1195, 74, 'Tarn', '81', 1, NULL),
(1196, 74, 'Tarn et Garonne', '82', 1, NULL),
(1197, 74, 'Var', '83', 1, NULL),
(1198, 74, 'Vaucluse', '84', 1, NULL),
(1199, 74, 'Vend&eacute;e', '85', 1, NULL),
(1200, 74, 'Vienne', '86', 1, NULL),
(1201, 74, 'Haute Vienne', '87', 1, NULL),
(1202, 74, 'Vosges', '88', 1, NULL),
(1203, 74, 'Yonne', '89', 1, NULL),
(1204, 74, 'Territoire de Belfort', '90', 1, NULL),
(1205, 74, 'Essonne', '91', 1, NULL),
(1206, 74, 'Hauts de Seine', '92', 1, NULL),
(1207, 74, 'Seine St-Denis', '93', 1, NULL),
(1208, 74, 'Val de Marne', '94', 1, NULL),
(1209, 74, 'Val d''Oise', '95', 1, NULL),
(1210, 76, 'Archipel des Marquises', 'M', 1, NULL),
(1211, 76, 'Archipel des Tuamotu', 'T', 1, NULL),
(1212, 76, 'Archipel des Tubuai', 'I', 1, NULL),
(1213, 76, 'Iles du Vent', 'V', 1, NULL),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1, NULL),
(1215, 77, 'Iles Crozet', 'C', 1, NULL),
(1216, 77, 'Iles Kerguelen', 'K', 1, NULL),
(1217, 77, 'Ile Amsterdam', 'A', 1, NULL),
(1218, 77, 'Ile Saint-Paul', 'P', 1, NULL),
(1219, 77, 'Adelie Land', 'D', 1, NULL),
(1220, 78, 'Estuaire', 'ES', 1, NULL),
(1221, 78, 'Haut-Ogooue', 'HO', 1, NULL),
(1222, 78, 'Moyen-Ogooue', 'MO', 1, NULL),
(1223, 78, 'Ngounie', 'NG', 1, NULL),
(1224, 78, 'Nyanga', 'NY', 1, NULL),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1, NULL),
(1226, 78, 'Ogooue-Lolo', 'OL', 1, NULL),
(1227, 78, 'Ogooue-Maritime', 'OM', 1, NULL),
(1228, 78, 'Woleu-Ntem', 'WN', 1, NULL),
(1229, 79, 'Banjul', 'BJ', 1, NULL),
(1230, 79, 'Basse', 'BS', 1, NULL),
(1231, 79, 'Brikama', 'BR', 1, NULL),
(1232, 79, 'Janjangbure', 'JA', 1, NULL),
(1233, 79, 'Kanifeng', 'KA', 1, NULL),
(1234, 79, 'Kerewan', 'KE', 1, NULL),
(1235, 79, 'Kuntaur', 'KU', 1, NULL),
(1236, 79, 'Mansakonko', 'MA', 1, NULL),
(1237, 79, 'Lower River', 'LR', 1, NULL),
(1238, 79, 'Central River', 'CR', 1, NULL),
(1239, 79, 'North Bank', 'NB', 1, NULL),
(1240, 79, 'Upper River', 'UR', 1, NULL),
(1241, 79, 'Western', 'WE', 1, NULL),
(1242, 80, 'Abkhazia', 'AB', 1, NULL),
(1243, 80, 'Ajaria', 'AJ', 1, NULL),
(1244, 80, 'Tbilisi', 'TB', 1, NULL),
(1245, 80, 'Guria', 'GU', 1, NULL),
(1246, 80, 'Imereti', 'IM', 1, NULL),
(1247, 80, 'Kakheti', 'KA', 1, NULL),
(1248, 80, 'Kvemo Kartli', 'KK', 1, NULL),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1, NULL),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1, NULL),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1, NULL),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1, NULL),
(1253, 80, 'Shida Kartli', 'SK', 1, NULL),
(1254, 81, 'Baden-Württemberg', 'BAW', 1, NULL),
(1255, 81, 'Bayern', 'BAY', 1, NULL),
(1256, 81, 'Berlin', 'BER', 1, NULL),
(1257, 81, 'Brandenburg', 'BRG', 1, NULL),
(1258, 81, 'Bremen', 'BRE', 1, NULL),
(1259, 81, 'Hamburg', 'HAM', 1, NULL),
(1260, 81, 'Hessen', 'HES', 1, NULL),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1, NULL),
(1262, 81, 'Niedersachsen', 'NDS', 1, NULL),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1, NULL),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1, NULL),
(1265, 81, 'Saarland', 'SAR', 1, NULL),
(1266, 81, 'Sachsen', 'SAS', 1, NULL),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1, NULL),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1, NULL),
(1269, 81, 'Thüringen', 'THE', 1, NULL),
(1270, 82, 'Ashanti Region', 'AS', 1, NULL),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1, NULL),
(1272, 82, 'Central Region', 'CE', 1, NULL),
(1273, 82, 'Eastern Region', 'EA', 1, NULL),
(1274, 82, 'Greater Accra Region', 'GA', 1, NULL),
(1275, 82, 'Northern Region', 'NO', 1, NULL),
(1276, 82, 'Upper East Region', 'UE', 1, NULL),
(1277, 82, 'Upper West Region', 'UW', 1, NULL),
(1278, 82, 'Volta Region', 'VO', 1, NULL),
(1279, 82, 'Western Region', 'WE', 1, NULL),
(1280, 84, 'Attica', 'AT', 1, NULL),
(1281, 84, 'Central Greece', 'CN', 1, NULL),
(1282, 84, 'Central Macedonia', 'CM', 1, NULL),
(1283, 84, 'Crete', 'CR', 1, NULL),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1, NULL),
(1285, 84, 'Epirus', 'EP', 1, NULL),
(1286, 84, 'Ionian Islands', 'II', 1, NULL),
(1287, 84, 'North Aegean', 'NA', 1, NULL),
(1288, 84, 'Peloponnesos', 'PP', 1, NULL),
(1289, 84, 'South Aegean', 'SA', 1, NULL),
(1290, 84, 'Thessaly', 'TH', 1, NULL),
(1291, 84, 'West Greece', 'WG', 1, NULL),
(1292, 84, 'West Macedonia', 'WM', 1, NULL),
(1293, 85, 'Avannaa', 'A', 1, NULL),
(1294, 85, 'Tunu', 'T', 1, NULL),
(1295, 85, 'Kitaa', 'K', 1, NULL),
(1296, 86, 'Saint Andrew', 'A', 1, NULL),
(1297, 86, 'Saint David', 'D', 1, NULL),
(1298, 86, 'Saint George', 'G', 1, NULL),
(1299, 86, 'Saint John', 'J', 1, NULL),
(1300, 86, 'Saint Mark', 'M', 1, NULL),
(1301, 86, 'Saint Patrick', 'P', 1, NULL),
(1302, 86, 'Carriacou', 'C', 1, NULL),
(1303, 86, 'Petit Martinique', 'Q', 1, NULL),
(1304, 89, 'Alta Verapaz', 'AV', 1, NULL),
(1305, 89, 'Baja Verapaz', 'BV', 1, NULL),
(1306, 89, 'Chimaltenango', 'CM', 1, NULL),
(1307, 89, 'Chiquimula', 'CQ', 1, NULL),
(1308, 89, 'El Peten', 'PE', 1, NULL),
(1309, 89, 'El Progreso', 'PR', 1, NULL),
(1310, 89, 'El Quiche', 'QC', 1, NULL),
(1311, 89, 'Escuintla', 'ES', 1, NULL),
(1312, 89, 'Guatemala', 'GU', 1, NULL),
(1313, 89, 'Huehuetenango', 'HU', 1, NULL),
(1314, 89, 'Izabal', 'IZ', 1, NULL),
(1315, 89, 'Jalapa', 'JA', 1, NULL),
(1316, 89, 'Jutiapa', 'JU', 1, NULL),
(1317, 89, 'Quetzaltenango', 'QZ', 1, NULL),
(1318, 89, 'Retalhuleu', 'RE', 1, NULL),
(1319, 89, 'Sacatepequez', 'ST', 1, NULL),
(1320, 89, 'San Marcos', 'SM', 1, NULL),
(1321, 89, 'Santa Rosa', 'SR', 1, NULL),
(1322, 89, 'Solola', 'SO', 1, NULL),
(1323, 89, 'Suchitepequez', 'SU', 1, NULL),
(1324, 89, 'Totonicapan', 'TO', 1, NULL),
(1325, 89, 'Zacapa', 'ZA', 1, NULL),
(1326, 90, 'Conakry', 'CNK', 1, NULL),
(1327, 90, 'Beyla', 'BYL', 1, NULL),
(1328, 90, 'Boffa', 'BFA', 1, NULL),
(1329, 90, 'Boke', 'BOK', 1, NULL),
(1330, 90, 'Coyah', 'COY', 1, NULL),
(1331, 90, 'Dabola', 'DBL', 1, NULL);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`, `major`) VALUES
(1332, 90, 'Dalaba', 'DLB', 1, NULL),
(1333, 90, 'Dinguiraye', 'DGR', 1, NULL),
(1334, 90, 'Dubreka', 'DBR', 1, NULL),
(1335, 90, 'Faranah', 'FRN', 1, NULL),
(1336, 90, 'Forecariah', 'FRC', 1, NULL),
(1337, 90, 'Fria', 'FRI', 1, NULL),
(1338, 90, 'Gaoual', 'GAO', 1, NULL),
(1339, 90, 'Gueckedou', 'GCD', 1, NULL),
(1340, 90, 'Kankan', 'KNK', 1, NULL),
(1341, 90, 'Kerouane', 'KRN', 1, NULL),
(1342, 90, 'Kindia', 'KND', 1, NULL),
(1343, 90, 'Kissidougou', 'KSD', 1, NULL),
(1344, 90, 'Koubia', 'KBA', 1, NULL),
(1345, 90, 'Koundara', 'KDA', 1, NULL),
(1346, 90, 'Kouroussa', 'KRA', 1, NULL),
(1347, 90, 'Labe', 'LAB', 1, NULL),
(1348, 90, 'Lelouma', 'LLM', 1, NULL),
(1349, 90, 'Lola', 'LOL', 1, NULL),
(1350, 90, 'Macenta', 'MCT', 1, NULL),
(1351, 90, 'Mali', 'MAL', 1, NULL),
(1352, 90, 'Mamou', 'MAM', 1, NULL),
(1353, 90, 'Mandiana', 'MAN', 1, NULL),
(1354, 90, 'Nzerekore', 'NZR', 1, NULL),
(1355, 90, 'Pita', 'PIT', 1, NULL),
(1356, 90, 'Siguiri', 'SIG', 1, NULL),
(1357, 90, 'Telimele', 'TLM', 1, NULL),
(1358, 90, 'Tougue', 'TOG', 1, NULL),
(1359, 90, 'Yomou', 'YOM', 1, NULL),
(1360, 91, 'Bafata Region', 'BF', 1, NULL),
(1361, 91, 'Biombo Region', 'BB', 1, NULL),
(1362, 91, 'Bissau Region', 'BS', 1, NULL),
(1363, 91, 'Bolama Region', 'BL', 1, NULL),
(1364, 91, 'Cacheu Region', 'CA', 1, NULL),
(1365, 91, 'Gabu Region', 'GA', 1, NULL),
(1366, 91, 'Oio Region', 'OI', 1, NULL),
(1367, 91, 'Quinara Region', 'QU', 1, NULL),
(1368, 91, 'Tombali Region', 'TO', 1, NULL),
(1369, 92, 'Barima-Waini', 'BW', 1, NULL),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1, NULL),
(1371, 92, 'Demerara-Mahaica', 'DM', 1, NULL),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1, NULL),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1, NULL),
(1374, 92, 'Mahaica-Berbice', 'MB', 1, NULL),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1, NULL),
(1376, 92, 'Potaro-Siparuni', 'PI', 1, NULL),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1, NULL),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1, NULL),
(1379, 93, 'Artibonite', 'AR', 1, NULL),
(1380, 93, 'Centre', 'CE', 1, NULL),
(1381, 93, 'Grand''Anse', 'GA', 1, NULL),
(1382, 93, 'Nord', 'ND', 1, NULL),
(1383, 93, 'Nord-Est', 'NE', 1, NULL),
(1384, 93, 'Nord-Ouest', 'NO', 1, NULL),
(1385, 93, 'Ouest', 'OU', 1, NULL),
(1386, 93, 'Sud', 'SD', 1, NULL),
(1387, 93, 'Sud-Est', 'SE', 1, NULL),
(1388, 94, 'Flat Island', 'F', 1, NULL),
(1389, 94, 'McDonald Island', 'M', 1, NULL),
(1390, 94, 'Shag Island', 'S', 1, NULL),
(1391, 94, 'Heard Island', 'H', 1, NULL),
(1392, 95, 'Atlantida', 'AT', 1, NULL),
(1393, 95, 'Choluteca', 'CH', 1, NULL),
(1394, 95, 'Colon', 'CL', 1, NULL),
(1395, 95, 'Comayagua', 'CM', 1, NULL),
(1396, 95, 'Copan', 'CP', 1, NULL),
(1397, 95, 'Cortes', 'CR', 1, NULL),
(1398, 95, 'El Paraiso', 'PA', 1, NULL),
(1399, 95, 'Francisco Morazan', 'FM', 1, NULL),
(1400, 95, 'Gracias a Dios', 'GD', 1, NULL),
(1401, 95, 'Intibuca', 'IN', 1, NULL),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1, NULL),
(1403, 95, 'La Paz', 'PZ', 1, NULL),
(1404, 95, 'Lempira', 'LE', 1, NULL),
(1405, 95, 'Ocotepeque', 'OC', 1, NULL),
(1406, 95, 'Olancho', 'OL', 1, NULL),
(1407, 95, 'Santa Barbara', 'SB', 1, NULL),
(1408, 95, 'Valle', 'VA', 1, NULL),
(1409, 95, 'Yoro', 'YO', 1, NULL),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1, NULL),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1, NULL),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1, NULL),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1, NULL),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1, NULL),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1, NULL),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1, NULL),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1, NULL),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1, NULL),
(1419, 96, 'Islands New Territories', 'NIS', 1, NULL),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1, NULL),
(1421, 96, 'North New Territories', 'NNO', 1, NULL),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1, NULL),
(1423, 96, 'Sha Tin New Territories', 'NST', 1, NULL),
(1424, 96, 'Tai Po New Territories', 'NTP', 1, NULL),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1, NULL),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1, NULL),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1, NULL),
(1467, 98, 'Austurland', 'AL', 1, NULL),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1, NULL),
(1469, 98, 'Norourland eystra', 'NE', 1, NULL),
(1470, 98, 'Norourland vestra', 'NV', 1, NULL),
(1471, 98, 'Suourland', 'SL', 1, NULL),
(1472, 98, 'Suournes', 'SN', 1, NULL),
(1473, 98, 'Vestfiroir', 'VF', 1, NULL),
(1474, 98, 'Vesturland', 'VL', 1, NULL),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1, NULL),
(1476, 99, 'Andhra Pradesh', 'AP', 1, NULL),
(1477, 99, 'Arunachal Pradesh', 'AR', 1, NULL),
(1478, 99, 'Assam', 'AS', 1, NULL),
(1479, 99, 'Bihar', 'BI', 1, NULL),
(1480, 99, 'Chandigarh', 'CH', 1, NULL),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1, NULL),
(1482, 99, 'Daman and Diu', 'DM', 1, NULL),
(1483, 99, 'Delhi', 'DE', 1, NULL),
(1484, 99, 'Goa', 'GO', 1, NULL),
(1485, 99, 'Gujarat', 'GU', 1, NULL),
(1486, 99, 'Haryana', 'HA', 1, NULL),
(1487, 99, 'Himachal Pradesh', 'HP', 1, NULL),
(1488, 99, 'Jammu and Kashmir', 'JA', 1, NULL),
(1489, 99, 'Karnataka', 'KA', 1, NULL),
(1490, 99, 'Kerala', 'KE', 1, NULL),
(1491, 99, 'Lakshadweep Islands', 'LI', 1, NULL),
(1492, 99, 'Madhya Pradesh', 'MP', 1, NULL),
(1493, 99, 'Maharashtra', 'MA', 1, NULL),
(1494, 99, 'Manipur', 'MN', 1, NULL),
(1495, 99, 'Meghalaya', 'ME', 1, NULL),
(1496, 99, 'Mizoram', 'MI', 1, NULL),
(1497, 99, 'Nagaland', 'NA', 1, NULL),
(1498, 99, 'Orissa', 'OR', 1, NULL),
(1499, 99, 'Puducherry', 'PO', 1, NULL),
(1500, 99, 'Punjab', 'PU', 1, NULL),
(1501, 99, 'Rajasthan', 'RA', 1, NULL),
(1502, 99, 'Sikkim', 'SI', 1, NULL),
(1503, 99, 'Tamil Nadu', 'TN', 1, NULL),
(1504, 99, 'Tripura', 'TR', 1, NULL),
(1505, 99, 'Uttar Pradesh', 'UP', 1, NULL),
(1506, 99, 'West Bengal', 'WB', 1, NULL),
(1507, 100, 'Aceh', 'AC', 1, NULL),
(1508, 100, 'Bali', 'BA', 1, NULL),
(1509, 100, 'Banten', 'BT', 1, NULL),
(1510, 100, 'Bengkulu', 'BE', 1, NULL),
(1511, 100, 'BoDeTaBek', 'BD', 1, NULL),
(1512, 100, 'Gorontalo', 'GO', 1, NULL),
(1513, 100, 'Jakarta Raya', 'JK', 1, NULL),
(1514, 100, 'Jambi', 'JA', 1, NULL),
(1515, 100, 'Jawa Barat', 'JB', 1, NULL),
(1516, 100, 'Jawa Tengah', 'JT', 1, NULL),
(1517, 100, 'Jawa Timur', 'JI', 1, NULL),
(1518, 100, 'Kalimantan Barat', 'KB', 1, NULL),
(1519, 100, 'Kalimantan Selatan', 'KS', 1, NULL),
(1520, 100, 'Kalimantan Tengah', 'KT', 1, NULL),
(1521, 100, 'Kalimantan Timur', 'KI', 1, NULL),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1, NULL),
(1523, 100, 'Lampung', 'LA', 1, NULL),
(1524, 100, 'Maluku', 'MA', 1, NULL),
(1525, 100, 'Maluku Utara', 'MU', 1, NULL),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1, NULL),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1, NULL),
(1528, 100, 'Papua', 'PA', 1, NULL),
(1529, 100, 'Riau', 'RI', 1, NULL),
(1530, 100, 'Sulawesi Selatan', 'SN', 1, NULL),
(1531, 100, 'Sulawesi Tengah', 'ST', 1, NULL),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1, NULL),
(1533, 100, 'Sulawesi Utara', 'SA', 1, NULL),
(1534, 100, 'Sumatera Barat', 'SB', 1, NULL),
(1535, 100, 'Sumatera Selatan', 'SS', 1, NULL),
(1536, 100, 'Sumatera Utara', 'SU', 1, NULL),
(1537, 100, 'Yogyakarta', 'YO', 1, NULL),
(1538, 101, 'Tehran', 'TEH', 1, NULL),
(1539, 101, 'Qom', 'QOM', 1, NULL),
(1540, 101, 'Markazi', 'MKZ', 1, NULL),
(1541, 101, 'Qazvin', 'QAZ', 1, NULL),
(1542, 101, 'Gilan', 'GIL', 1, NULL),
(1543, 101, 'Ardabil', 'ARD', 1, NULL),
(1544, 101, 'Zanjan', 'ZAN', 1, NULL),
(1545, 101, 'East Azarbaijan', 'EAZ', 1, NULL),
(1546, 101, 'West Azarbaijan', 'WEZ', 1, NULL),
(1547, 101, 'Kurdistan', 'KRD', 1, NULL),
(1548, 101, 'Hamadan', 'HMD', 1, NULL),
(1549, 101, 'Kermanshah', 'KRM', 1, NULL),
(1550, 101, 'Ilam', 'ILM', 1, NULL),
(1551, 101, 'Lorestan', 'LRS', 1, NULL),
(1552, 101, 'Khuzestan', 'KZT', 1, NULL),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1, NULL),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1, NULL),
(1555, 101, 'Bushehr', 'BSH', 1, NULL),
(1556, 101, 'Fars', 'FAR', 1, NULL),
(1557, 101, 'Hormozgan', 'HRM', 1, NULL),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1, NULL),
(1559, 101, 'Kerman', 'KRB', 1, NULL),
(1560, 101, 'Yazd', 'YZD', 1, NULL),
(1561, 101, 'Esfahan', 'EFH', 1, NULL),
(1562, 101, 'Semnan', 'SMN', 1, NULL),
(1563, 101, 'Mazandaran', 'MZD', 1, NULL),
(1564, 101, 'Golestan', 'GLS', 1, NULL),
(1565, 101, 'North Khorasan', 'NKH', 1, NULL),
(1566, 101, 'Razavi Khorasan', 'RKH', 1, NULL),
(1567, 101, 'South Khorasan', 'SKH', 1, NULL),
(1568, 102, 'Baghdad', 'BD', 1, NULL),
(1569, 102, 'Salah ad Din', 'SD', 1, NULL),
(1570, 102, 'Diyala', 'DY', 1, NULL),
(1571, 102, 'Wasit', 'WS', 1, NULL),
(1572, 102, 'Maysan', 'MY', 1, NULL),
(1573, 102, 'Al Basrah', 'BA', 1, NULL),
(1574, 102, 'Dhi Qar', 'DQ', 1, NULL),
(1575, 102, 'Al Muthanna', 'MU', 1, NULL),
(1576, 102, 'Al Qadisyah', 'QA', 1, NULL),
(1577, 102, 'Babil', 'BB', 1, NULL),
(1578, 102, 'Al Karbala', 'KB', 1, NULL),
(1579, 102, 'An Najaf', 'NJ', 1, NULL),
(1580, 102, 'Al Anbar', 'AB', 1, NULL),
(1581, 102, 'Ninawa', 'NN', 1, NULL),
(1582, 102, 'Dahuk', 'DH', 1, NULL),
(1583, 102, 'Arbil', 'AL', 1, NULL),
(1584, 102, 'At Ta''mim', 'TM', 1, NULL),
(1585, 102, 'As Sulaymaniyah', 'SL', 1, NULL),
(1586, 103, 'Carlow', 'CA', 1, NULL),
(1587, 103, 'Cavan', 'CV', 1, NULL),
(1588, 103, 'Clare', 'CL', 1, NULL),
(1589, 103, 'Cork', 'CO', 1, NULL),
(1590, 103, 'Donegal', 'DO', 1, NULL),
(1591, 103, 'Dublin', 'DU', 1, NULL),
(1592, 103, 'Galway', 'GA', 1, NULL),
(1593, 103, 'Kerry', 'KE', 1, NULL),
(1594, 103, 'Kildare', 'KI', 1, NULL),
(1595, 103, 'Kilkenny', 'KL', 1, NULL),
(1596, 103, 'Laois', 'LA', 1, NULL),
(1597, 103, 'Leitrim', 'LE', 1, NULL),
(1598, 103, 'Limerick', 'LI', 1, NULL),
(1599, 103, 'Longford', 'LO', 1, NULL),
(1600, 103, 'Louth', 'LU', 1, NULL),
(1601, 103, 'Mayo', 'MA', 1, NULL),
(1602, 103, 'Meath', 'ME', 1, NULL),
(1603, 103, 'Monaghan', 'MO', 1, NULL),
(1604, 103, 'Offaly', 'OF', 1, NULL),
(1605, 103, 'Roscommon', 'RO', 1, NULL),
(1606, 103, 'Sligo', 'SL', 1, NULL),
(1607, 103, 'Tipperary', 'TI', 1, NULL),
(1608, 103, 'Waterford', 'WA', 1, NULL),
(1609, 103, 'Westmeath', 'WE', 1, NULL),
(1610, 103, 'Wexford', 'WX', 1, NULL),
(1611, 103, 'Wicklow', 'WI', 1, NULL),
(1612, 104, 'Be''er Sheva', 'BS', 1, NULL),
(1613, 104, 'Bika''at Hayarden', 'BH', 1, NULL),
(1614, 104, 'Eilat and Arava', 'EA', 1, NULL),
(1615, 104, 'Galil', 'GA', 1, NULL),
(1616, 104, 'Haifa', 'HA', 1, NULL),
(1617, 104, 'Jehuda Mountains', 'JM', 1, NULL),
(1618, 104, 'Jerusalem', 'JE', 1, NULL),
(1619, 104, 'Negev', 'NE', 1, NULL),
(1620, 104, 'Semaria', 'SE', 1, NULL),
(1621, 104, 'Sharon', 'SH', 1, NULL),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1, NULL),
(3860, 105, 'Caltanissetta', 'CL', 1, NULL),
(3842, 105, 'Agrigento', 'AG', 1, NULL),
(3843, 105, 'Alessandria', 'AL', 1, NULL),
(3844, 105, 'Ancona', 'AN', 1, NULL),
(3845, 105, 'Aosta', 'AO', 1, NULL),
(3846, 105, 'Arezzo', 'AR', 1, NULL),
(3847, 105, 'Ascoli Piceno', 'AP', 1, NULL),
(3848, 105, 'Asti', 'AT', 1, NULL),
(3849, 105, 'Avellino', 'AV', 1, NULL),
(3850, 105, 'Bari', 'BA', 1, NULL),
(3851, 105, 'Belluno', 'BL', 1, NULL),
(3852, 105, 'Benevento', 'BN', 1, NULL),
(3853, 105, 'Bergamo', 'BG', 1, NULL),
(3854, 105, 'Biella', 'BI', 1, NULL),
(3855, 105, 'Bologna', 'BO', 1, NULL),
(3856, 105, 'Bolzano', 'BZ', 1, NULL),
(3857, 105, 'Brescia', 'BS', 1, NULL),
(3858, 105, 'Brindisi', 'BR', 1, NULL),
(3859, 105, 'Cagliari', 'CA', 1, NULL),
(1643, 106, 'Clarendon Parish', 'CLA', 1, NULL),
(1644, 106, 'Hanover Parish', 'HAN', 1, NULL),
(1645, 106, 'Kingston Parish', 'KIN', 1, NULL),
(1646, 106, 'Manchester Parish', 'MAN', 1, NULL),
(1647, 106, 'Portland Parish', 'POR', 1, NULL),
(1648, 106, 'Saint Andrew Parish', 'AND', 1, NULL),
(1649, 106, 'Saint Ann Parish', 'ANN', 1, NULL),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1, NULL),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1, NULL),
(1652, 106, 'Saint James Parish', 'JAM', 1, NULL),
(1653, 106, 'Saint Mary Parish', 'MAR', 1, NULL),
(1654, 106, 'Saint Thomas Parish', 'THO', 1, NULL),
(1655, 106, 'Trelawny Parish', 'TRL', 1, NULL),
(1656, 106, 'Westmoreland Parish', 'WML', 1, NULL),
(1657, 107, 'Aichi', 'AI', 1, NULL),
(1658, 107, 'Akita', 'AK', 1, NULL),
(1659, 107, 'Aomori', 'AO', 1, NULL),
(1660, 107, 'Chiba', 'CH', 1, NULL),
(1661, 107, 'Ehime', 'EH', 1, NULL),
(1662, 107, 'Fukui', 'FK', 1, NULL),
(1663, 107, 'Fukuoka', 'FU', 1, NULL),
(1664, 107, 'Fukushima', 'FS', 1, NULL),
(1665, 107, 'Gifu', 'GI', 1, NULL),
(1666, 107, 'Gumma', 'GU', 1, NULL),
(1667, 107, 'Hiroshima', 'HI', 1, NULL),
(1668, 107, 'Hokkaido', 'HO', 1, NULL),
(1669, 107, 'Hyogo', 'HY', 1, NULL),
(1670, 107, 'Ibaraki', 'IB', 1, NULL),
(1671, 107, 'Ishikawa', 'IS', 1, NULL),
(1672, 107, 'Iwate', 'IW', 1, NULL),
(1673, 107, 'Kagawa', 'KA', 1, NULL),
(1674, 107, 'Kagoshima', 'KG', 1, NULL),
(1675, 107, 'Kanagawa', 'KN', 1, NULL),
(1676, 107, 'Kochi', 'KO', 1, NULL),
(1677, 107, 'Kumamoto', 'KU', 1, NULL),
(1678, 107, 'Kyoto', 'KY', 1, NULL),
(1679, 107, 'Mie', 'MI', 1, NULL),
(1680, 107, 'Miyagi', 'MY', 1, NULL),
(1681, 107, 'Miyazaki', 'MZ', 1, NULL),
(1682, 107, 'Nagano', 'NA', 1, NULL),
(1683, 107, 'Nagasaki', 'NG', 1, NULL),
(1684, 107, 'Nara', 'NR', 1, NULL),
(1685, 107, 'Niigata', 'NI', 1, NULL),
(1686, 107, 'Oita', 'OI', 1, NULL),
(1687, 107, 'Okayama', 'OK', 1, NULL),
(1688, 107, 'Okinawa', 'ON', 1, NULL),
(1689, 107, 'Osaka', 'OS', 1, NULL),
(1690, 107, 'Saga', 'SA', 1, NULL),
(1691, 107, 'Saitama', 'SI', 1, NULL),
(1692, 107, 'Shiga', 'SH', 1, NULL),
(1693, 107, 'Shimane', 'SM', 1, NULL),
(1694, 107, 'Shizuoka', 'SZ', 1, NULL),
(1695, 107, 'Tochigi', 'TO', 1, NULL),
(1696, 107, 'Tokushima', 'TS', 1, NULL),
(1697, 107, 'Tokyo', 'TK', 1, NULL),
(1698, 107, 'Tottori', 'TT', 1, NULL),
(1699, 107, 'Toyama', 'TY', 1, NULL),
(1700, 107, 'Wakayama', 'WA', 1, NULL),
(1701, 107, 'Yamagata', 'YA', 1, NULL),
(1702, 107, 'Yamaguchi', 'YM', 1, NULL),
(1703, 107, 'Yamanashi', 'YN', 1, NULL),
(1704, 108, '''Amman', 'AM', 1, NULL),
(1705, 108, 'Ajlun', 'AJ', 1, NULL),
(1706, 108, 'Al ''Aqabah', 'AA', 1, NULL),
(1707, 108, 'Al Balqa''', 'AB', 1, NULL),
(1708, 108, 'Al Karak', 'AK', 1, NULL),
(1709, 108, 'Al Mafraq', 'AL', 1, NULL),
(1710, 108, 'At Tafilah', 'AT', 1, NULL),
(1711, 108, 'Az Zarqa''', 'AZ', 1, NULL),
(1712, 108, 'Irbid', 'IR', 1, NULL),
(1713, 108, 'Jarash', 'JA', 1, NULL),
(1714, 108, 'Ma''an', 'MA', 1, NULL),
(1715, 108, 'Madaba', 'MD', 1, NULL),
(1716, 109, 'Almaty', 'AL', 1, NULL),
(1717, 109, 'Almaty City', 'AC', 1, NULL),
(1718, 109, 'Aqmola', 'AM', 1, NULL),
(1719, 109, 'Aqtobe', 'AQ', 1, NULL),
(1720, 109, 'Astana City', 'AS', 1, NULL),
(1721, 109, 'Atyrau', 'AT', 1, NULL),
(1722, 109, 'Batys Qazaqstan', 'BA', 1, NULL),
(1723, 109, 'Bayqongyr City', 'BY', 1, NULL),
(1724, 109, 'Mangghystau', 'MA', 1, NULL),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1, NULL),
(1726, 109, 'Pavlodar', 'PA', 1, NULL),
(1727, 109, 'Qaraghandy', 'QA', 1, NULL),
(1728, 109, 'Qostanay', 'QO', 1, NULL),
(1729, 109, 'Qyzylorda', 'QY', 1, NULL),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1, NULL),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1, NULL),
(1732, 109, 'Zhambyl', 'ZH', 1, NULL),
(1733, 110, 'Central', 'CE', 1, NULL),
(1734, 110, 'Coast', 'CO', 1, NULL),
(1735, 110, 'Eastern', 'EA', 1, NULL),
(1736, 110, 'Nairobi Area', 'NA', 1, NULL),
(1737, 110, 'North Eastern', 'NE', 1, NULL),
(1738, 110, 'Nyanza', 'NY', 1, NULL),
(1739, 110, 'Rift Valley', 'RV', 1, NULL),
(1740, 110, 'Western', 'WE', 1, NULL),
(1741, 111, 'Abaiang', 'AG', 1, NULL),
(1742, 111, 'Abemama', 'AM', 1, NULL),
(1743, 111, 'Aranuka', 'AK', 1, NULL),
(1744, 111, 'Arorae', 'AO', 1, NULL),
(1745, 111, 'Banaba', 'BA', 1, NULL),
(1746, 111, 'Beru', 'BE', 1, NULL),
(1747, 111, 'Butaritari', 'bT', 1, NULL),
(1748, 111, 'Kanton', 'KA', 1, NULL),
(1749, 111, 'Kiritimati', 'KR', 1, NULL),
(1750, 111, 'Kuria', 'KU', 1, NULL),
(1751, 111, 'Maiana', 'MI', 1, NULL),
(1752, 111, 'Makin', 'MN', 1, NULL),
(1753, 111, 'Marakei', 'ME', 1, NULL),
(1754, 111, 'Nikunau', 'NI', 1, NULL),
(1755, 111, 'Nonouti', 'NO', 1, NULL),
(1756, 111, 'Onotoa', 'ON', 1, NULL),
(1757, 111, 'Tabiteuea', 'TT', 1, NULL),
(1758, 111, 'Tabuaeran', 'TR', 1, NULL),
(1759, 111, 'Tamana', 'TM', 1, NULL),
(1760, 111, 'Tarawa', 'TW', 1, NULL),
(1761, 111, 'Teraina', 'TE', 1, NULL),
(1762, 112, 'Chagang-do', 'CHA', 1, NULL),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1, NULL),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1, NULL),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1, NULL),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1, NULL),
(1767, 112, 'Kangwon-do', 'KAN', 1, NULL),
(1768, 112, 'P''yongan-bukto', 'PYB', 1, NULL),
(1769, 112, 'P''yongan-namdo', 'PYN', 1, NULL),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1, NULL),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1, NULL),
(1772, 112, 'P''yongyang Special City', 'PYO', 1, NULL),
(1773, 113, 'Ch''ungch''ong-bukto', 'CO', 1, NULL),
(1774, 113, 'Ch''ungch''ong-namdo', 'CH', 1, NULL),
(1775, 113, 'Cheju-do', 'CD', 1, NULL),
(1776, 113, 'Cholla-bukto', 'CB', 1, NULL),
(1777, 113, 'Cholla-namdo', 'CN', 1, NULL),
(1778, 113, 'Inch''on-gwangyoksi', 'IG', 1, NULL),
(1779, 113, 'Kangwon-do', 'KA', 1, NULL),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1, NULL),
(1781, 113, 'Kyonggi-do', 'KD', 1, NULL),
(1782, 113, 'Kyongsang-bukto', 'KB', 1, NULL),
(1783, 113, 'Kyongsang-namdo', 'KN', 1, NULL),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1, NULL),
(1785, 113, 'Soul-t''ukpyolsi', 'SO', 1, NULL),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1, NULL),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1, NULL),
(1788, 114, 'Al ''Asimah', 'AL', 1, NULL),
(1789, 114, 'Al Ahmadi', 'AA', 1, NULL),
(1790, 114, 'Al Farwaniyah', 'AF', 1, NULL),
(1791, 114, 'Al Jahra''', 'AJ', 1, NULL),
(1792, 114, 'Hawalli', 'HA', 1, NULL),
(1793, 115, 'Bishkek', 'GB', 1, NULL),
(1794, 115, 'Batken', 'B', 1, NULL),
(1795, 115, 'Chu', 'C', 1, NULL),
(1796, 115, 'Jalal-Abad', 'J', 1, NULL),
(1797, 115, 'Naryn', 'N', 1, NULL),
(1798, 115, 'Osh', 'O', 1, NULL),
(1799, 115, 'Talas', 'T', 1, NULL),
(1800, 115, 'Ysyk-Kol', 'Y', 1, NULL),
(1801, 116, 'Vientiane', 'VT', 1, NULL),
(1802, 116, 'Attapu', 'AT', 1, NULL),
(1803, 116, 'Bokeo', 'BK', 1, NULL),
(1804, 116, 'Bolikhamxai', 'BL', 1, NULL),
(1805, 116, 'Champasak', 'CH', 1, NULL),
(1806, 116, 'Houaphan', 'HO', 1, NULL),
(1807, 116, 'Khammouan', 'KH', 1, NULL),
(1808, 116, 'Louang Namtha', 'LM', 1, NULL),
(1809, 116, 'Louangphabang', 'LP', 1, NULL),
(1810, 116, 'Oudomxai', 'OU', 1, NULL),
(1811, 116, 'Phongsali', 'PH', 1, NULL),
(1812, 116, 'Salavan', 'SL', 1, NULL),
(1813, 116, 'Savannakhet', 'SV', 1, NULL),
(1814, 116, 'Vientiane', 'VI', 1, NULL),
(1815, 116, 'Xaignabouli', 'XA', 1, NULL),
(1816, 116, 'Xekong', 'XE', 1, NULL),
(1817, 116, 'Xiangkhoang', 'XI', 1, NULL),
(1818, 116, 'Xaisomboun', 'XN', 1, NULL),
(1852, 119, 'Berea', 'BE', 1, NULL),
(1853, 119, 'Butha-Buthe', 'BB', 1, NULL),
(1854, 119, 'Leribe', 'LE', 1, NULL),
(1855, 119, 'Mafeteng', 'MF', 1, NULL),
(1856, 119, 'Maseru', 'MS', 1, NULL),
(1857, 119, 'Mohale''s Hoek', 'MH', 1, NULL),
(1858, 119, 'Mokhotlong', 'MK', 1, NULL),
(1859, 119, 'Qacha''s Nek', 'QN', 1, NULL),
(1860, 119, 'Quthing', 'QT', 1, NULL),
(1861, 119, 'Thaba-Tseka', 'TT', 1, NULL),
(1862, 120, 'Bomi', 'BI', 1, NULL),
(1863, 120, 'Bong', 'BG', 1, NULL),
(1864, 120, 'Grand Bassa', 'GB', 1, NULL),
(1865, 120, 'Grand Cape Mount', 'CM', 1, NULL),
(1866, 120, 'Grand Gedeh', 'GG', 1, NULL),
(1867, 120, 'Grand Kru', 'GK', 1, NULL),
(1868, 120, 'Lofa', 'LO', 1, NULL),
(1869, 120, 'Margibi', 'MG', 1, NULL),
(1870, 120, 'Maryland', 'ML', 1, NULL),
(1871, 120, 'Montserrado', 'MS', 1, NULL),
(1872, 120, 'Nimba', 'NB', 1, NULL),
(1873, 120, 'River Cess', 'RC', 1, NULL),
(1874, 120, 'Sinoe', 'SN', 1, NULL),
(1875, 121, 'Ajdabiya', 'AJ', 1, NULL),
(1876, 121, 'Al ''Aziziyah', 'AZ', 1, NULL),
(1877, 121, 'Al Fatih', 'FA', 1, NULL),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1, NULL),
(1879, 121, 'Al Jufrah', 'JU', 1, NULL),
(1880, 121, 'Al Khums', 'KH', 1, NULL),
(1881, 121, 'Al Kufrah', 'KU', 1, NULL),
(1882, 121, 'An Nuqat al Khams', 'NK', 1, NULL),
(1883, 121, 'Ash Shati''', 'AS', 1, NULL),
(1884, 121, 'Awbari', 'AW', 1, NULL),
(1885, 121, 'Az Zawiyah', 'ZA', 1, NULL),
(1886, 121, 'Banghazi', 'BA', 1, NULL),
(1887, 121, 'Darnah', 'DA', 1, NULL),
(1888, 121, 'Ghadamis', 'GD', 1, NULL),
(1889, 121, 'Gharyan', 'GY', 1, NULL),
(1890, 121, 'Misratah', 'MI', 1, NULL),
(1891, 121, 'Murzuq', 'MZ', 1, NULL),
(1892, 121, 'Sabha', 'SB', 1, NULL),
(1893, 121, 'Sawfajjin', 'SW', 1, NULL),
(1894, 121, 'Surt', 'SU', 1, NULL),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1, NULL),
(1896, 121, 'Tarhunah', 'TH', 1, NULL),
(1897, 121, 'Tubruq', 'TU', 1, NULL),
(1898, 121, 'Yafran', 'YA', 1, NULL),
(1899, 121, 'Zlitan', 'ZL', 1, NULL),
(1900, 122, 'Vaduz', 'V', 1, NULL),
(1901, 122, 'Schaan', 'A', 1, NULL),
(1902, 122, 'Balzers', 'B', 1, NULL),
(1903, 122, 'Triesen', 'N', 1, NULL),
(1904, 122, 'Eschen', 'E', 1, NULL),
(1905, 122, 'Mauren', 'M', 1, NULL),
(1906, 122, 'Triesenberg', 'T', 1, NULL),
(1907, 122, 'Ruggell', 'R', 1, NULL),
(1908, 122, 'Gamprin', 'G', 1, NULL),
(1909, 122, 'Schellenberg', 'L', 1, NULL),
(1910, 122, 'Planken', 'P', 1, NULL),
(1911, 123, 'Alytus', 'AL', 1, NULL),
(1912, 123, 'Kaunas', 'KA', 1, NULL),
(1913, 123, 'Klaipeda', 'KL', 1, NULL),
(1914, 123, 'Marijampole', 'MA', 1, NULL),
(1915, 123, 'Panevezys', 'PA', 1, NULL),
(1916, 123, 'Siauliai', 'SI', 1, NULL),
(1917, 123, 'Taurage', 'TA', 1, NULL),
(1918, 123, 'Telsiai', 'TE', 1, NULL),
(1919, 123, 'Utena', 'UT', 1, NULL),
(1920, 123, 'Vilnius', 'VI', 1, NULL),
(1921, 124, 'Diekirch', 'DD', 1, NULL),
(1922, 124, 'Clervaux', 'DC', 1, NULL),
(1923, 124, 'Redange', 'DR', 1, NULL),
(1924, 124, 'Vianden', 'DV', 1, NULL),
(1925, 124, 'Wiltz', 'DW', 1, NULL),
(1926, 124, 'Grevenmacher', 'GG', 1, NULL),
(1927, 124, 'Echternach', 'GE', 1, NULL),
(1928, 124, 'Remich', 'GR', 1, NULL),
(1929, 124, 'Luxembourg', 'LL', 1, NULL),
(1930, 124, 'Capellen', 'LC', 1, NULL),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1, NULL),
(1932, 124, 'Mersch', 'LM', 1, NULL),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1, NULL),
(1934, 125, 'St. Anthony Parish', 'ANT', 1, NULL),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1, NULL),
(1936, 125, 'Cathedral Parish', 'CAT', 1, NULL),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1, NULL),
(1938, 127, 'Antananarivo', 'AN', 1, NULL),
(1939, 127, 'Antsiranana', 'AS', 1, NULL),
(1940, 127, 'Fianarantsoa', 'FN', 1, NULL),
(1941, 127, 'Mahajanga', 'MJ', 1, NULL),
(1942, 127, 'Toamasina', 'TM', 1, NULL),
(1943, 127, 'Toliara', 'TL', 1, NULL),
(1944, 128, 'Balaka', 'BLK', 1, NULL),
(1945, 128, 'Blantyre', 'BLT', 1, NULL),
(1946, 128, 'Chikwawa', 'CKW', 1, NULL),
(1947, 128, 'Chiradzulu', 'CRD', 1, NULL),
(1948, 128, 'Chitipa', 'CTP', 1, NULL),
(1949, 128, 'Dedza', 'DDZ', 1, NULL),
(1950, 128, 'Dowa', 'DWA', 1, NULL),
(1951, 128, 'Karonga', 'KRG', 1, NULL),
(1952, 128, 'Kasungu', 'KSG', 1, NULL),
(1953, 128, 'Likoma', 'LKM', 1, NULL),
(1954, 128, 'Lilongwe', 'LLG', 1, NULL),
(1955, 128, 'Machinga', 'MCG', 1, NULL),
(1956, 128, 'Mangochi', 'MGC', 1, NULL),
(1957, 128, 'Mchinji', 'MCH', 1, NULL),
(1958, 128, 'Mulanje', 'MLJ', 1, NULL),
(1959, 128, 'Mwanza', 'MWZ', 1, NULL),
(1960, 128, 'Mzimba', 'MZM', 1, NULL),
(1961, 128, 'Ntcheu', 'NTU', 1, NULL),
(1962, 128, 'Nkhata Bay', 'NKB', 1, NULL),
(1963, 128, 'Nkhotakota', 'NKH', 1, NULL),
(1964, 128, 'Nsanje', 'NSJ', 1, NULL),
(1965, 128, 'Ntchisi', 'NTI', 1, NULL),
(1966, 128, 'Phalombe', 'PHL', 1, NULL),
(1967, 128, 'Rumphi', 'RMP', 1, NULL),
(1968, 128, 'Salima', 'SLM', 1, NULL),
(1969, 128, 'Thyolo', 'THY', 1, NULL),
(1970, 128, 'Zomba', 'ZBA', 1, NULL),
(1971, 129, 'Johor', 'MY-01', 1, NULL),
(1972, 129, 'Kedah', 'MY-02', 1, NULL),
(1973, 129, 'Kelantan', 'MY-03', 1, NULL),
(1974, 129, 'Labuan', 'MY-15', 1, NULL),
(1975, 129, 'Melaka', 'MY-04', 1, NULL),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1, NULL),
(1977, 129, 'Pahang', 'MY-06', 1, NULL),
(1978, 129, 'Perak', 'MY-08', 1, NULL),
(1979, 129, 'Perlis', 'MY-09', 1, NULL),
(1980, 129, 'Pulau Pinang', 'MY-07', 1, NULL),
(1981, 129, 'Sabah', 'MY-12', 1, NULL),
(1982, 129, 'Sarawak', 'MY-13', 1, NULL),
(1983, 129, 'Selangor', 'MY-10', 1, NULL),
(1984, 129, 'Terengganu', 'MY-11', 1, NULL),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1, NULL),
(4035, 129, 'Putrajaya', 'MY-16', 1, NULL),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1, NULL),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1, NULL),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1, NULL),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1, NULL),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1, NULL),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1, NULL),
(1992, 130, 'Faadhippolhu', 'FAA', 1, NULL),
(1993, 130, 'Male Atoll', 'MAA', 1, NULL),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1, NULL),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1, NULL),
(1996, 130, 'Felidhe Atoll', 'FEA', 1, NULL),
(1997, 130, 'Mulaku Atoll', 'MUA', 1, NULL),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1, NULL),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1, NULL),
(2000, 130, 'Kolhumadulu', 'KLH', 1, NULL),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1, NULL),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1, NULL),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1, NULL),
(2004, 130, 'Fua Mulaku', 'FMU', 1, NULL),
(2005, 130, 'Addu', 'ADD', 1, NULL),
(2006, 131, 'Gao', 'GA', 1, NULL),
(2007, 131, 'Kayes', 'KY', 1, NULL),
(2008, 131, 'Kidal', 'KD', 1, NULL),
(2009, 131, 'Koulikoro', 'KL', 1, NULL),
(2010, 131, 'Mopti', 'MP', 1, NULL),
(2011, 131, 'Segou', 'SG', 1, NULL),
(2012, 131, 'Sikasso', 'SK', 1, NULL),
(2013, 131, 'Tombouctou', 'TB', 1, NULL),
(2014, 131, 'Bamako Capital District', 'CD', 1, NULL),
(2015, 132, 'Attard', 'ATT', 1, NULL),
(2016, 132, 'Balzan', 'BAL', 1, NULL),
(2017, 132, 'Birgu', 'BGU', 1, NULL),
(2018, 132, 'Birkirkara', 'BKK', 1, NULL),
(2019, 132, 'Birzebbuga', 'BRZ', 1, NULL),
(2020, 132, 'Bormla', 'BOR', 1, NULL),
(2021, 132, 'Dingli', 'DIN', 1, NULL),
(2022, 132, 'Fgura', 'FGU', 1, NULL),
(2023, 132, 'Floriana', 'FLO', 1, NULL),
(2024, 132, 'Gudja', 'GDJ', 1, NULL),
(2025, 132, 'Gzira', 'GZR', 1, NULL),
(2026, 132, 'Gargur', 'GRG', 1, NULL),
(2027, 132, 'Gaxaq', 'GXQ', 1, NULL),
(2028, 132, 'Hamrun', 'HMR', 1, NULL),
(2029, 132, 'Iklin', 'IKL', 1, NULL),
(2030, 132, 'Isla', 'ISL', 1, NULL),
(2031, 132, 'Kalkara', 'KLK', 1, NULL),
(2032, 132, 'Kirkop', 'KRK', 1, NULL),
(2033, 132, 'Lija', 'LIJ', 1, NULL),
(2034, 132, 'Luqa', 'LUQ', 1, NULL),
(2035, 132, 'Marsa', 'MRS', 1, NULL),
(2036, 132, 'Marsaskala', 'MKL', 1, NULL),
(2037, 132, 'Marsaxlokk', 'MXL', 1, NULL),
(2038, 132, 'Mdina', 'MDN', 1, NULL),
(2039, 132, 'Melliea', 'MEL', 1, NULL),
(2040, 132, 'Mgarr', 'MGR', 1, NULL),
(2041, 132, 'Mosta', 'MST', 1, NULL),
(2042, 132, 'Mqabba', 'MQA', 1, NULL),
(2043, 132, 'Msida', 'MSI', 1, NULL),
(2044, 132, 'Mtarfa', 'MTF', 1, NULL),
(2045, 132, 'Naxxar', 'NAX', 1, NULL),
(2046, 132, 'Paola', 'PAO', 1, NULL),
(2047, 132, 'Pembroke', 'PEM', 1, NULL),
(2048, 132, 'Pieta', 'PIE', 1, NULL),
(2049, 132, 'Qormi', 'QOR', 1, NULL),
(2050, 132, 'Qrendi', 'QRE', 1, NULL),
(2051, 132, 'Rabat', 'RAB', 1, NULL),
(2052, 132, 'Safi', 'SAF', 1, NULL),
(2053, 132, 'San Giljan', 'SGI', 1, NULL),
(2054, 132, 'Santa Lucija', 'SLU', 1, NULL),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1, NULL),
(2056, 132, 'San Gwann', 'SGW', 1, NULL),
(2057, 132, 'Santa Venera', 'SVE', 1, NULL),
(2058, 132, 'Siggiewi', 'SIG', 1, NULL),
(2059, 132, 'Sliema', 'SLM', 1, NULL),
(2060, 132, 'Swieqi', 'SWQ', 1, NULL),
(2061, 132, 'Ta Xbiex', 'TXB', 1, NULL),
(2062, 132, 'Tarxien', 'TRX', 1, NULL),
(2063, 132, 'Valletta', 'VLT', 1, NULL),
(2064, 132, 'Xgajra', 'XGJ', 1, NULL),
(2065, 132, 'Zabbar', 'ZBR', 1, NULL),
(2066, 132, 'Zebbug', 'ZBG', 1, NULL),
(2067, 132, 'Zejtun', 'ZJT', 1, NULL),
(2068, 132, 'Zurrieq', 'ZRQ', 1, NULL),
(2069, 132, 'Fontana', 'FNT', 1, NULL),
(2070, 132, 'Ghajnsielem', 'GHJ', 1, NULL),
(2071, 132, 'Gharb', 'GHR', 1, NULL),
(2072, 132, 'Ghasri', 'GHS', 1, NULL),
(2073, 132, 'Kercem', 'KRC', 1, NULL),
(2074, 132, 'Munxar', 'MUN', 1, NULL),
(2075, 132, 'Nadur', 'NAD', 1, NULL),
(2076, 132, 'Qala', 'QAL', 1, NULL),
(2077, 132, 'Victoria', 'VIC', 1, NULL),
(2078, 132, 'San Lawrenz', 'SLA', 1, NULL),
(2079, 132, 'Sannat', 'SNT', 1, NULL),
(2080, 132, 'Xagra', 'ZAG', 1, NULL),
(2081, 132, 'Xewkija', 'XEW', 1, NULL),
(2082, 132, 'Zebbug', 'ZEB', 1, NULL),
(2083, 133, 'Ailinginae', 'ALG', 1, NULL),
(2084, 133, 'Ailinglaplap', 'ALL', 1, NULL),
(2085, 133, 'Ailuk', 'ALK', 1, NULL),
(2086, 133, 'Arno', 'ARN', 1, NULL),
(2087, 133, 'Aur', 'AUR', 1, NULL),
(2088, 133, 'Bikar', 'BKR', 1, NULL),
(2089, 133, 'Bikini', 'BKN', 1, NULL),
(2090, 133, 'Bokak', 'BKK', 1, NULL),
(2091, 133, 'Ebon', 'EBN', 1, NULL),
(2092, 133, 'Enewetak', 'ENT', 1, NULL),
(2093, 133, 'Erikub', 'EKB', 1, NULL),
(2094, 133, 'Jabat', 'JBT', 1, NULL),
(2095, 133, 'Jaluit', 'JLT', 1, NULL),
(2096, 133, 'Jemo', 'JEM', 1, NULL),
(2097, 133, 'Kili', 'KIL', 1, NULL),
(2098, 133, 'Kwajalein', 'KWJ', 1, NULL),
(2099, 133, 'Lae', 'LAE', 1, NULL),
(2100, 133, 'Lib', 'LIB', 1, NULL),
(2101, 133, 'Likiep', 'LKP', 1, NULL),
(2102, 133, 'Majuro', 'MJR', 1, NULL),
(2103, 133, 'Maloelap', 'MLP', 1, NULL),
(2104, 133, 'Mejit', 'MJT', 1, NULL),
(2105, 133, 'Mili', 'MIL', 1, NULL),
(2106, 133, 'Namorik', 'NMK', 1, NULL),
(2107, 133, 'Namu', 'NAM', 1, NULL),
(2108, 133, 'Rongelap', 'RGL', 1, NULL),
(2109, 133, 'Rongrik', 'RGK', 1, NULL),
(2110, 133, 'Toke', 'TOK', 1, NULL),
(2111, 133, 'Ujae', 'UJA', 1, NULL),
(2112, 133, 'Ujelang', 'UJL', 1, NULL),
(2113, 133, 'Utirik', 'UTK', 1, NULL),
(2114, 133, 'Wotho', 'WTH', 1, NULL),
(2115, 133, 'Wotje', 'WTJ', 1, NULL),
(2116, 135, 'Adrar', 'AD', 1, NULL),
(2117, 135, 'Assaba', 'AS', 1, NULL),
(2118, 135, 'Brakna', 'BR', 1, NULL),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1, NULL),
(2120, 135, 'Gorgol', 'GO', 1, NULL),
(2121, 135, 'Guidimaka', 'GM', 1, NULL),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1, NULL),
(2123, 135, 'Hodh El Gharbi', 'HG', 1, NULL),
(2124, 135, 'Inchiri', 'IN', 1, NULL),
(2125, 135, 'Tagant', 'TA', 1, NULL),
(2126, 135, 'Tiris Zemmour', 'TZ', 1, NULL),
(2127, 135, 'Trarza', 'TR', 1, NULL),
(2128, 135, 'Nouakchott', 'NO', 1, NULL),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1, NULL),
(2130, 136, 'Curepipe', 'CU', 1, NULL),
(2131, 136, 'Port Louis', 'PU', 1, NULL),
(2132, 136, 'Quatre Bornes', 'QB', 1, NULL),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1, NULL),
(2134, 136, 'Agalega Islands', 'AG', 1, NULL),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1, NULL),
(2136, 136, 'Rodrigues', 'RO', 1, NULL),
(2137, 136, 'Black River', 'BL', 1, NULL),
(2138, 136, 'Flacq', 'FL', 1, NULL),
(2139, 136, 'Grand Port', 'GP', 1, NULL),
(2140, 136, 'Moka', 'MO', 1, NULL),
(2141, 136, 'Pamplemousses', 'PA', 1, NULL),
(2142, 136, 'Plaines Wilhems', 'PW', 1, NULL),
(2143, 136, 'Port Louis', 'PL', 1, NULL),
(2144, 136, 'Riviere du Rempart', 'RR', 1, NULL),
(2145, 136, 'Savanne', 'SA', 1, NULL),
(2146, 138, 'Baja California Norte', 'BN', 1, NULL),
(2147, 138, 'Baja California Sur', 'BS', 1, NULL),
(2148, 138, 'Campeche', 'CA', 1, NULL),
(2149, 138, 'Chiapas', 'CI', 1, NULL),
(2150, 138, 'Chihuahua', 'CH', 1, NULL),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1, NULL),
(2152, 138, 'Colima', 'CL', 1, NULL),
(2153, 138, 'Distrito Federal', 'DF', 1, NULL),
(2154, 138, 'Durango', 'DU', 1, NULL),
(2155, 138, 'Guanajuato', 'GA', 1, NULL),
(2156, 138, 'Guerrero', 'GE', 1, NULL),
(2157, 138, 'Hidalgo', 'HI', 1, NULL),
(2158, 138, 'Jalisco', 'JA', 1, NULL),
(2159, 138, 'Mexico', 'ME', 1, NULL),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1, NULL),
(2161, 138, 'Morelos', 'MO', 1, NULL),
(2162, 138, 'Nayarit', 'NA', 1, NULL),
(2163, 138, 'Nuevo Leon', 'NL', 1, NULL),
(2164, 138, 'Oaxaca', 'OA', 1, NULL),
(2165, 138, 'Puebla', 'PU', 1, NULL),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1, NULL),
(2167, 138, 'Quintana Roo', 'QR', 1, NULL),
(2168, 138, 'San Luis Potosi', 'SA', 1, NULL),
(2169, 138, 'Sinaloa', 'SI', 1, NULL),
(2170, 138, 'Sonora', 'SO', 1, NULL),
(2171, 138, 'Tabasco', 'TB', 1, NULL),
(2172, 138, 'Tamaulipas', 'TM', 1, NULL),
(2173, 138, 'Tlaxcala', 'TL', 1, NULL),
(2174, 138, 'Veracruz-Llave', 'VE', 1, NULL),
(2175, 138, 'Yucatan', 'YU', 1, NULL),
(2176, 138, 'Zacatecas', 'ZA', 1, NULL),
(2177, 139, 'Chuuk', 'C', 1, NULL),
(2178, 139, 'Kosrae', 'K', 1, NULL),
(2179, 139, 'Pohnpei', 'P', 1, NULL),
(2180, 139, 'Yap', 'Y', 1, NULL),
(2181, 140, 'Gagauzia', 'GA', 1, NULL),
(2182, 140, 'Chisinau', 'CU', 1, NULL),
(2183, 140, 'Balti', 'BA', 1, NULL),
(2184, 140, 'Cahul', 'CA', 1, NULL),
(2185, 140, 'Edinet', 'ED', 1, NULL),
(2186, 140, 'Lapusna', 'LA', 1, NULL),
(2187, 140, 'Orhei', 'OR', 1, NULL),
(2188, 140, 'Soroca', 'SO', 1, NULL),
(2189, 140, 'Tighina', 'TI', 1, NULL),
(2190, 140, 'Ungheni', 'UN', 1, NULL),
(2191, 140, 'St‚nga Nistrului', 'SN', 1, NULL),
(2192, 141, 'Fontvieille', 'FV', 1, NULL),
(2193, 141, 'La Condamine', 'LC', 1, NULL),
(2194, 141, 'Monaco-Ville', 'MV', 1, NULL),
(2195, 141, 'Monte-Carlo', 'MC', 1, NULL),
(2196, 142, 'Ulanbaatar', '1', 1, NULL),
(2197, 142, 'Orhon', '035', 1, NULL),
(2198, 142, 'Darhan uul', '037', 1, NULL),
(2199, 142, 'Hentiy', '039', 1, NULL),
(2200, 142, 'Hovsgol', '041', 1, NULL),
(2201, 142, 'Hovd', '043', 1, NULL),
(2202, 142, 'Uvs', '046', 1, NULL),
(2203, 142, 'Tov', '047', 1, NULL),
(2204, 142, 'Selenge', '049', 1, NULL),
(2205, 142, 'Suhbaatar', '051', 1, NULL),
(2206, 142, 'Omnogovi', '053', 1, NULL),
(2207, 142, 'Ovorhangay', '055', 1, NULL),
(2208, 142, 'Dzavhan', '057', 1, NULL),
(2209, 142, 'DundgovL', '059', 1, NULL),
(2210, 142, 'Dornod', '061', 1, NULL),
(2211, 142, 'Dornogov', '063', 1, NULL),
(2212, 142, 'Govi-Sumber', '064', 1, NULL),
(2213, 142, 'Govi-Altay', '065', 1, NULL),
(2214, 142, 'Bulgan', '067', 1, NULL),
(2215, 142, 'Bayanhongor', '069', 1, NULL),
(2216, 142, 'Bayan-Olgiy', '071', 1, NULL),
(2217, 142, 'Arhangay', '073', 1, NULL),
(2218, 143, 'Saint Anthony', 'A', 1, NULL),
(2219, 143, 'Saint Georges', 'G', 1, NULL),
(2220, 143, 'Saint Peter', 'P', 1, NULL),
(2221, 144, 'Agadir', 'AGD', 1, NULL),
(2222, 144, 'Al Hoceima', 'HOC', 1, NULL),
(2223, 144, 'Azilal', 'AZI', 1, NULL),
(2224, 144, 'Beni Mellal', 'BME', 1, NULL),
(2225, 144, 'Ben Slimane', 'BSL', 1, NULL),
(2226, 144, 'Boulemane', 'BLM', 1, NULL),
(2227, 144, 'Casablanca', 'CBL', 1, NULL),
(2228, 144, 'Chaouen', 'CHA', 1, NULL),
(2229, 144, 'El Jadida', 'EJA', 1, NULL),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1, NULL),
(2231, 144, 'Er Rachidia', 'ERA', 1, NULL),
(2232, 144, 'Essaouira', 'ESS', 1, NULL),
(2233, 144, 'Fes', 'FES', 1, NULL),
(2234, 144, 'Figuig', 'FIG', 1, NULL),
(2235, 144, 'Guelmim', 'GLM', 1, NULL),
(2236, 144, 'Ifrane', 'IFR', 1, NULL),
(2237, 144, 'Kenitra', 'KEN', 1, NULL),
(2238, 144, 'Khemisset', 'KHM', 1, NULL),
(2239, 144, 'Khenifra', 'KHN', 1, NULL),
(2240, 144, 'Khouribga', 'KHO', 1, NULL),
(2241, 144, 'Laayoune', 'LYN', 1, NULL),
(2242, 144, 'Larache', 'LAR', 1, NULL),
(2243, 144, 'Marrakech', 'MRK', 1, NULL),
(2244, 144, 'Meknes', 'MKN', 1, NULL),
(2245, 144, 'Nador', 'NAD', 1, NULL),
(2246, 144, 'Ouarzazate', 'ORZ', 1, NULL),
(2247, 144, 'Oujda', 'OUJ', 1, NULL),
(2248, 144, 'Rabat-Sale', 'RSA', 1, NULL),
(2249, 144, 'Safi', 'SAF', 1, NULL),
(2250, 144, 'Settat', 'SET', 1, NULL),
(2251, 144, 'Sidi Kacem', 'SKA', 1, NULL),
(2252, 144, 'Tangier', 'TGR', 1, NULL),
(2253, 144, 'Tan-Tan', 'TAN', 1, NULL),
(2254, 144, 'Taounate', 'TAO', 1, NULL),
(2255, 144, 'Taroudannt', 'TRD', 1, NULL),
(2256, 144, 'Tata', 'TAT', 1, NULL),
(2257, 144, 'Taza', 'TAZ', 1, NULL),
(2258, 144, 'Tetouan', 'TET', 1, NULL),
(2259, 144, 'Tiznit', 'TIZ', 1, NULL),
(2260, 144, 'Ad Dakhla', 'ADK', 1, NULL),
(2261, 144, 'Boujdour', 'BJD', 1, NULL),
(2262, 144, 'Es Smara', 'ESM', 1, NULL),
(2263, 145, 'Cabo Delgado', 'CD', 1, NULL),
(2264, 145, 'Gaza', 'GZ', 1, NULL),
(2265, 145, 'Inhambane', 'IN', 1, NULL),
(2266, 145, 'Manica', 'MN', 1, NULL),
(2267, 145, 'Maputo (city)', 'MC', 1, NULL),
(2268, 145, 'Maputo', 'MP', 1, NULL),
(2269, 145, 'Nampula', 'NA', 1, NULL),
(2270, 145, 'Niassa', 'NI', 1, NULL),
(2271, 145, 'Sofala', 'SO', 1, NULL),
(2272, 145, 'Tete', 'TE', 1, NULL),
(2273, 145, 'Zambezia', 'ZA', 1, NULL),
(2274, 146, 'Ayeyarwady', 'AY', 1, NULL),
(2275, 146, 'Bago', 'BG', 1, NULL),
(2276, 146, 'Magway', 'MG', 1, NULL),
(2277, 146, 'Mandalay', 'MD', 1, NULL),
(2278, 146, 'Sagaing', 'SG', 1, NULL),
(2279, 146, 'Tanintharyi', 'TN', 1, NULL),
(2280, 146, 'Yangon', 'YG', 1, NULL),
(2281, 146, 'Chin State', 'CH', 1, NULL),
(2282, 146, 'Kachin State', 'KC', 1, NULL),
(2283, 146, 'Kayah State', 'KH', 1, NULL),
(2284, 146, 'Kayin State', 'KN', 1, NULL),
(2285, 146, 'Mon State', 'MN', 1, NULL),
(2286, 146, 'Rakhine State', 'RK', 1, NULL),
(2287, 146, 'Shan State', 'SH', 1, NULL),
(2288, 147, 'Caprivi', 'CA', 1, NULL),
(2289, 147, 'Erongo', 'ER', 1, NULL),
(2290, 147, 'Hardap', 'HA', 1, NULL),
(2291, 147, 'Karas', 'KR', 1, NULL),
(2292, 147, 'Kavango', 'KV', 1, NULL),
(2293, 147, 'Khomas', 'KH', 1, NULL),
(2294, 147, 'Kunene', 'KU', 1, NULL),
(2295, 147, 'Ohangwena', 'OW', 1, NULL),
(2296, 147, 'Omaheke', 'OK', 1, NULL),
(2297, 147, 'Omusati', 'OT', 1, NULL),
(2298, 147, 'Oshana', 'ON', 1, NULL),
(2299, 147, 'Oshikoto', 'OO', 1, NULL),
(2300, 147, 'Otjozondjupa', 'OJ', 1, NULL),
(2301, 148, 'Aiwo', 'AO', 1, NULL),
(2302, 148, 'Anabar', 'AA', 1, NULL),
(2303, 148, 'Anetan', 'AT', 1, NULL),
(2304, 148, 'Anibare', 'AI', 1, NULL),
(2305, 148, 'Baiti', 'BA', 1, NULL),
(2306, 148, 'Boe', 'BO', 1, NULL),
(2307, 148, 'Buada', 'BU', 1, NULL),
(2308, 148, 'Denigomodu', 'DE', 1, NULL),
(2309, 148, 'Ewa', 'EW', 1, NULL),
(2310, 148, 'Ijuw', 'IJ', 1, NULL),
(2311, 148, 'Meneng', 'ME', 1, NULL),
(2312, 148, 'Nibok', 'NI', 1, NULL),
(2313, 148, 'Uaboe', 'UA', 1, NULL),
(2314, 148, 'Yaren', 'YA', 1, NULL),
(2315, 149, 'Bagmati', 'BA', 1, NULL),
(2316, 149, 'Bheri', 'BH', 1, NULL),
(2317, 149, 'Dhawalagiri', 'DH', 1, NULL),
(2318, 149, 'Gandaki', 'GA', 1, NULL),
(2319, 149, 'Janakpur', 'JA', 1, NULL),
(2320, 149, 'Karnali', 'KA', 1, NULL),
(2321, 149, 'Kosi', 'KO', 1, NULL),
(2322, 149, 'Lumbini', 'LU', 1, NULL),
(2323, 149, 'Mahakali', 'MA', 1, NULL),
(2324, 149, 'Mechi', 'ME', 1, NULL),
(2325, 149, 'Narayani', 'NA', 1, NULL),
(2326, 149, 'Rapti', 'RA', 1, NULL),
(2327, 149, 'Sagarmatha', 'SA', 1, NULL),
(2328, 149, 'Seti', 'SE', 1, NULL),
(2329, 150, 'Drenthe', 'DR', 1, NULL),
(2330, 150, 'Flevoland', 'FL', 1, NULL),
(2331, 150, 'Friesland', 'FR', 1, NULL),
(2332, 150, 'Gelderland', 'GE', 1, NULL),
(2333, 150, 'Groningen', 'GR', 1, NULL),
(2334, 150, 'Limburg', 'LI', 1, NULL),
(2335, 150, 'Noord Brabant', 'NB', 1, NULL),
(2336, 150, 'Noord Holland', 'NH', 1, NULL),
(2337, 150, 'Overijssel', 'OV', 1, NULL),
(2338, 150, 'Utrecht', 'UT', 1, NULL),
(2339, 150, 'Zeeland', 'ZE', 1, NULL),
(2340, 150, 'Zuid Holland', 'ZH', 1, NULL),
(2341, 152, 'Iles Loyaute', 'L', 1, NULL),
(2342, 152, 'Nord', 'N', 1, NULL),
(2343, 152, 'Sud', 'S', 1, NULL),
(2344, 153, 'Auckland', 'AUK', 1, NULL),
(2345, 153, 'Bay of Plenty', 'BOP', 1, NULL),
(2346, 153, 'Canterbury', 'CAN', 1, NULL),
(2347, 153, 'Coromandel', 'COR', 1, NULL),
(2348, 153, 'Gisborne', 'GIS', 1, NULL),
(2349, 153, 'Fiordland', 'FIO', 1, NULL),
(2350, 153, 'Hawke''s Bay', 'HKB', 1, NULL),
(2351, 153, 'Marlborough', 'MBH', 1, NULL),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1, NULL),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1, NULL),
(2354, 153, 'Nelson', 'NSN', 1, NULL),
(2355, 153, 'Northland', 'NTL', 1, NULL),
(2356, 153, 'Otago', 'OTA', 1, NULL),
(2357, 153, 'Southland', 'STL', 1, NULL),
(2358, 153, 'Taranaki', 'TKI', 1, NULL),
(2359, 153, 'Wellington', 'WGN', 1, NULL),
(2360, 153, 'Waikato', 'WKO', 1, NULL),
(2361, 153, 'Wairarapa', 'WAI', 1, NULL),
(2362, 153, 'West Coast', 'WTC', 1, NULL),
(2363, 154, 'Atlantico Norte', 'AN', 1, NULL),
(2364, 154, 'Atlantico Sur', 'AS', 1, NULL),
(2365, 154, 'Boaco', 'BO', 1, NULL),
(2366, 154, 'Carazo', 'CA', 1, NULL),
(2367, 154, 'Chinandega', 'CI', 1, NULL),
(2368, 154, 'Chontales', 'CO', 1, NULL),
(2369, 154, 'Esteli', 'ES', 1, NULL),
(2370, 154, 'Granada', 'GR', 1, NULL),
(2371, 154, 'Jinotega', 'JI', 1, NULL),
(2372, 154, 'Leon', 'LE', 1, NULL),
(2373, 154, 'Madriz', 'MD', 1, NULL),
(2374, 154, 'Managua', 'MN', 1, NULL),
(2375, 154, 'Masaya', 'MS', 1, NULL),
(2376, 154, 'Matagalpa', 'MT', 1, NULL),
(2377, 154, 'Nuevo Segovia', 'NS', 1, NULL),
(2378, 154, 'Rio San Juan', 'RS', 1, NULL),
(2379, 154, 'Rivas', 'RI', 1, NULL),
(2380, 155, 'Agadez', 'AG', 1, NULL),
(2381, 155, 'Diffa', 'DF', 1, NULL),
(2382, 155, 'Dosso', 'DS', 1, NULL),
(2383, 155, 'Maradi', 'MA', 1, NULL),
(2384, 155, 'Niamey', 'NM', 1, NULL),
(2385, 155, 'Tahoua', 'TH', 1, NULL),
(2386, 155, 'Tillaberi', 'TL', 1, NULL),
(2387, 155, 'Zinder', 'ZD', 1, NULL),
(2388, 156, 'Abia', 'AB', 1, NULL),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1, NULL),
(2390, 156, 'Adamawa', 'AD', 1, NULL),
(2391, 156, 'Akwa Ibom', 'AK', 1, NULL),
(2392, 156, 'Anambra', 'AN', 1, NULL),
(2393, 156, 'Bauchi', 'BC', 1, NULL),
(2394, 156, 'Bayelsa', 'BY', 1, NULL),
(2395, 156, 'Benue', 'BN', 1, NULL),
(2396, 156, 'Borno', 'BO', 1, NULL),
(2397, 156, 'Cross River', 'CR', 1, NULL),
(2398, 156, 'Delta', 'DE', 1, NULL),
(2399, 156, 'Ebonyi', 'EB', 1, NULL),
(2400, 156, 'Edo', 'ED', 1, NULL),
(2401, 156, 'Ekiti', 'EK', 1, NULL),
(2402, 156, 'Enugu', 'EN', 1, NULL),
(2403, 156, 'Gombe', 'GO', 1, NULL),
(2404, 156, 'Imo', 'IM', 1, NULL),
(2405, 156, 'Jigawa', 'JI', 1, NULL),
(2406, 156, 'Kaduna', 'KD', 1, NULL),
(2407, 156, 'Kano', 'KN', 1, NULL),
(2408, 156, 'Katsina', 'KT', 1, NULL),
(2409, 156, 'Kebbi', 'KE', 1, NULL),
(2410, 156, 'Kogi', 'KO', 1, NULL),
(2411, 156, 'Kwara', 'KW', 1, NULL),
(2412, 156, 'Lagos', 'LA', 1, NULL),
(2413, 156, 'Nassarawa', 'NA', 1, NULL),
(2414, 156, 'Niger', 'NI', 1, NULL),
(2415, 156, 'Ogun', 'OG', 1, NULL),
(2416, 156, 'Ondo', 'ONG', 1, NULL),
(2417, 156, 'Osun', 'OS', 1, NULL),
(2418, 156, 'Oyo', 'OY', 1, NULL),
(2419, 156, 'Plateau', 'PL', 1, NULL),
(2420, 156, 'Rivers', 'RI', 1, NULL),
(2421, 156, 'Sokoto', 'SO', 1, NULL),
(2422, 156, 'Taraba', 'TA', 1, NULL),
(2423, 156, 'Yobe', 'YO', 1, NULL),
(2424, 156, 'Zamfara', 'ZA', 1, NULL),
(2425, 159, 'Northern Islands', 'N', 1, NULL),
(2426, 159, 'Rota', 'R', 1, NULL),
(2427, 159, 'Saipan', 'S', 1, NULL),
(2428, 159, 'Tinian', 'T', 1, NULL),
(2429, 160, 'Akershus', 'AK', 1, NULL),
(2430, 160, 'Aust-Agder', 'AA', 1, NULL),
(2431, 160, 'Buskerud', 'BU', 1, NULL),
(2432, 160, 'Finnmark', 'FM', 1, NULL),
(2433, 160, 'Hedmark', 'HM', 1, NULL),
(2434, 160, 'Hordaland', 'HL', 1, NULL),
(2435, 160, 'More og Romdal', 'MR', 1, NULL),
(2436, 160, 'Nord-Trondelag', 'NT', 1, NULL),
(2437, 160, 'Nordland', 'NL', 1, NULL),
(2438, 160, 'Ostfold', 'OF', 1, NULL),
(2439, 160, 'Oppland', 'OP', 1, NULL),
(2440, 160, 'Oslo', 'OL', 1, NULL),
(2441, 160, 'Rogaland', 'RL', 1, NULL),
(2442, 160, 'Sor-Trondelag', 'ST', 1, NULL),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1, NULL),
(2444, 160, 'Svalbard', 'SV', 1, NULL),
(2445, 160, 'Telemark', 'TM', 1, NULL),
(2446, 160, 'Troms', 'TR', 1, NULL),
(2447, 160, 'Vest-Agder', 'VA', 1, NULL),
(2448, 160, 'Vestfold', 'VF', 1, NULL),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1, NULL),
(2450, 161, 'Al Batinah', 'BA', 1, NULL),
(2451, 161, 'Al Wusta', 'WU', 1, NULL),
(2452, 161, 'Ash Sharqiyah', 'SH', 1, NULL),
(2453, 161, 'Az Zahirah', 'ZA', 1, NULL),
(2454, 161, 'Masqat', 'MA', 1, NULL),
(2455, 161, 'Musandam', 'MU', 1, NULL),
(2456, 161, 'Zufar', 'ZU', 1, NULL),
(2457, 162, 'Balochistan', 'B', 1, NULL),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1, NULL),
(2459, 162, 'Islamabad Capital Territory', 'I', 1, NULL),
(2460, 162, 'North-West Frontier', 'N', 1, NULL),
(2461, 162, 'Punjab', 'P', 1, NULL),
(2462, 162, 'Sindh', 'S', 1, NULL),
(2463, 163, 'Aimeliik', 'AM', 1, NULL),
(2464, 163, 'Airai', 'AR', 1, NULL),
(2465, 163, 'Angaur', 'AN', 1, NULL),
(2466, 163, 'Hatohobei', 'HA', 1, NULL),
(2467, 163, 'Kayangel', 'KA', 1, NULL),
(2468, 163, 'Koror', 'KO', 1, NULL),
(2469, 163, 'Melekeok', 'ME', 1, NULL),
(2470, 163, 'Ngaraard', 'NA', 1, NULL),
(2471, 163, 'Ngarchelong', 'NG', 1, NULL),
(2472, 163, 'Ngardmau', 'ND', 1, NULL),
(2473, 163, 'Ngatpang', 'NT', 1, NULL),
(2474, 163, 'Ngchesar', 'NC', 1, NULL),
(2475, 163, 'Ngeremlengui', 'NR', 1, NULL),
(2476, 163, 'Ngiwal', 'NW', 1, NULL),
(2477, 163, 'Peleliu', 'PE', 1, NULL),
(2478, 163, 'Sonsorol', 'SO', 1, NULL),
(2479, 164, 'Bocas del Toro', 'BT', 1, NULL),
(2480, 164, 'Chiriqui', 'CH', 1, NULL),
(2481, 164, 'Cocle', 'CC', 1, NULL),
(2482, 164, 'Colon', 'CL', 1, NULL),
(2483, 164, 'Darien', 'DA', 1, NULL),
(2484, 164, 'Herrera', 'HE', 1, NULL),
(2485, 164, 'Los Santos', 'LS', 1, NULL),
(2486, 164, 'Panama', 'PA', 1, NULL),
(2487, 164, 'San Blas', 'SB', 1, NULL),
(2488, 164, 'Veraguas', 'VG', 1, NULL),
(2489, 165, 'Bougainville', 'BV', 1, NULL),
(2490, 165, 'Central', 'CE', 1, NULL),
(2491, 165, 'Chimbu', 'CH', 1, NULL),
(2492, 165, 'Eastern Highlands', 'EH', 1, NULL),
(2493, 165, 'East New Britain', 'EB', 1, NULL),
(2494, 165, 'East Sepik', 'ES', 1, NULL),
(2495, 165, 'Enga', 'EN', 1, NULL),
(2496, 165, 'Gulf', 'GU', 1, NULL),
(2497, 165, 'Madang', 'MD', 1, NULL),
(2498, 165, 'Manus', 'MN', 1, NULL),
(2499, 165, 'Milne Bay', 'MB', 1, NULL),
(2500, 165, 'Morobe', 'MR', 1, NULL),
(2501, 165, 'National Capital', 'NC', 1, NULL),
(2502, 165, 'New Ireland', 'NI', 1, NULL),
(2503, 165, 'Northern', 'NO', 1, NULL),
(2504, 165, 'Sandaun', 'SA', 1, NULL),
(2505, 165, 'Southern Highlands', 'SH', 1, NULL),
(2506, 165, 'Western', 'WE', 1, NULL),
(2507, 165, 'Western Highlands', 'WH', 1, NULL),
(2508, 165, 'West New Britain', 'WB', 1, NULL),
(2509, 166, 'Alto Paraguay', 'AG', 1, NULL),
(2510, 166, 'Alto Parana', 'AN', 1, NULL),
(2511, 166, 'Amambay', 'AM', 1, NULL),
(2512, 166, 'Asuncion', 'AS', 1, NULL),
(2513, 166, 'Boqueron', 'BO', 1, NULL),
(2514, 166, 'Caaguazu', 'CG', 1, NULL),
(2515, 166, 'Caazapa', 'CZ', 1, NULL),
(2516, 166, 'Canindeyu', 'CN', 1, NULL),
(2517, 166, 'Central', 'CE', 1, NULL),
(2518, 166, 'Concepcion', 'CC', 1, NULL),
(2519, 166, 'Cordillera', 'CD', 1, NULL),
(2520, 166, 'Guaira', 'GU', 1, NULL),
(2521, 166, 'Itapua', 'IT', 1, NULL),
(2522, 166, 'Misiones', 'MI', 1, NULL),
(2523, 166, 'Neembucu', 'NE', 1, NULL),
(2524, 166, 'Paraguari', 'PA', 1, NULL),
(2525, 166, 'Presidente Hayes', 'PH', 1, NULL),
(2526, 166, 'San Pedro', 'SP', 1, NULL),
(2527, 167, 'Amazonas', 'AM', 1, NULL),
(2528, 167, 'Ancash', 'AN', 1, NULL),
(2529, 167, 'Apurimac', 'AP', 1, NULL),
(2530, 167, 'Arequipa', 'AR', 1, NULL),
(2531, 167, 'Ayacucho', 'AY', 1, NULL),
(2532, 167, 'Cajamarca', 'CJ', 1, NULL),
(2533, 167, 'Callao', 'CL', 1, NULL),
(2534, 167, 'Cusco', 'CU', 1, NULL),
(2535, 167, 'Huancavelica', 'HV', 1, NULL),
(2536, 167, 'Huanuco', 'HO', 1, NULL),
(2537, 167, 'Ica', 'IC', 1, NULL),
(2538, 167, 'Junin', 'JU', 1, NULL),
(2539, 167, 'La Libertad', 'LD', 1, NULL),
(2540, 167, 'Lambayeque', 'LY', 1, NULL),
(2541, 167, 'Lima', 'LI', 1, NULL),
(2542, 167, 'Loreto', 'LO', 1, NULL),
(2543, 167, 'Madre de Dios', 'MD', 1, NULL),
(2544, 167, 'Moquegua', 'MO', 1, NULL),
(2545, 167, 'Pasco', 'PA', 1, NULL),
(2546, 167, 'Piura', 'PI', 1, NULL),
(2547, 167, 'Puno', 'PU', 1, NULL),
(2548, 167, 'San Martin', 'SM', 1, NULL),
(2549, 167, 'Tacna', 'TA', 1, NULL),
(2550, 167, 'Tumbes', 'TU', 1, NULL),
(2551, 167, 'Ucayali', 'UC', 1, NULL),
(2552, 168, 'Abra', 'ABR', 1, NULL),
(2553, 168, 'Agusan del Norte', 'ANO', 1, NULL),
(2554, 168, 'Agusan del Sur', 'ASU', 1, NULL),
(2555, 168, 'Aklan', 'AKL', 1, NULL),
(2556, 168, 'Albay', 'ALB', 1, NULL),
(2557, 168, 'Antique', 'ANT', 1, NULL),
(2558, 168, 'Apayao', 'APY', 1, NULL),
(2559, 168, 'Aurora', 'AUR', 1, NULL),
(2560, 168, 'Basilan', 'BAS', 1, NULL),
(2561, 168, 'Bataan', 'BTA', 1, NULL),
(2562, 168, 'Batanes', 'BTE', 1, NULL),
(2563, 168, 'Batangas', 'BTG', 1, NULL),
(2564, 168, 'Biliran', 'BLR', 1, NULL),
(2565, 168, 'Benguet', 'BEN', 1, NULL),
(2566, 168, 'Bohol', 'BOL', 1, NULL),
(2567, 168, 'Bukidnon', 'BUK', 1, NULL),
(2568, 168, 'Bulacan', 'BUL', 1, NULL),
(2569, 168, 'Cagayan', 'CAG', 1, NULL),
(2570, 168, 'Camarines Norte', 'CNO', 1, NULL),
(2571, 168, 'Camarines Sur', 'CSU', 1, NULL),
(2572, 168, 'Camiguin', 'CAM', 1, NULL),
(2573, 168, 'Capiz', 'CAP', 1, NULL),
(2574, 168, 'Catanduanes', 'CAT', 1, NULL),
(2575, 168, 'Cavite', 'CAV', 1, NULL),
(2576, 168, 'Cebu', 'CEB', 1, NULL),
(2577, 168, 'Compostela', 'CMP', 1, NULL),
(2578, 168, 'Davao del Norte', 'DNO', 1, NULL),
(2579, 168, 'Davao del Sur', 'DSU', 1, NULL),
(2580, 168, 'Davao Oriental', 'DOR', 1, NULL),
(2581, 168, 'Eastern Samar', 'ESA', 1, NULL),
(2582, 168, 'Guimaras', 'GUI', 1, NULL),
(2583, 168, 'Ifugao', 'IFU', 1, NULL),
(2584, 168, 'Ilocos Norte', 'INO', 1, NULL),
(2585, 168, 'Ilocos Sur', 'ISU', 1, NULL),
(2586, 168, 'Iloilo', 'ILO', 1, NULL),
(2587, 168, 'Isabela', 'ISA', 1, NULL),
(2588, 168, 'Kalinga', 'KAL', 1, NULL),
(2589, 168, 'Laguna', 'LAG', 1, NULL),
(2590, 168, 'Lanao del Norte', 'LNO', 1, NULL),
(2591, 168, 'Lanao del Sur', 'LSU', 1, NULL),
(2592, 168, 'La Union', 'UNI', 1, NULL),
(2593, 168, 'Leyte', 'LEY', 1, NULL),
(2594, 168, 'Maguindanao', 'MAG', 1, NULL),
(2595, 168, 'Marinduque', 'MRN', 1, NULL),
(2596, 168, 'Masbate', 'MSB', 1, NULL),
(2597, 168, 'Mindoro Occidental', 'MIC', 1, NULL),
(2598, 168, 'Mindoro Oriental', 'MIR', 1, NULL),
(2599, 168, 'Misamis Occidental', 'MSC', 1, NULL),
(2600, 168, 'Misamis Oriental', 'MOR', 1, NULL),
(2601, 168, 'Mountain', 'MOP', 1, NULL),
(2602, 168, 'Negros Occidental', 'NOC', 1, NULL),
(2603, 168, 'Negros Oriental', 'NOR', 1, NULL),
(2604, 168, 'North Cotabato', 'NCT', 1, NULL),
(2605, 168, 'Northern Samar', 'NSM', 1, NULL),
(2606, 168, 'Nueva Ecija', 'NEC', 1, NULL),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1, NULL),
(2608, 168, 'Palawan', 'PLW', 1, NULL),
(2609, 168, 'Pampanga', 'PMP', 1, NULL),
(2610, 168, 'Pangasinan', 'PNG', 1, NULL),
(2611, 168, 'Quezon', 'QZN', 1, NULL),
(2612, 168, 'Quirino', 'QRN', 1, NULL),
(2613, 168, 'Rizal', 'RIZ', 1, NULL),
(2614, 168, 'Romblon', 'ROM', 1, NULL),
(2615, 168, 'Samar', 'SMR', 1, NULL),
(2616, 168, 'Sarangani', 'SRG', 1, NULL),
(2617, 168, 'Siquijor', 'SQJ', 1, NULL),
(2618, 168, 'Sorsogon', 'SRS', 1, NULL),
(2619, 168, 'South Cotabato', 'SCO', 1, NULL),
(2620, 168, 'Southern Leyte', 'SLE', 1, NULL),
(2621, 168, 'Sultan Kudarat', 'SKU', 1, NULL),
(2622, 168, 'Sulu', 'SLU', 1, NULL),
(2623, 168, 'Surigao del Norte', 'SNO', 1, NULL),
(2624, 168, 'Surigao del Sur', 'SSU', 1, NULL),
(2625, 168, 'Tarlac', 'TAR', 1, NULL),
(2626, 168, 'Tawi-Tawi', 'TAW', 1, NULL),
(2627, 168, 'Zambales', 'ZBL', 1, NULL),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1, NULL),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1, NULL),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1, NULL),
(2631, 170, 'Dolnoslaskie', 'DO', 1, NULL),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1, NULL),
(2633, 170, 'Lodzkie', 'LO', 1, NULL),
(2634, 170, 'Lubelskie', 'LL', 1, NULL),
(2635, 170, 'Lubuskie', 'LU', 1, NULL),
(2636, 170, 'Malopolskie', 'ML', 1, NULL),
(2637, 170, 'Mazowieckie', 'MZ', 1, NULL),
(2638, 170, 'Opolskie', 'OP', 1, NULL),
(2639, 170, 'Podkarpackie', 'PP', 1, NULL),
(2640, 170, 'Podlaskie', 'PL', 1, NULL),
(2641, 170, 'Pomorskie', 'PM', 1, NULL),
(2642, 170, 'Slaskie', 'SL', 1, NULL),
(2643, 170, 'Swietokrzyskie', 'SW', 1, NULL),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1, NULL),
(2645, 170, 'Wielkopolskie', 'WP', 1, NULL),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1, NULL),
(2647, 198, 'Saint Pierre', 'P', 1, NULL),
(2648, 198, 'Miquelon', 'M', 1, NULL),
(2649, 171, 'A&ccedil;ores', 'AC', 1, NULL),
(2650, 171, 'Aveiro', 'AV', 1, NULL),
(2651, 171, 'Beja', 'BE', 1, NULL),
(2652, 171, 'Braga', 'BR', 1, NULL),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1, NULL),
(2654, 171, 'Castelo Branco', 'CB', 1, NULL),
(2655, 171, 'Coimbra', 'CO', 1, NULL),
(2656, 171, '&Eacute;vora', 'EV', 1, NULL),
(2657, 171, 'Faro', 'FA', 1, NULL),
(2658, 171, 'Guarda', 'GU', 1, NULL),
(2659, 171, 'Leiria', 'LE', 1, NULL),
(2660, 171, 'Lisboa', 'LI', 1, NULL),
(2661, 171, 'Madeira', 'ME', 1, NULL),
(2662, 171, 'Portalegre', 'PO', 1, NULL),
(2663, 171, 'Porto', 'PR', 1, NULL),
(2664, 171, 'Santar&eacute;m', 'SA', 1, NULL),
(2665, 171, 'Set&uacute;bal', 'SE', 1, NULL),
(2666, 171, 'Viana do Castelo', 'VC', 1, NULL),
(2667, 171, 'Vila Real', 'VR', 1, NULL),
(2668, 171, 'Viseu', 'VI', 1, NULL);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`, `major`) VALUES
(2669, 173, 'Ad Dawhah', 'DW', 1, NULL),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1, NULL),
(2671, 173, 'Al Jumayliyah', 'JM', 1, NULL),
(2672, 173, 'Al Khawr', 'KR', 1, NULL),
(2673, 173, 'Al Wakrah', 'WK', 1, NULL),
(2674, 173, 'Ar Rayyan', 'RN', 1, NULL),
(2675, 173, 'Jarayan al Batinah', 'JB', 1, NULL),
(2676, 173, 'Madinat ash Shamal', 'MS', 1, NULL),
(2677, 173, 'Umm Sa''id', 'UD', 1, NULL),
(2678, 173, 'Umm Salal', 'UL', 1, NULL),
(2679, 175, 'Alba', 'AB', 1, NULL),
(2680, 175, 'Arad', 'AR', 1, NULL),
(2681, 175, 'Arges', 'AG', 1, NULL),
(2682, 175, 'Bacau', 'BC', 1, NULL),
(2683, 175, 'Bihor', 'BH', 1, NULL),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1, NULL),
(2685, 175, 'Botosani', 'BT', 1, NULL),
(2686, 175, 'Brasov', 'BV', 1, NULL),
(2687, 175, 'Braila', 'BR', 1, NULL),
(2688, 175, 'Bucuresti', 'B', 1, NULL),
(2689, 175, 'Buzau', 'BZ', 1, NULL),
(2690, 175, 'Caras-Severin', 'CS', 1, NULL),
(2691, 175, 'Calarasi', 'CL', 1, NULL),
(2692, 175, 'Cluj', 'CJ', 1, NULL),
(2693, 175, 'Constanta', 'CT', 1, NULL),
(2694, 175, 'Covasna', 'CV', 1, NULL),
(2695, 175, 'Dimbovita', 'DB', 1, NULL),
(2696, 175, 'Dolj', 'DJ', 1, NULL),
(2697, 175, 'Galati', 'GL', 1, NULL),
(2698, 175, 'Giurgiu', 'GR', 1, NULL),
(2699, 175, 'Gorj', 'GJ', 1, NULL),
(2700, 175, 'Harghita', 'HR', 1, NULL),
(2701, 175, 'Hunedoara', 'HD', 1, NULL),
(2702, 175, 'Ialomita', 'IL', 1, NULL),
(2703, 175, 'Iasi', 'IS', 1, NULL),
(2704, 175, 'Ilfov', 'IF', 1, NULL),
(2705, 175, 'Maramures', 'MM', 1, NULL),
(2706, 175, 'Mehedinti', 'MH', 1, NULL),
(2707, 175, 'Mures', 'MS', 1, NULL),
(2708, 175, 'Neamt', 'NT', 1, NULL),
(2709, 175, 'Olt', 'OT', 1, NULL),
(2710, 175, 'Prahova', 'PH', 1, NULL),
(2711, 175, 'Satu-Mare', 'SM', 1, NULL),
(2712, 175, 'Salaj', 'SJ', 1, NULL),
(2713, 175, 'Sibiu', 'SB', 1, NULL),
(2714, 175, 'Suceava', 'SV', 1, NULL),
(2715, 175, 'Teleorman', 'TR', 1, NULL),
(2716, 175, 'Timis', 'TM', 1, NULL),
(2717, 175, 'Tulcea', 'TL', 1, NULL),
(2718, 175, 'Vaslui', 'VS', 1, NULL),
(2719, 175, 'Valcea', 'VL', 1, NULL),
(2720, 175, 'Vrancea', 'VN', 1, NULL),
(2721, 176, 'Abakan', 'AB', 1, NULL),
(2722, 176, 'Aginskoye', 'AG', 1, NULL),
(2723, 176, 'Anadyr', 'AN', 1, NULL),
(2724, 176, 'Arkahangelsk', 'AR', 1, NULL),
(2725, 176, 'Astrakhan', 'AS', 1, NULL),
(2726, 176, 'Barnaul', 'BA', 1, NULL),
(2727, 176, 'Belgorod', 'BE', 1, NULL),
(2728, 176, 'Birobidzhan', 'BI', 1, NULL),
(2729, 176, 'Blagoveshchensk', 'BL', 1, NULL),
(2730, 176, 'Bryansk', 'BR', 1, NULL),
(2731, 176, 'Cheboksary', 'CH', 1, NULL),
(2732, 176, 'Chelyabinsk', 'CL', 1, NULL),
(2733, 176, 'Cherkessk', 'CR', 1, NULL),
(2734, 176, 'Chita', 'CI', 1, NULL),
(2735, 176, 'Dudinka', 'DU', 1, NULL),
(2736, 176, 'Elista', 'EL', 1, NULL),
(2738, 176, 'Gorno-Altaysk', 'GA', 1, NULL),
(2739, 176, 'Groznyy', 'GR', 1, NULL),
(2740, 176, 'Irkutsk', 'IR', 1, NULL),
(2741, 176, 'Ivanovo', 'IV', 1, NULL),
(2742, 176, 'Izhevsk', 'IZ', 1, NULL),
(2743, 176, 'Kalinigrad', 'KA', 1, NULL),
(2744, 176, 'Kaluga', 'KL', 1, NULL),
(2745, 176, 'Kasnodar', 'KS', 1, NULL),
(2746, 176, 'Kazan', 'KZ', 1, NULL),
(2747, 176, 'Kemerovo', 'KE', 1, NULL),
(2748, 176, 'Khabarovsk', 'KH', 1, NULL),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1, NULL),
(2750, 176, 'Kostroma', 'KO', 1, NULL),
(2751, 176, 'Krasnodar', 'KR', 1, NULL),
(2752, 176, 'Krasnoyarsk', 'KN', 1, NULL),
(2753, 176, 'Kudymkar', 'KU', 1, NULL),
(2754, 176, 'Kurgan', 'KG', 1, NULL),
(2755, 176, 'Kursk', 'KK', 1, NULL),
(2756, 176, 'Kyzyl', 'KY', 1, NULL),
(2757, 176, 'Lipetsk', 'LI', 1, NULL),
(2758, 176, 'Magadan', 'MA', 1, NULL),
(2759, 176, 'Makhachkala', 'MK', 1, NULL),
(2760, 176, 'Maykop', 'MY', 1, NULL),
(2761, 176, 'Moscow', 'MO', 1, NULL),
(2762, 176, 'Murmansk', 'MU', 1, NULL),
(2763, 176, 'Nalchik', 'NA', 1, NULL),
(2764, 176, 'Naryan Mar', 'NR', 1, NULL),
(2765, 176, 'Nazran', 'NZ', 1, NULL),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1, NULL),
(2767, 176, 'Novgorod', 'NO', 1, NULL),
(2768, 176, 'Novosibirsk', 'NV', 1, NULL),
(2769, 176, 'Omsk', 'OM', 1, NULL),
(2770, 176, 'Orel', 'OR', 1, NULL),
(2771, 176, 'Orenburg', 'OE', 1, NULL),
(2772, 176, 'Palana', 'PA', 1, NULL),
(2773, 176, 'Penza', 'PE', 1, NULL),
(2774, 176, 'Perm', 'PR', 1, NULL),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1, NULL),
(2776, 176, 'Petrozavodsk', 'PT', 1, NULL),
(2777, 176, 'Pskov', 'PS', 1, NULL),
(2778, 176, 'Rostov-na-Donu', 'RO', 1, NULL),
(2779, 176, 'Ryazan', 'RY', 1, NULL),
(2780, 176, 'Salekhard', 'SL', 1, NULL),
(2781, 176, 'Samara', 'SA', 1, NULL),
(2782, 176, 'Saransk', 'SR', 1, NULL),
(2783, 176, 'Saratov', 'SV', 1, NULL),
(2784, 176, 'Smolensk', 'SM', 1, NULL),
(2785, 176, 'St. Petersburg', 'SP', 1, NULL),
(2786, 176, 'Stavropol', 'ST', 1, NULL),
(2787, 176, 'Syktyvkar', 'SY', 1, NULL),
(2788, 176, 'Tambov', 'TA', 1, NULL),
(2789, 176, 'Tomsk', 'TO', 1, NULL),
(2790, 176, 'Tula', 'TU', 1, NULL),
(2791, 176, 'Tura', 'TR', 1, NULL),
(2792, 176, 'Tver', 'TV', 1, NULL),
(2793, 176, 'Tyumen', 'TY', 1, NULL),
(2794, 176, 'Ufa', 'UF', 1, NULL),
(2795, 176, 'Ul''yanovsk', 'UL', 1, NULL),
(2796, 176, 'Ulan-Ude', 'UU', 1, NULL),
(2797, 176, 'Ust''-Ordynskiy', 'US', 1, NULL),
(2798, 176, 'Vladikavkaz', 'VL', 1, NULL),
(2799, 176, 'Vladimir', 'VA', 1, NULL),
(2800, 176, 'Vladivostok', 'VV', 1, NULL),
(2801, 176, 'Volgograd', 'VG', 1, NULL),
(2802, 176, 'Vologda', 'VD', 1, NULL),
(2803, 176, 'Voronezh', 'VO', 1, NULL),
(2804, 176, 'Vyatka', 'VY', 1, NULL),
(2805, 176, 'Yakutsk', 'YA', 1, NULL),
(2806, 176, 'Yaroslavl', 'YR', 1, NULL),
(2807, 176, 'Yekaterinburg', 'YE', 1, NULL),
(2808, 176, 'Yoshkar-Ola', 'YO', 1, NULL),
(2809, 177, 'Butare', 'BU', 1, NULL),
(2810, 177, 'Byumba', 'BY', 1, NULL),
(2811, 177, 'Cyangugu', 'CY', 1, NULL),
(2812, 177, 'Gikongoro', 'GK', 1, NULL),
(2813, 177, 'Gisenyi', 'GS', 1, NULL),
(2814, 177, 'Gitarama', 'GT', 1, NULL),
(2815, 177, 'Kibungo', 'KG', 1, NULL),
(2816, 177, 'Kibuye', 'KY', 1, NULL),
(2817, 177, 'Kigali Rurale', 'KR', 1, NULL),
(2818, 177, 'Kigali-ville', 'KV', 1, NULL),
(2819, 177, 'Ruhengeri', 'RU', 1, NULL),
(2820, 177, 'Umutara', 'UM', 1, NULL),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1, NULL),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1, NULL),
(2823, 178, 'Saint George Basseterre', 'SGB', 1, NULL),
(2824, 178, 'Saint George Gingerland', 'SGG', 1, NULL),
(2825, 178, 'Saint James Windward', 'SJW', 1, NULL),
(2826, 178, 'Saint John Capesterre', 'SJC', 1, NULL),
(2827, 178, 'Saint John Figtree', 'SJF', 1, NULL),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1, NULL),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1, NULL),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1, NULL),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1, NULL),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1, NULL),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1, NULL),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1, NULL),
(2835, 179, 'Anse-la-Raye', 'AR', 1, NULL),
(2836, 179, 'Castries', 'CA', 1, NULL),
(2837, 179, 'Choiseul', 'CH', 1, NULL),
(2838, 179, 'Dauphin', 'DA', 1, NULL),
(2839, 179, 'Dennery', 'DE', 1, NULL),
(2840, 179, 'Gros-Islet', 'GI', 1, NULL),
(2841, 179, 'Laborie', 'LA', 1, NULL),
(2842, 179, 'Micoud', 'MI', 1, NULL),
(2843, 179, 'Praslin', 'PR', 1, NULL),
(2844, 179, 'Soufriere', 'SO', 1, NULL),
(2845, 179, 'Vieux-Fort', 'VF', 1, NULL),
(2846, 180, 'Charlotte', 'C', 1, NULL),
(2847, 180, 'Grenadines', 'R', 1, NULL),
(2848, 180, 'Saint Andrew', 'A', 1, NULL),
(2849, 180, 'Saint David', 'D', 1, NULL),
(2850, 180, 'Saint George', 'G', 1, NULL),
(2851, 180, 'Saint Patrick', 'P', 1, NULL),
(2852, 181, 'A''ana', 'AN', 1, NULL),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1, NULL),
(2854, 181, 'Atua', 'AT', 1, NULL),
(2855, 181, 'Fa''asaleleaga', 'FA', 1, NULL),
(2856, 181, 'Gaga''emauga', 'GE', 1, NULL),
(2857, 181, 'Gagaifomauga', 'GF', 1, NULL),
(2858, 181, 'Palauli', 'PA', 1, NULL),
(2859, 181, 'Satupa''itea', 'SA', 1, NULL),
(2860, 181, 'Tuamasaga', 'TU', 1, NULL),
(2861, 181, 'Va''a-o-Fonoti', 'VF', 1, NULL),
(2862, 181, 'Vaisigano', 'VS', 1, NULL),
(2863, 182, 'Acquaviva', 'AC', 1, NULL),
(2864, 182, 'Borgo Maggiore', 'BM', 1, NULL),
(2865, 182, 'Chiesanuova', 'CH', 1, NULL),
(2866, 182, 'Domagnano', 'DO', 1, NULL),
(2867, 182, 'Faetano', 'FA', 1, NULL),
(2868, 182, 'Fiorentino', 'FI', 1, NULL),
(2869, 182, 'Montegiardino', 'MO', 1, NULL),
(2870, 182, 'Citta di San Marino', 'SM', 1, NULL),
(2871, 182, 'Serravalle', 'SE', 1, NULL),
(2872, 183, 'Sao Tome', 'S', 1, NULL),
(2873, 183, 'Principe', 'P', 1, NULL),
(2874, 184, 'Al Bahah', 'BH', 1, NULL),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1, NULL),
(2876, 184, 'Al Jawf', 'JF', 1, NULL),
(2877, 184, 'Al Madinah', 'MD', 1, NULL),
(2878, 184, 'Al Qasim', 'QS', 1, NULL),
(2879, 184, 'Ar Riyad', 'RD', 1, NULL),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1, NULL),
(2881, 184, '''Asir', 'AS', 1, NULL),
(2882, 184, 'Ha''il', 'HL', 1, NULL),
(2883, 184, 'Jizan', 'JZ', 1, NULL),
(2884, 184, 'Makkah', 'ML', 1, NULL),
(2885, 184, 'Najran', 'NR', 1, NULL),
(2886, 184, 'Tabuk', 'TB', 1, NULL),
(2887, 185, 'Dakar', 'DA', 1, NULL),
(2888, 185, 'Diourbel', 'DI', 1, NULL),
(2889, 185, 'Fatick', 'FA', 1, NULL),
(2890, 185, 'Kaolack', 'KA', 1, NULL),
(2891, 185, 'Kolda', 'KO', 1, NULL),
(2892, 185, 'Louga', 'LO', 1, NULL),
(2893, 185, 'Matam', 'MA', 1, NULL),
(2894, 185, 'Saint-Louis', 'SL', 1, NULL),
(2895, 185, 'Tambacounda', 'TA', 1, NULL),
(2896, 185, 'Thies', 'TH', 1, NULL),
(2897, 185, 'Ziguinchor', 'ZI', 1, NULL),
(2898, 186, 'Anse aux Pins', 'AP', 1, NULL),
(2899, 186, 'Anse Boileau', 'AB', 1, NULL),
(2900, 186, 'Anse Etoile', 'AE', 1, NULL),
(2901, 186, 'Anse Louis', 'AL', 1, NULL),
(2902, 186, 'Anse Royale', 'AR', 1, NULL),
(2903, 186, 'Baie Lazare', 'BL', 1, NULL),
(2904, 186, 'Baie Sainte Anne', 'BS', 1, NULL),
(2905, 186, 'Beau Vallon', 'BV', 1, NULL),
(2906, 186, 'Bel Air', 'BA', 1, NULL),
(2907, 186, 'Bel Ombre', 'BO', 1, NULL),
(2908, 186, 'Cascade', 'CA', 1, NULL),
(2909, 186, 'Glacis', 'GL', 1, NULL),
(2910, 186, 'Grand'' Anse (on Mahe)', 'GM', 1, NULL),
(2911, 186, 'Grand'' Anse (on Praslin)', 'GP', 1, NULL),
(2912, 186, 'La Digue', 'DG', 1, NULL),
(2913, 186, 'La Riviere Anglaise', 'RA', 1, NULL),
(2914, 186, 'Mont Buxton', 'MB', 1, NULL),
(2915, 186, 'Mont Fleuri', 'MF', 1, NULL),
(2916, 186, 'Plaisance', 'PL', 1, NULL),
(2917, 186, 'Pointe La Rue', 'PR', 1, NULL),
(2918, 186, 'Port Glaud', 'PG', 1, NULL),
(2919, 186, 'Saint Louis', 'SL', 1, NULL),
(2920, 186, 'Takamaka', 'TA', 1, NULL),
(2921, 187, 'Eastern', 'E', 1, NULL),
(2922, 187, 'Northern', 'N', 1, NULL),
(2923, 187, 'Southern', 'S', 1, NULL),
(2924, 187, 'Western', 'W', 1, NULL),
(2925, 189, 'Banskobystrický', 'BA', 1, NULL),
(2926, 189, 'Bratislavský', 'BR', 1, NULL),
(2927, 189, 'Košický', 'KO', 1, NULL),
(2928, 189, 'Nitriansky', 'NI', 1, NULL),
(2929, 189, 'Prešovský', 'PR', 1, NULL),
(2930, 189, 'Trenčiansky', 'TC', 1, NULL),
(2931, 189, 'Trnavský', 'TV', 1, NULL),
(2932, 189, 'Žilinský', 'ZI', 1, NULL),
(2933, 191, 'Central', 'CE', 1, NULL),
(2934, 191, 'Choiseul', 'CH', 1, NULL),
(2935, 191, 'Guadalcanal', 'GC', 1, NULL),
(2936, 191, 'Honiara', 'HO', 1, NULL),
(2937, 191, 'Isabel', 'IS', 1, NULL),
(2938, 191, 'Makira', 'MK', 1, NULL),
(2939, 191, 'Malaita', 'ML', 1, NULL),
(2940, 191, 'Rennell and Bellona', 'RB', 1, NULL),
(2941, 191, 'Temotu', 'TM', 1, NULL),
(2942, 191, 'Western', 'WE', 1, NULL),
(2943, 192, 'Awdal', 'AW', 1, NULL),
(2944, 192, 'Bakool', 'BK', 1, NULL),
(2945, 192, 'Banaadir', 'BN', 1, NULL),
(2946, 192, 'Bari', 'BR', 1, NULL),
(2947, 192, 'Bay', 'BY', 1, NULL),
(2948, 192, 'Galguduud', 'GA', 1, NULL),
(2949, 192, 'Gedo', 'GE', 1, NULL),
(2950, 192, 'Hiiraan', 'HI', 1, NULL),
(2951, 192, 'Jubbada Dhexe', 'JD', 1, NULL),
(2952, 192, 'Jubbada Hoose', 'JH', 1, NULL),
(2953, 192, 'Mudug', 'MU', 1, NULL),
(2954, 192, 'Nugaal', 'NU', 1, NULL),
(2955, 192, 'Sanaag', 'SA', 1, NULL),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1, NULL),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1, NULL),
(2958, 192, 'Sool', 'SL', 1, NULL),
(2959, 192, 'Togdheer', 'TO', 1, NULL),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1, NULL),
(2961, 193, 'Eastern Cape', 'EC', 1, NULL),
(2962, 193, 'Free State', 'FS', 1, NULL),
(2963, 193, 'Gauteng', 'GT', 1, NULL),
(2964, 193, 'KwaZulu-Natal', 'KN', 1, NULL),
(2965, 193, 'Limpopo', 'LP', 1, NULL),
(2966, 193, 'Mpumalanga', 'MP', 1, NULL),
(2967, 193, 'North West', 'NW', 1, NULL),
(2968, 193, 'Northern Cape', 'NC', 1, NULL),
(2969, 193, 'Western Cape', 'WC', 1, NULL),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1, NULL),
(2971, 195, '&Aacute;lava', 'AL', 1, NULL),
(2972, 195, 'Albacete', 'AB', 1, NULL),
(2973, 195, 'Alicante', 'AC', 1, NULL),
(2974, 195, 'Almeria', 'AM', 1, NULL),
(2975, 195, 'Asturias', 'AS', 1, NULL),
(2976, 195, '&Aacute;vila', 'AV', 1, NULL),
(2977, 195, 'Badajoz', 'BJ', 1, NULL),
(2978, 195, 'Baleares', 'IB', 1, NULL),
(2979, 195, 'Barcelona', 'BA', 1, NULL),
(2980, 195, 'Burgos', 'BU', 1, NULL),
(2981, 195, 'C&aacute;ceres', 'CC', 1, NULL),
(2982, 195, 'C&aacute;diz', 'CZ', 1, NULL),
(2983, 195, 'Cantabria', 'CT', 1, NULL),
(2984, 195, 'Castell&oacute;n', 'CL', 1, NULL),
(2985, 195, 'Ceuta', 'CE', 1, NULL),
(2986, 195, 'Ciudad Real', 'CR', 1, NULL),
(2987, 195, 'C&oacute;rdoba', 'CD', 1, NULL),
(2988, 195, 'Cuenca', 'CU', 1, NULL),
(2989, 195, 'Girona', 'GI', 1, NULL),
(2990, 195, 'Granada', 'GD', 1, NULL),
(2991, 195, 'Guadalajara', 'GJ', 1, NULL),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1, NULL),
(2993, 195, 'Huelva', 'HL', 1, NULL),
(2994, 195, 'Huesca', 'HS', 1, NULL),
(2995, 195, 'Ja&eacute;n', 'JN', 1, NULL),
(2996, 195, 'La Rioja', 'RJ', 1, NULL),
(2997, 195, 'Las Palmas', 'PM', 1, NULL),
(2998, 195, 'Leon', 'LE', 1, NULL),
(2999, 195, 'Lleida', 'LL', 1, NULL),
(3000, 195, 'Lugo', 'LG', 1, NULL),
(3001, 195, 'Madrid', 'MD', 1, NULL),
(3002, 195, 'Malaga', 'MA', 1, NULL),
(3003, 195, 'Melilla', 'ML', 1, NULL),
(3004, 195, 'Murcia', 'MU', 1, NULL),
(3005, 195, 'Navarra', 'NV', 1, NULL),
(3006, 195, 'Ourense', 'OU', 1, NULL),
(3007, 195, 'Palencia', 'PL', 1, NULL),
(3008, 195, 'Pontevedra', 'PO', 1, NULL),
(3009, 195, 'Salamanca', 'SL', 1, NULL),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1, NULL),
(3011, 195, 'Segovia', 'SG', 1, NULL),
(3012, 195, 'Sevilla', 'SV', 1, NULL),
(3013, 195, 'Soria', 'SO', 1, NULL),
(3014, 195, 'Tarragona', 'TA', 1, NULL),
(3015, 195, 'Teruel', 'TE', 1, NULL),
(3016, 195, 'Toledo', 'TO', 1, NULL),
(3017, 195, 'Valencia', 'VC', 1, NULL),
(3018, 195, 'Valladolid', 'VD', 1, NULL),
(3019, 195, 'Vizcaya', 'VZ', 1, NULL),
(3020, 195, 'Zamora', 'ZM', 1, NULL),
(3021, 195, 'Zaragoza', 'ZR', 1, NULL),
(3022, 196, 'Central', 'CE', 1, NULL),
(3023, 196, 'Eastern', 'EA', 1, NULL),
(3024, 196, 'North Central', 'NC', 1, NULL),
(3025, 196, 'Northern', 'NO', 1, NULL),
(3026, 196, 'North Western', 'NW', 1, NULL),
(3027, 196, 'Sabaragamuwa', 'SA', 1, NULL),
(3028, 196, 'Southern', 'SO', 1, NULL),
(3029, 196, 'Uva', 'UV', 1, NULL),
(3030, 196, 'Western', 'WE', 1, NULL),
(3032, 197, 'Saint Helena', 'S', 1, NULL),
(3034, 199, 'A''ali an Nil', 'ANL', 1, NULL),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1, NULL),
(3036, 199, 'Al Buhayrat', 'BRT', 1, NULL),
(3037, 199, 'Al Jazirah', 'JZR', 1, NULL),
(3038, 199, 'Al Khartum', 'KRT', 1, NULL),
(3039, 199, 'Al Qadarif', 'QDR', 1, NULL),
(3040, 199, 'Al Wahdah', 'WDH', 1, NULL),
(3041, 199, 'An Nil al Abyad', 'ANB', 1, NULL),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1, NULL),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1, NULL),
(3044, 199, 'Bahr al Jabal', 'BJA', 1, NULL),
(3045, 199, 'Gharb al Istiwa''iyah', 'GIS', 1, NULL),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1, NULL),
(3047, 199, 'Gharb Darfur', 'GDA', 1, NULL),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1, NULL),
(3049, 199, 'Janub Darfur', 'JDA', 1, NULL),
(3050, 199, 'Janub Kurdufan', 'JKU', 1, NULL),
(3051, 199, 'Junqali', 'JQL', 1, NULL),
(3052, 199, 'Kassala', 'KSL', 1, NULL),
(3053, 199, 'Nahr an Nil', 'NNL', 1, NULL),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1, NULL),
(3055, 199, 'Shamal Darfur', 'SDA', 1, NULL),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1, NULL),
(3057, 199, 'Sharq al Istiwa''iyah', 'SIS', 1, NULL),
(3058, 199, 'Sinnar', 'SNR', 1, NULL),
(3059, 199, 'Warab', 'WRB', 1, NULL),
(3060, 200, 'Brokopondo', 'BR', 1, NULL),
(3061, 200, 'Commewijne', 'CM', 1, NULL),
(3062, 200, 'Coronie', 'CR', 1, NULL),
(3063, 200, 'Marowijne', 'MA', 1, NULL),
(3064, 200, 'Nickerie', 'NI', 1, NULL),
(3065, 200, 'Para', 'PA', 1, NULL),
(3066, 200, 'Paramaribo', 'PM', 1, NULL),
(3067, 200, 'Saramacca', 'SA', 1, NULL),
(3068, 200, 'Sipaliwini', 'SI', 1, NULL),
(3069, 200, 'Wanica', 'WA', 1, NULL),
(3070, 202, 'Hhohho', 'H', 1, NULL),
(3071, 202, 'Lubombo', 'L', 1, NULL),
(3072, 202, 'Manzini', 'M', 1, NULL),
(3073, 202, 'Shishelweni', 'S', 1, NULL),
(3074, 203, 'Blekinge', 'K', 1, NULL),
(3075, 203, 'Dalarna', 'W', 1, NULL),
(3076, 203, 'Gävleborg', 'X', 1, NULL),
(3077, 203, 'Gotland', 'I', 1, NULL),
(3078, 203, 'Halland', 'N', 1, NULL),
(3079, 203, 'Jämtland', 'Z', 1, NULL),
(3080, 203, 'Jönköping', 'F', 1, NULL),
(3081, 203, 'Kalmar', 'H', 1, NULL),
(3082, 203, 'Kronoberg', 'G', 1, NULL),
(3083, 203, 'Norrbotten', 'BD', 1, NULL),
(3084, 203, 'Örebro', 'T', 1, NULL),
(3085, 203, 'Östergötland', 'E', 1, NULL),
(3086, 203, 'Sk&aring;ne', 'M', 1, NULL),
(3087, 203, 'Södermanland', 'D', 1, NULL),
(3088, 203, 'Stockholm', 'AB', 1, NULL),
(3089, 203, 'Uppsala', 'C', 1, NULL),
(3090, 203, 'Värmland', 'S', 1, NULL),
(3091, 203, 'Västerbotten', 'AC', 1, NULL),
(3092, 203, 'Västernorrland', 'Y', 1, NULL),
(3093, 203, 'Västmanland', 'U', 1, NULL),
(3094, 203, 'Västra Götaland', 'O', 1, NULL),
(3095, 204, 'Aargau', 'AG', 1, NULL),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1, NULL),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1, NULL),
(3098, 204, 'Basel-Stadt', 'BS', 1, NULL),
(3099, 204, 'Basel-Landschaft', 'BL', 1, NULL),
(3100, 204, 'Bern', 'BE', 1, NULL),
(3101, 204, 'Fribourg', 'FR', 1, NULL),
(3102, 204, 'Gen&egrave;ve', 'GE', 1, NULL),
(3103, 204, 'Glarus', 'GL', 1, NULL),
(3104, 204, 'Graubünden', 'GR', 1, NULL),
(3105, 204, 'Jura', 'JU', 1, NULL),
(3106, 204, 'Luzern', 'LU', 1, NULL),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1, NULL),
(3108, 204, 'Nidwald', 'NW', 1, NULL),
(3109, 204, 'Obwald', 'OW', 1, NULL),
(3110, 204, 'St. Gallen', 'SG', 1, NULL),
(3111, 204, 'Schaffhausen', 'SH', 1, NULL),
(3112, 204, 'Schwyz', 'SZ', 1, NULL),
(3113, 204, 'Solothurn', 'SO', 1, NULL),
(3114, 204, 'Thurgau', 'TG', 1, NULL),
(3115, 204, 'Ticino', 'TI', 1, NULL),
(3116, 204, 'Uri', 'UR', 1, NULL),
(3117, 204, 'Valais', 'VS', 1, NULL),
(3118, 204, 'Vaud', 'VD', 1, NULL),
(3119, 204, 'Zug', 'ZG', 1, NULL),
(3120, 204, 'Zürich', 'ZH', 1, NULL),
(3121, 205, 'Al Hasakah', 'HA', 1, NULL),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1, NULL),
(3123, 205, 'Al Qunaytirah', 'QU', 1, NULL),
(3124, 205, 'Ar Raqqah', 'RQ', 1, NULL),
(3125, 205, 'As Suwayda', 'SU', 1, NULL),
(3126, 205, 'Dara', 'DA', 1, NULL),
(3127, 205, 'Dayr az Zawr', 'DZ', 1, NULL),
(3128, 205, 'Dimashq', 'DI', 1, NULL),
(3129, 205, 'Halab', 'HL', 1, NULL),
(3130, 205, 'Hamah', 'HM', 1, NULL),
(3131, 205, 'Hims', 'HI', 1, NULL),
(3132, 205, 'Idlib', 'ID', 1, NULL),
(3133, 205, 'Rif Dimashq', 'RD', 1, NULL),
(3134, 205, 'Tartus', 'TA', 1, NULL),
(3135, 206, 'Chang-hua', 'CH', 1, NULL),
(3136, 206, 'Chia-i', 'CI', 1, NULL),
(3137, 206, 'Hsin-chu', 'HS', 1, NULL),
(3138, 206, 'Hua-lien', 'HL', 1, NULL),
(3139, 206, 'I-lan', 'IL', 1, NULL),
(3140, 206, 'Kao-hsiung county', 'KH', 1, NULL),
(3141, 206, 'Kin-men', 'KM', 1, NULL),
(3142, 206, 'Lien-chiang', 'LC', 1, NULL),
(3143, 206, 'Miao-li', 'ML', 1, NULL),
(3144, 206, 'Nan-t''ou', 'NT', 1, NULL),
(3145, 206, 'P''eng-hu', 'PH', 1, NULL),
(3146, 206, 'P''ing-tung', 'PT', 1, NULL),
(3147, 206, 'T''ai-chung', 'TG', 1, NULL),
(3148, 206, 'T''ai-nan', 'TA', 1, NULL),
(3149, 206, 'T''ai-pei county', 'TP', 1, NULL),
(3150, 206, 'T''ai-tung', 'TT', 1, NULL),
(3151, 206, 'T''ao-yuan', 'TY', 1, NULL),
(3152, 206, 'Yun-lin', 'YL', 1, NULL),
(3153, 206, 'Chia-i city', 'CC', 1, NULL),
(3154, 206, 'Chi-lung', 'CL', 1, NULL),
(3155, 206, 'Hsin-chu', 'HC', 1, NULL),
(3156, 206, 'T''ai-chung', 'TH', 1, NULL),
(3157, 206, 'T''ai-nan', 'TN', 1, NULL),
(3158, 206, 'Kao-hsiung city', 'KC', 1, NULL),
(3159, 206, 'T''ai-pei city', 'TC', 1, NULL),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1, NULL),
(3161, 207, 'Khatlon', 'KT', 1, NULL),
(3162, 207, 'Sughd', 'SU', 1, NULL),
(3163, 208, 'Arusha', 'AR', 1, NULL),
(3164, 208, 'Dar es Salaam', 'DS', 1, NULL),
(3165, 208, 'Dodoma', 'DO', 1, NULL),
(3166, 208, 'Iringa', 'IR', 1, NULL),
(3167, 208, 'Kagera', 'KA', 1, NULL),
(3168, 208, 'Kigoma', 'KI', 1, NULL),
(3169, 208, 'Kilimanjaro', 'KJ', 1, NULL),
(3170, 208, 'Lindi', 'LN', 1, NULL),
(3171, 208, 'Manyara', 'MY', 1, NULL),
(3172, 208, 'Mara', 'MR', 1, NULL),
(3173, 208, 'Mbeya', 'MB', 1, NULL),
(3174, 208, 'Morogoro', 'MO', 1, NULL),
(3175, 208, 'Mtwara', 'MT', 1, NULL),
(3176, 208, 'Mwanza', 'MW', 1, NULL),
(3177, 208, 'Pemba North', 'PN', 1, NULL),
(3178, 208, 'Pemba South', 'PS', 1, NULL),
(3179, 208, 'Pwani', 'PW', 1, NULL),
(3180, 208, 'Rukwa', 'RK', 1, NULL),
(3181, 208, 'Ruvuma', 'RV', 1, NULL),
(3182, 208, 'Shinyanga', 'SH', 1, NULL),
(3183, 208, 'Singida', 'SI', 1, NULL),
(3184, 208, 'Tabora', 'TB', 1, NULL),
(3185, 208, 'Tanga', 'TN', 1, NULL),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1, NULL),
(3187, 208, 'Zanzibar North', 'ZN', 1, NULL),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1, NULL),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1, NULL),
(3190, 209, 'Ang Thong', 'Ang Thong', 1, NULL),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1, NULL),
(3192, 209, 'Bangkok', 'Bangkok', 1, NULL),
(3193, 209, 'Buriram', 'Buriram', 1, NULL),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1, NULL),
(3195, 209, 'Chai Nat', 'Chai Nat', 1, NULL),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1, NULL),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1, NULL),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1, NULL),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1, NULL),
(3200, 209, 'Chon Buri', 'Chon Buri', 1, NULL),
(3201, 209, 'Chumphon', 'Chumphon', 1, NULL),
(3202, 209, 'Kalasin', 'Kalasin', 1, NULL),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1, NULL),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1, NULL),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1, NULL),
(3206, 209, 'Krabi', 'Krabi', 1, NULL),
(3207, 209, 'Lampang', 'Lampang', 1, NULL),
(3208, 209, 'Lamphun', 'Lamphun', 1, NULL),
(3209, 209, 'Loei', 'Loei', 1, NULL),
(3210, 209, 'Lop Buri', 'Lop Buri', 1, NULL),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1, NULL),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1, NULL),
(3213, 209, 'Mukdahan', 'Mukdahan', 1, NULL),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1, NULL),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1, NULL),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1, NULL),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1, NULL),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1, NULL),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1, NULL),
(3220, 209, 'Nan', 'Nan', 1, NULL),
(3221, 209, 'Narathiwat', 'Narathiwat', 1, NULL),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1, NULL),
(3223, 209, 'Nong Khai', 'Nong Khai', 1, NULL),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1, NULL),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1, NULL),
(3226, 209, 'Pattani', 'Pattani', 1, NULL),
(3227, 209, 'Phangnga', 'Phangnga', 1, NULL),
(3228, 209, 'Phatthalung', 'Phatthalung', 1, NULL),
(3229, 209, 'Phayao', 'Phayao', 1, NULL),
(3230, 209, 'Phetchabun', 'Phetchabun', 1, NULL),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1, NULL),
(3232, 209, 'Phichit', 'Phichit', 1, NULL),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1, NULL),
(3234, 209, 'Phrae', 'Phrae', 1, NULL),
(3235, 209, 'Phuket', 'Phuket', 1, NULL),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1, NULL),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1, NULL),
(3238, 209, 'Ranong', 'Ranong', 1, NULL),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1, NULL),
(3240, 209, 'Rayong', 'Rayong', 1, NULL),
(3241, 209, 'Roi Et', 'Roi Et', 1, NULL),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1, NULL),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1, NULL),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1, NULL),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1, NULL),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1, NULL),
(3247, 209, 'Sara Buri', 'Sara Buri', 1, NULL),
(3248, 209, 'Satun', 'Satun', 1, NULL),
(3249, 209, 'Sing Buri', 'Sing Buri', 1, NULL),
(3250, 209, 'Sisaket', 'Sisaket', 1, NULL),
(3251, 209, 'Songkhla', 'Songkhla', 1, NULL),
(3252, 209, 'Sukhothai', 'Sukhothai', 1, NULL),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1, NULL),
(3254, 209, 'Surat Thani', 'Surat Thani', 1, NULL),
(3255, 209, 'Surin', 'Surin', 1, NULL),
(3256, 209, 'Tak', 'Tak', 1, NULL),
(3257, 209, 'Trang', 'Trang', 1, NULL),
(3258, 209, 'Trat', 'Trat', 1, NULL),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1, NULL),
(3260, 209, 'Udon Thani', 'Udon Thani', 1, NULL),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1, NULL),
(3262, 209, 'Uttaradit', 'Uttaradit', 1, NULL),
(3263, 209, 'Yala', 'Yala', 1, NULL),
(3264, 209, 'Yasothon', 'Yasothon', 1, NULL),
(3265, 210, 'Kara', 'K', 1, NULL),
(3266, 210, 'Plateaux', 'P', 1, NULL),
(3267, 210, 'Savanes', 'S', 1, NULL),
(3268, 210, 'Centrale', 'C', 1, NULL),
(3269, 210, 'Maritime', 'M', 1, NULL),
(3270, 211, 'Atafu', 'A', 1, NULL),
(3271, 211, 'Fakaofo', 'F', 1, NULL),
(3272, 211, 'Nukunonu', 'N', 1, NULL),
(3273, 212, 'Ha''apai', 'H', 1, NULL),
(3274, 212, 'Tongatapu', 'T', 1, NULL),
(3275, 212, 'Vava''u', 'V', 1, NULL),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1, NULL),
(3277, 213, 'Diego Martin', 'DM', 1, NULL),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1, NULL),
(3279, 213, 'Penal/Debe', 'PD', 1, NULL),
(3280, 213, 'Princes Town', 'PT', 1, NULL),
(3281, 213, 'Sangre Grande', 'SG', 1, NULL),
(3282, 213, 'San Juan/Laventille', 'SL', 1, NULL),
(3283, 213, 'Siparia', 'SI', 1, NULL),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1, NULL),
(3285, 213, 'Port of Spain', 'PS', 1, NULL),
(3286, 213, 'San Fernando', 'SF', 1, NULL),
(3287, 213, 'Arima', 'AR', 1, NULL),
(3288, 213, 'Point Fortin', 'PF', 1, NULL),
(3289, 213, 'Chaguanas', 'CH', 1, NULL),
(3290, 213, 'Tobago', 'TO', 1, NULL),
(3291, 214, 'Ariana', 'AR', 1, NULL),
(3292, 214, 'Beja', 'BJ', 1, NULL),
(3293, 214, 'Ben Arous', 'BA', 1, NULL),
(3294, 214, 'Bizerte', 'BI', 1, NULL),
(3295, 214, 'Gabes', 'GB', 1, NULL),
(3296, 214, 'Gafsa', 'GF', 1, NULL),
(3297, 214, 'Jendouba', 'JE', 1, NULL),
(3298, 214, 'Kairouan', 'KR', 1, NULL),
(3299, 214, 'Kasserine', 'KS', 1, NULL),
(3300, 214, 'Kebili', 'KB', 1, NULL),
(3301, 214, 'Kef', 'KF', 1, NULL),
(3302, 214, 'Mahdia', 'MH', 1, NULL),
(3303, 214, 'Manouba', 'MN', 1, NULL),
(3304, 214, 'Medenine', 'ME', 1, NULL),
(3305, 214, 'Monastir', 'MO', 1, NULL),
(3306, 214, 'Nabeul', 'NA', 1, NULL),
(3307, 214, 'Sfax', 'SF', 1, NULL),
(3308, 214, 'Sidi', 'SD', 1, NULL),
(3309, 214, 'Siliana', 'SL', 1, NULL),
(3310, 214, 'Sousse', 'SO', 1, NULL),
(3311, 214, 'Tataouine', 'TA', 1, NULL),
(3312, 214, 'Tozeur', 'TO', 1, NULL),
(3313, 214, 'Tunis', 'TU', 1, NULL),
(3314, 214, 'Zaghouan', 'ZA', 1, NULL),
(3315, 215, 'Adana', 'ADA', 1, NULL),
(3316, 215, 'Adıyaman', 'ADI', 1, NULL),
(3317, 215, 'Afyonkarahisar', 'AFY', 1, NULL),
(3318, 215, 'Ağrı', 'AGR', 1, NULL),
(3319, 215, 'Aksaray', 'AKS', 1, NULL),
(3320, 215, 'Amasya', 'AMA', 1, NULL),
(3321, 215, 'Ankara', 'ANK', 1, NULL),
(3322, 215, 'Antalya', 'ANT', 1, NULL),
(3323, 215, 'Ardahan', 'ARD', 1, NULL),
(3324, 215, 'Artvin', 'ART', 1, NULL),
(3325, 215, 'Aydın', 'AYI', 1, NULL),
(3326, 215, 'Balıkesir', 'BAL', 1, NULL),
(3327, 215, 'Bartın', 'BAR', 1, NULL),
(3328, 215, 'Batman', 'BAT', 1, NULL),
(3329, 215, 'Bayburt', 'BAY', 1, NULL),
(3330, 215, 'Bilecik', 'BIL', 1, NULL),
(3331, 215, 'Bingöl', 'BIN', 1, NULL),
(3332, 215, 'Bitlis', 'BIT', 1, NULL),
(3333, 215, 'Bolu', 'BOL', 1, NULL),
(3334, 215, 'Burdur', 'BRD', 1, NULL),
(3335, 215, 'Bursa', 'BRS', 1, NULL),
(3336, 215, 'Çanakkale', 'CKL', 1, NULL),
(3337, 215, 'Çankırı', 'CKR', 1, NULL),
(3338, 215, 'Çorum', 'COR', 1, NULL),
(3339, 215, 'Denizli', 'DEN', 1, NULL),
(3340, 215, 'Diyarbakır', 'DIY', 1, NULL),
(3341, 215, 'Düzce', 'DUZ', 1, NULL),
(3342, 215, 'Edirne', 'EDI', 1, NULL),
(3343, 215, 'Elazığ', 'ELA', 1, NULL),
(3344, 215, 'Erzincan', 'EZC', 1, NULL),
(3345, 215, 'Erzurum', 'EZR', 1, NULL),
(3346, 215, 'Eskişehir', 'ESK', 1, NULL),
(3347, 215, 'Gaziantep', 'GAZ', 1, NULL),
(3348, 215, 'Giresun', 'GIR', 1, NULL),
(3349, 215, 'Gümüşhane', 'GMS', 1, NULL),
(3350, 215, 'Hakkari', 'HKR', 1, NULL),
(3351, 215, 'Hatay', 'HTY', 1, NULL),
(3352, 215, 'Iğdır', 'IGD', 1, NULL),
(3353, 215, 'Isparta', 'ISP', 1, NULL),
(3354, 215, 'İstanbul', 'IST', 1, NULL),
(3355, 215, 'İzmir', 'IZM', 1, NULL),
(3356, 215, 'Kahramanmaraş', 'KAH', 1, NULL),
(3357, 215, 'Karabük', 'KRB', 1, NULL),
(3358, 215, 'Karaman', 'KRM', 1, NULL),
(3359, 215, 'Kars', 'KRS', 1, NULL),
(3360, 215, 'Kastamonu', 'KAS', 1, NULL),
(3361, 215, 'Kayseri', 'KAY', 1, NULL),
(3362, 215, 'Kilis', 'KLS', 1, NULL),
(3363, 215, 'Kırıkkale', 'KRK', 1, NULL),
(3364, 215, 'Kırklareli', 'KLR', 1, NULL),
(3365, 215, 'Kırşehir', 'KRH', 1, NULL),
(3366, 215, 'Kocaeli', 'KOC', 1, NULL),
(3367, 215, 'Konya', 'KON', 1, NULL),
(3368, 215, 'Kütahya', 'KUT', 1, NULL),
(3369, 215, 'Malatya', 'MAL', 1, NULL),
(3370, 215, 'Manisa', 'MAN', 1, NULL),
(3371, 215, 'Mardin', 'MAR', 1, NULL),
(3372, 215, 'Mersin', 'MER', 1, NULL),
(3373, 215, 'Muğla', 'MUG', 1, NULL),
(3374, 215, 'Muş', 'MUS', 1, NULL),
(3375, 215, 'Nevşehir', 'NEV', 1, NULL),
(3376, 215, 'Niğde', 'NIG', 1, NULL),
(3377, 215, 'Ordu', 'ORD', 1, NULL),
(3378, 215, 'Osmaniye', 'OSM', 1, NULL),
(3379, 215, 'Rize', 'RIZ', 1, NULL),
(3380, 215, 'Sakarya', 'SAK', 1, NULL),
(3381, 215, 'Samsun', 'SAM', 1, NULL),
(3382, 215, 'Şanlıurfa', 'SAN', 1, NULL),
(3383, 215, 'Siirt', 'SII', 1, NULL),
(3384, 215, 'Sinop', 'SIN', 1, NULL),
(3385, 215, 'Şırnak', 'SIR', 1, NULL),
(3386, 215, 'Sivas', 'SIV', 1, NULL),
(3387, 215, 'Tekirdağ', 'TEL', 1, NULL),
(3388, 215, 'Tokat', 'TOK', 1, NULL),
(3389, 215, 'Trabzon', 'TRA', 1, NULL),
(3390, 215, 'Tunceli', 'TUN', 1, NULL),
(3391, 215, 'Uşak', 'USK', 1, NULL),
(3392, 215, 'Van', 'VAN', 1, NULL),
(3393, 215, 'Yalova', 'YAL', 1, NULL),
(3394, 215, 'Yozgat', 'YOZ', 1, NULL),
(3395, 215, 'Zonguldak', 'ZON', 1, NULL),
(3396, 216, 'Ahal Welayaty', 'A', 1, NULL),
(3397, 216, 'Balkan Welayaty', 'B', 1, NULL),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1, NULL),
(3399, 216, 'Lebap Welayaty', 'L', 1, NULL),
(3400, 216, 'Mary Welayaty', 'M', 1, NULL),
(3401, 217, 'Ambergris Cays', 'AC', 1, NULL),
(3402, 217, 'Dellis Cay', 'DC', 1, NULL),
(3403, 217, 'French Cay', 'FC', 1, NULL),
(3404, 217, 'Little Water Cay', 'LW', 1, NULL),
(3405, 217, 'Parrot Cay', 'RC', 1, NULL),
(3406, 217, 'Pine Cay', 'PN', 1, NULL),
(3407, 217, 'Salt Cay', 'SL', 1, NULL),
(3408, 217, 'Grand Turk', 'GT', 1, NULL),
(3409, 217, 'South Caicos', 'SC', 1, NULL),
(3410, 217, 'East Caicos', 'EC', 1, NULL),
(3411, 217, 'Middle Caicos', 'MC', 1, NULL),
(3412, 217, 'North Caicos', 'NC', 1, NULL),
(3413, 217, 'Providenciales', 'PR', 1, NULL),
(3414, 217, 'West Caicos', 'WC', 1, NULL),
(3415, 218, 'Nanumanga', 'NMG', 1, NULL),
(3416, 218, 'Niulakita', 'NLK', 1, NULL),
(3417, 218, 'Niutao', 'NTO', 1, NULL),
(3418, 218, 'Funafuti', 'FUN', 1, NULL),
(3419, 218, 'Nanumea', 'NME', 1, NULL),
(3420, 218, 'Nui', 'NUI', 1, NULL),
(3421, 218, 'Nukufetau', 'NFT', 1, NULL),
(3422, 218, 'Nukulaelae', 'NLL', 1, NULL),
(3423, 218, 'Vaitupu', 'VAI', 1, NULL),
(3424, 219, 'Kalangala', 'KAL', 1, NULL),
(3425, 219, 'Kampala', 'KMP', 1, NULL),
(3426, 219, 'Kayunga', 'KAY', 1, NULL),
(3427, 219, 'Kiboga', 'KIB', 1, NULL),
(3428, 219, 'Luwero', 'LUW', 1, NULL),
(3429, 219, 'Masaka', 'MAS', 1, NULL),
(3430, 219, 'Mpigi', 'MPI', 1, NULL),
(3431, 219, 'Mubende', 'MUB', 1, NULL),
(3432, 219, 'Mukono', 'MUK', 1, NULL),
(3433, 219, 'Nakasongola', 'NKS', 1, NULL),
(3434, 219, 'Rakai', 'RAK', 1, NULL),
(3435, 219, 'Sembabule', 'SEM', 1, NULL),
(3436, 219, 'Wakiso', 'WAK', 1, NULL),
(3437, 219, 'Bugiri', 'BUG', 1, NULL),
(3438, 219, 'Busia', 'BUS', 1, NULL),
(3439, 219, 'Iganga', 'IGA', 1, NULL),
(3440, 219, 'Jinja', 'JIN', 1, NULL),
(3441, 219, 'Kaberamaido', 'KAB', 1, NULL),
(3442, 219, 'Kamuli', 'KML', 1, NULL),
(3443, 219, 'Kapchorwa', 'KPC', 1, NULL),
(3444, 219, 'Katakwi', 'KTK', 1, NULL),
(3445, 219, 'Kumi', 'KUM', 1, NULL),
(3446, 219, 'Mayuge', 'MAY', 1, NULL),
(3447, 219, 'Mbale', 'MBA', 1, NULL),
(3448, 219, 'Pallisa', 'PAL', 1, NULL),
(3449, 219, 'Sironko', 'SIR', 1, NULL),
(3450, 219, 'Soroti', 'SOR', 1, NULL),
(3451, 219, 'Tororo', 'TOR', 1, NULL),
(3452, 219, 'Adjumani', 'ADJ', 1, NULL),
(3453, 219, 'Apac', 'APC', 1, NULL),
(3454, 219, 'Arua', 'ARU', 1, NULL),
(3455, 219, 'Gulu', 'GUL', 1, NULL),
(3456, 219, 'Kitgum', 'KIT', 1, NULL),
(3457, 219, 'Kotido', 'KOT', 1, NULL),
(3458, 219, 'Lira', 'LIR', 1, NULL),
(3459, 219, 'Moroto', 'MRT', 1, NULL),
(3460, 219, 'Moyo', 'MOY', 1, NULL),
(3461, 219, 'Nakapiripirit', 'NAK', 1, NULL),
(3462, 219, 'Nebbi', 'NEB', 1, NULL),
(3463, 219, 'Pader', 'PAD', 1, NULL),
(3464, 219, 'Yumbe', 'YUM', 1, NULL),
(3465, 219, 'Bundibugyo', 'BUN', 1, NULL),
(3466, 219, 'Bushenyi', 'BSH', 1, NULL),
(3467, 219, 'Hoima', 'HOI', 1, NULL),
(3468, 219, 'Kabale', 'KBL', 1, NULL),
(3469, 219, 'Kabarole', 'KAR', 1, NULL),
(3470, 219, 'Kamwenge', 'KAM', 1, NULL),
(3471, 219, 'Kanungu', 'KAN', 1, NULL),
(3472, 219, 'Kasese', 'KAS', 1, NULL),
(3473, 219, 'Kibaale', 'KBA', 1, NULL),
(3474, 219, 'Kisoro', 'KIS', 1, NULL),
(3475, 219, 'Kyenjojo', 'KYE', 1, NULL),
(3476, 219, 'Masindi', 'MSN', 1, NULL),
(3477, 219, 'Mbarara', 'MBR', 1, NULL),
(3478, 219, 'Ntungamo', 'NTU', 1, NULL),
(3479, 219, 'Rukungiri', 'RUK', 1, NULL),
(3480, 220, 'Cherkas''ka Oblast''', '71', 1, NULL),
(3481, 220, 'Chernihivs''ka Oblast''', '74', 1, NULL),
(3482, 220, 'Chernivets''ka Oblast''', '77', 1, NULL),
(3483, 220, 'Crimea', '43', 1, NULL),
(3484, 220, 'Dnipropetrovs''ka Oblast''', '12', 1, NULL),
(3485, 220, 'Donets''ka Oblast''', '14', 1, NULL),
(3486, 220, 'Ivano-Frankivs''ka Oblast''', '26', 1, NULL),
(3487, 220, 'Khersons''ka Oblast''', '65', 1, NULL),
(3488, 220, 'Khmel''nyts''ka Oblast''', '68', 1, NULL),
(3489, 220, 'Kirovohrads''ka Oblast''', '35', 1, NULL),
(3490, 220, 'Kyiv', '30', 1, NULL),
(3491, 220, 'Kyivs''ka Oblast''', '32', 1, NULL),
(3492, 220, 'Luhans''ka Oblast''', '09', 1, NULL),
(3493, 220, 'L''vivs''ka Oblast''', '46', 1, NULL),
(3494, 220, 'Mykolayivs''ka Oblast''', '48', 1, NULL),
(3495, 220, 'Odes''ka Oblast''', '51', 1, NULL),
(3496, 220, 'Poltavs''ka Oblast''', '53', 1, NULL),
(3497, 220, 'Rivnens''ka Oblast''', '56', 1, NULL),
(3498, 220, 'Sevastopol''', '40', 1, NULL),
(3499, 220, 'Sums''ka Oblast''', '59', 1, NULL),
(3500, 220, 'Ternopil''s''ka Oblast''', '61', 1, NULL),
(3501, 220, 'Vinnyts''ka Oblast''', '05', 1, NULL),
(3502, 220, 'Volyns''ka Oblast''', '07', 1, NULL),
(3503, 220, 'Zakarpats''ka Oblast''', '21', 1, NULL),
(3504, 220, 'Zaporiz''ka Oblast''', '23', 1, NULL),
(3505, 220, 'Zhytomyrs''ka oblast''', '18', 1, NULL),
(3506, 221, 'Abu Dhabi', 'ADH', 1, NULL),
(3507, 221, '''Ajman', 'AJ', 1, NULL),
(3508, 221, 'Al Fujayrah', 'FU', 1, NULL),
(3509, 221, 'Ash Shariqah', 'SH', 1, NULL),
(3510, 221, 'Dubai', 'DU', 1, NULL),
(3511, 221, 'R''as al Khaymah', 'RK', 1, NULL),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1, NULL),
(3513, 222, 'Aberdeen', 'ABN', 1, NULL),
(3514, 222, 'Aberdeenshire', 'ABNS', 1, NULL),
(3515, 222, 'Anglesey', 'ANG', 1, NULL),
(3516, 222, 'Angus', 'AGS', 1, NULL),
(3517, 222, 'Argyll and Bute', 'ARY', 1, NULL),
(3518, 222, 'Bedfordshire', 'BEDS', 1, NULL),
(3519, 222, 'Berkshire', 'BERKS', 1, NULL),
(3520, 222, 'Blaenau Gwent', 'BLA', 1, NULL),
(3521, 222, 'Bridgend', 'BRI', 1, NULL),
(3522, 222, 'Bristol', 'BSTL', 1, NULL),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1, NULL),
(3524, 222, 'Caerphilly', 'CAE', 1, NULL),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1, NULL),
(3526, 222, 'Cardiff', 'CDF', 1, NULL),
(3527, 222, 'Carmarthenshire', 'CARM', 1, NULL),
(3528, 222, 'Ceredigion', 'CDGN', 1, NULL),
(3529, 222, 'Cheshire', 'CHES', 1, NULL),
(3530, 222, 'Clackmannanshire', 'CLACK', 1, NULL),
(3531, 222, 'Conwy', 'CON', 1, NULL),
(3532, 222, 'Cornwall', 'CORN', 1, NULL),
(3533, 222, 'Denbighshire', 'DNBG', 1, NULL),
(3534, 222, 'Derbyshire', 'DERBY', 1, NULL),
(3535, 222, 'Devon', 'DVN', 1, NULL),
(3536, 222, 'Dorset', 'DOR', 1, NULL),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1, NULL),
(3538, 222, 'Dundee', 'DUND', 1, NULL),
(3539, 222, 'Durham', 'DHM', 1, NULL),
(3540, 222, 'East Ayrshire', 'ARYE', 1, NULL),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1, NULL),
(3542, 222, 'East Lothian', 'LOTE', 1, NULL),
(3543, 222, 'East Renfrewshire', 'RENE', 1, NULL),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1, NULL),
(3545, 222, 'East Sussex', 'SXE', 1, NULL),
(3546, 222, 'Edinburgh', 'EDIN', 1, NULL),
(3547, 222, 'Essex', 'ESX', 1, NULL),
(3548, 222, 'Falkirk', 'FALK', 1, NULL),
(3549, 222, 'Fife', 'FFE', 1, NULL),
(3550, 222, 'Flintshire', 'FLINT', 1, NULL),
(3551, 222, 'Glasgow', 'GLAS', 1, NULL),
(3552, 222, 'Gloucestershire', 'GLOS', 1, NULL),
(3553, 222, 'Greater London', 'LDN', 1, NULL),
(3554, 222, 'Greater Manchester', 'MCH', 1, NULL),
(3555, 222, 'Gwynedd', 'GDD', 1, NULL),
(3556, 222, 'Hampshire', 'HANTS', 1, NULL),
(3557, 222, 'Herefordshire', 'HWR', 1, NULL),
(3558, 222, 'Hertfordshire', 'HERTS', 1, NULL),
(3559, 222, 'Highlands', 'HLD', 1, NULL),
(3560, 222, 'Inverclyde', 'IVER', 1, NULL),
(3561, 222, 'Isle of Wight', 'IOW', 1, NULL),
(3562, 222, 'Kent', 'KNT', 1, NULL),
(3563, 222, 'Lancashire', 'LANCS', 1, NULL),
(3564, 222, 'Leicestershire', 'LEICS', 1, NULL),
(3565, 222, 'Lincolnshire', 'LINCS', 1, NULL),
(3566, 222, 'Merseyside', 'MSY', 1, NULL),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1, NULL),
(3568, 222, 'Midlothian', 'MLOT', 1, NULL),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1, NULL),
(3570, 222, 'Moray', 'MORAY', 1, NULL),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1, NULL),
(3572, 222, 'Newport', 'NEWPT', 1, NULL),
(3573, 222, 'Norfolk', 'NOR', 1, NULL),
(3574, 222, 'North Ayrshire', 'ARYN', 1, NULL),
(3575, 222, 'North Lanarkshire', 'LANN', 1, NULL),
(3576, 222, 'North Yorkshire', 'YSN', 1, NULL),
(3577, 222, 'Northamptonshire', 'NHM', 1, NULL),
(3578, 222, 'Northumberland', 'NLD', 1, NULL),
(3579, 222, 'Nottinghamshire', 'NOT', 1, NULL),
(3580, 222, 'Orkney Islands', 'ORK', 1, NULL),
(3581, 222, 'Oxfordshire', 'OFE', 1, NULL),
(3582, 222, 'Pembrokeshire', 'PEM', 1, NULL),
(3583, 222, 'Perth and Kinross', 'PERTH', 1, NULL),
(3584, 222, 'Powys', 'PWS', 1, NULL),
(3585, 222, 'Renfrewshire', 'REN', 1, NULL),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1, NULL),
(3587, 222, 'Rutland', 'RUT', 1, NULL),
(3588, 222, 'Scottish Borders', 'BOR', 1, NULL),
(3589, 222, 'Shetland Islands', 'SHET', 1, NULL),
(3590, 222, 'Shropshire', 'SPE', 1, NULL),
(3591, 222, 'Somerset', 'SOM', 1, NULL),
(3592, 222, 'South Ayrshire', 'ARYS', 1, NULL),
(3593, 222, 'South Lanarkshire', 'LANS', 1, NULL),
(3594, 222, 'South Yorkshire', 'YSS', 1, NULL),
(3595, 222, 'Staffordshire', 'SFD', 1, NULL),
(3596, 222, 'Stirling', 'STIR', 1, NULL),
(3597, 222, 'Suffolk', 'SFK', 1, NULL),
(3598, 222, 'Surrey', 'SRY', 1, NULL),
(3599, 222, 'Swansea', 'SWAN', 1, NULL),
(3600, 222, 'Torfaen', 'TORF', 1, NULL),
(3601, 222, 'Tyne and Wear', 'TWR', 1, NULL),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1, NULL),
(3603, 222, 'Warwickshire', 'WARKS', 1, NULL),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1, NULL),
(3605, 222, 'West Lothian', 'WLOT', 1, NULL),
(3606, 222, 'West Midlands', 'WMD', 1, NULL),
(3607, 222, 'West Sussex', 'SXW', 1, NULL),
(3608, 222, 'West Yorkshire', 'YSW', 1, NULL),
(3609, 222, 'Western Isles', 'WIL', 1, NULL),
(3610, 222, 'Wiltshire', 'WLT', 1, NULL),
(3611, 222, 'Worcestershire', 'WORCS', 1, NULL),
(3612, 222, 'Wrexham', 'WRX', 1, NULL),
(3613, 223, 'Alabama', 'AL', 1, NULL),
(3614, 223, 'Alaska', 'AK', 1, NULL),
(3615, 223, 'American Samoa', 'AS', 1, NULL),
(3616, 223, 'Arizona', 'AZ', 1, NULL),
(3617, 223, 'Arkansas', 'AR', 1, NULL),
(3618, 223, 'Armed Forces Africa', 'AF', 1, NULL),
(3619, 223, 'Armed Forces Americas', 'AA', 1, NULL),
(3620, 223, 'Armed Forces Canada', 'AC', 1, NULL),
(3621, 223, 'Armed Forces Europe', 'AE', 1, NULL),
(3622, 223, 'Armed Forces Middle East', 'AM', 1, NULL),
(3623, 223, 'Armed Forces Pacific', 'AP', 1, NULL),
(3624, 223, 'California', 'CA', 1, NULL),
(3625, 223, 'Colorado', 'CO', 1, NULL),
(3626, 223, 'Connecticut', 'CT', 1, NULL),
(3627, 223, 'Delaware', 'DE', 1, NULL),
(3628, 223, 'District of Columbia', 'DC', 1, NULL),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1, NULL),
(3630, 223, 'Florida', 'FL', 1, NULL),
(3631, 223, 'Georgia', 'GA', 1, NULL),
(3632, 223, 'Guam', 'GU', 1, NULL),
(3633, 223, 'Hawaii', 'HI', 1, NULL),
(3634, 223, 'Idaho', 'ID', 1, NULL),
(3635, 223, 'Illinois', 'IL', 1, NULL),
(3636, 223, 'Indiana', 'IN', 1, NULL),
(3637, 223, 'Iowa', 'IA', 1, NULL),
(3638, 223, 'Kansas', 'KS', 1, NULL),
(3639, 223, 'Kentucky', 'KY', 1, NULL),
(3640, 223, 'Louisiana', 'LA', 1, NULL),
(3641, 223, 'Maine', 'ME', 1, NULL),
(3642, 223, 'Marshall Islands', 'MH', 1, NULL),
(3643, 223, 'Maryland', 'MD', 1, NULL),
(3644, 223, 'Massachusetts', 'MA', 1, NULL),
(3645, 223, 'Michigan', 'MI', 1, NULL),
(3646, 223, 'Minnesota', 'MN', 1, NULL),
(3647, 223, 'Mississippi', 'MS', 1, NULL),
(3648, 223, 'Missouri', 'MO', 1, NULL),
(3649, 223, 'Montana', 'MT', 1, NULL),
(3650, 223, 'Nebraska', 'NE', 1, NULL),
(3651, 223, 'Nevada', 'NV', 1, NULL),
(3652, 223, 'New Hampshire', 'NH', 1, NULL),
(3653, 223, 'New Jersey', 'NJ', 1, NULL),
(3654, 223, 'New Mexico', 'NM', 1, NULL),
(3655, 223, 'New York', 'NY', 1, NULL),
(3656, 223, 'North Carolina', 'NC', 1, NULL),
(3657, 223, 'North Dakota', 'ND', 1, NULL),
(3658, 223, 'Northern Mariana Islands', 'MP', 1, NULL),
(3659, 223, 'Ohio', 'OH', 1, NULL),
(3660, 223, 'Oklahoma', 'OK', 1, NULL),
(3661, 223, 'Oregon', 'OR', 1, NULL),
(3662, 223, 'Palau', 'PW', 1, NULL),
(3663, 223, 'Pennsylvania', 'PA', 1, NULL),
(3664, 223, 'Puerto Rico', 'PR', 1, NULL),
(3665, 223, 'Rhode Island', 'RI', 1, NULL),
(3666, 223, 'South Carolina', 'SC', 1, NULL),
(3667, 223, 'South Dakota', 'SD', 1, NULL),
(3668, 223, 'Tennessee', 'TN', 1, NULL),
(3669, 223, 'Texas', 'TX', 1, NULL),
(3670, 223, 'Utah', 'UT', 1, NULL),
(3671, 223, 'Vermont', 'VT', 1, NULL),
(3672, 223, 'Virgin Islands', 'VI', 1, NULL),
(3673, 223, 'Virginia', 'VA', 1, NULL),
(3674, 223, 'Washington', 'WA', 1, NULL),
(3675, 223, 'West Virginia', 'WV', 1, NULL),
(3676, 223, 'Wisconsin', 'WI', 1, NULL),
(3677, 223, 'Wyoming', 'WY', 1, NULL),
(3678, 224, 'Baker Island', 'BI', 1, NULL),
(3679, 224, 'Howland Island', 'HI', 1, NULL),
(3680, 224, 'Jarvis Island', 'JI', 1, NULL),
(3681, 224, 'Johnston Atoll', 'JA', 1, NULL),
(3682, 224, 'Kingman Reef', 'KR', 1, NULL),
(3683, 224, 'Midway Atoll', 'MA', 1, NULL),
(3684, 224, 'Navassa Island', 'NI', 1, NULL),
(3685, 224, 'Palmyra Atoll', 'PA', 1, NULL),
(3686, 224, 'Wake Island', 'WI', 1, NULL),
(3687, 225, 'Artigas', 'AR', 1, NULL),
(3688, 225, 'Canelones', 'CA', 1, NULL),
(3689, 225, 'Cerro Largo', 'CL', 1, NULL),
(3690, 225, 'Colonia', 'CO', 1, NULL),
(3691, 225, 'Durazno', 'DU', 1, NULL),
(3692, 225, 'Flores', 'FS', 1, NULL),
(3693, 225, 'Florida', 'FA', 1, NULL),
(3694, 225, 'Lavalleja', 'LA', 1, NULL),
(3695, 225, 'Maldonado', 'MA', 1, NULL),
(3696, 225, 'Montevideo', 'MO', 1, NULL),
(3697, 225, 'Paysandu', 'PA', 1, NULL),
(3698, 225, 'Rio Negro', 'RN', 1, NULL),
(3699, 225, 'Rivera', 'RV', 1, NULL),
(3700, 225, 'Rocha', 'RO', 1, NULL),
(3701, 225, 'Salto', 'SL', 1, NULL),
(3702, 225, 'San Jose', 'SJ', 1, NULL),
(3703, 225, 'Soriano', 'SO', 1, NULL),
(3704, 225, 'Tacuarembo', 'TA', 1, NULL),
(3705, 225, 'Treinta y Tres', 'TT', 1, NULL),
(3706, 226, 'Andijon', 'AN', 1, NULL),
(3707, 226, 'Buxoro', 'BU', 1, NULL),
(3708, 226, 'Farg''ona', 'FA', 1, NULL),
(3709, 226, 'Jizzax', 'JI', 1, NULL),
(3710, 226, 'Namangan', 'NG', 1, NULL),
(3711, 226, 'Navoiy', 'NW', 1, NULL),
(3712, 226, 'Qashqadaryo', 'QA', 1, NULL),
(3713, 226, 'Qoraqalpog''iston Republikasi', 'QR', 1, NULL),
(3714, 226, 'Samarqand', 'SA', 1, NULL),
(3715, 226, 'Sirdaryo', 'SI', 1, NULL),
(3716, 226, 'Surxondaryo', 'SU', 1, NULL),
(3717, 226, 'Toshkent City', 'TK', 1, NULL),
(3718, 226, 'Toshkent Region', 'TO', 1, NULL),
(3719, 226, 'Xorazm', 'XO', 1, NULL),
(3720, 227, 'Malampa', 'MA', 1, NULL),
(3721, 227, 'Penama', 'PE', 1, NULL),
(3722, 227, 'Sanma', 'SA', 1, NULL),
(3723, 227, 'Shefa', 'SH', 1, NULL),
(3724, 227, 'Tafea', 'TA', 1, NULL),
(3725, 227, 'Torba', 'TO', 1, NULL),
(3726, 229, 'Amazonas', 'AM', 1, NULL),
(3727, 229, 'Anzoategui', 'AN', 1, NULL),
(3728, 229, 'Apure', 'AP', 1, NULL),
(3729, 229, 'Aragua', 'AR', 1, NULL),
(3730, 229, 'Barinas', 'BA', 1, NULL),
(3731, 229, 'Bolivar', 'BO', 1, NULL),
(3732, 229, 'Carabobo', 'CA', 1, NULL),
(3733, 229, 'Cojedes', 'CO', 1, NULL),
(3734, 229, 'Delta Amacuro', 'DA', 1, NULL),
(3735, 229, 'Dependencias Federales', 'DF', 1, NULL),
(3736, 229, 'Distrito Federal', 'DI', 1, NULL),
(3737, 229, 'Falcon', 'FA', 1, NULL),
(3738, 229, 'Guarico', 'GU', 1, NULL),
(3739, 229, 'Lara', 'LA', 1, NULL),
(3740, 229, 'Merida', 'ME', 1, NULL),
(3741, 229, 'Miranda', 'MI', 1, NULL),
(3742, 229, 'Monagas', 'MO', 1, NULL),
(3743, 229, 'Nueva Esparta', 'NE', 1, NULL),
(3744, 229, 'Portuguesa', 'PO', 1, NULL),
(3745, 229, 'Sucre', 'SU', 1, NULL),
(3746, 229, 'Tachira', 'TA', 1, NULL),
(3747, 229, 'Trujillo', 'TR', 1, NULL),
(3748, 229, 'Vargas', 'VA', 1, NULL),
(3749, 229, 'Yaracuy', 'YA', 1, NULL),
(3750, 229, 'Zulia', 'ZU', 1, NULL),
(3751, 230, 'An Giang', 'AG', 1, NULL),
(3752, 230, 'Bac Giang', 'BG', 1, NULL),
(3753, 230, 'Bac Kan', 'BK', 1, NULL),
(3754, 230, 'Bac Lieu', 'BL', 1, NULL),
(3755, 230, 'Bac Ninh', 'BC', 1, NULL),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1, NULL),
(3757, 230, 'Ben Tre', 'BN', 1, NULL),
(3758, 230, 'Binh Dinh', 'BH', 1, NULL),
(3759, 230, 'Binh Duong', 'BU', 1, NULL),
(3760, 230, 'Binh Phuoc', 'BP', 1, NULL),
(3761, 230, 'Binh Thuan', 'BT', 1, NULL),
(3762, 230, 'Ca Mau', 'CM', 1, NULL),
(3763, 230, 'Can Tho', 'CT', 1, NULL),
(3764, 230, 'Cao Bang', 'CB', 1, NULL),
(3765, 230, 'Dak Lak', 'DL', 1, NULL),
(3766, 230, 'Dak Nong', 'DG', 1, NULL),
(3767, 230, 'Da Nang', 'DN', 1, NULL),
(3768, 230, 'Dien Bien', 'DB', 1, NULL),
(3769, 230, 'Dong Nai', 'DI', 1, NULL),
(3770, 230, 'Dong Thap', 'DT', 1, NULL),
(3771, 230, 'Gia Lai', 'GL', 1, NULL),
(3772, 230, 'Ha Giang', 'HG', 1, NULL),
(3773, 230, 'Hai Duong', 'HD', 1, NULL),
(3774, 230, 'Hai Phong', 'HP', 1, NULL),
(3775, 230, 'Ha Nam', 'HM', 1, NULL),
(3776, 230, 'Ha Noi', 'HI', 1, NULL),
(3777, 230, 'Ha Tay', 'HT', 1, NULL),
(3778, 230, 'Ha Tinh', 'HH', 1, NULL),
(3779, 230, 'Hoa Binh', 'HB', 1, NULL),
(3780, 230, 'Ho Chi Minh City', 'HC', 1, NULL),
(3781, 230, 'Hau Giang', 'HU', 1, NULL),
(3782, 230, 'Hung Yen', 'HY', 1, NULL),
(3783, 232, 'Saint Croix', 'C', 1, NULL),
(3784, 232, 'Saint John', 'J', 1, NULL),
(3785, 232, 'Saint Thomas', 'T', 1, NULL),
(3786, 233, 'Alo', 'A', 1, NULL),
(3787, 233, 'Sigave', 'S', 1, NULL),
(3788, 233, 'Wallis', 'W', 1, NULL),
(3789, 235, 'Abyan', 'AB', 1, NULL),
(3790, 235, 'Adan', 'AD', 1, NULL),
(3791, 235, 'Amran', 'AM', 1, NULL),
(3792, 235, 'Al Bayda', 'BA', 1, NULL),
(3793, 235, 'Ad Dali', 'DA', 1, NULL),
(3794, 235, 'Dhamar', 'DH', 1, NULL),
(3795, 235, 'Hadramawt', 'HD', 1, NULL),
(3796, 235, 'Hajjah', 'HJ', 1, NULL),
(3797, 235, 'Al Hudaydah', 'HU', 1, NULL),
(3798, 235, 'Ibb', 'IB', 1, NULL),
(3799, 235, 'Al Jawf', 'JA', 1, NULL),
(3800, 235, 'Lahij', 'LA', 1, NULL),
(3801, 235, 'Ma''rib', 'MA', 1, NULL),
(3802, 235, 'Al Mahrah', 'MR', 1, NULL),
(3803, 235, 'Al Mahwit', 'MW', 1, NULL),
(3804, 235, 'Sa''dah', 'SD', 1, NULL),
(3805, 235, 'San''a', 'SN', 1, NULL),
(3806, 235, 'Shabwah', 'SH', 1, NULL),
(3807, 235, 'Ta''izz', 'TA', 1, NULL),
(3812, 237, 'Bas-Congo', 'BC', 1, NULL),
(3813, 237, 'Bandundu', 'BN', 1, NULL),
(3814, 237, 'Equateur', 'EQ', 1, NULL),
(3815, 237, 'Katanga', 'KA', 1, NULL),
(3816, 237, 'Kasai-Oriental', 'KE', 1, NULL),
(3817, 237, 'Kinshasa', 'KN', 1, NULL),
(3818, 237, 'Kasai-Occidental', 'KW', 1, NULL),
(3819, 237, 'Maniema', 'MA', 1, NULL),
(3820, 237, 'Nord-Kivu', 'NK', 1, NULL),
(3821, 237, 'Orientale', 'OR', 1, NULL),
(3822, 237, 'Sud-Kivu', 'SK', 1, NULL),
(3823, 238, 'Central', 'CE', 1, NULL),
(3824, 238, 'Copperbelt', 'CB', 1, NULL),
(3825, 238, 'Eastern', 'EA', 1, NULL),
(3826, 238, 'Luapula', 'LP', 1, NULL),
(3827, 238, 'Lusaka', 'LK', 1, NULL),
(3828, 238, 'Northern', 'NO', 1, NULL),
(3829, 238, 'North-Western', 'NW', 1, NULL),
(3830, 238, 'Southern', 'SO', 1, NULL),
(3831, 238, 'Western', 'WE', 1, NULL),
(3832, 239, 'Bulawayo', 'BU', 1, NULL),
(3833, 239, 'Harare', 'HA', 1, NULL),
(3834, 239, 'Manicaland', 'ML', 1, NULL),
(3835, 239, 'Mashonaland Central', 'MC', 1, NULL),
(3836, 239, 'Mashonaland East', 'ME', 1, NULL),
(3837, 239, 'Mashonaland West', 'MW', 1, NULL),
(3838, 239, 'Masvingo', 'MV', 1, NULL),
(3839, 239, 'Matabeleland North', 'MN', 1, NULL),
(3840, 239, 'Matabeleland South', 'MS', 1, NULL),
(3841, 239, 'Midlands', 'MD', 1, NULL),
(3861, 105, 'Campobasso', 'CB', 1, NULL),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1, NULL),
(3863, 105, 'Caserta', 'CE', 1, NULL),
(3864, 105, 'Catania', 'CT', 1, NULL),
(3865, 105, 'Catanzaro', 'CZ', 1, NULL),
(3866, 105, 'Chieti', 'CH', 1, NULL),
(3867, 105, 'Como', 'CO', 1, NULL),
(3868, 105, 'Cosenza', 'CS', 1, NULL),
(3869, 105, 'Cremona', 'CR', 1, NULL),
(3870, 105, 'Crotone', 'KR', 1, NULL),
(3871, 105, 'Cuneo', 'CN', 1, NULL),
(3872, 105, 'Enna', 'EN', 1, NULL),
(3873, 105, 'Ferrara', 'FE', 1, NULL),
(3874, 105, 'Firenze', 'FI', 1, NULL),
(3875, 105, 'Foggia', 'FG', 1, NULL),
(3876, 105, 'Forli-Cesena', 'FC', 1, NULL),
(3877, 105, 'Frosinone', 'FR', 1, NULL),
(3878, 105, 'Genova', 'GE', 1, NULL),
(3879, 105, 'Gorizia', 'GO', 1, NULL),
(3880, 105, 'Grosseto', 'GR', 1, NULL),
(3881, 105, 'Imperia', 'IM', 1, NULL),
(3882, 105, 'Isernia', 'IS', 1, NULL),
(3883, 105, 'L&#39;Aquila', 'AQ', 1, NULL),
(3884, 105, 'La Spezia', 'SP', 1, NULL),
(3885, 105, 'Latina', 'LT', 1, NULL),
(3886, 105, 'Lecce', 'LE', 1, NULL),
(3887, 105, 'Lecco', 'LC', 1, NULL),
(3888, 105, 'Livorno', 'LI', 1, NULL),
(3889, 105, 'Lodi', 'LO', 1, NULL),
(3890, 105, 'Lucca', 'LU', 1, NULL),
(3891, 105, 'Macerata', 'MC', 1, NULL),
(3892, 105, 'Mantova', 'MN', 1, NULL),
(3893, 105, 'Massa-Carrara', 'MS', 1, NULL),
(3894, 105, 'Matera', 'MT', 1, NULL),
(3895, 105, 'Medio Campidano', 'VS', 1, NULL),
(3896, 105, 'Messina', 'ME', 1, NULL),
(3897, 105, 'Milano', 'MI', 1, NULL),
(3898, 105, 'Modena', 'MO', 1, NULL),
(3899, 105, 'Napoli', 'NA', 1, NULL),
(3900, 105, 'Novara', 'NO', 1, NULL),
(3901, 105, 'Nuoro', 'NU', 1, NULL),
(3902, 105, 'Ogliastra', 'OG', 1, NULL),
(3903, 105, 'Olbia-Tempio', 'OT', 1, NULL),
(3904, 105, 'Oristano', 'OR', 1, NULL),
(3905, 105, 'Padova', 'PD', 1, NULL),
(3906, 105, 'Palermo', 'PA', 1, NULL),
(3907, 105, 'Parma', 'PR', 1, NULL),
(3908, 105, 'Pavia', 'PV', 1, NULL),
(3909, 105, 'Perugia', 'PG', 1, NULL),
(3910, 105, 'Pesaro e Urbino', 'PU', 1, NULL),
(3911, 105, 'Pescara', 'PE', 1, NULL),
(3912, 105, 'Piacenza', 'PC', 1, NULL),
(3913, 105, 'Pisa', 'PI', 1, NULL),
(3914, 105, 'Pistoia', 'PT', 1, NULL),
(3915, 105, 'Pordenone', 'PN', 1, NULL),
(3916, 105, 'Potenza', 'PZ', 1, NULL),
(3917, 105, 'Prato', 'PO', 1, NULL),
(3918, 105, 'Ragusa', 'RG', 1, NULL),
(3919, 105, 'Ravenna', 'RA', 1, NULL),
(3920, 105, 'Reggio Calabria', 'RC', 1, NULL),
(3921, 105, 'Reggio Emilia', 'RE', 1, NULL),
(3922, 105, 'Rieti', 'RI', 1, NULL),
(3923, 105, 'Rimini', 'RN', 1, NULL),
(3924, 105, 'Roma', 'RM', 1, NULL),
(3925, 105, 'Rovigo', 'RO', 1, NULL),
(3926, 105, 'Salerno', 'SA', 1, NULL),
(3927, 105, 'Sassari', 'SS', 1, NULL),
(3928, 105, 'Savona', 'SV', 1, NULL),
(3929, 105, 'Siena', 'SI', 1, NULL),
(3930, 105, 'Siracusa', 'SR', 1, NULL),
(3931, 105, 'Sondrio', 'SO', 1, NULL),
(3932, 105, 'Taranto', 'TA', 1, NULL),
(3933, 105, 'Teramo', 'TE', 1, NULL),
(3934, 105, 'Terni', 'TR', 1, NULL),
(3935, 105, 'Torino', 'TO', 1, NULL),
(3936, 105, 'Trapani', 'TP', 1, NULL),
(3937, 105, 'Trento', 'TN', 1, NULL),
(3938, 105, 'Treviso', 'TV', 1, NULL),
(3939, 105, 'Trieste', 'TS', 1, NULL),
(3940, 105, 'Udine', 'UD', 1, NULL);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`, `major`) VALUES
(3941, 105, 'Varese', 'VA', 1, NULL),
(3942, 105, 'Venezia', 'VE', 1, NULL),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1, NULL),
(3944, 105, 'Vercelli', 'VC', 1, NULL),
(3945, 105, 'Verona', 'VR', 1, NULL),
(3946, 105, 'Vibo Valentia', 'VV', 1, NULL),
(3947, 105, 'Vicenza', 'VI', 1, NULL),
(3948, 105, 'Viterbo', 'VT', 1, NULL),
(3949, 222, 'County Antrim', 'ANT', 1, NULL),
(3950, 222, 'County Armagh', 'ARM', 1, NULL),
(3951, 222, 'County Down', 'DOW', 1, NULL),
(3952, 222, 'County Fermanagh', 'FER', 1, NULL),
(3953, 222, 'County Londonderry', 'LDY', 1, NULL),
(3954, 222, 'County Tyrone', 'TYR', 1, NULL),
(3955, 222, 'Cumbria', 'CMA', 1, NULL),
(3956, 190, 'Pomurska', '1', 1, NULL),
(3957, 190, 'Podravska', '2', 1, NULL),
(3958, 190, 'Koroška', '3', 1, NULL),
(3959, 190, 'Savinjska', '4', 1, NULL),
(3960, 190, 'Zasavska', '5', 1, NULL),
(3961, 190, 'Spodnjeposavska', '6', 1, NULL),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1, NULL),
(3963, 190, 'Osrednjeslovenska', '8', 1, NULL),
(3964, 190, 'Gorenjska', '9', 1, NULL),
(3965, 190, 'Notranjsko-kraška', '10', 1, NULL),
(3966, 190, 'Goriška', '11', 1, NULL),
(3967, 190, 'Obalno-kraška', '12', 1, NULL),
(3968, 33, 'Ruse', '', 1, NULL),
(3969, 101, 'Alborz', 'ALB', 1, NULL),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1, NULL),
(3971, 138, 'Aguascalientes', 'AG', 1, NULL),
(3973, 242, 'Andrijevica', '01', 1, NULL),
(3974, 242, 'Bar', '02', 1, NULL),
(3975, 242, 'Berane', '03', 1, NULL),
(3976, 242, 'Bijelo Polje', '04', 1, NULL),
(3977, 242, 'Budva', '05', 1, NULL),
(3978, 242, 'Cetinje', '06', 1, NULL),
(3979, 242, 'Danilovgrad', '07', 1, NULL),
(3980, 242, 'Herceg-Novi', '08', 1, NULL),
(3981, 242, 'Kolašin', '09', 1, NULL),
(3982, 242, 'Kotor', '10', 1, NULL),
(3983, 242, 'Mojkovac', '11', 1, NULL),
(3984, 242, 'Nikšić', '12', 1, NULL),
(3985, 242, 'Plav', '13', 1, NULL),
(3986, 242, 'Pljevlja', '14', 1, NULL),
(3987, 242, 'Plužine', '15', 1, NULL),
(3988, 242, 'Podgorica', '16', 1, NULL),
(3989, 242, 'Rožaje', '17', 1, NULL),
(3990, 242, 'Šavnik', '18', 1, NULL),
(3991, 242, 'Tivat', '19', 1, NULL),
(3992, 242, 'Ulcinj', '20', 1, NULL),
(3993, 242, 'Žabljak', '21', 1, NULL),
(3994, 243, 'Belgrade', '00', 1, NULL),
(3995, 243, 'North Bačka', '01', 1, NULL),
(3996, 243, 'Central Banat', '02', 1, NULL),
(3997, 243, 'North Banat', '03', 1, NULL),
(3998, 243, 'South Banat', '04', 1, NULL),
(3999, 243, 'West Bačka', '05', 1, NULL),
(4000, 243, 'South Bačka', '06', 1, NULL),
(4001, 243, 'Srem', '07', 1, NULL),
(4002, 243, 'Mačva', '08', 1, NULL),
(4003, 243, 'Kolubara', '09', 1, NULL),
(4004, 243, 'Podunavlje', '10', 1, NULL),
(4005, 243, 'Braničevo', '11', 1, NULL),
(4006, 243, 'Šumadija', '12', 1, NULL),
(4007, 243, 'Pomoravlje', '13', 1, NULL),
(4008, 243, 'Bor', '14', 1, NULL),
(4009, 243, 'Zaječar', '15', 1, NULL),
(4010, 243, 'Zlatibor', '16', 1, NULL),
(4011, 243, 'Moravica', '17', 1, NULL),
(4012, 243, 'Raška', '18', 1, NULL),
(4013, 243, 'Rasina', '19', 1, NULL),
(4014, 243, 'Nišava', '20', 1, NULL),
(4015, 243, 'Toplica', '21', 1, NULL),
(4016, 243, 'Pirot', '22', 1, NULL),
(4017, 243, 'Jablanica', '23', 1, NULL),
(4018, 243, 'Pčinja', '24', 1, NULL),
(4020, 245, 'Bonaire', 'BO', 1, NULL),
(4021, 245, 'Saba', 'SA', 1, NULL),
(4022, 245, 'Sint Eustatius', 'SE', 1, NULL),
(4023, 248, 'Central Equatoria', 'EC', 1, NULL),
(4024, 248, 'Eastern Equatoria', 'EE', 1, NULL),
(4025, 248, 'Jonglei', 'JG', 1, NULL),
(4026, 248, 'Lakes', 'LK', 1, NULL),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1, NULL),
(4028, 248, 'Unity', 'UY', 1, NULL),
(4029, 248, 'Upper Nile', 'NU', 1, NULL),
(4030, 248, 'Warrap', 'WR', 1, NULL),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1, NULL),
(4032, 248, 'Western Equatoria', 'EW', 1, NULL),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1, NULL),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1, NULL),
(4038, 117, 'Aizkraukles novads', '0320200', 1, NULL),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1, NULL),
(4040, 117, 'Aizputes novads', '0640600', 1, NULL),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1, NULL),
(4042, 117, 'Aknīstes novads', '0560800', 1, NULL),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1, NULL),
(4044, 117, 'Alojas novads', '0661000', 1, NULL),
(4045, 117, 'Alsungas novads', '0624200', 1, NULL),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1, NULL),
(4047, 117, 'Alūksnes novads', '0360200', 1, NULL),
(4048, 117, 'Amatas novads', '0424701', 1, NULL),
(4049, 117, 'Ape, Apes novads', '0360805', 1, NULL),
(4050, 117, 'Apes novads', '0360800', 1, NULL),
(4051, 117, 'Auce, Auces novads', '0460805', 1, NULL),
(4052, 117, 'Auces novads', '0460800', 1, NULL),
(4053, 117, 'Ādažu novads', '0804400', 1, NULL),
(4054, 117, 'Babītes novads', '0804900', 1, NULL),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1, NULL),
(4056, 117, 'Baldones novads', '0800600', 1, NULL),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1, NULL),
(4058, 117, 'Baltinavas novads', '0384400', 1, NULL),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1, NULL),
(4060, 117, 'Balvu novads', '0380200', 1, NULL),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1, NULL),
(4062, 117, 'Bauskas novads', '0400200', 1, NULL),
(4063, 117, 'Beverīnas novads', '0964700', 1, NULL),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1, NULL),
(4065, 117, 'Brocēnu novads', '0840601', 1, NULL),
(4066, 117, 'Burtnieku novads', '0967101', 1, NULL),
(4067, 117, 'Carnikavas novads', '0805200', 1, NULL),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1, NULL),
(4069, 117, 'Cesvaines novads', '0700800', 1, NULL),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1, NULL),
(4071, 117, 'Cēsu novads', '0420200', 1, NULL),
(4072, 117, 'Ciblas novads', '0684901', 1, NULL),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1, NULL),
(4074, 117, 'Dagdas novads', '0601000', 1, NULL),
(4075, 117, 'Daugavpils', '0050000', 1, NULL),
(4076, 117, 'Daugavpils novads', '0440200', 1, NULL),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1, NULL),
(4078, 117, 'Dobeles novads', '0460200', 1, NULL),
(4079, 117, 'Dundagas novads', '0885100', 1, NULL),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1, NULL),
(4081, 117, 'Durbes novads', '0640801', 1, NULL),
(4082, 117, 'Engures novads', '0905100', 1, NULL),
(4083, 117, 'Ērgļu novads', '0705500', 1, NULL),
(4084, 117, 'Garkalnes novads', '0806000', 1, NULL),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1, NULL),
(4086, 117, 'Grobiņas novads', '0641000', 1, NULL),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1, NULL),
(4088, 117, 'Gulbenes novads', '0500200', 1, NULL),
(4089, 117, 'Iecavas novads', '0406400', 1, NULL),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1, NULL),
(4091, 117, 'Ikšķiles novads', '0740600', 1, NULL),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1, NULL),
(4093, 117, 'Ilūkstes novads', '0440801', 1, NULL),
(4094, 117, 'Inčukalna novads', '0801800', 1, NULL),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1, NULL),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1, NULL),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1, NULL),
(4098, 117, 'Jaunpils novads', '0905700', 1, NULL),
(4099, 117, 'Jelgava', '0090000', 1, NULL),
(4100, 117, 'Jelgavas novads', '0540200', 1, NULL),
(4101, 117, 'Jēkabpils', '0110000', 1, NULL),
(4102, 117, 'Jēkabpils novads', '0560200', 1, NULL),
(4103, 117, 'Jūrmala', '0130000', 1, NULL),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1, NULL),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1, NULL),
(4106, 117, 'Kandavas novads', '0901201', 1, NULL),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1, NULL),
(4108, 117, 'Kārsavas novads', '0681000', 1, NULL),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1, NULL),
(4110, 117, 'Kokneses novads', '0326100', 1, NULL),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1, NULL),
(4112, 117, 'Krāslavas novads', '0600202', 1, NULL),
(4113, 117, 'Krimuldas novads', '0806900', 1, NULL),
(4114, 117, 'Krustpils novads', '0566900', 1, NULL),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1, NULL),
(4116, 117, 'Kuldīgas novads', '0620200', 1, NULL),
(4117, 117, 'Ķeguma novads', '0741001', 1, NULL),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1, NULL),
(4119, 117, 'Ķekavas novads', '0800800', 1, NULL),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1, NULL),
(4121, 117, 'Lielvārdes novads', '0741401', 1, NULL),
(4122, 117, 'Liepāja', '0170000', 1, NULL),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1, NULL),
(4124, 117, 'Limbažu novads', '0660200', 1, NULL),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1, NULL),
(4126, 117, 'Līgatnes novads', '0421200', 1, NULL),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1, NULL),
(4128, 117, 'Līvānu novads', '0761201', 1, NULL),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1, NULL),
(4130, 117, 'Lubānas novads', '0701400', 1, NULL),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1, NULL),
(4132, 117, 'Ludzas novads', '0680200', 1, NULL),
(4133, 117, 'Madona, Madonas novads', '0700201', 1, NULL),
(4134, 117, 'Madonas novads', '0700200', 1, NULL),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1, NULL),
(4136, 117, 'Mazsalacas novads', '0961000', 1, NULL),
(4137, 117, 'Mālpils novads', '0807400', 1, NULL),
(4138, 117, 'Mārupes novads', '0807600', 1, NULL),
(4139, 117, 'Mērsraga novads', '0887600', 1, NULL),
(4140, 117, 'Naukšēnu novads', '0967300', 1, NULL),
(4141, 117, 'Neretas novads', '0327100', 1, NULL),
(4142, 117, 'Nīcas novads', '0647900', 1, NULL),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1, NULL),
(4144, 117, 'Ogres novads', '0740202', 1, NULL),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1, NULL),
(4146, 117, 'Olaines novads', '0801000', 1, NULL),
(4147, 117, 'Ozolnieku novads', '0546701', 1, NULL),
(4148, 117, 'Pārgaujas novads', '0427500', 1, NULL),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1, NULL),
(4150, 117, 'Pāvilostas novads', '0641401', 1, NULL),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1, NULL),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1, NULL),
(4153, 117, 'Pļaviņu novads', '0321400', 1, NULL),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1, NULL),
(4155, 117, 'Preiļu novads', '0760202', 1, NULL),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1, NULL),
(4157, 117, 'Priekules novads', '0641600', 1, NULL),
(4158, 117, 'Priekuļu novads', '0427300', 1, NULL),
(4159, 117, 'Raunas novads', '0427700', 1, NULL),
(4160, 117, 'Rēzekne', '0210000', 1, NULL),
(4161, 117, 'Rēzeknes novads', '0780200', 1, NULL),
(4162, 117, 'Riebiņu novads', '0766300', 1, NULL),
(4163, 117, 'Rīga', '0010000', 1, NULL),
(4164, 117, 'Rojas novads', '0888300', 1, NULL),
(4165, 117, 'Ropažu novads', '0808400', 1, NULL),
(4166, 117, 'Rucavas novads', '0648500', 1, NULL),
(4167, 117, 'Rugāju novads', '0387500', 1, NULL),
(4168, 117, 'Rundāles novads', '0407700', 1, NULL),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1, NULL),
(4170, 117, 'Rūjienas novads', '0961600', 1, NULL),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1, NULL),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1, NULL),
(4173, 117, 'Salacgrīvas novads', '0661400', 1, NULL),
(4174, 117, 'Salas novads', '0568700', 1, NULL),
(4175, 117, 'Salaspils novads', '0801200', 1, NULL),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1, NULL),
(4177, 117, 'Saldus novads', '0840200', 1, NULL),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1, NULL),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1, NULL),
(4180, 117, 'Saulkrastu novads', '0801400', 1, NULL),
(4181, 117, 'Seda, Strenču novads', '0941813', 1, NULL),
(4182, 117, 'Sējas novads', '0809200', 1, NULL),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1, NULL),
(4184, 117, 'Siguldas novads', '0801601', 1, NULL),
(4185, 117, 'Skrīveru novads', '0328200', 1, NULL),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1, NULL),
(4187, 117, 'Skrundas novads', '0621200', 1, NULL),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1, NULL),
(4189, 117, 'Smiltenes novads', '0941600', 1, NULL),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1, NULL),
(4191, 117, 'Stende, Talsu novads', '0880215', 1, NULL),
(4192, 117, 'Stopiņu novads', '0809600', 1, NULL),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1, NULL),
(4194, 117, 'Strenču novads', '0941800', 1, NULL),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1, NULL),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1, NULL),
(4197, 117, 'Talsu novads', '0880200', 1, NULL),
(4198, 117, 'Tērvetes novads', '0468900', 1, NULL),
(4199, 117, 'Tukuma novads', '0900200', 1, NULL),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1, NULL),
(4201, 117, 'Vaiņodes novads', '0649300', 1, NULL),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1, NULL),
(4203, 117, 'Valka, Valkas novads', '0940201', 1, NULL),
(4204, 117, 'Valkas novads', '0940200', 1, NULL),
(4205, 117, 'Valmiera', '0250000', 1, NULL),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1, NULL),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1, NULL),
(4208, 117, 'Varakļānu novads', '0701800', 1, NULL),
(4209, 117, 'Vārkavas novads', '0769101', 1, NULL),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1, NULL),
(4211, 117, 'Vecumnieku novads', '0409500', 1, NULL),
(4212, 117, 'Ventspils', '0270000', 1, NULL),
(4213, 117, 'Ventspils novads', '0980200', 1, NULL),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1, NULL),
(4215, 117, 'Viesītes novads', '0561800', 1, NULL),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1, NULL),
(4217, 117, 'Viļakas novads', '0381600', 1, NULL),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1, NULL),
(4219, 117, 'Viļānu novads', '0781800', 1, NULL),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1, NULL),
(4221, 117, 'Zilupes novads', '0681801', 1, NULL),
(4222, 43, 'Arica y Parinacota', 'AP', 1, NULL),
(4223, 43, 'Los Rios', 'LR', 1, NULL),
(4224, 220, 'Kharkivs''ka Oblast''', '63', 1, NULL),
(4225, 118, 'Beirut', 'LB-BR', 1, NULL),
(4226, 118, 'Bekaa', 'LB-BE', 1, NULL),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1, NULL),
(4228, 118, 'Nabatieh', 'LB-NB', 1, NULL),
(4229, 118, 'North', 'LB-NR', 1, NULL),
(4230, 118, 'South', 'LB-ST', 1, NULL),
(4231, 99, 'Telangana', 'TS', 1, NULL),
(4232, 244, 'Проверка', '', 1, 1),
(4233, 3, '3', '3', 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone_description`
--

CREATE TABLE IF NOT EXISTS `oc_zone_description` (
  `zone_description_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`zone_description_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `oc_zone_description`
--

INSERT INTO `oc_zone_description` (`zone_description_id`, `zone_id`, `language_id`, `name`) VALUES
(13, 4232, 2, 'Проверка рук 1'),
(14, 4232, 3, 'Проверка укр 1'),
(15, 2, 2, 'Badghis'),
(16, 2, 3, 'Badghis'),
(17, 3, 2, 'Baghlan'),
(18, 3, 3, 'Baghlan'),
(19, 1, 2, 'Badakhshan'),
(20, 1, 3, 'Badakhshan');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone_to_geo_zone`
--

CREATE TABLE IF NOT EXISTS `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=110 ;

--
-- Дамп данных таблицы `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

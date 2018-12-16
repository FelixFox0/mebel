-- phpMyAdmin SQL Dump
-- version 4.6.6deb1+deb.cihar.com~xenial.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Дек 15 2018 г., 22:39
-- Версия сервера: 5.7.24-0ubuntu0.16.04.1
-- Версия PHP: 7.1.9-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mebel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
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
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 1, 'Test1', 'admin', '', 'Ipsum', '', 'Ipsum', '', 1, 1, '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_affiliate`
--

CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL,
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
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_affiliate_activity`
--

CREATE TABLE `oc_affiliate_activity` (
  `affiliate_activity_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_affiliate_login`
--

CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_affiliate_transaction`
--

CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `name`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'iOGb0Dau54pFVaNr4kme5OKu3eojmp2YqoKLdjOA6GM9qEhNiNboPCidk7oQejRb2GFomUVGqimR5giPSLGSlGK0KgQQlzZhX03xiZhfJAkQYCPt9mErlEIPOsxvDR3qeD2PnWHoGRwO5z4zgeBSONsqboJiqxqTeVemSVx3SC10uk2mWPwQu1PBUksDenOWswSX2UmLRbKDGR9qlC4IJrsaSxVFWE16qla0oTxhZ7mGBx5Qzm4qUE5jjHucZbwN', 1, '2016-07-18 12:05:12', '2016-07-18 12:05:12');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
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

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
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

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL
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

CREATE TABLE `oc_blog` (
  `blog_id` int(11) NOT NULL,
  `allow_comment` int(1) NOT NULL DEFAULT '1',
  `count_read` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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

CREATE TABLE `oc_blog_category` (
  `blog_category_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `oc_blog_category`
--

INSERT INTO `oc_blog_category` (`blog_category_id`, `parent_id`, `sort_order`, `date_added`, `status`) VALUES
(49, 0, 0, '2016-07-20 10:43:11', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blog_category_description`
--

CREATE TABLE `oc_blog_category_description` (
  `blog_category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `meta_keywords` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL
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

CREATE TABLE `oc_blog_category_to_layout` (
  `blog_category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blog_category_to_store`
--

CREATE TABLE `oc_blog_category_to_store` (
  `blog_category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
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

CREATE TABLE `oc_blog_comment` (
  `blog_comment_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `date_added` datetime DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blog_description`
--

CREATE TABLE `oc_blog_description` (
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

CREATE TABLE `oc_blog_related` (
  `parent_blog_id` int(11) NOT NULL DEFAULT '0',
  `child_blog_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blog_to_category`
--

CREATE TABLE `oc_blog_to_category` (
  `blog_id` int(11) NOT NULL,
  `blog_category_id` int(11) NOT NULL
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

CREATE TABLE `oc_blog_to_layout` (
  `blog_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blog_to_store`
--

CREATE TABLE `oc_blog_to_store` (
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

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
(60, 'catalog/demo_content/armchair.jpg', 0, 1, 1, 0, 1, '2018-11-03 21:25:47', '2018-12-15 13:08:30');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
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
(60, 2, 'Комплекты', '&lt;div class=&quot;categories-view__content-desc&quot;&gt;\r\n                    Кресло в отличии от дивана позволяет сохранить личное пространство.\r\n                    Удобное и уютное кресло с высокими подлокотниками позволит почувствовать себя в полном одиночестве даже в шумном холе торгового центра..\r\n                &lt;/div&gt;\r\n                &lt;div class=&quot;categories-view__content-links&quot;&gt;\r\n                    &lt;a href=&quot;#&quot; class=&quot;link _color-sky&quot;&gt;Как выбрать кресло? Совет дизайнера.&lt;/a&gt;\r\n                    &lt;a href=&quot;#&quot; class=&quot;link _color-sky&quot;&gt;Как мы доставляем и собираем мягкую мебель?&lt;/a&gt;\r\n                &lt;/div&gt;', 'Комплекты', '', ''),
(60, 3, 'Комплекти', '', 'Комплекты', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
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

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
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

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
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

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
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

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
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
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
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

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
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
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(4, 'USD', 'USD', '', '', '', 0.00000000, 0, '2018-11-05 03:42:47'),
(2, 'грн', 'UAH', '', '', '2', 1.00000000, 1, '2018-12-15 20:48:45');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
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
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 0, 'Test1', 'admin', 'test@nomail.com', '4654564654', '', 'a0b43cf494422400c94612d38c38d02f44a36b5d', 'Zcab37n8C', NULL, NULL, 1, 1, '', '127.0.0.1', 1, 1, 0, '', '', '2016-07-21 16:13:01');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_activity`
--

INSERT INTO `oc_customer_activity` (`customer_activity_id`, `customer_id`, `key`, `data`, `ip`, `date_added`) VALUES
(1, 1, 'register', '{\"customer_id\":1,\"name\":\"Test1 admin\"}', '127.0.0.1', '2016-07-21 16:13:02'),
(2, 1, 'order_account', '{\"customer_id\":\"1\",\"name\":\"Test1 admin\",\"order_id\":1}', '127.0.0.1', '2016-07-21 16:13:23');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
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

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '127.0.0.1', '2016-07-21 16:13:02');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
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

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_filter_group`
--

INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
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

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
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

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
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

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
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

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
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

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
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

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_mfilter_url_alias`
--

CREATE TABLE `oc_mfilter_url_alias` (
  `mfilter_url_alias_id` int(11) UNSIGNED NOT NULL,
  `path` text COLLATE utf8_unicode_ci NOT NULL,
  `mfp` text COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(36, 'Home page carousel', 'cosyone_carousel', '{\"name\":\"Home page carousel\",\"title\":{\"2\":\"Brands carousel\"},\"banner_id\":\"8\",\"grid\":\"[[0, 2], [320, 3], [550, 4], [999, 5], [1200, 6]]\",\"width\":\"165\",\"height\":\"80\",\"status\":\"1\"}'),
(42, 'Column subscribe', 'newsletter', '{\"name\":\"Column subscribe\",\"style\":\"default\",\"show_once\":\"1\",\"delay\":\"0\",\"block\":{\"1\":\"&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;\"},\"status\":\"1\"}'),
(43, 'Column promos', 'cosyone_content', '{\"save\":\"0\",\"status\":\"1\",\"name\":\"Column promos\",\"template\":\"info2\",\"columns\":\"column-1\",\"module_title\":{\"1\":\"\"},\"sections\":{\"1\":{\"title\":{\"1\":\"\"},\"block\":{\"1\":\"&lt;p&gt;&lt;i class=&quot;fa fa-truck&quot;&gt;&lt;\\/i&gt;&lt;\\/p&gt;&lt;h3&gt;Free Delivery&lt;\\/h3&gt;&lt;p&gt;Lorem dolor item lorem dolor item lorem. &lt;a class=&quot;contrast_font&quot; href=&quot;#&quot;&gt;Read more&lt;\\/a&gt;&lt;\\/p&gt;\"}},\"2\":{\"title\":{\"1\":\"\"},\"block\":{\"1\":\"&lt;p&gt;&lt;i class=&quot;fa fa-lock&quot;&gt;&lt;\\/i&gt;&lt;\\/p&gt;&lt;h3&gt;Secure Payments&lt;\\/h3&gt;&lt;p&gt;Lorem dolor item lorem dolor item. &lt;a class=&quot;contrast_font&quot; href=&quot;#&quot;&gt;Read more&lt;\\/a&gt;&lt;\\/p&gt;\"}},\"3\":{\"title\":{\"1\":\"\"},\"block\":{\"1\":\"&lt;p&gt;&lt;i class=&quot;fa fa-cube&quot;&gt;&lt;\\/i&gt;&lt;\\/p&gt;&lt;h3&gt;Sample Promo Title&lt;\\/h3&gt;&lt;p&gt;Lorem dolor item lorem dolor item lorem. &lt;a class=&quot;contrast_font&quot; href=&quot;#&quot;&gt;Read more&lt;\\/a&gt;&lt;\\/p&gt;\"}}}}'),
(33, 'Home Full Width', 'revslideroutput', '{\"name\":\"Home Full Width\",\"slider_id\":\"1\",\"status\":\"1\"}'),
(35, 'Home page tabs', 'showintabs_output', '{\"name\":\"Home page tabs\",\"status\":\"1\",\"selected_tabs\":{\"tabs\":[\"1\",\"2\",\"5\"]},\"limit\":\"8\",\"image_width\":\"263\",\"image_height\":\"263\",\"columns\":\"grid4\",\"carousel\":\"1\"}'),
(37, 'Home testimonials', 'cosyone_testimonial', '{\"name\":\"Home testimonials\",\"testimonial_title\":{\"2\":\"Testimonials\"},\"testimonial_limit\":\"5\",\"testimonial_character_limit\":\"190\",\"testimonial_columns\":\"grid3\",\"testimonial_carousel\":\"1\",\"testimonial_contrast\":\"1\",\"status\":\"1\"}'),
(39, 'Custom tekst', 'cosyone_content', '{\"save\":\"stay\",\"status\":\"1\",\"name\":\"Custom tekst\",\"template\":\"info1\",\"columns\":\"column-3\",\"module_title\":{\"2\":\"Custom tekst\"},\"sections\":{\"1\":{\"title\":{\"2\":\"CUSTOM\"},\"block\":{\"2\":\"&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \\r\\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \\r\\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \\r\\ncommodo consequat.&lt;br&gt;&lt;\\/p&gt;\"}},\"2\":{\"title\":{\"2\":\"CUSTOM 2\"},\"block\":{\"2\":\"&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \\r\\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \\r\\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \\r\\ncommodo consequat.&lt;br&gt;&lt;\\/p&gt;\"}},\"3\":{\"title\":{\"2\":\"CUSTOM 3\"},\"block\":{\"2\":\"&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \\r\\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \\r\\nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \\r\\ncommodo consequat.&lt;br&gt;&lt;\\/p&gt;\"}}}}'),
(40, 'Footer Socials', 'cosyone_socials', '{\"save\":\"stay\",\"status\":\"1\",\"name\":\"Footer Socials\",\"module_title\":{\"2\":\"\",\"3\":\"\"},\"sections\":{\"1\":{\"social_type\":\"fa-vk\",\"link\":\"#\",\"link_type\":\"external\",\"tooltip\":\"&lt;svg class=&quot;footer__socials-icon&quot; width=&quot;30px&quot; height=&quot;17px&quot;&gt;                     &lt;path d=&quot;M0.126,2.184 C0.126,2.184 4.388,12.377 9.503,15.383 C9.503,15.383 11.615,17.266 16.059,16.966 C16.059,16.966 17.509,17.219 17.547,15.746 C17.586,14.273 18.024,13.112 18.775,13.021 C19.526,12.929 21.063,14.873 21.439,15.305 C21.815,15.736 22.801,16.992 24.547,16.992 C26.293,16.992 28.360,16.992 28.360,16.992 C28.360,16.992 29.684,16.982 29.953,16.239 C30.223,15.497 29.243,14.312 28.648,13.669 C28.052,13.027 25.529,10.765 25.226,10.140 C24.923,9.513 25.353,8.669 26.297,7.492 C27.241,6.314 29.596,3.557 29.927,2.170 C30.259,0.785 29.058,0.999 28.073,1.002 C27.088,1.006 23.816,1.002 23.816,1.002 C23.816,1.002 23.132,0.876 22.797,1.782 C22.462,2.686 20.875,5.971 19.532,7.414 C18.190,8.857 17.513,8.446 17.495,6.297 C17.477,4.149 17.840,1.343 17.338,0.716 C16.836,0.090 15.568,-0.076 13.760,-0.010 C11.952,0.055 10.613,0.001 9.999,0.976 C9.999,0.976 9.768,1.221 10.104,1.261 C10.439,1.302 11.668,1.379 11.749,3.390 C11.830,5.402 12.030,8.220 10.913,8.348 C9.797,8.477 7.408,3.906 7.022,3.079 C6.636,2.250 6.280,1.630 6.160,1.483 C6.040,1.337 5.670,1.016 5.037,1.016 C4.403,1.016 0.753,1.016 0.753,1.016 C0.753,1.016 -0.370,1.031 0.126,2.184 Z&quot;\\/&gt;                 &lt;\\/svg&gt;\"},\"2\":{\"social_type\":\"fa-facebook\",\"link\":\"#\",\"link_type\":\"external\",\"tooltip\":\"&lt;svg class=&quot;footer__socials-icon&quot; width=&quot;14px&quot; height=&quot;26px&quot;&gt;                     &lt;path d=&quot;M14.000,4.983 L14.000,-0.001 L10.376,-0.001 C6.770,-0.001 3.989,2.931 3.989,6.548 L3.989,8.978 L-0.000,8.978 L-0.000,13.991 L3.989,13.991 L3.989,25.999 L8.998,25.999 L8.998,13.991 L14.000,13.991 L14.000,8.978 L8.998,8.978 L8.998,6.302 C8.998,5.574 9.587,4.983 10.313,4.983 L14.000,4.983 Z&quot;\\/&gt;                 &lt;\\/svg&gt; \"},\"3\":{\"social_type\":\"fa-instagram\",\"link\":\"#\",\"link_type\":\"external\",\"tooltip\":\"&lt;svg class=&quot;footer__socials-icon&quot; width=&quot;25px&quot; height=&quot;25px&quot;&gt;                     &lt;path d=&quot;M18.000,24.999 L7.000,24.999 C3.134,24.999 -0.000,21.865 -0.000,17.999 L-0.000,6.999 C-0.000,3.133 3.134,-0.001 7.000,-0.001 L18.000,-0.001 C21.866,-0.001 25.000,3.133 25.000,6.999 L25.000,17.999 C25.000,21.865 21.866,24.999 18.000,24.999 ZM23.000,6.999 C23.000,4.238 20.761,1.999 18.000,1.999 L7.000,1.999 C4.239,1.999 2.000,4.238 2.000,6.999 L2.000,17.999 C2.000,20.761 4.239,22.999 7.000,22.999 L18.000,22.999 C20.761,22.999 23.000,20.761 23.000,17.999 L23.000,6.999 ZM19.500,6.999 C18.672,6.999 18.000,6.327 18.000,5.499 C18.000,4.671 18.672,3.999 19.500,3.999 C20.328,3.999 21.000,4.671 21.000,5.499 C21.000,6.327 20.328,6.999 19.500,6.999 ZM12.500,18.999 C8.910,18.999 6.000,16.089 6.000,12.499 C6.000,8.909 8.910,5.999 12.500,5.999 C16.090,5.999 19.000,8.909 19.000,12.499 C19.000,16.089 16.090,18.999 12.500,18.999 ZM12.500,7.999 C10.015,7.999 8.000,10.014 8.000,12.499 C8.000,14.984 10.015,16.999 12.500,16.999 C14.985,16.999 17.000,14.984 17.000,12.499 C17.000,10.014 14.985,7.999 12.500,7.999 Z&quot;\\/&gt;                 &lt;\\/svg&gt;\"},\"4\":{\"social_type\":\"fa-youtube\",\"link\":\"#\",\"link_type\":\"external\",\"tooltip\":\"&lt;svg class=&quot;footer__socials-icon&quot; width=&quot;29px&quot; height=&quot;22px&quot;&gt;                     &lt;path d=&quot;M26.241,19.686 C24.403,21.155 20.150,20.871 14.495,20.985 C8.840,20.871 4.586,21.155 2.749,19.686 C0.750,18.335 1.136,15.076 0.980,10.920 C1.136,6.765 0.750,3.631 2.749,2.280 C4.586,0.811 8.840,1.095 14.495,0.980 C20.150,1.095 24.403,0.811 26.241,2.280 C28.240,3.631 27.854,6.765 28.010,10.920 C27.854,15.076 28.240,18.335 26.241,19.686 ZM11.000,5.999 L11.000,15.999 L19.000,10.999 L11.000,5.999 Z&quot;\\/&gt;                 &lt;\\/svg&gt;\"},\"5\":{\"social_type\":\"fa-google-plus\",\"link\":\"#\",\"link_type\":\"external\",\"tooltip\":\"&lt;svg class=&quot;footer__socials-icon&quot; width=&quot;37px&quot; height=&quot;24px&quot;&gt;                     &lt;path d=&quot;M37.000,12.905 L32.906,12.905 L32.906,17.062 L29.906,17.062 L29.906,12.905 L25.844,12.905 L25.844,9.906 L29.906,9.906 L29.906,5.718 L32.906,5.718 L32.906,9.906 L37.000,9.906 L37.000,12.905 ZM11.761,23.999 C5.265,23.999 -0.000,18.574 -0.000,11.965 C-0.000,5.356 5.265,-0.002 11.761,-0.002 C14.807,-0.002 17.583,1.178 19.672,3.111 L16.306,6.595 C15.090,5.543 13.515,4.907 11.794,4.907 C7.944,4.907 4.823,8.082 4.823,11.999 C4.823,15.916 7.944,19.092 11.794,19.092 C15.579,19.092 17.355,17.127 18.127,14.385 L11.761,14.385 L11.761,9.612 L22.795,9.612 C22.797,9.703 23.059,10.646 23.059,12.234 C23.059,18.843 18.828,23.999 11.761,23.999 Z&quot;\\/&gt;                 &lt;\\/svg&gt;\"}}}'),
(41, 'Column top rated', 'showintabs_output', '{\"name\":\"Column top rated\",\"status\":\"1\",\"selected_tabs\":{\"tabs\":[\"5\"]},\"limit\":\"4\",\"image_width\":\"60\",\"image_height\":\"60\",\"columns\":\"grid1\",\"carousel\":\"0\"}'),
(44, 'Recently viewed product page', 'cosyone_recently', '{\"name\":\"Recently viewed product page\",\"limit\":\"3\",\"width\":\"262\",\"height\":\"262\",\"grid\":\"grid3\",\"status\":\"1\"}'),
(45, 'blog', 'blog_latest', '{\"name\":\"blog\",\"limit\":\"10\",\"columns\":\"1\",\"carousel\":\"0\",\"characters\":\"200\",\"thumb\":\"1\",\"width\":\"500\",\"height\":\"360\",\"status\":\"1\"}'),
(46, 'Самые Вкусные Предложения', 'featured', '{\"name\":\"\\u0421\\u0430\\u043c\\u044b\\u0435 \\u0412\\u043a\\u0443\\u0441\\u043d\\u044b\\u0435 \\u041f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f\",\"product_name\":\"\",\"product\":[\"42\",\"30\",\"47\",\"28\"],\"limit\":\"4\",\"width\":\"265\",\"height\":\"284\",\"status\":\"1\"}'),
(47, 'Banner', 'cosyone_banner', '{\"save\":\"stay\",\"status\":\"1\",\"name\":\"Banner\",\"module_title\":{\"2\":\"\",\"3\":\"\"},\"columns\":\"column1\",\"sections\":{\"2\":{\"thumb_image\":\"catalog\\/demo_content\\/parallax.jpg\",\"block\":{\"2\":\"&lt;h1 class=&quot;showcase__title&quot;&gt;\\r\\n        &lt;span class=&quot;showcase__title-small&quot;&gt;\\u0412\\u043a\\u0443\\u0441\\u043d\\u0430\\u044f \\u043c\\u0435\\u0431\\u0435\\u043b\\u044c,&lt;\\/span&gt;\\r\\n        \\u0412\\u043a\\u0443\\u0441\\u043d\\u044b\\u0435 \\u0446\\u0435\\u043d\\u044b\\r\\n    &lt;\\/h1&gt;\",\"3\":\"&lt;h1 class=&quot;showcase__title&quot;&gt;\\r\\n        &lt;span class=&quot;showcase__title-small&quot;&gt;\\u0412\\u043a\\u0443\\u0441\\u043d\\u0430\\u044f \\u043c\\u0435\\u0431\\u0435\\u043b\\u044c,&lt;\\/span&gt;\\r\\n        \\u0412\\u043a\\u0443\\u0441\\u043d\\u044b\\u0435 \\u0446\\u0435\\u043d\\u044b\\r\\n    &lt;\\/h1&gt;\"}}}}'),
(49, 'Header_top_module', 'topmodule', '{\"name\":\"Header_top_module\",\"module_description\":{\"2\":{\"title\":\"\\u041d\\u0430 \\u041d\\u043e\\u0432\\u044b\\u0439 \\u0413\\u043e\\u0434 \\u0434\\u0430\\u0440\\u0438\\u043c \\u0441\\u043a\\u0438\\u0434\\u043a\\u0438 \\u043d\\u0430 \\u0432\\u0441\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u044b 3%\"},\"3\":{\"title\":\"\\u041d\\u0430 \\u041d\\u043e\\u0432\\u044b\\u0439 \\u0413\\u043e\\u0434 \\u0434\\u0430\\u0440\\u0438\\u043c \\u0441\\u043a\\u0438\\u0434\\u043a\\u0438 \\u043d\\u0430 \\u0432\\u0441\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u044b 3%\"}},\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_newsletter`
--

CREATE TABLE `oc_newsletter` (
  `email` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `large_samples` tinyint(3) UNSIGNED DEFAULT NULL,
  `full_list` tinyint(3) UNSIGNED DEFAULT NULL,
  `view` tinyint(3) NOT NULL DEFAULT '0',
  `group_by` varchar(255) DEFAULT NULL,
  `show_in_cart` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `group_name` varchar(255) DEFAULT NULL
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

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
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

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
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
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_custom_field`
--

CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
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
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
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
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
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
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
(42, 'Product 15', '', '', '', '', '', '', '', 990, 5, 'catalog/demo/apple_cinema_30.jpg', 8, 1, '100.0000', 400, 9, '2009-02-04', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 2, 0, 1, 44, '2009-02-03 21:07:37', '2018-11-05 09:09:24'),
(43, 'Product 16', '', '', '', '', '', '', '', 929, 5, 'catalog/demo/macbook_1.jpg', 8, 0, '500.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:07:49', '2011-09-30 01:05:46'),
(44, 'Product 17', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/macbook_air_1.jpg', 8, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:00', '2011-09-30 01:05:53'),
(45, 'Product 18', '', '', '', '', '', '', '', 998, 5, 'catalog/demo/macbook_pro_1.jpg', 8, 1, '2000.0000', 0, 100, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:17', '2011-09-15 22:22:01'),
(46, 'Product 19', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/sony_vaio_1.jpg', 10, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 1, '2009-02-03 21:08:29', '2011-09-30 01:06:39'),
(47, 'Product 21', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/hp_1.jpg', 7, 1, '100.0000', 400, 9, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 2, '2009-02-03 21:08:40', '2018-11-03 21:43:47'),
(48, 'product 20', 'test 1', '', '', '', '', '', 'test 2', 995, 5, 'catalog/demo/ipod_classic_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-08', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 2, '2009-02-08 17:21:51', '2011-09-30 01:07:06'),
(49, 'SAM1', '', '', '', '', '', '', '', 0, 8, 'catalog/demo/samsung_tab_1.jpg', 0, 1, '199.9900', 0, 9, '2011-04-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 291, '2011-04-26 08:57:34', '2018-11-28 23:37:39');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
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

CREATE TABLE `oc_product_description` (
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
  `meta_keyword` varchar(255) NOT NULL
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
(42, 3, 'Apple Cinema 30&quot;', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', '', '', 'Apple Cinema 30', '', ''),
(30, 3, 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', NULL, NULL, NULL, '', 'sdf', '', ''),
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
(42, 2, 'Apple Cinema 30&quot;', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '&lt;p&gt;1&lt;/p&gt;', '&lt;p&gt;2&lt;/p&gt;', '&lt;p&gt;3&lt;/p&gt;', '', 'Apple Cinema 30', '', ''),
(30, 2, 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', NULL, NULL, NULL, '', 'sdf', '', ''),
(49, 3, 'Samsung Galaxy Tab 10.1', '&lt;div class=&quot;product-page__description-block&quot;&gt;\r\n                &lt;img class=&quot;product-page__description-img _left&quot; src=&quot;images/product-1-desc.jpg&quot; alt=&quot;product desc&quot;&gt;\r\n                &lt;div class=&quot;product-page__description-text&quot;&gt;\r\n                    &lt;h3 class=&quot;product-page__description-title&quot;&gt;Надежная раздвижная система&lt;/h3&gt;\r\n                    &lt;p&gt;\r\n                        Основной отличительной особенностью шкафа-купе от обычного шкафа (\r\n                        с распашными дверями) являются раздвижные двери. Чаще всего шкафы-купе\r\n                        можно увидеть в интерьере спальни, гостиной или прихожей. За счет своей\r\n                        конструкции они экономят свободное пространство и позволяют хранить множество\r\n                        нужных вещей. Шкафы-купе бывают встроенные и корпусные.\r\n                    &lt;/p&gt;\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;\r\n\r\n            &lt;div class=&quot;product-page__description-block&quot;&gt;\r\n                &lt;img class=&quot;product-page__description-img _right&quot; src=&quot;images/product-2-desc.jpg&quot; alt=&quot;product desc&quot;&gt;\r\n                &lt;div class=&quot;product-page__description-text&quot;&gt;\r\n                    &lt;h3 class=&quot;product-page__description-title&quot;&gt;Максимальное использование полезной емкости&lt;/h3&gt;\r\n                    &lt;p&gt;\r\n                        Система раздвижных дверей для шкафа-купе может включать в себя дверную раму\r\n                        (стальной или алюминиевый профиль, обрамляющий дверное полотно по периметру\r\n                        и придающий ему жёсткость), направляющие (треки, рельсы), ролики и некоторые\r\n                        другие элементы (поворотные механизмы, демпферы, упоры и пр.). В совокупности\r\n                        эти элементы образуют систему раздвижных дверей шкафа-купе, от качества которой\r\n                        зависит плавность и лёгкость хода, и в конечном итоге, срок службы изделия.\r\n                    &lt;/p&gt;\r\n                    &lt;p&gt;\r\n                        Существуют системы, где ролики или упоры могут крепится к дверному полотну\r\n                        из натурального дерева или других материалов без металлического обрамления\r\n                        Все системы раздвижных дверей можно поделить на две группы — двери с опорой\r\n                        на нижние направляющие и двери, подвешенные на верхний трек. Дверное полотно\r\n                        шкафа-купе может иметь деления на части, которые в свою очередь могут быть из\r\n                        различных материалов: стекло, оргстекло, лакобель, зеркало, ламинированного ДсТП, МДФ и т. д.\r\n                    &lt;/p&gt;\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;\r\n            &lt;img src=&quot;images/product-desc-full.jpg&quot; class=&quot;product-page__description-img&quot; alt=&quot;product desc&quot;&gt;\r\n            &lt;div class=&quot;product-page__installation&quot;&gt;\r\n                &lt;h3 class=&quot;product-page__description-title&quot;&gt;Сборка и установка&lt;/h3&gt;\r\n                &lt;p&gt;\r\n                    При использовании шкафа купе нет необходимости в дополнительном пространстве\r\n                    перед шкафом для открытия,  как в шкафу с распашными дверями, но двери шкафа-купе\r\n                    уменьшают на 70—120 мм его полезную глубину, также система шкафа-купе налагает дополнительные\r\n                    ограничения на расположение выдвижных и откидных элементов.\r\n                &lt;/p&gt;\r\n            &lt;/div&gt;', 'Шкаф-купе двухдверный с фасадами из ДСП (цвет ДСП на выбор). По Вашему желанию цвета ДСП могут комбинироваться. Шкафы-купе давно стали неотъемлемой частью современного интерьера, открывая и расширяя пространство нашего дома, они отличаются отличной функциональностью, эргономичными данными и возможностью выбрать наружное оформление', '                                    &lt;ul class=&quot;product-page__data-list&quot;&gt;\r\n                                        &lt;li class=&quot;product-page__data-list-item&quot;&gt;Доводчики на фасадах&lt;/li&gt;\r\n                                        &lt;li class=&quot;product-page__data-list-item&quot;&gt;Телескопические направляющие&lt;/li&gt;\r\n                                        &lt;li class=&quot;product-page__data-list-item&quot;&gt;Анодированная фурнитура&lt;/li&gt;\r\n                                        &lt;li class=&quot;product-page__data-list-item&quot;&gt;Внутренняя светодиодная подсветка&lt;/li&gt;\r\n                                    &lt;/ul&gt;\r\n                                    &lt;ul class=&quot;product-page__data-list&quot;&gt;\r\n                                        &lt;li class=&quot;product-page__data-list-item&quot;&gt;Выдвижные вешалки&lt;/li&gt;\r\n                                        &lt;li class=&quot;product-page__data-list-item&quot;&gt;Корзина для обуви, мм: 500 х 350 х 200&lt;/li&gt;\r\n                                        &lt;li class=&quot;product-page__data-list-item&quot;&gt;Гарантия 12 месяцев&lt;/li&gt;\r\n                                    &lt;/ul&gt;', '&lt;div class=&quot;product-page__delivery-price-row&quot;&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-char&quot;&gt;Доставка по Одессе &lt;/span&gt;\r\n                            &lt;span class=&quot;dots-separator&quot;&gt;&lt;/span&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-value&quot;&gt;Бесплатно&lt;/span&gt;\r\n                        &lt;/div&gt;\r\n                        &lt;div class=&quot;product-page__delivery-price-row&quot;&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-char&quot;&gt;Самовывоз из магазина &lt;/span&gt;\r\n                            &lt;span class=&quot;dots-separator&quot;&gt;&lt;/span&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-value&quot;&gt;Бесплатно&lt;/span&gt;\r\n                        &lt;/div&gt;\r\n                        &lt;div class=&quot;product-page__delivery-price-row&quot;&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-char&quot;&gt;Выезд дизайнера&lt;/span&gt;\r\n                            &lt;span class=&quot;dots-separator&quot;&gt;&lt;/span&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-value&quot;&gt;Бесплатно&lt;/span&gt;\r\n                        &lt;/div&gt;\r\n                        &lt;div class=&quot;product-page__delivery-price-row&quot;&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-char&quot;&gt;Сборка и Установка&lt;/span&gt;\r\n                            &lt;span class=&quot;dots-separator&quot;&gt;&lt;/span&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-value&quot;&gt;Бесплатно&lt;/span&gt;\r\n                        &lt;/div&gt;\r\n                        &lt;div class=&quot;product-page__delivery-price-row&quot;&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-char&quot;&gt;Предоплата&lt;/span&gt;\r\n                            &lt;span class=&quot;dots-separator&quot;&gt;&lt;/span&gt;\r\n                            &lt;span class=&quot;product-page__delivery-price-value&quot;&gt;50%&lt;/span&gt;\r\n                        &lt;/div&gt;\r\n                        &lt;p class=&quot;product-page__delivery-text&quot;&gt;\r\n                            При заказе на сумму 3500 грн и выше,\r\n                            действует бесплатная доставки,\r\n                            бесплатный выезд дизайнера,\r\n                            а также бесплатная сборка и установка.\r\n                        &lt;/p&gt;\r\n                        &lt;p class=&quot;product-page__delivery-text&quot;&gt;\r\n                            Заказ отправляется в работу после\r\n                            оформления договора и предоплаты 50%\r\n                        &lt;/p&gt;\r\n                        &lt;a href=&quot;#&quot; class=&quot;link _color-orange _font-sm&quot;&gt;\r\n                            &lt;span class=&quot;link__text&quot;&gt;Детальная информация&lt;/span&gt;\r\n                        &lt;/a&gt;', '', 'Samsung Galaxy Tab 10.1', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
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

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
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
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
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

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_product_tab` (
  `product_id` int(11) NOT NULL,
  `tab_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text COLLATE utf8_bin NOT NULL,
  `position` tinyint(1) DEFAULT NULL,
  `show_empty` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
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

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
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

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
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

CREATE TABLE `oc_question` (
  `question_id` int(11) NOT NULL,
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
  `date_modified` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
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
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 49, 0, 'ererer', 'fasdfasdfasdfasdfasdfsadfasdf', 1, 1, '2018-11-20 23:00:50', '2018-11-20 23:52:11'),
(2, 49, 0, 'прверка 123', '$.magnificPopup.open({\r\n                items: {\r\n                    src: \'#mfp-response-success\'\r\n                },\r\n                type: \'inline\'\r\n            })', 1, 1, '2018-11-20 23:03:28', '2018-11-20 23:52:15'),
(3, 49, 0, 'прверка 123', '$.magnificPopup.open({\r\n                items: {\r\n                    src: \'#mfp-response-success\'\r\n                },\r\n                type: \'inline\'\r\n            })', 1, 1, '2018-11-20 23:07:27', '2018-11-20 23:52:19'),
(4, 49, 0, 'прверка 123', '$.magnificPopup.open({\r\n                items: {\r\n                    src: \'#mfp-response-success\'\r\n                },\r\n                type: \'inline\'\r\n            })', 1, 1, '2018-11-20 23:19:23', '2018-11-20 23:52:23');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_revslider_attachment_images`
--

CREATE TABLE `oc_revslider_attachment_images` (
  `ID` int(10) NOT NULL,
  `file_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_revslider_css`
--

CREATE TABLE `oc_revslider_css` (
  `id` int(9) NOT NULL,
  `handle` text NOT NULL,
  `settings` text,
  `hover` text,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_revslider_css`
--

INSERT INTO `oc_revslider_css` (`id`, `handle`, `settings`, `hover`, `params`) VALUES
(1, '.tp-caption.lightgrey_divider', NULL, NULL, '{\"text-decoration\":\"none\",\"background-color\":\"rgba(235, 235, 235, 1)\",\"width\":\"370px\",\"height\":\"3px\",\"background-position\":\"initial initial\",\"background-repeat\":\"initial initial\",\"border-width\":\"0px\",\"border-color\":\"rgb(34, 34, 34)\",\"border-style\":\"none\"}'),
(2, '.tp-caption.contrast_font_heading', NULL, NULL, '{\"font-size\":\"60px\",\"color\":\"#ffffff\",\"line-height\":\"56px\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(3, '.tp-caption.contrast_font_heading_dark', NULL, NULL, '{\"font-size\":\"60px\",\"color\":\"#222222\",\"line-height\":\"56px\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(4, '.tp-caption.contrast_font_heading_primary', NULL, NULL, '{\"font-size\":\"60px\",\"color\":\"#d6a916\",\"line-height\":\"56px\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(5, '.tp-caption.contrast_font_heading_secondary', NULL, NULL, '{\"font-size\":\"60px\",\"line-height\":\"56px\",\"color\":\"#276658\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(6, '.tp-caption.contrast_font_heading2', NULL, NULL, '{\"font-size\":\"48px\",\"color\":\"#ffffff\",\"line-height\":\"56px\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(7, '.tp-caption.contrast_font_heading2_dark', NULL, NULL, '{\"font-size\":\"48px\",\"color\":\"#222222\",\"line-height\":\"56px\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(8, '.tp-caption.contrast_font_heading2_primary', NULL, NULL, '{\"font-size\":\"48px\",\"color\":\"#d6a916\",\"line-height\":\"56px\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(9, '.tp-caption.contrast_font_heading2_secondary', NULL, NULL, '{\"font-size\":\"48px\",\"line-height\":\"56px\",\"color\":\"#276658\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(10, '.tp-caption.contrast_font_sub_heading', NULL, NULL, '{\"font-size\":\"30px\",\"color\":\"#ffffff\",\"line-height\":\"56px\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(11, '.tp-caption.contrast_font_sub_heading_dark', NULL, NULL, '{\"font-size\":\"30px\",\"color\":\"#222222\",\"line-height\":\"56px\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(12, '.tp-caption.contrast_font_sub_heading_primary', NULL, NULL, '{\"font-size\":\"30px\",\"color\":\"#d6a916\",\"line-height\":\"56px\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(13, '.tp-caption.contrast_font_sub_heading_secondary', NULL, NULL, '{\"font-size\":\"30px\",\"line-height\":\"56px\",\"color\":\"#276658\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(14, '.tp-caption.contrast_font', NULL, NULL, '{\"font-size\":\"17px\",\"color\":\"rgb(255, 255, 255)\",\"font-family\":\"\\\"Roboto\\\",serif\",\"border-width\":\"0px\",\"border-color\":\"rgb(255, 255, 255)\",\"border-style\":\"none\"}'),
(15, '.tp-caption.contrast_font_dark', NULL, NULL, '{\"font-size\":\"17px\",\"color\":\"#222222\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(16, '.tp-caption.contrast_font_primary', NULL, NULL, '{\"font-size\":\"17px\",\"color\":\"#d6a916\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(17, '.tp-caption.contrast_font_secondary', NULL, NULL, '{\"font-size\":\"17px\",\"color\":\"#276658\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(18, '.tp-caption.contrast_font_slider_button', '{\"hover\":\"true\"}', '{\"border-color\":\"#ffffff\",\"transition\":\"border-color 400ms\",\"font-family\":\"\\\"Roboto\\\", serif\"}', '{\"color\":\"#ffffff\",\"border\":\"2px solid\",\"border-color\":\"transparent\",\"border-top-color\":\"#ffffff\",\"display\":\"inline-block\",\"padding\":\"12px 25px\",\"transition\":\"border-color 400ms\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(19, '.tp-caption.contrast_font_slider_button_dark', '{\"hover\":\"true\"}', '{\"border-color\":\"#222222\",\"transition\":\"border-color 400ms\",\"font-family\":\"\\\"Roboto\\\", serif\"}', '{\"color\":\"#222222\",\"border\":\"2px solid\",\"border-color\":\"transparent\",\"border-top-color\":\"#222222\",\"display\":\"inline-block\",\"padding\":\"12px 25px\",\"transition\":\"border-color 400ms\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(20, '.tp-caption.contrast_font_slider_button_primary', '{\"hover\":\"true\"}', '{\"border-color\":\"#d6a916\",\"transition\":\"border-color 400ms\",\"font-family\":\"\\\"Roboto\\\", serif\"}', '{\"color\":\"#d6a916\",\"border\":\"2px solid\",\"border-color\":\"transparent\",\"border-top-color\":\"#d6a916\",\"display\":\"inline-block\",\"padding\":\"12px 25px\",\"transition\":\"border-color 400ms\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(21, '.tp-caption.contrast_font_slider_button_secondary', '{\"hover\":\"true\"}', '{\"border-color\":\"#276658\",\"transition\":\"border-color 400ms\",\"font-family\":\"\\\"Roboto\\\", serif\"}', '{\"color\":\"#276658\",\"border\":\"2px solid\",\"border-color\":\"transparent\",\"border-top-color\":\"#276658\",\"display\":\"inline-block\",\"padding\":\"12px 25px\",\"transition\":\"border-color 400ms\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(22, '.tp-caption.main_font_heading', NULL, NULL, '{\"font-size\":\"60px\",\"color\":\"#ffffff\",\"line-height\":\"56px\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(23, '.tp-caption.main_font_heading_dark', NULL, NULL, '{\"font-size\":\"60px\",\"color\":\"#222222\",\"line-height\":\"56px\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(24, '.tp-caption.main_font_heading_primary', NULL, NULL, '{\"font-size\":\"60px\",\"color\":\"#d6a916\",\"line-height\":\"56px\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(25, '.tp-caption.main_font_heading_secondary', NULL, NULL, '{\"font-size\":\"60px\",\"line-height\":\"56px\",\"color\":\"#276658\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(26, '.tp-caption.main_font_heading2', NULL, NULL, '{\"font-size\":\"48px\",\"color\":\"#ffffff\",\"line-height\":\"56px\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(27, '.tp-caption.main_font_heading2_dark', NULL, NULL, '{\"font-size\":\"48px\",\"color\":\"#222222\",\"line-height\":\"56px\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(28, '.tp-caption.main_font_heading2_primary', NULL, NULL, '{\"font-size\":\"48px\",\"color\":\"#d6a916\",\"line-height\":\"56px\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(29, '.tp-caption.main_font_heading2_secondary', NULL, NULL, '{\"font-size\":\"48px\",\"line-height\":\"56px\",\"color\":\"#276658\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(30, '.tp-caption.main_font_sub_heading', NULL, NULL, '{\"font-size\":\"30px\",\"color\":\"#ffffff\",\"line-height\":\"56px\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(31, '.tp-caption.main_font_sub_heading_dark', NULL, NULL, '{\"font-size\":\"30px\",\"color\":\"#222222\",\"line-height\":\"56px\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(32, '.tp-caption.main_font_sub_heading_primary', NULL, NULL, '{\"font-size\":\"30px\",\"color\":\"#d6a916\",\"line-height\":\"56px\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(33, '.tp-caption.main_font_sub_heading_secondary', NULL, NULL, '{\"font-size\":\"30px\",\"line-height\":\"56px\",\"color\":\"#276658\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(34, '.tp-caption.main_font', NULL, NULL, '{\"font-size\":\"17px\",\"color\":\"#ffffff\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(35, '.tp-caption.main_font_dark', NULL, NULL, '{\"font-size\":\"17px\",\"color\":\"#222222\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(36, '.tp-caption.main_font_primary', NULL, NULL, '{\"font-size\":\"17px\",\"color\":\"#d6a916\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(37, '.tp-caption.main_font_secondary', NULL, NULL, '{\"font-size\":\"17px\",\"color\":\"#276658\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(38, '.tp-caption.main_font_slider_button', '{\"hover\":\"true\"}', '{\"border-color\":\"#ffffff\",\"transition\":\"border-color 400ms\",\"font-family\":\"\\\"Roboto\\\", serif\"}', '{\"color\":\"#ffffff\",\"border\":\"2px solid\",\"border-color\":\"transparent\",\"border-top-color\":\"#ffffff\",\"display\":\"inline-block\",\"padding\":\"12px 25px\",\"transition\":\"border-color 400ms\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(39, '.tp-caption.main_font_slider_button_dark', '{\"hover\":\"true\"}', '{\"border-color\":\"#222222\",\"transition\":\"border-color 400ms\",\"font-family\":\"\\\"Roboto\\\", serif\"}', '{\"color\":\"#222222\",\"border\":\"2px solid\",\"border-color\":\"transparent\",\"border-top-color\":\"#222222\",\"display\":\"inline-block\",\"padding\":\"12px 25px\",\"transition\":\"border-color 400ms\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(40, '.tp-caption.main_font_slider_button_primary', '{\"hover\":\"true\"}', '{\"border-color\":\"#d6a916\",\"transition\":\"border-color 400ms\",\"font-family\":\"\\\"Roboto\\\", serif\"}', '{\"color\":\"#d6a916\",\"border\":\"2px solid\",\"border-color\":\"transparent\",\"border-top-color\":\"#d6a916\",\"display\":\"inline-block\",\"padding\":\"12px 25px\",\"transition\":\"border-color 400ms\",\"font-family\":\"\\\"Roboto\\\", serif\"}'),
(41, '.tp-caption.main_font_slider_button_secondary', '{\"hover\":\"true\"}', '{\"border-color\":\"#276658\",\"transition\":\"border-color 400ms\",\"font-family\":\"\\\"Roboto\\\", serif\"}', '{\"color\":\"#276658\",\"border\":\"2px solid\",\"border-color\":\"transparent\",\"border-top-color\":\"#276658\",\"display\":\"inline-block\",\"padding\":\"12px 25px\",\"transition\":\"border-color 400ms\",\"font-family\":\"\\\"Roboto\\\", serif\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_revslider_layer_animations`
--

CREATE TABLE `oc_revslider_layer_animations` (
  `id` int(9) NOT NULL,
  `handle` text NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_revslider_settings`
--

CREATE TABLE `oc_revslider_settings` (
  `id` int(9) NOT NULL,
  `general` text NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_revslider_sliders`
--

CREATE TABLE `oc_revslider_sliders` (
  `id` int(9) NOT NULL,
  `title` tinytext NOT NULL,
  `alias` tinytext,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_revslider_sliders`
--

INSERT INTO `oc_revslider_sliders` (`id`, `title`, `alias`, `params`) VALUES
(1, 'home_slider_fullwidth', 'home_slider_fullwidth', '{\"title\":\"home_slider_fullwidth\",\"alias\":\"home_slider_fullwidth\",\"source_type\":\"gallery\",\"post_types\":\"product\",\"post_category\":\"category_20\",\"post_sortby\":\"ID\",\"prd_img_width\":\"880\",\"prd_img_height\":\"345\",\"posts_sort_direction\":\"DESC\",\"max_slider_posts\":\"30\",\"excerpt_limit\":\"55\",\"slider_template_id\":\"\",\"posts_list\":\"\",\"slider_type\":\"fullwidth\",\"fullscreen_offset_container\":\"\",\"fullscreen_offset_size\":\"\",\"fullscreen_min_height\":\"\",\"full_screen_align_force\":\"off\",\"auto_height\":\"off\",\"force_full_width\":\"on\",\"min_height\":\"0\",\"width\":\"1140\",\"height\":\"550\",\"responsitive_w1\":\"940\",\"responsitive_sw1\":\"770\",\"responsitive_w2\":\"780\",\"responsitive_sw2\":\"500\",\"responsitive_w3\":\"510\",\"responsitive_sw3\":\"310\",\"responsitive_w4\":\"0\",\"responsitive_sw4\":\"0\",\"responsitive_w5\":\"0\",\"responsitive_sw5\":\"0\",\"responsitive_w6\":\"0\",\"responsitive_sw6\":\"0\",\"delay\":\"8000\",\"shuffle\":\"off\",\"lazy_load\":\"off\",\"use_wpml\":\"off\",\"enable_static_layers\":\"off\",\"next_slide_on_window_focus\":\"off\",\"simplify_ie8_ios4\":\"off\",\"stop_slider\":\"off\",\"stop_after_loops\":0,\"stop_at_slide\":2,\"show_timerbar\":\"bottom\",\"loop_slide\":\"loop\",\"position\":\"center\",\"margin_top\":0,\"margin_bottom\":30,\"margin_left\":0,\"margin_right\":0,\"shadow_type\":\"0\",\"padding\":0,\"background_color\":\"#E9E9E9\",\"background_dotted_overlay\":\"none\",\"show_background_image\":\"false\",\"background_image\":\"\",\"bg_fit\":\"cover\",\"bg_repeat\":\"no-repeat\",\"bg_position\":\"center top\",\"stop_on_hover\":\"on\",\"keyboard_navigation\":\"off\",\"navigation_style\":\"custom\",\"navigaion_type\":\"bullet\",\"navigation_arrows\":\"solo\",\"navigaion_always_on\":\"true\",\"hide_thumbs\":200,\"navigaion_align_hor\":\"center\",\"navigaion_align_vert\":\"bottom\",\"navigaion_offset_hor\":\"0\",\"navigaion_offset_vert\":20,\"leftarrow_align_hor\":\"left\",\"leftarrow_align_vert\":\"center\",\"leftarrow_offset_hor\":20,\"leftarrow_offset_vert\":0,\"rightarrow_align_hor\":\"right\",\"rightarrow_align_vert\":\"center\",\"rightarrow_offset_hor\":20,\"rightarrow_offset_vert\":0,\"thumb_width\":100,\"thumb_height\":50,\"thumb_amount\":5,\"use_spinner\":\"0\",\"spinner_color\":\"#FFFFFF\",\"use_parallax\":\"off\",\"disable_parallax_mobile\":\"off\",\"parallax_type\":\"mouse\",\"parallax_bg_freeze\":\"off\",\"parallax_level_1\":\"5\",\"parallax_level_2\":\"10\",\"parallax_level_3\":\"15\",\"parallax_level_4\":\"20\",\"parallax_level_5\":\"25\",\"parallax_level_6\":\"30\",\"parallax_level_7\":\"35\",\"parallax_level_8\":\"40\",\"parallax_level_9\":\"45\",\"parallax_level_10\":\"50\",\"touchenabled\":\"on\",\"swipe_velocity\":75,\"swipe_min_touches\":1,\"drag_block_vertical\":\"false\",\"disable_on_mobile\":\"off\",\"disable_kenburns_on_mobile\":\"off\",\"hide_slider_under\":0,\"hide_defined_layers_under\":0,\"hide_all_layers_under\":0,\"hide_arrows_on_mobile\":\"off\",\"hide_bullets_on_mobile\":\"off\",\"hide_thumbs_on_mobile\":\"off\",\"hide_thumbs_under_resolution\":0,\"hide_thumbs_delay_mobile\":1500,\"start_with_slide\":\"1\",\"first_transition_active\":\"false\",\"first_transition_type\":\"fade\",\"first_transition_duration\":300,\"first_transition_slot_amount\":7,\"reset_transitions\":\"\",\"reset_transition_duration\":0,\"0\":\"Execute settings on all slides\",\"jquery_noconflict\":\"off\",\"js_to_body\":\"false\",\"output_type\":\"none\",\"custom_css\":\"\",\"custom_javascript\":\"\",\"template\":\"false\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_revslider_slides`
--

CREATE TABLE `oc_revslider_slides` (
  `id` int(9) NOT NULL,
  `slider_id` int(9) NOT NULL,
  `slide_order` int(11) NOT NULL,
  `params` text NOT NULL,
  `layers` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_revslider_slides`
--

INSERT INTO `oc_revslider_slides` (`id`, `slider_id`, `slide_order`, `params`, `layers`) VALUES
(1, 1, 1, '{\"background_type\":\"image\",\"image\":\"http:\\/\\/testtheme.net\\/image\\/catalog\\/revslider_media_folder\\/slider1.jpg\",\"title\":\"Slide\",\"state\":\"published\",\"date_from\":\"\",\"date_to\":\"\",\"slide_transition\":\"fade\",\"0\":\"Remove\",\"slot_amount\":7,\"transition_rotation\":0,\"transition_duration\":300,\"delay\":\"\",\"save_performance\":\"off\",\"enable_link\":\"false\",\"link_type\":\"regular\",\"link\":\"\",\"link_open_in\":\"same\",\"slide_link\":\"nothing\",\"link_pos\":\"front\",\"slide_thumb\":\"\",\"class_attr\":\"\",\"id_attr\":\"\",\"attr_attr\":\"\",\"data_attr\":\"\",\"slide_bg_color\":\"#E7E7E7\",\"slide_bg_external\":\"\",\"bg_fit\":\"cover\",\"bg_fit_x\":\"100\",\"bg_fit_y\":\"100\",\"bg_repeat\":\"no-repeat\",\"bg_position\":\"center top\",\"bg_position_x\":\"0\",\"bg_position_y\":\"0\",\"bg_end_position_x\":\"0\",\"bg_end_position_y\":\"0\",\"bg_end_position\":\"center top\",\"kenburn_effect\":\"off\",\"kb_start_fit\":\"100\",\"kb_end_fit\":\"100\",\"kb_duration\":\"8000\",\"kb_easing\":\"Linear.easeNone\",\"0\":\"Remove\"}', '[{\"text\":\"BY CHARLES AND RAY EAMES\",\"type\":\"text\",\"left\":450,\"top\":145,\"loop_animation\":\"none\",\"loop_easing\":\"Power3.easeInOut\",\"loop_speed\":\"2\",\"loop_startdeg\":\"-20\",\"loop_enddeg\":\"20\",\"loop_xorigin\":\"50\",\"loop_yorigin\":\"50\",\"loop_xstart\":\"0\",\"loop_xend\":\"0\",\"loop_ystart\":\"0\",\"loop_yend\":\"0\",\"loop_zoomstart\":\"1\",\"loop_zoomend\":\"1\",\"loop_angle\":\"0\",\"loop_radius\":\"10\",\"animation\":\"randomrotate\",\"easing\":\"Back.easeInOut\",\"split\":\"none\",\"endsplit\":\"none\",\"splitdelay\":\"10\",\"endsplitdelay\":\"10\",\"max_height\":\"auto\",\"max_width\":\"auto\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"parallax_level\":\"-\",\"whitespace\":\"nowrap\",\"speed\":800,\"align_hor\":\"left\",\"align_vert\":\"top\",\"hiddenunder\":false,\"resizeme\":true,\"link\":\"\",\"link_open_in\":\"same\",\"link_slide\":\"nothing\",\"scrollunder_offset\":\"\",\"style\":\"main_font\",\"time\":500,\"endtime\":\"7700\",\"endspeed\":300,\"endanimation\":\"auto\",\"endeasing\":\"nothing\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"width\":-1,\"height\":-1,\"serial\":\"0\",\"endTimeFinal\":7600,\"endSpeedFinal\":300,\"realEndTime\":8000,\"timeLast\":7600,\"endWithSlide\":true,\"alt\":\"\",\"scaleX\":\"\",\"scaleY\":\"\",\"scaleProportional\":false,\"attrID\":\"\",\"attrClasses\":\"\",\"attrTitle\":\"\",\"attrRel\":\"\",\"link_id\":\"\",\"link_class\":\"\",\"link_title\":\"\",\"link_rel\":\"\",\"static_end\":\"1\",\"static_start\":\"1\"},{\"text\":\"<b>EAMES MOLDED PLASTIC <\\/b>\",\"type\":\"text\",\"left\":196,\"top\":185,\"loop_animation\":\"none\",\"loop_easing\":\"Power3.easeInOut\",\"loop_speed\":\"2\",\"loop_startdeg\":\"-20\",\"loop_enddeg\":\"20\",\"loop_xorigin\":\"50\",\"loop_yorigin\":\"50\",\"loop_xstart\":\"0\",\"loop_xend\":\"0\",\"loop_ystart\":\"0\",\"loop_yend\":\"0\",\"loop_zoomstart\":\"1\",\"loop_zoomend\":\"1\",\"loop_angle\":\"0\",\"loop_radius\":\"10\",\"animation\":\"sfb\",\"easing\":\"Back.easeInOut\",\"split\":\"none\",\"endsplit\":\"none\",\"splitdelay\":\"10\",\"endsplitdelay\":\"10\",\"max_height\":\"auto\",\"max_width\":\"auto\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"parallax_level\":\"-\",\"whitespace\":\"nowrap\",\"speed\":700,\"align_hor\":\"left\",\"align_vert\":\"top\",\"hiddenunder\":false,\"resizeme\":true,\"link\":\"\",\"link_open_in\":\"same\",\"link_slide\":\"nothing\",\"scrollunder_offset\":\"\",\"style\":\"contrast_font_heading\",\"time\":1000,\"endtime\":\"7700\",\"endspeed\":300,\"endanimation\":\"auto\",\"endeasing\":\"nothing\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"width\":-1,\"height\":-1,\"serial\":\"1\",\"endTimeFinal\":7650,\"endSpeedFinal\":300,\"realEndTime\":8000,\"timeLast\":7650,\"endWithSlide\":true,\"alt\":\"\",\"scaleX\":\"\",\"scaleY\":\"\",\"scaleProportional\":false,\"attrID\":\"\",\"attrClasses\":\"\",\"attrTitle\":\"\",\"attrRel\":\"\",\"link_id\":\"\",\"link_class\":\"\",\"link_title\":\"\",\"link_rel\":\"\",\"static_end\":\"1\",\"static_start\":\"1\"},{\"text\":\"<b>SIDE CHAIR<\\/b>\",\"type\":\"text\",\"left\":400,\"top\":242,\"loop_animation\":\"none\",\"loop_easing\":\"Power3.easeInOut\",\"loop_speed\":\"2\",\"loop_startdeg\":\"-20\",\"loop_enddeg\":\"20\",\"loop_xorigin\":\"50\",\"loop_yorigin\":\"50\",\"loop_xstart\":\"0\",\"loop_xend\":\"0\",\"loop_ystart\":\"0\",\"loop_yend\":\"0\",\"loop_zoomstart\":\"1\",\"loop_zoomend\":\"1\",\"loop_angle\":\"0\",\"loop_radius\":\"10\",\"animation\":\"sfb\",\"easing\":\"Back.easeInOut\",\"split\":\"none\",\"endsplit\":\"none\",\"splitdelay\":\"10\",\"endsplitdelay\":\"10\",\"max_height\":\"auto\",\"max_width\":\"auto\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"parallax_level\":\"-\",\"whitespace\":\"nowrap\",\"speed\":700,\"align_hor\":\"left\",\"align_vert\":\"top\",\"hiddenunder\":false,\"resizeme\":true,\"link\":\"\",\"link_open_in\":\"same\",\"link_slide\":\"nothing\",\"scrollunder_offset\":\"\",\"style\":\"contrast_font_heading\",\"time\":1300,\"endtime\":7700,\"endspeed\":300,\"endanimation\":\"auto\",\"endeasing\":\"nothing\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"width\":394,\"height\":56,\"serial\":\"2\",\"endTimeFinal\":7700,\"endSpeedFinal\":300,\"realEndTime\":8000,\"timeLast\":7700,\"endWithSlide\":true,\"alt\":\"\",\"scaleX\":\"\",\"scaleY\":\"\",\"scaleProportional\":false,\"attrID\":\"\",\"attrClasses\":\"\",\"attrTitle\":\"\",\"attrRel\":\"\",\"link_id\":\"\",\"link_class\":\"\",\"link_title\":\"\",\"link_rel\":\"\",\"static_end\":\"1\",\"static_start\":\"1\"},{\"text\":\"<a href=\\\"http:\\/\\/www.google.com\\\">BUY NOW!<\\/a>\",\"type\":\"text\",\"left\":500,\"top\":340,\"loop_animation\":\"none\",\"loop_easing\":\"Power3.easeInOut\",\"loop_speed\":\"2\",\"loop_startdeg\":\"-20\",\"loop_enddeg\":\"20\",\"loop_xorigin\":\"50\",\"loop_yorigin\":\"50\",\"loop_xstart\":\"0\",\"loop_xend\":\"0\",\"loop_ystart\":\"0\",\"loop_yend\":\"0\",\"loop_zoomstart\":\"1\",\"loop_zoomend\":\"1\",\"loop_angle\":\"0\",\"loop_radius\":\"10\",\"animation\":\"sfb\",\"easing\":\"Back.easeInOut\",\"split\":\"none\",\"endsplit\":\"none\",\"splitdelay\":\"10\",\"endsplitdelay\":\"10\",\"max_height\":\"auto\",\"max_width\":\"auto\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"parallax_level\":\"-\",\"whitespace\":\"nowrap\",\"speed\":700,\"align_hor\":\"left\",\"align_vert\":\"top\",\"hiddenunder\":false,\"resizeme\":true,\"link\":\"\",\"link_open_in\":\"same\",\"link_slide\":\"nothing\",\"scrollunder_offset\":\"\",\"style\":\"main_font_slider_button\",\"time\":1600,\"endtime\":\"7300\",\"endspeed\":700,\"endanimation\":\"auto\",\"endeasing\":\"nothing\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"width\":-1,\"height\":-1,\"serial\":\"3\",\"endTimeFinal\":7300,\"endSpeedFinal\":700,\"realEndTime\":8000,\"timeLast\":7300,\"endWithSlide\":true,\"alt\":\"\",\"scaleX\":\"\",\"scaleY\":\"\",\"scaleProportional\":false,\"attrID\":\"\",\"attrClasses\":\"\",\"attrTitle\":\"\",\"attrRel\":\"\",\"link_id\":\"\",\"link_class\":\"\",\"link_title\":\"\",\"link_rel\":\"\",\"static_end\":\"1\",\"static_start\":\"1\"},{\"style\":\"\",\"text\":\"Image 5\",\"type\":\"image\",\"image_url\":\"http:\\/\\/www.velikorodnov.com\\/opencart\\/cosyone\\/demo20\\/image\\/catalog\\/revslider_media_folder\\/circle.png\",\"left\":206,\"top\":50,\"loop_animation\":\"none\",\"loop_easing\":\"Power3.easeInOut\",\"loop_speed\":\"2\",\"loop_startdeg\":\"-20\",\"loop_enddeg\":\"20\",\"loop_xorigin\":\"50\",\"loop_yorigin\":\"50\",\"loop_xstart\":\"0\",\"loop_xend\":\"0\",\"loop_ystart\":\"0\",\"loop_yend\":\"0\",\"loop_zoomstart\":\"1\",\"loop_zoomend\":\"1\",\"loop_angle\":\"0\",\"loop_radius\":\"10\",\"animation\":\"sft\",\"easing\":\"easeOutBack\",\"split\":\"none\",\"endsplit\":\"none\",\"splitdelay\":\"10\",\"endsplitdelay\":\"10\",\"max_height\":\"auto\",\"max_width\":\"auto\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"parallax_level\":\"-\",\"whitespace\":\"nowrap\",\"speed\":700,\"align_hor\":\"left\",\"align_vert\":\"top\",\"hiddenunder\":false,\"resizeme\":true,\"link\":\"\",\"link_open_in\":\"same\",\"link_slide\":\"nothing\",\"scrollunder_offset\":\"\",\"time\":1600,\"endtime\":\"7700\",\"endspeed\":700,\"endanimation\":\"auto\",\"endeasing\":\"nothing\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"width\":120,\"height\":120,\"serial\":\"4\",\"endTimeFinal\":7300,\"endSpeedFinal\":700,\"realEndTime\":8000,\"timeLast\":7300,\"endWithSlide\":true,\"alt\":\"\",\"scaleX\":\"\",\"scaleY\":\"\",\"scaleProportional\":false,\"attrID\":\"\",\"attrClasses\":\"\",\"attrTitle\":\"\",\"attrRel\":\"\",\"link_id\":\"\",\"link_class\":\"\",\"link_title\":\"\",\"link_rel\":\"\",\"static_start\":\"1\",\"static_end\":\"1\"},{\"text\":\"for only\",\"type\":\"text\",\"left\":238,\"top\":83,\"loop_animation\":\"none\",\"loop_easing\":\"Power3.easeInOut\",\"loop_speed\":\"2\",\"loop_startdeg\":\"-20\",\"loop_enddeg\":\"20\",\"loop_xorigin\":\"50\",\"loop_yorigin\":\"50\",\"loop_xstart\":\"0\",\"loop_xend\":\"0\",\"loop_ystart\":\"0\",\"loop_yend\":\"0\",\"loop_zoomstart\":\"1\",\"loop_zoomend\":\"1\",\"loop_angle\":\"0\",\"loop_radius\":\"10\",\"animation\":\"sft\",\"easing\":\"easeOutBack\",\"split\":\"none\",\"endsplit\":\"none\",\"splitdelay\":\"10\",\"endsplitdelay\":\"10\",\"max_height\":\"auto\",\"max_width\":\"auto\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"parallax_level\":\"-\",\"whitespace\":\"nowrap\",\"speed\":700,\"align_hor\":\"left\",\"align_vert\":\"top\",\"hiddenunder\":false,\"resizeme\":true,\"link\":\"\",\"link_open_in\":\"same\",\"link_slide\":\"nothing\",\"scrollunder_offset\":\"\",\"style\":\"contrast_font\",\"time\":1600,\"endtime\":7700,\"endspeed\":300,\"endanimation\":\"auto\",\"endeasing\":\"nothing\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"width\":62,\"height\":17,\"serial\":\"5\",\"endTimeFinal\":7700,\"endSpeedFinal\":300,\"realEndTime\":8000,\"timeLast\":7700,\"endWithSlide\":true,\"alt\":\"\",\"scaleX\":\"\",\"scaleY\":\"\",\"scaleProportional\":false,\"attrID\":\"\",\"attrClasses\":\"\",\"attrTitle\":\"\",\"attrRel\":\"\",\"link_id\":\"\",\"link_class\":\"\",\"link_title\":\"\",\"link_rel\":\"\",\"static_start\":\"1\",\"static_end\":\"1\"},{\"text\":\"<b>$299<\\/b>\",\"type\":\"text\",\"left\":232,\"top\":90,\"loop_animation\":\"none\",\"loop_easing\":\"Power3.easeInOut\",\"loop_speed\":\"2\",\"loop_startdeg\":\"-20\",\"loop_enddeg\":\"20\",\"loop_xorigin\":\"50\",\"loop_yorigin\":\"50\",\"loop_xstart\":\"0\",\"loop_xend\":\"0\",\"loop_ystart\":\"0\",\"loop_yend\":\"0\",\"loop_zoomstart\":\"1\",\"loop_zoomend\":\"1\",\"loop_angle\":\"0\",\"loop_radius\":\"10\",\"animation\":\"sft\",\"easing\":\"easeOutBack\",\"split\":\"none\",\"endsplit\":\"none\",\"splitdelay\":\"10\",\"endsplitdelay\":\"10\",\"max_height\":\"auto\",\"max_width\":\"auto\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"parallax_level\":\"-\",\"whitespace\":\"nowrap\",\"speed\":700,\"align_hor\":\"left\",\"align_vert\":\"top\",\"hiddenunder\":false,\"resizeme\":true,\"link\":\"\",\"link_open_in\":\"same\",\"link_slide\":\"nothing\",\"scrollunder_offset\":\"\",\"style\":\"contrast_font_sub_heading\",\"time\":1600,\"endtime\":7700,\"endspeed\":300,\"endanimation\":\"auto\",\"endeasing\":\"nothing\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"width\":-1,\"height\":-1,\"serial\":\"6\",\"endTimeFinal\":7700,\"endSpeedFinal\":300,\"realEndTime\":8000,\"timeLast\":7700,\"endWithSlide\":true,\"alt\":\"\",\"scaleX\":\"\",\"scaleY\":\"\",\"scaleProportional\":false,\"attrID\":\"\",\"attrClasses\":\"\",\"attrTitle\":\"\",\"attrRel\":\"\",\"link_id\":\"\",\"link_class\":\"\",\"link_title\":\"\",\"link_rel\":\"\",\"static_start\":\"1\",\"static_end\":\"1\"}]'),
(3, 1, 2, '{\"background_type\":\"image\",\"image\":\"http:\\/\\/testtheme.net\\/image\\/catalog\\/revslider_media_folder\\/slideshow-full-1980x550.png\",\"title\":\"Slide 2\",\"state\":\"published\",\"date_from\":\"\",\"date_to\":\"\",\"slide_transition\":\"slidehorizontal\",\"0\":\"Remove\",\"slot_amount\":7,\"transition_rotation\":0,\"transition_duration\":900,\"delay\":\"\",\"save_performance\":\"off\",\"enable_link\":\"false\",\"link_type\":\"regular\",\"link\":\"\",\"link_open_in\":\"same\",\"slide_link\":\"nothing\",\"link_pos\":\"front\",\"slide_thumb\":\"\",\"class_attr\":\"\",\"id_attr\":\"\",\"attr_attr\":\"\",\"data_attr\":\"\",\"slide_bg_color\":\"#E7E7E7\",\"slide_bg_external\":\"\",\"bg_fit\":\"cover\",\"bg_fit_x\":\"100\",\"bg_fit_y\":\"100\",\"bg_repeat\":\"no-repeat\",\"bg_position\":\"center top\",\"bg_position_x\":\"0\",\"bg_position_y\":\"0\",\"bg_end_position_x\":\"0\",\"bg_end_position_y\":\"0\",\"bg_end_position\":\"center top\",\"kenburn_effect\":\"off\",\"kb_start_fit\":\"100\",\"kb_end_fit\":\"100\",\"kb_duration\":\"8000\",\"kb_easing\":\"Linear.easeNone\",\"0\":\"Remove\"}', '[{\"text\":\"SHAPES, SIZES AND STYLES\",\"type\":\"text\",\"left\":1,\"top\":120,\"loop_animation\":\"none\",\"loop_easing\":\"Power3.easeInOut\",\"loop_speed\":\"2\",\"loop_startdeg\":\"-20\",\"loop_enddeg\":\"20\",\"loop_xorigin\":\"50\",\"loop_yorigin\":\"50\",\"loop_xstart\":\"0\",\"loop_xend\":\"0\",\"loop_ystart\":\"0\",\"loop_yend\":\"0\",\"loop_zoomstart\":\"1\",\"loop_zoomend\":\"1\",\"loop_angle\":\"0\",\"loop_radius\":\"10\",\"animation\":\"sfl\",\"easing\":\"easeOutBack\",\"split\":\"none\",\"endsplit\":\"none\",\"splitdelay\":\"10\",\"endsplitdelay\":\"10\",\"max_height\":\"auto\",\"max_width\":\"auto\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"parallax_level\":\"-\",\"whitespace\":\"nowrap\",\"static_start\":\"1\",\"static_end\":\"2\",\"speed\":600,\"align_hor\":\"left\",\"align_vert\":\"top\",\"hiddenunder\":false,\"resizeme\":true,\"link\":\"\",\"link_open_in\":\"same\",\"link_slide\":\"nothing\",\"scrollunder_offset\":\"\",\"style\":\"main_font\",\"time\":900,\"endtime\":\"7700\",\"endspeed\":300,\"endanimation\":\"auto\",\"endeasing\":\"nothing\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"width\":-1,\"height\":-1,\"serial\":\"0\",\"endTimeFinal\":7700,\"endSpeedFinal\":300,\"realEndTime\":8000,\"timeLast\":7500,\"endWithSlide\":true,\"alt\":\"\",\"scaleX\":\"\",\"scaleY\":\"\",\"scaleProportional\":false,\"attrID\":\"\",\"attrClasses\":\"\",\"attrTitle\":\"\",\"attrRel\":\"\",\"link_id\":\"\",\"link_class\":\"\",\"link_title\":\"\",\"link_rel\":\"\"},{\"text\":\"<b>THINGS<\\/b> <span class=\\\"light_font\\\">THAT<\\/span>\",\"type\":\"text\",\"left\":0,\"top\":160,\"loop_animation\":\"none\",\"loop_easing\":\"Power3.easeInOut\",\"loop_speed\":\"2\",\"loop_startdeg\":\"-20\",\"loop_enddeg\":\"20\",\"loop_xorigin\":\"50\",\"loop_yorigin\":\"50\",\"loop_xstart\":\"0\",\"loop_xend\":\"0\",\"loop_ystart\":\"0\",\"loop_yend\":\"0\",\"loop_zoomstart\":\"1\",\"loop_zoomend\":\"1\",\"loop_angle\":\"0\",\"loop_radius\":\"10\",\"animation\":\"tp-fade\",\"easing\":\"easeOutBack\",\"split\":\"none\",\"endsplit\":\"none\",\"splitdelay\":\"10\",\"endsplitdelay\":\"10\",\"max_height\":\"auto\",\"max_width\":\"auto\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"parallax_level\":\"-\",\"whitespace\":\"nowrap\",\"static_start\":\"1\",\"static_end\":\"2\",\"speed\":600,\"align_hor\":\"left\",\"align_vert\":\"top\",\"hiddenunder\":false,\"resizeme\":true,\"link\":\"\",\"link_open_in\":\"same\",\"link_slide\":\"nothing\",\"scrollunder_offset\":\"\",\"style\":\"contrast_font_heading\",\"time\":1200,\"endtime\":\"7700\",\"endspeed\":300,\"endanimation\":\"auto\",\"endeasing\":\"nothing\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"width\":-1,\"height\":-1,\"serial\":\"1\",\"endTimeFinal\":7700,\"endSpeedFinal\":300,\"realEndTime\":8000,\"timeLast\":7100,\"endWithSlide\":true,\"alt\":\"\",\"scaleX\":\"\",\"scaleY\":\"\",\"scaleProportional\":false,\"attrID\":\"\",\"attrClasses\":\"\",\"attrTitle\":\"\",\"attrRel\":\"\",\"link_id\":\"\",\"link_class\":\"\",\"link_title\":\"\",\"link_rel\":\"\"},{\"text\":\"<span class=\\\"light_font\\\">WORKS<\\/span> <b>PERFECTLY<\\/b>\",\"type\":\"text\",\"left\":1,\"top\":220,\"loop_animation\":\"none\",\"loop_easing\":\"Power3.easeInOut\",\"loop_speed\":\"2\",\"loop_startdeg\":\"-20\",\"loop_enddeg\":\"20\",\"loop_xorigin\":\"50\",\"loop_yorigin\":\"50\",\"loop_xstart\":\"0\",\"loop_xend\":\"0\",\"loop_ystart\":\"0\",\"loop_yend\":\"0\",\"loop_zoomstart\":\"1\",\"loop_zoomend\":\"1\",\"loop_angle\":\"0\",\"loop_radius\":\"10\",\"animation\":\"sfl\",\"easing\":\"easeOutBack\",\"split\":\"none\",\"endsplit\":\"none\",\"splitdelay\":\"10\",\"endsplitdelay\":\"10\",\"max_height\":\"auto\",\"max_width\":\"auto\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"parallax_level\":\"-\",\"whitespace\":\"nowrap\",\"static_start\":\"1\",\"static_end\":\"2\",\"speed\":600,\"align_hor\":\"left\",\"align_vert\":\"top\",\"hiddenunder\":false,\"resizeme\":true,\"link\":\"\",\"link_open_in\":\"same\",\"link_slide\":\"nothing\",\"scrollunder_offset\":\"\",\"style\":\"contrast_font_heading\",\"time\":1500,\"endtime\":\"7700\",\"endspeed\":300,\"endanimation\":\"auto\",\"endeasing\":\"nothing\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"width\":-1,\"height\":-1,\"serial\":\"2\",\"endTimeFinal\":7700,\"endSpeedFinal\":300,\"realEndTime\":8000,\"timeLast\":6800,\"endWithSlide\":true,\"alt\":\"\",\"scaleX\":\"\",\"scaleY\":\"\",\"scaleProportional\":false,\"attrID\":\"\",\"attrClasses\":\"\",\"attrTitle\":\"\",\"attrRel\":\"\",\"link_id\":\"\",\"link_class\":\"\",\"link_title\":\"\",\"link_rel\":\"\"},{\"text\":\"<b>FOR YOU<\\/b>\",\"type\":\"text\",\"left\":0,\"top\":275,\"loop_animation\":\"none\",\"loop_easing\":\"Power3.easeInOut\",\"loop_speed\":\"2\",\"loop_startdeg\":\"-20\",\"loop_enddeg\":\"20\",\"loop_xorigin\":\"50\",\"loop_yorigin\":\"50\",\"loop_xstart\":\"0\",\"loop_xend\":\"0\",\"loop_ystart\":\"0\",\"loop_yend\":\"0\",\"loop_zoomstart\":\"1\",\"loop_zoomend\":\"1\",\"loop_angle\":\"0\",\"loop_radius\":\"10\",\"animation\":\"sfl\",\"easing\":\"easeOutBack\",\"split\":\"none\",\"endsplit\":\"none\",\"splitdelay\":\"10\",\"endsplitdelay\":\"10\",\"max_height\":\"auto\",\"max_width\":\"auto\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"parallax_level\":\"-\",\"whitespace\":\"nowrap\",\"static_start\":\"1\",\"static_end\":\"2\",\"speed\":600,\"align_hor\":\"left\",\"align_vert\":\"top\",\"hiddenunder\":false,\"resizeme\":true,\"link\":\"\",\"link_open_in\":\"same\",\"link_slide\":\"nothing\",\"scrollunder_offset\":\"\",\"style\":\"contrast_font_heading\",\"time\":1800,\"endtime\":\"7700\",\"endspeed\":300,\"endanimation\":\"auto\",\"endeasing\":\"nothing\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"width\":-1,\"height\":-1,\"serial\":\"3\",\"endTimeFinal\":7700,\"endSpeedFinal\":300,\"realEndTime\":8000,\"timeLast\":6500,\"endWithSlide\":true,\"alt\":\"\",\"scaleX\":\"\",\"scaleY\":\"\",\"scaleProportional\":false,\"attrID\":\"\",\"attrClasses\":\"\",\"attrTitle\":\"\",\"attrRel\":\"\",\"link_id\":\"\",\"link_class\":\"\",\"link_title\":\"\",\"link_rel\":\"\"},{\"text\":\"<a href=\\\"#\\\">FIND IT HERE<\\/a>\",\"type\":\"text\",\"left\":0,\"top\":370,\"loop_animation\":\"none\",\"loop_easing\":\"Power3.easeInOut\",\"loop_speed\":\"2\",\"loop_startdeg\":\"-20\",\"loop_enddeg\":\"20\",\"loop_xorigin\":\"50\",\"loop_yorigin\":\"50\",\"loop_xstart\":\"0\",\"loop_xend\":\"0\",\"loop_ystart\":\"0\",\"loop_yend\":\"0\",\"loop_zoomstart\":\"1\",\"loop_zoomend\":\"1\",\"loop_angle\":\"0\",\"loop_radius\":\"10\",\"animation\":\"sfb\",\"easing\":\"easeOutBack\",\"split\":\"none\",\"endsplit\":\"none\",\"splitdelay\":\"10\",\"endsplitdelay\":\"10\",\"max_height\":\"auto\",\"max_width\":\"auto\",\"2d_rotation\":\"0\",\"2d_origin_x\":\"50\",\"2d_origin_y\":\"50\",\"parallax_level\":\"-\",\"whitespace\":\"nowrap\",\"static_start\":\"1\",\"static_end\":\"2\",\"speed\":600,\"align_hor\":\"left\",\"align_vert\":\"top\",\"hiddenunder\":false,\"resizeme\":true,\"link\":\"\",\"link_open_in\":\"same\",\"link_slide\":\"nothing\",\"scrollunder_offset\":\"\",\"style\":\"main_font_slider_button\",\"time\":1800,\"endtime\":\"7700\",\"endspeed\":300,\"endanimation\":\"auto\",\"endeasing\":\"nothing\",\"corner_left\":\"nothing\",\"corner_right\":\"nothing\",\"width\":-1,\"height\":-1,\"serial\":\"4\",\"endTimeFinal\":7700,\"endSpeedFinal\":300,\"realEndTime\":8000,\"timeLast\":6500,\"endWithSlide\":true,\"alt\":\"\",\"scaleX\":\"\",\"scaleY\":\"\",\"scaleProportional\":false,\"attrID\":\"\",\"attrClasses\":\"\",\"attrTitle\":\"\",\"attrRel\":\"\",\"link_id\":\"\",\"link_class\":\"\",\"link_title\":\"\",\"link_rel\":\"\"}]');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_revslider_static_slides`
--

CREATE TABLE `oc_revslider_static_slides` (
  `id` int(9) NOT NULL,
  `slider_id` int(9) NOT NULL,
  `params` text NOT NULL,
  `layers` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` longtext NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(111376, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
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
(111469, 0, 'category', 'category_status', '1', 0),
(158, 0, 'account', 'account_status', '1', 0),
(159, 0, 'affiliate', 'affiliate_status', '1', 0),
(795, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(108634, 0, 'theme_default', 'theme_default_image_wishlist_height', '100', 0),
(108633, 0, 'theme_default', 'theme_default_image_wishlist_width', '100', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(111848, 0, 'config', 'config_compression', '0', 0),
(111849, 0, 'config', 'config_secure', '0', 0),
(111850, 0, 'config', 'config_password', '1', 0),
(111851, 0, 'config', 'config_shared', '0', 0),
(111852, 0, 'config', 'config_encryption', 'XFdp6dqwDGeKiQC8UikuOjhR1bMUPNHyDb6rey2Vn7TMVbgMPjuQpkbhb5el0lWLzDxhyGLnIbO2lwIc8ajtCJYgDpzgQcx6rQQwYMGqTfrnADok9WPHYE9aL9HJbfITGiyabXyIuRWvZC1nfQ8N4VSoKZfx65jFwogVhFI1QgTlH71800WDDpFM3yGxxVpaZhoUSOntApLFGnVGmw9IUvj2CGg0bCyMdOzfqc8Nyf1FD6qj8ToAMfjP4qQwZLGpaOlrbE4CfSlJ7me1M4gEWR8ONRfASRFDIMvJx93KZxoeEFqLenvw5CqpbFrc0kQBieK0ngdmgB2c92x9nFClcgkBSpFSVAmBiTD9J573txV4dFOmtLasuAYq845gktb0wYnxoGenRJupg4nEvTiT1fc6XDTzW08wTzKdJ5ymfegn0C2yvlr3TFQzbUL8mN15Th5ksqNLBFx5UyuhadFVMraDOCR9cr0xTGxHU3qw0dF4wDINmxrGxjKL3Ohq0aocG0wkb9A0HoCNUbWu5o1qiY5GHVwdqGjwZlIp55VSF6cg5acgvwVe5SG0d3ekCM3bJ7Gq33yu0fKLitVhDOIBEuitoXYZdrsMIpm8XGm2q8ih3uFkhIU1J80HybrGYpcuzFEH9FT7psYTwYOVAOUFhfcULTQmfO2dcng7L09s2Fv6SvkGH98Sqdn085m0FcCPzaneVjagAeu2Rj1kTNKh3iy6ZrOeYwJU3pGOlKfOpKtVhY6hc4USSy0qCSmNspr6D1DRvLep1CSOwpD6BUrTvHMaYAWGmR94FXvYDuFulOptxpAVPrLNczSQaYwdGitEz1JQuQE83OVl5Z7vnr54IEE4H7MzlI0l0uirx8fvuf3fItCjWPxX5D1FbWoXf9i9h5UgPJuSas2Sxndz0VTkdFFRBjwagulLddmKsHM5KHJM9h3PhCVkpC8B92CPQvaAA8cin7oXoDGWeXgg0EUEbKUdO1KvqjQPQrRaedFLn8z7UwM8lDl0L42C1hPmvIe6', 0),
(794, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(108635, 0, 'theme_default', 'theme_default_image_cart_width', '100', 0),
(108636, 0, 'theme_default', 'theme_default_image_cart_height', '100', 0),
(774, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(775, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(111838, 0, 'config', 'config_mail_parameter', '', 0),
(111839, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(111840, 0, 'config', 'config_mail_smtp_username', '', 0),
(111841, 0, 'config', 'config_mail_smtp_password', '', 0),
(111842, 0, 'config', 'config_mail_smtp_port', '25', 0),
(111843, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(111844, 0, 'config', 'config_mail_alert', '', 0),
(111845, 0, 'config', 'config_maintenance', '0', 0),
(111846, 0, 'config', 'config_seo_url', '1', 0),
(111847, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(111837, 0, 'config', 'config_mail_protocol', 'mail', 0),
(111836, 0, 'config', 'config_ftp_status', '0', 0),
(111835, 0, 'config', 'config_ftp_root', '', 0),
(111834, 0, 'config', 'config_ftp_password', '', 0),
(111816, 0, 'config', 'config_api_id', '1', 0),
(111817, 0, 'config', 'config_stock_display', '0', 0),
(111818, 0, 'config', 'config_stock_warning', '0', 0),
(111819, 0, 'config', 'config_stock_checkout', '0', 0),
(111820, 0, 'config', 'config_affiliate_approval', '0', 0),
(111821, 0, 'config', 'config_affiliate_auto', '0', 0),
(111822, 0, 'config', 'config_affiliate_commission', '', 0),
(111823, 0, 'config', 'config_affiliate_id', '0', 0),
(111824, 0, 'config', 'config_affiliate_mail', '0', 0),
(111825, 0, 'config', 'config_return_id', '0', 0),
(111826, 0, 'config', 'config_return_status_id', '2', 0),
(111827, 0, 'config', 'config_captcha', '', 0),
(111828, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(111829, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(111830, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(111831, 0, 'config', 'config_ftp_hostname', 'testtheme.net', 0),
(111832, 0, 'config', 'config_ftp_port', '21', 0),
(111833, 0, 'config', 'config_ftp_username', '', 0),
(111815, 0, 'config', 'config_order_mail', '0', 0),
(111814, 0, 'config', 'config_fraud_status_id', '7', 0),
(111813, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(111812, 0, 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', 1),
(111811, 0, 'config', 'config_order_status_id', '1', 0),
(111810, 0, 'config', 'config_checkout_id', '5', 0),
(111809, 0, 'config', 'config_checkout_guest', '1', 0),
(111808, 0, 'config', 'config_cart_weight', '0', 0),
(111807, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(111806, 0, 'config', 'config_account_mail', '0', 0),
(111805, 0, 'config', 'config_account_id', '0', 0),
(111804, 0, 'config', 'config_login_attempts', '5', 0),
(111803, 0, 'config', 'config_customer_price', '0', 0),
(111802, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(111801, 0, 'config', 'config_customer_group_id', '1', 0),
(111800, 0, 'config', 'config_customer_online', '0', 0),
(111799, 0, 'config', 'config_tax_customer', 'shipping', 0),
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
(110498, 0, 'blogsetting', 'blogsetting_home_meta_keyword', '{\"2\":\"\"}', 1),
(110497, 0, 'blogsetting', 'blogsetting_home_meta_description', '{\"2\":\"\"}', 1),
(110496, 0, 'blogsetting', 'blogsetting_home_description', '{\"2\":\"\"}', 1),
(110494, 0, 'blogsetting', 'blogsetting_home_title', '{\"2\":\"\"}', 1),
(110495, 0, 'blogsetting', 'blogsetting_home_page_title', '{\"2\":\"\"}', 1),
(109244, 0, 'mega_filter_seo', 'mega_filter_seo', '{\"enabled\":\"0\"}', 1),
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
(111758, 0, 'cosyone', 'cosyone_font2_name', 'font-family: \'Roboto\', sans-serif;', 0),
(111757, 0, 'cosyone', 'cosyone_font2_import', 'Roboto:400,300,500,700', 0),
(111756, 0, 'cosyone', 'cosyone_font1_name', 'font-family: \'Roboto\', sans-serif;', 0),
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
(111717, 0, 'cosyone', 'cosyone_ie_text', '{\"2\":\"\",\"3\":\"\"}', 1),
(111718, 0, 'cosyone', 'cosyone_ie_url', '', 0),
(111719, 0, 'cosyone', 'cosyone_ie_update_text', '{\"2\":\"\",\"3\":\"\"}', 1),
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
(111714, 0, 'cosyone', 'cosyone_cookie_button_readmore', '{\"2\":\"\\u041f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435\",\"3\":\"\"}', 1),
(111715, 0, 'cosyone', 'cosyone_cookie_button_accept', '{\"2\":\"Accept\",\"3\":\"\"}', 1),
(111716, 0, 'cosyone', 'cosyone_use_ie', '0', 0),
(111711, 0, 'cosyone', 'cosyone_use_cookie', '0', 0),
(111712, 0, 'cosyone', 'cosyone_cookie_text', '{\"2\":\"This website uses cookies in order to work correctly. No personal data is stored\",\"3\":\"\"}', 1),
(111710, 0, 'cosyone', 'cosyone_footer_payment_icon', '', 0),
(111709, 0, 'cosyone', 'cosyone_footer_custom_block', '{\"2\":\"&lt;p&gt;Ut tellus dolor, dapibus eget, elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna. Aliquam erat volutpat. Duis ac turpis. Donec sit amet eros.&lt;\\/p&gt;&lt;p&gt;Email us: &lt;a href=&quot;mailto:company@companyname.com&quot;&gt;company@company.com&lt;\\/a&gt;&lt;br&gt;&lt;\\/p&gt;\",\"3\":\"\"}', 1),
(111699, 0, 'cosyone', 'cosyone_text_ql', '{\"2\":\"Quicklook\",\"3\":\"\"}', 1),
(111700, 0, 'cosyone', 'cosyone_default_product_style', 'style-2', 0),
(111701, 0, 'cosyone', 'cosyone_default_view', 'grid', 0),
(111702, 0, 'cosyone', 'cosyone_grid_category', 'grid3', 0),
(3825, 0, 'showintabs', 'showintabs_tab', '{\"1\":{\"title\":{\"1\":\"Popular\"},\"data_source\":\"PG\",\"product_group\":\"PP\",\"filter_category\":\"ALL\",\"filter_manufacturer\":\"ALL\",\"sort\":\"pd.name\"},\"2\":{\"title\":{\"1\":\"Latest\"},\"data_source\":\"PG\",\"product_group\":\"LA\",\"filter_category\":\"ALL\",\"filter_manufacturer\":\"ALL\",\"sort\":\"pd.name\"},\"5\":{\"title\":{\"1\":\"Top rated\"},\"product_group\":\"BS\",\"data_source\":\"CQ\",\"filter_category\":\"ALL\",\"filter_manufacturer\":\"ALL\",\"sort\":\"rating\"}}', 1),
(2408, 0, 'testimonial', 'testimonial_admin_approved', '0', 0),
(2409, 0, 'testimonial', 'testimonial_default_rating', '3', 0),
(3824, 0, 'cosyone_twitterfeed', 'cosyone_twitterfeed_status', '1', 0),
(3823, 0, 'cosyone_twitterfeed', 'cosyone_twitterfeed_limit', '1', 0),
(3821, 0, 'cosyone_twitterfeed', 'cosyone_twitterfeed_title', '{\"en\":\"Latest Tweets\", \"1\":\"Latest Tweets\", \"2\":\"Latest Tweets\"}', 1),
(3822, 0, 'cosyone_twitterfeed', 'cosyone_twitterfeed_widget_id', 'Enter your twitter username here', 0),
(2642, 0, 'newsletter', 'newsletter_global_status', '1', 0),
(3190, 0, 'd_ajax_search', 'd_ajax_search', '{\"search_on_off\":\"1\",\"search_width\":\"100%\",\"search_max_symbols\":\"14\",\"search_max_results\":\"5\",\"search_first_symbols\":\"on\",\"search_product_on\":\"on\",\"search_product_sort\":\"1\",\"search_category_on\":\"on\",\"search_category_sort\":\"2\",\"search_manufacturer_on\":\"on\",\"search_manufacturer_sort\":\"3\",\"search_information_on\":\"on\",\"search_information_sort\":\"4\",\"search_price\":\"on\",\"search_special\":\"on\",\"search_tax\":\"on\"}', 1),
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
(108653, 0, 'quickcheckout', 'quickcheckout_field_firstname', '{\"display\":\"1\",\"required\":\"1\",\"default\":\"\",\"sort_order\":\"1\"}', 1),
(108654, 0, 'quickcheckout', 'quickcheckout_field_lastname', '{\"display\":\"1\",\"required\":\"1\",\"default\":\"\",\"sort_order\":\"2\"}', 1),
(108655, 0, 'quickcheckout', 'quickcheckout_field_email', '{\"display\":\"1\",\"required\":\"1\",\"default\":\"\",\"sort_order\":\"3\"}', 1),
(108656, 0, 'quickcheckout', 'quickcheckout_field_telephone', '{\"display\":\"1\",\"required\":\"1\",\"default\":\"\",\"sort_order\":\"4\"}', 1),
(108657, 0, 'quickcheckout', 'quickcheckout_field_fax', '{\"display\":\"0\",\"required\":\"0\",\"default\":\"\",\"sort_order\":\"5\"}', 1),
(108658, 0, 'quickcheckout', 'quickcheckout_field_company', '{\"display\":\"1\",\"required\":\"0\",\"default\":\"\",\"sort_order\":\"6\"}', 1),
(108659, 0, 'quickcheckout', 'quickcheckout_field_customer_group', '{\"display\":\"1\",\"required\":\"\",\"default\":\"\",\"sort_order\":\"7\"}', 1),
(108660, 0, 'quickcheckout', 'quickcheckout_field_address_1', '{\"display\":\"1\",\"required\":\"1\",\"default\":\"\",\"sort_order\":\"9\"}', 1),
(108661, 0, 'quickcheckout', 'quickcheckout_field_address_2', '{\"display\":\"0\",\"required\":\"0\",\"default\":\"\",\"sort_order\":\"10\"}', 1),
(108662, 0, 'quickcheckout', 'quickcheckout_field_city', '{\"display\":\"1\",\"required\":\"1\",\"default\":\"\",\"sort_order\":\"11\"}', 1),
(108663, 0, 'quickcheckout', 'quickcheckout_field_postcode', '{\"display\":\"1\",\"required\":\"0\",\"default\":\"\",\"sort_order\":\"12\"}', 1),
(108664, 0, 'quickcheckout', 'quickcheckout_field_country', '{\"display\":\"1\",\"required\":\"1\",\"default\":\"1\",\"sort_order\":\"13\"}', 1),
(108665, 0, 'quickcheckout', 'quickcheckout_field_zone', '{\"display\":\"1\",\"required\":\"0\",\"default\":\"1\",\"sort_order\":\"14\"}', 1),
(108666, 0, 'quickcheckout', 'quickcheckout_field_newsletter', '{\"display\":\"1\",\"required\":\"0\",\"default\":\"1\",\"sort_order\":\"\"}', 1),
(108667, 0, 'quickcheckout', 'quickcheckout_field_register', '{\"display\":\"1\",\"required\":\"0\",\"default\":\"\",\"sort_order\":\"\"}', 1),
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
(108683, 0, 'quickcheckout', 'quickcheckout_delivery_unavailable', '\"31-10-2013\", \"08-11-2013\", \"25-12-2013\"', 0),
(108684, 0, 'quickcheckout', 'quickcheckout_delivery_min', '1', 0),
(108685, 0, 'quickcheckout', 'quickcheckout_delivery_max', '30', 0),
(108686, 0, 'quickcheckout', 'quickcheckout_delivery_days_of_week', '', 0),
(110518, 0, 'blogsetting', 'blogsetting_rel_thumbs_h', '227', 0),
(111703, 0, 'cosyone', 'cosyone_grid_related', 'grid3', 0),
(111704, 0, 'cosyone', 'cosyone_rollover_effect', 'enabled', 0),
(111705, 0, 'cosyone', 'cosyone_percentage_sale_badge', 'enabled', 0),
(111706, 0, 'cosyone', 'cosyone_brand', 'enabled', 0),
(111707, 0, 'cosyone', 'cosyone_footer_columns', 'column-1', 0),
(111708, 0, 'cosyone', 'cosyone_footer_custom_block_title', '{\"2\":\"\\u041e \\u043d\\u0430\\u0441\",\"3\":\"\"}', 1),
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
(111685, 0, 'cosyone', 'cosyone_custom_menu_block_title', '{\"2\":\"Custom block\",\"3\":\"\"}', 1),
(111686, 0, 'cosyone', 'cosyone_menu_custom_block_content', '{\"2\":\"\",\"3\":\"\"}', 1),
(111798, 0, 'config', 'config_tax_default', 'shipping', 0),
(111797, 0, 'config', 'config_tax', '1', 0),
(111796, 0, 'config', 'config_voucher_max', '1000', 0),
(111795, 0, 'config', 'config_voucher_min', '1', 0),
(111794, 0, 'config', 'config_review_mail', '0', 0),
(111793, 0, 'config', 'config_review_guest', '1', 0),
(111792, 0, 'config', 'config_review_status', '1', 0),
(111791, 0, 'config', 'config_limit_admin', '20', 0),
(111790, 0, 'config', 'config_product_count', '0', 0),
(111789, 0, 'config', 'config_weight_class_id', '1', 0),
(111788, 0, 'config', 'config_length_class_id', '1', 0),
(110849, 0, 'mega_filter_module', 'mega_filter_module', '{\"1\":{\"title\":{\"2\":\"Mega Filter PRO\"},\"layout_id\":[\"3\"],\"store_id\":[0],\"position\":\"column_left\",\"status\":\"1\",\"sort_order\":\"\"}}', 1),
(110850, 0, 'mega_filter_settings', 'mega_filter_settings', '{\"show_number_of_products\":\"1\",\"calculate_number_of_products\":\"1\",\"show_loader_over_results\":\"1\",\"css_style\":\"\",\"content_selector\":\"#mfilter-content-container\",\"refresh_results\":\"immediately\",\"attribs\":{\"price\":{\"enabled\":\"1\",\"sort_order\":\"-1\"}},\"layout_c\":\"3\",\"display_live_filter\":{\"items\":\"1\"}}', 1),
(110851, 0, 'mega_filter_status', 'mega_filter_status', '1', 0),
(110852, 0, 'mfilter_version', 'mfilter_version', '2.0.2.1', 0),
(111055, 0, 'filter', 'filter_status', '1', 0),
(111787, 0, 'config', 'config_currency_auto', '1', 0),
(111786, 0, 'config', 'config_currency', 'UAH', 0),
(111785, 0, 'config', 'config_admin_language', 'ru-ru', 0),
(111784, 0, 'config', 'config_language', 'ru-ru', 0),
(111783, 0, 'config', 'config_zone_id', '3563', 0),
(111782, 0, 'config', 'config_country_id', '222', 0),
(111781, 0, 'config', 'config_comment', 'Вт - Вс, с 9:00 до 14:00', 0),
(111780, 0, 'config', 'config_open', 'c 10:00 до 20:00', 0),
(111779, 0, 'config', 'config_image', '', 0),
(111778, 0, 'config', 'config_fax', '', 0),
(111777, 0, 'config', 'config_telephone', '123456789', 0),
(111776, 0, 'config', 'config_email', 'ssseee795@gmail.com', 0),
(111775, 0, 'config', 'config_geocode', '', 0),
(111774, 0, 'config', 'config_address', 'Address 1', 0),
(111773, 0, 'config', 'config_owner', 'Your Name', 0),
(111772, 0, 'config', 'config_name', 'Your Store', 0),
(111771, 0, 'config', 'config_layout_id', '4', 0),
(111770, 0, 'config', 'config_theme', 'theme_default', 0),
(111769, 0, 'config', 'config_meta_keyword', '', 0),
(111768, 0, 'config', 'config_meta_description', 'My Store', 0),
(111767, 0, 'config', 'config_meta_title', 'Вкусная мебель', 0),
(111679, 0, 'cosyone', 'cosyone_custom_menu_title5', '{\"2\":\"\",\"3\":\"\"}', 1),
(111680, 0, 'cosyone', 'cosyone_custom_menu_url5', '', 0),
(111681, 0, 'cosyone', 'cosyone_custom_menu_title6', '{\"2\":\"\",\"3\":\"\"}', 1),
(111682, 0, 'cosyone', 'cosyone_custom_menu_url6', '', 0),
(111683, 0, 'cosyone', 'cosyone_custom_menu_block', 'disabled', 0),
(111677, 0, 'cosyone', 'cosyone_custom_menu_title4', '{\"2\":\"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\",\"3\":\"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\"}', 1),
(111678, 0, 'cosyone', 'cosyone_custom_menu_url4', '/contact', 0),
(111676, 0, 'cosyone', 'cosyone_custom_menu_url3', '#', 0),
(111675, 0, 'cosyone', 'cosyone_custom_menu_title3', '{\"2\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0438 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430\",\"3\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0438 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430\"}', 1),
(111674, 0, 'cosyone', 'cosyone_custom_menu_url2', '#', 0),
(111673, 0, 'cosyone', 'cosyone_custom_menu_title2', '{\"2\":\"\\u041f\\u043e\\u043b\\u0435\\u0437\\u043d\\u043e\\u0435\",\"3\":\"\\u041a\\u043e\\u0440\\u0438\\u0441\\u043d\\u0435\"}', 1),
(111671, 0, 'cosyone', 'cosyone_custom_menu_title1', '{\"2\":\"\\u041e \\u043d\\u0430\\u0441\",\"3\":\"\\u041f\\u0440\\u043e \\u043d\\u0430\\u0441\"}', 1),
(111672, 0, 'cosyone', 'cosyone_custom_menu_url1', '#', 0),
(111670, 0, 'cosyone', 'cosyone_menu_mega_second_image_h', '100', 0),
(111669, 0, 'cosyone', 'cosyone_menu_mega_second_image_w', '165', 0),
(111668, 0, 'cosyone', 'cosyone_menu_mega_second_thumb', 'disabled', 0),
(111667, 0, 'cosyone', 'cosyone_menu_border', 'header_border', 0),
(111666, 0, 'cosyone', 'cosyone_show_home_icon', 'disabled', 0),
(111665, 0, 'cosyone', 'cosyone_menu_sticky', 'sticky_menu', 0),
(111664, 0, 'cosyone', 'cosyone_top_promo_message', '{\"2\":\"&lt;b&gt;Free shipping&lt;\\/b&gt; on orders over $100. Need Help? &lt;b&gt;866.526.3979&lt;\\/b&gt;\",\"3\":\"\"}', 1),
(111663, 0, 'cosyone', 'cosyone_header_cart', 'enabled', 0),
(111662, 0, 'cosyone', 'cosyone_header_search', 'enabled', 0),
(111661, 0, 'cosyone', 'cosyone_header_compare', 'enabled', 0),
(111660, 0, 'cosyone', 'cosyone_header_wishlist', 'enabled', 0),
(111659, 0, 'cosyone', 'cosyone_header_login', 'enabled', 0),
(111658, 0, 'cosyone', 'cosyone_header_style', 'header1', 0),
(111657, 0, 'cosyone', 'cosyone_use_retina', '', 0),
(111656, 0, 'cosyone', 'cosyone_use_breadcrumb', '', 0),
(111655, 0, 'cosyone', 'cosyone_use_responsive', 'enabled', 0),
(111654, 0, 'cosyone', 'cosyone_max_width', '1140', 0),
(111853, 0, 'config', 'config_file_max_size', '300000', 0),
(111854, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(111855, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(111856, 0, 'config', 'config_error_display', '1', 0),
(111857, 0, 'config', 'config_error_log', '1', 0),
(111858, 0, 'config', 'config_error_filename', 'error.log', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tab`
--

CREATE TABLE `oc_tab` (
  `tab_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `position` tinyint(1) NOT NULL DEFAULT '1',
  `show_empty` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tab_description`
--

CREATE TABLE `oc_tab_description` (
  `tab_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tag_cloud`
--

CREATE TABLE `oc_tag_cloud` (
  `qty` int(11) NOT NULL,
  `tag` varchar(255) COLLATE utf8_bin NOT NULL,
  `language_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
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

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
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

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_testimonial` (
  `testimonial_id` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `city` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(96) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `rating` int(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

CREATE TABLE `oc_testimonial_description` (
  `testimonial_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `oc_testimonial_description`
--

INSERT INTO `oc_testimonial_description` (`testimonial_id`, `language_id`, `title`, `description`) VALUES
(1, 1, 'Testimonial Sample Title', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
(2, 1, 'Testimonial Sample Title 2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
(3, 1, 'Testimonial Sample Title 3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
(4, 1, 'Testimonial Sample Title 4', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
(5, 1, 'Testimonial Sample Title 5', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
(6, 2, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(7, 2, 'Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(8, 2, 'John', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_upload`
--

INSERT INTO `oc_upload` (`upload_id`, `name`, `filename`, `code`, `date_added`) VALUES
(1, 'slideshow-full-1980x550.png', 'slideshow-full-1980x550.png.ChQUIAHrsMas8YjFVVJ6jxjsXIFH8Nll', '94e9795ddfe024f4c3aa4f3b829ec91f1a69a4a1', '2016-07-20 10:31:59');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_url_alias`
--

CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(824, 'product_id=48', 'ipod-classic'),
(730, 'manufacturer_id=8', 'apple'),
(772, 'information_id=4', 'about_us'),
(932, 'product_id=42', 'test'),
(916, 'category_id=70', 'svet'),
(939, 'category_id=60', 'komplekty'),
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

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
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
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '69cab140edb6bfde263615efb4ca08adcec8c6bd', '65RxkeSiw', 'John', 'Doe', 'iragrinchuk@gmail.com', '', '', '127.0.0.1', 1, '2016-07-18 12:05:12');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"analytics\\/google_analytics\",\"blog\\/blog\",\"blog\\/blog_category\",\"blog\\/blog_comment\",\"blog\\/blog_setting\",\"captcha\\/basic_captcha\",\"captcha\\/google_captcha\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/question\",\"catalog\\/recurring\",\"catalog\\/review\",\"catalog\\/tab\",\"catalog\\/testimonial\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/menu\",\"common\\/profile\",\"common\\/stats\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/theme\",\"event\\/theme\",\"extension\\/analytics\",\"extension\\/captcha\",\"extension\\/feed\",\"extension\\/fraud\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\",\"extension\\/newsletter\",\"extension\\/openbay\",\"extension\\/payment\",\"extension\\/shipping\",\"extension\\/theme\",\"extension\\/total\",\"feed\\/google_base\",\"feed\\/google_sitemap\",\"feed\\/openbaypro\",\"fraud\\/fraudlabspro\",\"fraud\\/ip\",\"fraud\\/maxmind\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"module\\/account\",\"module\\/adv_ajaxfilter\",\"module\\/affiliate\",\"module\\/amazon_login\",\"module\\/amazon_pay\",\"module\\/banner\",\"module\\/bestseller\",\"module\\/blog_category\",\"module\\/blog_latest\",\"module\\/carousel\",\"module\\/category\",\"module\\/cosyone\",\"module\\/cosyone_banner\",\"module\\/cosyone_bannerwall\",\"module\\/cosyone_carousel\",\"module\\/cosyone_category\",\"module\\/cosyone_content\",\"module\\/cosyone_deals\",\"module\\/cosyone_productbrand\",\"module\\/cosyone_recently\",\"module\\/cosyone_socials\",\"module\\/cosyone_tagcloud\",\"module\\/cosyone_testimonial\",\"module\\/cosyone_twitterfeed\",\"module\\/d_ajax_search\",\"module\\/ebay_listing\",\"module\\/faqmanager\",\"module\\/featured\",\"module\\/filter\",\"module\\/google_hangouts\",\"module\\/html\",\"module\\/information\",\"module\\/latest\",\"module\\/laybuy_layout\",\"module\\/mega_filter\",\"module\\/newsletter\",\"module\\/pp_button\",\"module\\/pp_login\",\"module\\/quickcheckout\",\"module\\/revslideropencart\",\"module\\/revslideroutput\",\"module\\/sagepay_direct_cards\",\"module\\/sagepay_server_cards\",\"module\\/showintabs\",\"module\\/showintabs_output\",\"module\\/slideshow\",\"module\\/special\",\"module\\/store\",\"module\\/testModul\",\"openbay\\/amazon\",\"openbay\\/amazon_listing\",\"openbay\\/amazon_product\",\"openbay\\/amazonus\",\"openbay\\/amazonus_listing\",\"openbay\\/amazonus_product\",\"openbay\\/ebay\",\"openbay\\/ebay_profile\",\"openbay\\/ebay_template\",\"openbay\\/etsy\",\"openbay\\/etsy_product\",\"openbay\\/etsy_shipping\",\"openbay\\/etsy_shop\",\"openbay\\/fba\",\"payment\\/amazon_login_pay\",\"payment\\/authorizenet_aim\",\"payment\\/authorizenet_sim\",\"payment\\/bank_transfer\",\"payment\\/bluepay_hosted\",\"payment\\/bluepay_redirect\",\"payment\\/cardinity\",\"payment\\/cheque\",\"payment\\/cod\",\"payment\\/eway\",\"payment\\/firstdata\",\"payment\\/firstdata_remote\",\"payment\\/free_checkout\",\"payment\\/g2apay\",\"payment\\/globalpay\",\"payment\\/globalpay_remote\",\"payment\\/klarna_account\",\"payment\\/klarna_invoice\",\"payment\\/laybuy\",\"payment\\/liqpay\",\"payment\\/nochex\",\"payment\\/paymate\",\"payment\\/paypoint\",\"payment\\/payza\",\"payment\\/perpetual_payments\",\"payment\\/pp_express\",\"payment\\/pp_payflow\",\"payment\\/pp_payflow_iframe\",\"payment\\/pp_pro\",\"payment\\/pp_pro_iframe\",\"payment\\/pp_standard\",\"payment\\/realex\",\"payment\\/realex_remote\",\"payment\\/sagepay_direct\",\"payment\\/sagepay_server\",\"payment\\/sagepay_us\",\"payment\\/securetrading_pp\",\"payment\\/securetrading_ws\",\"payment\\/skrill\",\"payment\\/twocheckout\",\"payment\\/web_payment_software\",\"payment\\/worldpay\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"shipping\\/auspost\",\"shipping\\/citylink\",\"shipping\\/fedex\",\"shipping\\/flat\",\"shipping\\/free\",\"shipping\\/item\",\"shipping\\/parcelforce_48\",\"shipping\\/pickup\",\"shipping\\/royal_mail\",\"shipping\\/ups\",\"shipping\\/usps\",\"shipping\\/weight\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"theme\\/theme_default\",\"tool\\/backup\",\"tool\\/error_log\",\"tool\\/upload\",\"total\\/coupon\",\"total\\/credit\",\"total\\/handling\",\"total\\/klarna_fee\",\"total\\/low_order_fee\",\"total\\/reward\",\"total\\/shipping\",\"total\\/sub_total\",\"total\\/tax\",\"total\\/total\",\"total\\/voucher\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"module\\/banner\",\"module\\/information\",\"module\\/cosyone_bannerwall\",\"module\\/cosyone_banner\",\"module\\/bestseller\",\"module\\/testModul\",\"module\\/html\",\"module\\/top_module\",\"module\\/top_module\",\"module\\/topmodule\",\"module\\/topmodule\",\"module\\/topmodule\"],\"modify\":[\"analytics\\/google_analytics\",\"blog\\/blog\",\"blog\\/blog_category\",\"blog\\/blog_comment\",\"blog\\/blog_setting\",\"captcha\\/basic_captcha\",\"captcha\\/google_captcha\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/question\",\"catalog\\/recurring\",\"catalog\\/review\",\"catalog\\/tab\",\"catalog\\/testimonial\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/menu\",\"common\\/profile\",\"common\\/stats\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/theme\",\"event\\/theme\",\"extension\\/analytics\",\"extension\\/captcha\",\"extension\\/feed\",\"extension\\/fraud\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\",\"extension\\/newsletter\",\"extension\\/openbay\",\"extension\\/payment\",\"extension\\/shipping\",\"extension\\/theme\",\"extension\\/total\",\"feed\\/google_base\",\"feed\\/google_sitemap\",\"feed\\/openbaypro\",\"fraud\\/fraudlabspro\",\"fraud\\/ip\",\"fraud\\/maxmind\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"module\\/account\",\"module\\/adv_ajaxfilter\",\"module\\/affiliate\",\"module\\/amazon_login\",\"module\\/amazon_pay\",\"module\\/banner\",\"module\\/bestseller\",\"module\\/blog_category\",\"module\\/blog_latest\",\"module\\/carousel\",\"module\\/category\",\"module\\/cosyone\",\"module\\/cosyone_banner\",\"module\\/cosyone_bannerwall\",\"module\\/cosyone_carousel\",\"module\\/cosyone_category\",\"module\\/cosyone_content\",\"module\\/cosyone_deals\",\"module\\/cosyone_productbrand\",\"module\\/cosyone_recently\",\"module\\/cosyone_socials\",\"module\\/cosyone_tagcloud\",\"module\\/cosyone_testimonial\",\"module\\/cosyone_twitterfeed\",\"module\\/d_ajax_search\",\"module\\/ebay_listing\",\"module\\/faqmanager\",\"module\\/featured\",\"module\\/filter\",\"module\\/google_hangouts\",\"module\\/html\",\"module\\/information\",\"module\\/latest\",\"module\\/laybuy_layout\",\"module\\/mega_filter\",\"module\\/newsletter\",\"module\\/pp_button\",\"module\\/pp_login\",\"module\\/quickcheckout\",\"module\\/revslideropencart\",\"module\\/revslideroutput\",\"module\\/sagepay_direct_cards\",\"module\\/sagepay_server_cards\",\"module\\/showintabs\",\"module\\/showintabs_output\",\"module\\/slideshow\",\"module\\/special\",\"module\\/store\",\"module\\/testModul\",\"openbay\\/amazon\",\"openbay\\/amazon_listing\",\"openbay\\/amazon_product\",\"openbay\\/amazonus\",\"openbay\\/amazonus_listing\",\"openbay\\/amazonus_product\",\"openbay\\/ebay\",\"openbay\\/ebay_profile\",\"openbay\\/ebay_template\",\"openbay\\/etsy\",\"openbay\\/etsy_product\",\"openbay\\/etsy_shipping\",\"openbay\\/etsy_shop\",\"openbay\\/fba\",\"payment\\/amazon_login_pay\",\"payment\\/authorizenet_aim\",\"payment\\/authorizenet_sim\",\"payment\\/bank_transfer\",\"payment\\/bluepay_hosted\",\"payment\\/bluepay_redirect\",\"payment\\/cardinity\",\"payment\\/cheque\",\"payment\\/cod\",\"payment\\/eway\",\"payment\\/firstdata\",\"payment\\/firstdata_remote\",\"payment\\/free_checkout\",\"payment\\/g2apay\",\"payment\\/globalpay\",\"payment\\/globalpay_remote\",\"payment\\/klarna_account\",\"payment\\/klarna_invoice\",\"payment\\/laybuy\",\"payment\\/liqpay\",\"payment\\/nochex\",\"payment\\/paymate\",\"payment\\/paypoint\",\"payment\\/payza\",\"payment\\/perpetual_payments\",\"payment\\/pp_express\",\"payment\\/pp_payflow\",\"payment\\/pp_payflow_iframe\",\"payment\\/pp_pro\",\"payment\\/pp_pro_iframe\",\"payment\\/pp_standard\",\"payment\\/realex\",\"payment\\/realex_remote\",\"payment\\/sagepay_direct\",\"payment\\/sagepay_server\",\"payment\\/sagepay_us\",\"payment\\/securetrading_pp\",\"payment\\/securetrading_ws\",\"payment\\/skrill\",\"payment\\/twocheckout\",\"payment\\/web_payment_software\",\"payment\\/worldpay\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"shipping\\/auspost\",\"shipping\\/citylink\",\"shipping\\/fedex\",\"shipping\\/flat\",\"shipping\\/free\",\"shipping\\/item\",\"shipping\\/parcelforce_48\",\"shipping\\/pickup\",\"shipping\\/royal_mail\",\"shipping\\/ups\",\"shipping\\/usps\",\"shipping\\/weight\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"theme\\/theme_default\",\"tool\\/backup\",\"tool\\/error_log\",\"tool\\/upload\",\"total\\/coupon\",\"total\\/credit\",\"total\\/handling\",\"total\\/klarna_fee\",\"total\\/low_order_fee\",\"total\\/reward\",\"total\\/shipping\",\"total\\/sub_total\",\"total\\/tax\",\"total\\/total\",\"total\\/voucher\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"module\\/banner\",\"module\\/information\",\"module\\/cosyone_bannerwall\",\"module\\/cosyone_banner\",\"module\\/bestseller\",\"module\\/testModul\",\"module\\/html\",\"module\\/top_module\",\"module\\/top_module\",\"module\\/topmodule\",\"module\\/topmodule\",\"module\\/topmodule\"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
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
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
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

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
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

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `major` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`, `major`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1, NULL),
(2, 1, 'Badghis', 'BDG', 1, NULL),
(3, 1, 'Baghlan', 'BGL', 1, NULL),
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
(98, 3, 'M\'Sila', 'MSI', 1, NULL),
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
(118, 4, 'Manu\'a', 'M', 1, NULL),
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
(183, 11, 'Geghark\'unik\'', 'GEG', 1, NULL),
(184, 11, 'Kotayk\'', 'KOT', 1, NULL),
(185, 11, 'Lorri', 'LOR', 1, NULL),
(186, 11, 'Shirak', 'SHI', 1, NULL),
(187, 11, 'Syunik\'', 'SYU', 1, NULL),
(188, 11, 'Tavush', 'TAV', 1, NULL),
(189, 11, 'Vayots\' Dzor', 'VAY', 1, NULL),
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
(303, 16, 'Moore\'s Island', 'MOO', 1, NULL),
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
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1, NULL),
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
(378, 24, 'Saint George\'s', 'SG', 1, NULL),
(379, 24, 'Sandys', 'SA', 1, NULL),
(380, 24, 'Smith\'s', 'SM', 1, NULL),
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
(649, 41, 'Ombella-M\'Poko', 'OMP', 1, NULL),
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
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1, NULL),
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
(919, 58, '\'Ali Sabih', 'S', 1, NULL),
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
(1007, 63, 'Al Isma\'iliyah', 'IML', 1, NULL),
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
(1019, 63, 'Bur Sa\'id', 'BSD', 1, NULL),
(1020, 63, 'Dumyat', 'DMY', 1, NULL),
(1021, 63, 'Janub Sina\'', 'JNS', 1, NULL),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1, NULL),
(1023, 63, 'Matruh', 'MAT', 1, NULL),
(1024, 63, 'Qina', 'QIN', 1, NULL),
(1025, 63, 'Shamal Sina\'', 'SHS', 1, NULL),
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
(1209, 74, 'Val d\'Oise', '95', 1, NULL),
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
(1331, 90, 'Dabola', 'DBL', 1, NULL),
(1332, 90, 'Dalaba', 'DLB', 1, NULL);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`, `major`) VALUES
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
(1381, 93, 'Grand\'Anse', 'GA', 1, NULL),
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
(1584, 102, 'At Ta\'mim', 'TM', 1, NULL),
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
(1612, 104, 'Be\'er Sheva', 'BS', 1, NULL),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1, NULL),
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
(1704, 108, '\'Amman', 'AM', 1, NULL),
(1705, 108, 'Ajlun', 'AJ', 1, NULL),
(1706, 108, 'Al \'Aqabah', 'AA', 1, NULL),
(1707, 108, 'Al Balqa\'', 'AB', 1, NULL),
(1708, 108, 'Al Karak', 'AK', 1, NULL),
(1709, 108, 'Al Mafraq', 'AL', 1, NULL),
(1710, 108, 'At Tafilah', 'AT', 1, NULL),
(1711, 108, 'Az Zarqa\'', 'AZ', 1, NULL),
(1712, 108, 'Irbid', 'IR', 1, NULL),
(1713, 108, 'Jarash', 'JA', 1, NULL),
(1714, 108, 'Ma\'an', 'MA', 1, NULL),
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
(1768, 112, 'P\'yongan-bukto', 'PYB', 1, NULL),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1, NULL),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1, NULL),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1, NULL),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1, NULL),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1, NULL),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1, NULL),
(1775, 113, 'Cheju-do', 'CD', 1, NULL),
(1776, 113, 'Cholla-bukto', 'CB', 1, NULL),
(1777, 113, 'Cholla-namdo', 'CN', 1, NULL),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1, NULL),
(1779, 113, 'Kangwon-do', 'KA', 1, NULL),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1, NULL),
(1781, 113, 'Kyonggi-do', 'KD', 1, NULL),
(1782, 113, 'Kyongsang-bukto', 'KB', 1, NULL),
(1783, 113, 'Kyongsang-namdo', 'KN', 1, NULL),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1, NULL),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1, NULL),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1, NULL),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1, NULL),
(1788, 114, 'Al \'Asimah', 'AL', 1, NULL),
(1789, 114, 'Al Ahmadi', 'AA', 1, NULL),
(1790, 114, 'Al Farwaniyah', 'AF', 1, NULL),
(1791, 114, 'Al Jahra\'', 'AJ', 1, NULL),
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
(1857, 119, 'Mohale\'s Hoek', 'MH', 1, NULL),
(1858, 119, 'Mokhotlong', 'MK', 1, NULL),
(1859, 119, 'Qacha\'s Nek', 'QN', 1, NULL),
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
(1876, 121, 'Al \'Aziziyah', 'AZ', 1, NULL),
(1877, 121, 'Al Fatih', 'FA', 1, NULL),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1, NULL),
(1879, 121, 'Al Jufrah', 'JU', 1, NULL),
(1880, 121, 'Al Khums', 'KH', 1, NULL),
(1881, 121, 'Al Kufrah', 'KU', 1, NULL),
(1882, 121, 'An Nuqat al Khams', 'NK', 1, NULL),
(1883, 121, 'Ash Shati\'', 'AS', 1, NULL),
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
(2350, 153, 'Hawke\'s Bay', 'HKB', 1, NULL),
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
(2668, 171, 'Viseu', 'VI', 1, NULL),
(2669, 173, 'Ad Dawhah', 'DW', 1, NULL);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`, `major`) VALUES
(2670, 173, 'Al Ghuwayriyah', 'GW', 1, NULL),
(2671, 173, 'Al Jumayliyah', 'JM', 1, NULL),
(2672, 173, 'Al Khawr', 'KR', 1, NULL),
(2673, 173, 'Al Wakrah', 'WK', 1, NULL),
(2674, 173, 'Ar Rayyan', 'RN', 1, NULL),
(2675, 173, 'Jarayan al Batinah', 'JB', 1, NULL),
(2676, 173, 'Madinat ash Shamal', 'MS', 1, NULL),
(2677, 173, 'Umm Sa\'id', 'UD', 1, NULL),
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
(2795, 176, 'Ul\'yanovsk', 'UL', 1, NULL),
(2796, 176, 'Ulan-Ude', 'UU', 1, NULL),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1, NULL),
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
(2852, 181, 'A\'ana', 'AN', 1, NULL),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1, NULL),
(2854, 181, 'Atua', 'AT', 1, NULL),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1, NULL),
(2856, 181, 'Gaga\'emauga', 'GE', 1, NULL),
(2857, 181, 'Gagaifomauga', 'GF', 1, NULL),
(2858, 181, 'Palauli', 'PA', 1, NULL),
(2859, 181, 'Satupa\'itea', 'SA', 1, NULL),
(2860, 181, 'Tuamasaga', 'TU', 1, NULL),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1, NULL),
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
(2881, 184, '\'Asir', 'AS', 1, NULL),
(2882, 184, 'Ha\'il', 'HL', 1, NULL),
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
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1, NULL),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1, NULL),
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
(3034, 199, 'A\'ali an Nil', 'ANL', 1, NULL),
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
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1, NULL),
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
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1, NULL),
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
(3144, 206, 'Nan-t\'ou', 'NT', 1, NULL),
(3145, 206, 'P\'eng-hu', 'PH', 1, NULL),
(3146, 206, 'P\'ing-tung', 'PT', 1, NULL),
(3147, 206, 'T\'ai-chung', 'TG', 1, NULL),
(3148, 206, 'T\'ai-nan', 'TA', 1, NULL),
(3149, 206, 'T\'ai-pei county', 'TP', 1, NULL),
(3150, 206, 'T\'ai-tung', 'TT', 1, NULL),
(3151, 206, 'T\'ao-yuan', 'TY', 1, NULL),
(3152, 206, 'Yun-lin', 'YL', 1, NULL),
(3153, 206, 'Chia-i city', 'CC', 1, NULL),
(3154, 206, 'Chi-lung', 'CL', 1, NULL),
(3155, 206, 'Hsin-chu', 'HC', 1, NULL),
(3156, 206, 'T\'ai-chung', 'TH', 1, NULL),
(3157, 206, 'T\'ai-nan', 'TN', 1, NULL),
(3158, 206, 'Kao-hsiung city', 'KC', 1, NULL),
(3159, 206, 'T\'ai-pei city', 'TC', 1, NULL),
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
(3273, 212, 'Ha\'apai', 'H', 1, NULL),
(3274, 212, 'Tongatapu', 'T', 1, NULL),
(3275, 212, 'Vava\'u', 'V', 1, NULL),
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
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1, NULL),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1, NULL),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1, NULL),
(3483, 220, 'Crimea', '43', 1, NULL),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1, NULL),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1, NULL),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1, NULL),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1, NULL),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1, NULL),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1, NULL),
(3490, 220, 'Kyiv', '30', 1, NULL),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1, NULL),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1, NULL),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1, NULL),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1, NULL),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1, NULL),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1, NULL),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1, NULL),
(3498, 220, 'Sevastopol\'', '40', 1, NULL),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1, NULL),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1, NULL),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1, NULL),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1, NULL),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1, NULL),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1, NULL),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1, NULL),
(3506, 221, 'Abu Dhabi', 'ADH', 1, NULL),
(3507, 221, '\'Ajman', 'AJ', 1, NULL),
(3508, 221, 'Al Fujayrah', 'FU', 1, NULL),
(3509, 221, 'Ash Shariqah', 'SH', 1, NULL),
(3510, 221, 'Dubai', 'DU', 1, NULL),
(3511, 221, 'R\'as al Khaymah', 'RK', 1, NULL),
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
(3708, 226, 'Farg\'ona', 'FA', 1, NULL),
(3709, 226, 'Jizzax', 'JI', 1, NULL),
(3710, 226, 'Namangan', 'NG', 1, NULL),
(3711, 226, 'Navoiy', 'NW', 1, NULL),
(3712, 226, 'Qashqadaryo', 'QA', 1, NULL),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1, NULL),
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
(3801, 235, 'Ma\'rib', 'MA', 1, NULL),
(3802, 235, 'Al Mahrah', 'MR', 1, NULL),
(3803, 235, 'Al Mahwit', 'MW', 1, NULL),
(3804, 235, 'Sa\'dah', 'SD', 1, NULL),
(3805, 235, 'San\'a', 'SN', 1, NULL),
(3806, 235, 'Shabwah', 'SH', 1, NULL),
(3807, 235, 'Ta\'izz', 'TA', 1, NULL),
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
(3940, 105, 'Udine', 'UD', 1, NULL),
(3941, 105, 'Varese', 'VA', 1, NULL),
(3942, 105, 'Venezia', 'VE', 1, NULL),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1, NULL);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`, `major`) VALUES
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
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1, NULL),
(4225, 118, 'Beirut', 'LB-BR', 1, NULL),
(4226, 118, 'Bekaa', 'LB-BE', 1, NULL),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1, NULL),
(4228, 118, 'Nabatieh', 'LB-NB', 1, NULL),
(4229, 118, 'North', 'LB-NR', 1, NULL),
(4230, 118, 'South', 'LB-ST', 1, NULL),
(4231, 99, 'Telangana', 'TS', 1, NULL),
(4232, 244, 'Проверка', '', 1, NULL),
(4233, 3, '3', '3', 3, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone_description`
--

CREATE TABLE `oc_zone_description` (
  `zone_description_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_zone_description`
--

INSERT INTO `oc_zone_description` (`zone_description_id`, `zone_id`, `language_id`, `name`) VALUES
(1, 1, 2, 'Badakhshan'),
(2, 2, 2, 'Badghis'),
(3, 3, 2, 'Baghlan'),
(4, 4, 2, 'Balkh'),
(5, 5, 2, 'Bamian'),
(6, 6, 2, 'Farah'),
(7, 7, 2, 'Faryab'),
(8, 8, 2, 'Ghazni'),
(9, 9, 2, 'Ghowr'),
(10, 10, 2, 'Helmand'),
(11, 11, 2, 'Herat'),
(12, 12, 2, 'Jowzjan'),
(13, 13, 2, 'Kabul'),
(14, 14, 2, 'Kandahar'),
(15, 15, 2, 'Kapisa'),
(16, 16, 2, 'Khost'),
(17, 17, 2, 'Konar'),
(18, 18, 2, 'Kondoz'),
(19, 19, 2, 'Laghman'),
(20, 20, 2, 'Lowgar'),
(21, 21, 2, 'Nangrahar'),
(22, 22, 2, 'Nimruz'),
(23, 23, 2, 'Nurestan'),
(24, 24, 2, 'Oruzgan'),
(25, 25, 2, 'Paktia'),
(26, 26, 2, 'Paktika'),
(27, 27, 2, 'Parwan'),
(28, 28, 2, 'Samangan'),
(29, 29, 2, 'Sar-e Pol'),
(30, 30, 2, 'Takhar'),
(31, 31, 2, 'Wardak'),
(32, 32, 2, 'Zabol'),
(33, 33, 2, 'Berat'),
(34, 34, 2, 'Bulqize'),
(35, 35, 2, 'Delvine'),
(36, 36, 2, 'Devoll'),
(37, 37, 2, 'Diber'),
(38, 38, 2, 'Durres'),
(39, 39, 2, 'Elbasan'),
(40, 40, 2, 'Kolonje'),
(41, 41, 2, 'Fier'),
(42, 42, 2, 'Gjirokaster'),
(43, 43, 2, 'Gramsh'),
(44, 44, 2, 'Has'),
(45, 45, 2, 'Kavaje'),
(46, 46, 2, 'Kurbin'),
(47, 47, 2, 'Kucove'),
(48, 48, 2, 'Korce'),
(49, 49, 2, 'Kruje'),
(50, 50, 2, 'Kukes'),
(51, 51, 2, 'Librazhd'),
(52, 52, 2, 'Lezhe'),
(53, 53, 2, 'Lushnje'),
(54, 54, 2, 'Malesi e Madhe'),
(55, 55, 2, 'Mallakaster'),
(56, 56, 2, 'Mat'),
(57, 57, 2, 'Mirdite'),
(58, 58, 2, 'Peqin'),
(59, 59, 2, 'Permet'),
(60, 60, 2, 'Pogradec'),
(61, 61, 2, 'Puke'),
(62, 62, 2, 'Shkoder'),
(63, 63, 2, 'Skrapar'),
(64, 64, 2, 'Sarande'),
(65, 65, 2, 'Tepelene'),
(66, 66, 2, 'Tropoje'),
(67, 67, 2, 'Tirane'),
(68, 68, 2, 'Vlore'),
(69, 69, 2, 'Adrar'),
(70, 70, 2, 'Ain Defla'),
(71, 71, 2, 'Ain Temouchent'),
(72, 72, 2, 'Alger'),
(73, 73, 2, 'Annaba'),
(74, 74, 2, 'Batna'),
(75, 75, 2, 'Bechar'),
(76, 76, 2, 'Bejaia'),
(77, 77, 2, 'Biskra'),
(78, 78, 2, 'Blida'),
(79, 79, 2, 'Bordj Bou Arreridj'),
(80, 80, 2, 'Bouira'),
(81, 81, 2, 'Boumerdes'),
(82, 82, 2, 'Chlef'),
(83, 83, 2, 'Constantine'),
(84, 84, 2, 'Djelfa'),
(85, 85, 2, 'El Bayadh'),
(86, 86, 2, 'El Oued'),
(87, 87, 2, 'El Tarf'),
(88, 88, 2, 'Ghardaia'),
(89, 89, 2, 'Guelma'),
(90, 90, 2, 'Illizi'),
(91, 91, 2, 'Jijel'),
(92, 92, 2, 'Khenchela'),
(93, 93, 2, 'Laghouat'),
(94, 94, 2, 'Muaskar'),
(95, 95, 2, 'Medea'),
(96, 96, 2, 'Mila'),
(97, 97, 2, 'Mostaganem'),
(98, 98, 2, 'M\'Sila'),
(99, 99, 2, 'Naama'),
(100, 100, 2, 'Oran'),
(101, 101, 2, 'Ouargla'),
(102, 102, 2, 'Oum el-Bouaghi'),
(103, 103, 2, 'Relizane'),
(104, 104, 2, 'Saida'),
(105, 105, 2, 'Setif'),
(106, 106, 2, 'Sidi Bel Abbes'),
(107, 107, 2, 'Skikda'),
(108, 108, 2, 'Souk Ahras'),
(109, 109, 2, 'Tamanghasset'),
(110, 110, 2, 'Tebessa'),
(111, 111, 2, 'Tiaret'),
(112, 112, 2, 'Tindouf'),
(113, 113, 2, 'Tipaza'),
(114, 114, 2, 'Tissemsilt'),
(115, 115, 2, 'Tizi Ouzou'),
(116, 116, 2, 'Tlemcen'),
(117, 117, 2, 'Eastern'),
(118, 118, 2, 'Manu\'a'),
(119, 119, 2, 'Rose Island'),
(120, 120, 2, 'Swains Island'),
(121, 121, 2, 'Western'),
(122, 122, 2, 'Andorra la Vella'),
(123, 123, 2, 'Canillo'),
(124, 124, 2, 'Encamp'),
(125, 125, 2, 'Escaldes-Engordany'),
(126, 126, 2, 'La Massana'),
(127, 127, 2, 'Ordino'),
(128, 128, 2, 'Sant Julia de Loria'),
(129, 129, 2, 'Bengo'),
(130, 130, 2, 'Benguela'),
(131, 131, 2, 'Bie'),
(132, 132, 2, 'Cabinda'),
(133, 133, 2, 'Cuando-Cubango'),
(134, 134, 2, 'Cuanza Norte'),
(135, 135, 2, 'Cuanza Sul'),
(136, 136, 2, 'Cunene'),
(137, 137, 2, 'Huambo'),
(138, 138, 2, 'Huila'),
(139, 139, 2, 'Luanda'),
(140, 140, 2, 'Lunda Norte'),
(141, 141, 2, 'Lunda Sul'),
(142, 142, 2, 'Malange'),
(143, 143, 2, 'Moxico'),
(144, 144, 2, 'Namibe'),
(145, 145, 2, 'Uige'),
(146, 146, 2, 'Zaire'),
(147, 147, 2, 'Saint George'),
(148, 148, 2, 'Saint John'),
(149, 149, 2, 'Saint Mary'),
(150, 150, 2, 'Saint Paul'),
(151, 151, 2, 'Saint Peter'),
(152, 152, 2, 'Saint Philip'),
(153, 153, 2, 'Barbuda'),
(154, 154, 2, 'Redonda'),
(155, 155, 2, 'Antartida e Islas del Atlantico'),
(156, 156, 2, 'Buenos Aires'),
(157, 157, 2, 'Catamarca'),
(158, 158, 2, 'Chaco'),
(159, 159, 2, 'Chubut'),
(160, 160, 2, 'Cordoba'),
(161, 161, 2, 'Corrientes'),
(162, 162, 2, 'Distrito Federal'),
(163, 163, 2, 'Entre Rios'),
(164, 164, 2, 'Formosa'),
(165, 165, 2, 'Jujuy'),
(166, 166, 2, 'La Pampa'),
(167, 167, 2, 'La Rioja'),
(168, 168, 2, 'Mendoza'),
(169, 169, 2, 'Misiones'),
(170, 170, 2, 'Neuquen'),
(171, 171, 2, 'Rio Negro'),
(172, 172, 2, 'Salta'),
(173, 173, 2, 'San Juan'),
(174, 174, 2, 'San Luis'),
(175, 175, 2, 'Santa Cruz'),
(176, 176, 2, 'Santa Fe'),
(177, 177, 2, 'Santiago del Estero'),
(178, 178, 2, 'Tierra del Fuego'),
(179, 179, 2, 'Tucuman'),
(180, 180, 2, 'Aragatsotn'),
(181, 181, 2, 'Ararat'),
(182, 182, 2, 'Armavir'),
(183, 183, 2, 'Geghark\'unik\''),
(184, 184, 2, 'Kotayk\''),
(185, 185, 2, 'Lorri'),
(186, 186, 2, 'Shirak'),
(187, 187, 2, 'Syunik\''),
(188, 188, 2, 'Tavush'),
(189, 189, 2, 'Vayots\' Dzor'),
(190, 190, 2, 'Yerevan'),
(191, 191, 2, 'Australian Capital Territory'),
(192, 192, 2, 'New South Wales'),
(193, 193, 2, 'Northern Territory'),
(194, 194, 2, 'Queensland'),
(195, 195, 2, 'South Australia'),
(196, 196, 2, 'Tasmania'),
(197, 197, 2, 'Victoria'),
(198, 198, 2, 'Western Australia'),
(199, 199, 2, 'Burgenland'),
(200, 200, 2, 'Kärnten'),
(201, 201, 2, 'Niederösterreich'),
(202, 202, 2, 'Oberösterreich'),
(203, 203, 2, 'Salzburg'),
(204, 204, 2, 'Steiermark'),
(205, 205, 2, 'Tirol'),
(206, 206, 2, 'Vorarlberg'),
(207, 207, 2, 'Wien'),
(208, 208, 2, 'Ali Bayramli'),
(209, 209, 2, 'Abseron'),
(210, 210, 2, 'AgcabAdi'),
(211, 211, 2, 'Agdam'),
(212, 212, 2, 'Agdas'),
(213, 213, 2, 'Agstafa'),
(214, 214, 2, 'Agsu'),
(215, 215, 2, 'Astara'),
(216, 216, 2, 'Baki'),
(217, 217, 2, 'BabAk'),
(218, 218, 2, 'BalakAn'),
(219, 219, 2, 'BArdA'),
(220, 220, 2, 'Beylaqan'),
(221, 221, 2, 'Bilasuvar'),
(222, 222, 2, 'Cabrayil'),
(223, 223, 2, 'Calilabab'),
(224, 224, 2, 'Culfa'),
(225, 225, 2, 'Daskasan'),
(226, 226, 2, 'Davaci'),
(227, 227, 2, 'Fuzuli'),
(228, 228, 2, 'Ganca'),
(229, 229, 2, 'Gadabay'),
(230, 230, 2, 'Goranboy'),
(231, 231, 2, 'Goycay'),
(232, 232, 2, 'Haciqabul'),
(233, 233, 2, 'Imisli'),
(234, 234, 2, 'Ismayilli'),
(235, 235, 2, 'Kalbacar'),
(236, 236, 2, 'Kurdamir'),
(237, 237, 2, 'Lankaran'),
(238, 238, 2, 'Lacin'),
(239, 239, 2, 'Lankaran'),
(240, 240, 2, 'Lerik'),
(241, 241, 2, 'Masalli'),
(242, 242, 2, 'Mingacevir'),
(243, 243, 2, 'Naftalan'),
(244, 244, 2, 'Neftcala'),
(245, 245, 2, 'Oguz'),
(246, 246, 2, 'Ordubad'),
(247, 247, 2, 'Qabala'),
(248, 248, 2, 'Qax'),
(249, 249, 2, 'Qazax'),
(250, 250, 2, 'Qobustan'),
(251, 251, 2, 'Quba'),
(252, 252, 2, 'Qubadli'),
(253, 253, 2, 'Qusar'),
(254, 254, 2, 'Saki'),
(255, 255, 2, 'Saatli'),
(256, 256, 2, 'Sabirabad'),
(257, 257, 2, 'Sadarak'),
(258, 258, 2, 'Sahbuz'),
(259, 259, 2, 'Saki'),
(260, 260, 2, 'Salyan'),
(261, 261, 2, 'Sumqayit'),
(262, 262, 2, 'Samaxi'),
(263, 263, 2, 'Samkir'),
(264, 264, 2, 'Samux'),
(265, 265, 2, 'Sarur'),
(266, 266, 2, 'Siyazan'),
(267, 267, 2, 'Susa'),
(268, 268, 2, 'Susa'),
(269, 269, 2, 'Tartar'),
(270, 270, 2, 'Tovuz'),
(271, 271, 2, 'Ucar'),
(272, 272, 2, 'Xankandi'),
(273, 273, 2, 'Xacmaz'),
(274, 274, 2, 'Xanlar'),
(275, 275, 2, 'Xizi'),
(276, 276, 2, 'Xocali'),
(277, 277, 2, 'Xocavand'),
(278, 278, 2, 'Yardimli'),
(279, 279, 2, 'Yevlax'),
(280, 280, 2, 'Zangilan'),
(281, 281, 2, 'Zaqatala'),
(282, 282, 2, 'Zardab'),
(283, 283, 2, 'Naxcivan'),
(284, 284, 2, 'Acklins'),
(285, 285, 2, 'Berry Islands'),
(286, 286, 2, 'Bimini'),
(287, 287, 2, 'Black Point'),
(288, 288, 2, 'Cat Island'),
(289, 289, 2, 'Central Abaco'),
(290, 290, 2, 'Central Andros'),
(291, 291, 2, 'Central Eleuthera'),
(292, 292, 2, 'City of Freeport'),
(293, 293, 2, 'Crooked Island'),
(294, 294, 2, 'East Grand Bahama'),
(295, 295, 2, 'Exuma'),
(296, 296, 2, 'Grand Cay'),
(297, 297, 2, 'Harbour Island'),
(298, 298, 2, 'Hope Town'),
(299, 299, 2, 'Inagua'),
(300, 300, 2, 'Long Island'),
(301, 301, 2, 'Mangrove Cay'),
(302, 302, 2, 'Mayaguana'),
(303, 303, 2, 'Moore\'s Island'),
(304, 304, 2, 'North Abaco'),
(305, 305, 2, 'North Andros'),
(306, 306, 2, 'North Eleuthera'),
(307, 307, 2, 'Ragged Island'),
(308, 308, 2, 'Rum Cay'),
(309, 309, 2, 'San Salvador'),
(310, 310, 2, 'South Abaco'),
(311, 311, 2, 'South Andros'),
(312, 312, 2, 'South Eleuthera'),
(313, 313, 2, 'Spanish Wells'),
(314, 314, 2, 'West Grand Bahama'),
(315, 315, 2, 'Capital'),
(316, 316, 2, 'Central'),
(317, 317, 2, 'Muharraq'),
(318, 318, 2, 'Northern'),
(319, 319, 2, 'Southern'),
(320, 320, 2, 'Barisal'),
(321, 321, 2, 'Chittagong'),
(322, 322, 2, 'Dhaka'),
(323, 323, 2, 'Khulna'),
(324, 324, 2, 'Rajshahi'),
(325, 325, 2, 'Sylhet'),
(326, 326, 2, 'Christ Church'),
(327, 327, 2, 'Saint Andrew'),
(328, 328, 2, 'Saint George'),
(329, 329, 2, 'Saint James'),
(330, 330, 2, 'Saint John'),
(331, 331, 2, 'Saint Joseph'),
(332, 332, 2, 'Saint Lucy'),
(333, 333, 2, 'Saint Michael'),
(334, 334, 2, 'Saint Peter'),
(335, 335, 2, 'Saint Philip'),
(336, 336, 2, 'Saint Thomas'),
(337, 337, 2, 'Brestskaya (Brest)'),
(338, 338, 2, 'Homyel\'skaya (Homyel\')'),
(339, 339, 2, 'Horad Minsk'),
(340, 340, 2, 'Hrodzyenskaya (Hrodna)'),
(341, 341, 2, 'Mahilyowskaya (Mahilyow)'),
(342, 342, 2, 'Minskaya'),
(343, 343, 2, 'Vitsyebskaya (Vitsyebsk)'),
(344, 344, 2, 'Antwerpen'),
(345, 345, 2, 'Brabant Wallon'),
(346, 346, 2, 'Hainaut'),
(347, 347, 2, 'Liège'),
(348, 348, 2, 'Limburg'),
(349, 349, 2, 'Luxembourg'),
(350, 350, 2, 'Namur'),
(351, 351, 2, 'Oost-Vlaanderen'),
(352, 352, 2, 'Vlaams Brabant'),
(353, 353, 2, 'West-Vlaanderen'),
(354, 354, 2, 'Belize'),
(355, 355, 2, 'Cayo'),
(356, 356, 2, 'Corozal'),
(357, 357, 2, 'Orange Walk'),
(358, 358, 2, 'Stann Creek'),
(359, 359, 2, 'Toledo'),
(360, 360, 2, 'Alibori'),
(361, 361, 2, 'Atakora'),
(362, 362, 2, 'Atlantique'),
(363, 363, 2, 'Borgou'),
(364, 364, 2, 'Collines'),
(365, 365, 2, 'Donga'),
(366, 366, 2, 'Kouffo'),
(367, 367, 2, 'Littoral'),
(368, 368, 2, 'Mono'),
(369, 369, 2, 'Oueme'),
(370, 370, 2, 'Plateau'),
(371, 371, 2, 'Zou'),
(372, 372, 2, 'Devonshire'),
(373, 373, 2, 'Hamilton City'),
(374, 374, 2, 'Hamilton'),
(375, 375, 2, 'Paget'),
(376, 376, 2, 'Pembroke'),
(377, 377, 2, 'Saint George City'),
(378, 378, 2, 'Saint George\'s'),
(379, 379, 2, 'Sandys'),
(380, 380, 2, 'Smith\'s'),
(381, 381, 2, 'Southampton'),
(382, 382, 2, 'Warwick'),
(383, 383, 2, 'Bumthang'),
(384, 384, 2, 'Chukha'),
(385, 385, 2, 'Dagana'),
(386, 386, 2, 'Gasa'),
(387, 387, 2, 'Haa'),
(388, 388, 2, 'Lhuntse'),
(389, 389, 2, 'Mongar'),
(390, 390, 2, 'Paro'),
(391, 391, 2, 'Pemagatshel'),
(392, 392, 2, 'Punakha'),
(393, 393, 2, 'Samdrup Jongkhar'),
(394, 394, 2, 'Samtse'),
(395, 395, 2, 'Sarpang'),
(396, 396, 2, 'Thimphu'),
(397, 397, 2, 'Trashigang'),
(398, 398, 2, 'Trashiyangste'),
(399, 399, 2, 'Trongsa'),
(400, 400, 2, 'Tsirang'),
(401, 401, 2, 'Wangdue Phodrang'),
(402, 402, 2, 'Zhemgang'),
(403, 403, 2, 'Beni'),
(404, 404, 2, 'Chuquisaca'),
(405, 405, 2, 'Cochabamba'),
(406, 406, 2, 'La Paz'),
(407, 407, 2, 'Oruro'),
(408, 408, 2, 'Pando'),
(409, 409, 2, 'Potosi'),
(410, 410, 2, 'Santa Cruz'),
(411, 411, 2, 'Tarija'),
(412, 412, 2, 'Brcko district'),
(413, 413, 2, 'Unsko-Sanski Kanton'),
(414, 414, 2, 'Posavski Kanton'),
(415, 415, 2, 'Tuzlanski Kanton'),
(416, 416, 2, 'Zenicko-Dobojski Kanton'),
(417, 417, 2, 'Bosanskopodrinjski Kanton'),
(418, 418, 2, 'Srednjebosanski Kanton'),
(419, 419, 2, 'Hercegovacko-neretvanski Kanton'),
(420, 420, 2, 'Zapadnohercegovacka Zupanija'),
(421, 421, 2, 'Kanton Sarajevo'),
(422, 422, 2, 'Zapadnobosanska'),
(423, 423, 2, 'Banja Luka'),
(424, 424, 2, 'Doboj'),
(425, 425, 2, 'Bijeljina'),
(426, 426, 2, 'Vlasenica'),
(427, 427, 2, 'Sarajevo-Romanija or Sokolac'),
(428, 428, 2, 'Foca'),
(429, 429, 2, 'Trebinje'),
(430, 430, 2, 'Central'),
(431, 431, 2, 'Ghanzi'),
(432, 432, 2, 'Kgalagadi'),
(433, 433, 2, 'Kgatleng'),
(434, 434, 2, 'Kweneng'),
(435, 435, 2, 'Ngamiland'),
(436, 436, 2, 'North East'),
(437, 437, 2, 'North West'),
(438, 438, 2, 'South East'),
(439, 439, 2, 'Southern'),
(440, 440, 2, 'Acre'),
(441, 441, 2, 'Alagoas'),
(442, 442, 2, 'Amapá'),
(443, 443, 2, 'Amazonas'),
(444, 444, 2, 'Bahia'),
(445, 445, 2, 'Ceará'),
(446, 446, 2, 'Distrito Federal'),
(447, 447, 2, 'Espírito Santo'),
(448, 448, 2, 'Goiás'),
(449, 449, 2, 'Maranhão'),
(450, 450, 2, 'Mato Grosso'),
(451, 451, 2, 'Mato Grosso do Sul'),
(452, 452, 2, 'Minas Gerais'),
(453, 453, 2, 'Pará'),
(454, 454, 2, 'Paraíba'),
(455, 455, 2, 'Paraná'),
(456, 456, 2, 'Pernambuco'),
(457, 457, 2, 'Piauí'),
(458, 458, 2, 'Rio de Janeiro'),
(459, 459, 2, 'Rio Grande do Norte'),
(460, 460, 2, 'Rio Grande do Sul'),
(461, 461, 2, 'Rondônia'),
(462, 462, 2, 'Roraima'),
(463, 463, 2, 'Santa Catarina'),
(464, 464, 2, 'São Paulo'),
(465, 465, 2, 'Sergipe'),
(466, 466, 2, 'Tocantins'),
(467, 467, 2, 'Peros Banhos'),
(468, 468, 2, 'Salomon Islands'),
(469, 469, 2, 'Nelsons Island'),
(470, 470, 2, 'Three Brothers'),
(471, 471, 2, 'Eagle Islands'),
(472, 472, 2, 'Danger Island'),
(473, 473, 2, 'Egmont Islands'),
(474, 474, 2, 'Diego Garcia'),
(475, 475, 2, 'Belait'),
(476, 476, 2, 'Brunei and Muara'),
(477, 477, 2, 'Temburong'),
(478, 478, 2, 'Tutong'),
(479, 479, 2, 'Blagoevgrad'),
(480, 480, 2, 'Burgas'),
(481, 481, 2, 'Dobrich'),
(482, 482, 2, 'Gabrovo'),
(483, 483, 2, 'Haskovo'),
(484, 484, 2, 'Kardjali'),
(485, 485, 2, 'Kyustendil'),
(486, 486, 2, 'Lovech'),
(487, 487, 2, 'Montana'),
(488, 488, 2, 'Pazardjik'),
(489, 489, 2, 'Pernik'),
(490, 490, 2, 'Pleven'),
(491, 491, 2, 'Plovdiv'),
(492, 492, 2, 'Razgrad'),
(493, 493, 2, 'Shumen'),
(494, 494, 2, 'Silistra'),
(495, 495, 2, 'Sliven'),
(496, 496, 2, 'Smolyan'),
(497, 497, 2, 'Sofia'),
(498, 498, 2, 'Sofia - town'),
(499, 499, 2, 'Stara Zagora'),
(500, 500, 2, 'Targovishte'),
(501, 501, 2, 'Varna'),
(502, 502, 2, 'Veliko Tarnovo'),
(503, 503, 2, 'Vidin'),
(504, 504, 2, 'Vratza'),
(505, 505, 2, 'Yambol'),
(506, 506, 2, 'Bale'),
(507, 507, 2, 'Bam'),
(508, 508, 2, 'Banwa'),
(509, 509, 2, 'Bazega'),
(510, 510, 2, 'Bougouriba'),
(511, 511, 2, 'Boulgou'),
(512, 512, 2, 'Boulkiemde'),
(513, 513, 2, 'Comoe'),
(514, 514, 2, 'Ganzourgou'),
(515, 515, 2, 'Gnagna'),
(516, 516, 2, 'Gourma'),
(517, 517, 2, 'Houet'),
(518, 518, 2, 'Ioba'),
(519, 519, 2, 'Kadiogo'),
(520, 520, 2, 'Kenedougou'),
(521, 521, 2, 'Komondjari'),
(522, 522, 2, 'Kompienga'),
(523, 523, 2, 'Kossi'),
(524, 524, 2, 'Koulpelogo'),
(525, 525, 2, 'Kouritenga'),
(526, 526, 2, 'Kourweogo'),
(527, 527, 2, 'Leraba'),
(528, 528, 2, 'Loroum'),
(529, 529, 2, 'Mouhoun'),
(530, 530, 2, 'Nahouri'),
(531, 531, 2, 'Namentenga'),
(532, 532, 2, 'Nayala'),
(533, 533, 2, 'Noumbiel'),
(534, 534, 2, 'Oubritenga'),
(535, 535, 2, 'Oudalan'),
(536, 536, 2, 'Passore'),
(537, 537, 2, 'Poni'),
(538, 538, 2, 'Sanguie'),
(539, 539, 2, 'Sanmatenga'),
(540, 540, 2, 'Seno'),
(541, 541, 2, 'Sissili'),
(542, 542, 2, 'Soum'),
(543, 543, 2, 'Sourou'),
(544, 544, 2, 'Tapoa'),
(545, 545, 2, 'Tuy'),
(546, 546, 2, 'Yagha'),
(547, 547, 2, 'Yatenga'),
(548, 548, 2, 'Ziro'),
(549, 549, 2, 'Zondoma'),
(550, 550, 2, 'Zoundweogo'),
(551, 551, 2, 'Bubanza'),
(552, 552, 2, 'Bujumbura'),
(553, 553, 2, 'Bururi'),
(554, 554, 2, 'Cankuzo'),
(555, 555, 2, 'Cibitoke'),
(556, 556, 2, 'Gitega'),
(557, 557, 2, 'Karuzi'),
(558, 558, 2, 'Kayanza'),
(559, 559, 2, 'Kirundo'),
(560, 560, 2, 'Makamba'),
(561, 561, 2, 'Muramvya'),
(562, 562, 2, 'Muyinga'),
(563, 563, 2, 'Mwaro'),
(564, 564, 2, 'Ngozi'),
(565, 565, 2, 'Rutana'),
(566, 566, 2, 'Ruyigi'),
(567, 567, 2, 'Phnom Penh'),
(568, 568, 2, 'Preah Seihanu (Kompong Som or Sihanoukville)'),
(569, 569, 2, 'Pailin'),
(570, 570, 2, 'Keb'),
(571, 571, 2, 'Banteay Meanchey'),
(572, 572, 2, 'Battambang'),
(573, 573, 2, 'Kampong Cham'),
(574, 574, 2, 'Kampong Chhnang'),
(575, 575, 2, 'Kampong Speu'),
(576, 576, 2, 'Kampong Som'),
(577, 577, 2, 'Kampong Thom'),
(578, 578, 2, 'Kampot'),
(579, 579, 2, 'Kandal'),
(580, 580, 2, 'Kaoh Kong'),
(581, 581, 2, 'Kratie'),
(582, 582, 2, 'Mondul Kiri'),
(583, 583, 2, 'Oddar Meancheay'),
(584, 584, 2, 'Pursat'),
(585, 585, 2, 'Preah Vihear'),
(586, 586, 2, 'Prey Veng'),
(587, 587, 2, 'Ratanak Kiri'),
(588, 588, 2, 'Siemreap'),
(589, 589, 2, 'Stung Treng'),
(590, 590, 2, 'Svay Rieng'),
(591, 591, 2, 'Takeo'),
(592, 592, 2, 'Adamawa (Adamaoua)'),
(593, 593, 2, 'Centre'),
(594, 594, 2, 'East (Est)'),
(595, 595, 2, 'Extreme North (Extreme-Nord)'),
(596, 596, 2, 'Littoral'),
(597, 597, 2, 'North (Nord)'),
(598, 598, 2, 'Northwest (Nord-Ouest)'),
(599, 599, 2, 'West (Ouest)'),
(600, 600, 2, 'South (Sud)'),
(601, 601, 2, 'Southwest (Sud-Ouest).'),
(602, 602, 2, 'Alberta'),
(603, 603, 2, 'British Columbia'),
(604, 604, 2, 'Manitoba'),
(605, 605, 2, 'New Brunswick'),
(606, 606, 2, 'Newfoundland and Labrador'),
(607, 607, 2, 'Northwest Territories'),
(608, 608, 2, 'Nova Scotia'),
(609, 609, 2, 'Nunavut'),
(610, 610, 2, 'Ontario'),
(611, 611, 2, 'Prince Edward Island'),
(612, 612, 2, 'Qu&eacute;bec'),
(613, 613, 2, 'Saskatchewan'),
(614, 614, 2, 'Yukon Territory'),
(615, 615, 2, 'Boa Vista'),
(616, 616, 2, 'Brava'),
(617, 617, 2, 'Calheta de Sao Miguel'),
(618, 618, 2, 'Maio'),
(619, 619, 2, 'Mosteiros'),
(620, 620, 2, 'Paul'),
(621, 621, 2, 'Porto Novo'),
(622, 622, 2, 'Praia'),
(623, 623, 2, 'Ribeira Grande'),
(624, 624, 2, 'Sal'),
(625, 625, 2, 'Santa Catarina'),
(626, 626, 2, 'Santa Cruz'),
(627, 627, 2, 'Sao Domingos'),
(628, 628, 2, 'Sao Filipe'),
(629, 629, 2, 'Sao Nicolau'),
(630, 630, 2, 'Sao Vicente'),
(631, 631, 2, 'Tarrafal'),
(632, 632, 2, 'Creek'),
(633, 633, 2, 'Eastern'),
(634, 634, 2, 'Midland'),
(635, 635, 2, 'South Town'),
(636, 636, 2, 'Spot Bay'),
(637, 637, 2, 'Stake Bay'),
(638, 638, 2, 'West End'),
(639, 639, 2, 'Western'),
(640, 640, 2, 'Bamingui-Bangoran'),
(641, 641, 2, 'Basse-Kotto'),
(642, 642, 2, 'Haute-Kotto'),
(643, 643, 2, 'Haut-Mbomou'),
(644, 644, 2, 'Kemo'),
(645, 645, 2, 'Lobaye'),
(646, 646, 2, 'Mambere-KadeÔ'),
(647, 647, 2, 'Mbomou'),
(648, 648, 2, 'Nana-Mambere'),
(649, 649, 2, 'Ombella-M\'Poko'),
(650, 650, 2, 'Ouaka'),
(651, 651, 2, 'Ouham'),
(652, 652, 2, 'Ouham-Pende'),
(653, 653, 2, 'Vakaga'),
(654, 654, 2, 'Nana-Grebizi'),
(655, 655, 2, 'Sangha-Mbaere'),
(656, 656, 2, 'Bangui'),
(657, 657, 2, 'Batha'),
(658, 658, 2, 'Biltine'),
(659, 659, 2, 'Borkou-Ennedi-Tibesti'),
(660, 660, 2, 'Chari-Baguirmi'),
(661, 661, 2, 'Guera'),
(662, 662, 2, 'Kanem'),
(663, 663, 2, 'Lac'),
(664, 664, 2, 'Logone Occidental'),
(665, 665, 2, 'Logone Oriental'),
(666, 666, 2, 'Mayo-Kebbi'),
(667, 667, 2, 'Moyen-Chari'),
(668, 668, 2, 'Ouaddai'),
(669, 669, 2, 'Salamat'),
(670, 670, 2, 'Tandjile'),
(671, 671, 2, 'Aisen del General Carlos Ibanez'),
(672, 672, 2, 'Antofagasta'),
(673, 673, 2, 'Araucania'),
(674, 674, 2, 'Atacama'),
(675, 675, 2, 'Bio-Bio'),
(676, 676, 2, 'Coquimbo'),
(677, 677, 2, 'Libertador General Bernardo O\'Higgins'),
(678, 678, 2, 'Los Lagos'),
(679, 679, 2, 'Magallanes y de la Antartica Chilena'),
(680, 680, 2, 'Maule'),
(681, 681, 2, 'Region Metropolitana'),
(682, 682, 2, 'Tarapaca'),
(683, 683, 2, 'Valparaiso'),
(684, 684, 2, 'Anhui'),
(685, 685, 2, 'Beijing'),
(686, 686, 2, 'Chongqing'),
(687, 687, 2, 'Fujian'),
(688, 688, 2, 'Gansu'),
(689, 689, 2, 'Guangdong'),
(690, 690, 2, 'Guangxi'),
(691, 691, 2, 'Guizhou'),
(692, 692, 2, 'Hainan'),
(693, 693, 2, 'Hebei'),
(694, 694, 2, 'Heilongjiang'),
(695, 695, 2, 'Henan'),
(696, 696, 2, 'Hong Kong'),
(697, 697, 2, 'Hubei'),
(698, 698, 2, 'Hunan'),
(699, 699, 2, 'Inner Mongolia'),
(700, 700, 2, 'Jiangsu'),
(701, 701, 2, 'Jiangxi'),
(702, 702, 2, 'Jilin'),
(703, 703, 2, 'Liaoning'),
(704, 704, 2, 'Macau'),
(705, 705, 2, 'Ningxia'),
(706, 706, 2, 'Shaanxi'),
(707, 707, 2, 'Shandong'),
(708, 708, 2, 'Shanghai'),
(709, 709, 2, 'Shanxi'),
(710, 710, 2, 'Sichuan'),
(711, 711, 2, 'Tianjin'),
(712, 712, 2, 'Xinjiang'),
(713, 713, 2, 'Yunnan'),
(714, 714, 2, 'Zhejiang'),
(715, 715, 2, 'Direction Island'),
(716, 716, 2, 'Home Island'),
(717, 717, 2, 'Horsburgh Island'),
(718, 718, 2, 'South Island'),
(719, 719, 2, 'West Island'),
(720, 720, 2, 'Amazonas'),
(721, 721, 2, 'Antioquia'),
(722, 722, 2, 'Arauca'),
(723, 723, 2, 'Atlantico'),
(724, 724, 2, 'Bogota D.C.'),
(725, 725, 2, 'Bolivar'),
(726, 726, 2, 'Boyaca'),
(727, 727, 2, 'Caldas'),
(728, 728, 2, 'Caqueta'),
(729, 729, 2, 'Casanare'),
(730, 730, 2, 'Cauca'),
(731, 731, 2, 'Cesar'),
(732, 732, 2, 'Choco'),
(733, 733, 2, 'Cordoba'),
(734, 734, 2, 'Cundinamarca'),
(735, 735, 2, 'Guainia'),
(736, 736, 2, 'Guajira'),
(737, 737, 2, 'Guaviare'),
(738, 738, 2, 'Huila'),
(739, 739, 2, 'Magdalena'),
(740, 740, 2, 'Meta'),
(741, 741, 2, 'Narino'),
(742, 742, 2, 'Norte de Santander'),
(743, 743, 2, 'Putumayo'),
(744, 744, 2, 'Quindio'),
(745, 745, 2, 'Risaralda'),
(746, 746, 2, 'San Andres y Providencia'),
(747, 747, 2, 'Santander'),
(748, 748, 2, 'Sucre'),
(749, 749, 2, 'Tolima'),
(750, 750, 2, 'Valle del Cauca'),
(751, 751, 2, 'Vaupes'),
(752, 752, 2, 'Vichada'),
(753, 753, 2, 'Grande Comore'),
(754, 754, 2, 'Anjouan'),
(755, 755, 2, 'Moheli'),
(756, 756, 2, 'Bouenza'),
(757, 757, 2, 'Brazzaville'),
(758, 758, 2, 'Cuvette'),
(759, 759, 2, 'Cuvette-Ouest'),
(760, 760, 2, 'Kouilou'),
(761, 761, 2, 'Lekoumou'),
(762, 762, 2, 'Likouala'),
(763, 763, 2, 'Niari'),
(764, 764, 2, 'Plateaux'),
(765, 765, 2, 'Pool'),
(766, 766, 2, 'Sangha'),
(767, 767, 2, 'Pukapuka'),
(768, 768, 2, 'Rakahanga'),
(769, 769, 2, 'Manihiki'),
(770, 770, 2, 'Penrhyn'),
(771, 771, 2, 'Nassau Island'),
(772, 772, 2, 'Surwarrow'),
(773, 773, 2, 'Palmerston'),
(774, 774, 2, 'Aitutaki'),
(775, 775, 2, 'Manuae'),
(776, 776, 2, 'Takutea'),
(777, 777, 2, 'Mitiaro'),
(778, 778, 2, 'Atiu'),
(779, 779, 2, 'Mauke'),
(780, 780, 2, 'Rarotonga'),
(781, 781, 2, 'Mangaia'),
(782, 782, 2, 'Alajuela'),
(783, 783, 2, 'Cartago'),
(784, 784, 2, 'Guanacaste'),
(785, 785, 2, 'Heredia'),
(786, 786, 2, 'Limon'),
(787, 787, 2, 'Puntarenas'),
(788, 788, 2, 'San Jose'),
(789, 789, 2, 'Abengourou'),
(790, 790, 2, 'Abidjan'),
(791, 791, 2, 'Aboisso'),
(792, 792, 2, 'Adiake'),
(793, 793, 2, 'Adzope'),
(794, 794, 2, 'Agboville'),
(795, 795, 2, 'Agnibilekrou'),
(796, 796, 2, 'Alepe'),
(797, 797, 2, 'Bocanda'),
(798, 798, 2, 'Bangolo'),
(799, 799, 2, 'Beoumi'),
(800, 800, 2, 'Biankouma'),
(801, 801, 2, 'Bondoukou'),
(802, 802, 2, 'Bongouanou'),
(803, 803, 2, 'Bouafle'),
(804, 804, 2, 'Bouake'),
(805, 805, 2, 'Bouna'),
(806, 806, 2, 'Boundiali'),
(807, 807, 2, 'Dabakala'),
(808, 808, 2, 'Dabou'),
(809, 809, 2, 'Daloa'),
(810, 810, 2, 'Danane'),
(811, 811, 2, 'Daoukro'),
(812, 812, 2, 'Dimbokro'),
(813, 813, 2, 'Divo'),
(814, 814, 2, 'Duekoue'),
(815, 815, 2, 'Ferkessedougou'),
(816, 816, 2, 'Gagnoa'),
(817, 817, 2, 'Grand-Bassam'),
(818, 818, 2, 'Grand-Lahou'),
(819, 819, 2, 'Guiglo'),
(820, 820, 2, 'Issia'),
(821, 821, 2, 'Jacqueville'),
(822, 822, 2, 'Katiola'),
(823, 823, 2, 'Korhogo'),
(824, 824, 2, 'Lakota'),
(825, 825, 2, 'Man'),
(826, 826, 2, 'Mankono'),
(827, 827, 2, 'Mbahiakro'),
(828, 828, 2, 'Odienne'),
(829, 829, 2, 'Oume'),
(830, 830, 2, 'Sakassou'),
(831, 831, 2, 'San-Pedro'),
(832, 832, 2, 'Sassandra'),
(833, 833, 2, 'Seguela'),
(834, 834, 2, 'Sinfra'),
(835, 835, 2, 'Soubre'),
(836, 836, 2, 'Tabou'),
(837, 837, 2, 'Tanda'),
(838, 838, 2, 'Tiebissou'),
(839, 839, 2, 'Tingrela'),
(840, 840, 2, 'Tiassale'),
(841, 841, 2, 'Touba'),
(842, 842, 2, 'Toulepleu'),
(843, 843, 2, 'Toumodi'),
(844, 844, 2, 'Vavoua'),
(845, 845, 2, 'Yamoussoukro'),
(846, 846, 2, 'Zuenoula'),
(847, 847, 2, 'Bjelovarsko-bilogorska'),
(848, 848, 2, 'Grad Zagreb'),
(849, 849, 2, 'Dubrovačko-neretvanska'),
(850, 850, 2, 'Istarska'),
(851, 851, 2, 'Karlovačka'),
(852, 852, 2, 'Koprivničko-križevačka'),
(853, 853, 2, 'Krapinsko-zagorska'),
(854, 854, 2, 'Ličko-senjska'),
(855, 855, 2, 'Međimurska'),
(856, 856, 2, 'Osječko-baranjska'),
(857, 857, 2, 'Požeško-slavonska'),
(858, 858, 2, 'Primorsko-goranska'),
(859, 859, 2, 'Šibensko-kninska'),
(860, 860, 2, 'Sisačko-moslavačka'),
(861, 861, 2, 'Brodsko-posavska'),
(862, 862, 2, 'Splitsko-dalmatinska'),
(863, 863, 2, 'Varaždinska'),
(864, 864, 2, 'Virovitičko-podravska'),
(865, 865, 2, 'Vukovarsko-srijemska'),
(866, 866, 2, 'Zadarska'),
(867, 867, 2, 'Zagrebačka'),
(868, 868, 2, 'Camaguey'),
(869, 869, 2, 'Ciego de Avila'),
(870, 870, 2, 'Cienfuegos'),
(871, 871, 2, 'Ciudad de La Habana'),
(872, 872, 2, 'Granma'),
(873, 873, 2, 'Guantanamo'),
(874, 874, 2, 'Holguin'),
(875, 875, 2, 'Isla de la Juventud'),
(876, 876, 2, 'La Habana'),
(877, 877, 2, 'Las Tunas'),
(878, 878, 2, 'Matanzas'),
(879, 879, 2, 'Pinar del Rio'),
(880, 880, 2, 'Sancti Spiritus'),
(881, 881, 2, 'Santiago de Cuba'),
(882, 882, 2, 'Villa Clara'),
(883, 883, 2, 'Famagusta'),
(884, 884, 2, 'Kyrenia'),
(885, 885, 2, 'Larnaca'),
(886, 886, 2, 'Limassol'),
(887, 887, 2, 'Nicosia'),
(888, 888, 2, 'Paphos'),
(889, 889, 2, 'Ústecký'),
(890, 890, 2, 'Jihočeský'),
(891, 891, 2, 'Jihomoravský'),
(892, 892, 2, 'Karlovarský'),
(893, 893, 2, 'Královehradecký'),
(894, 894, 2, 'Liberecký'),
(895, 895, 2, 'Moravskoslezský'),
(896, 896, 2, 'Olomoucký'),
(897, 897, 2, 'Pardubický'),
(898, 898, 2, 'Plzeňský'),
(899, 899, 2, 'Praha'),
(900, 900, 2, 'Středočeský'),
(901, 901, 2, 'Vysočina'),
(902, 902, 2, 'Zlínský'),
(903, 903, 2, 'Arhus'),
(904, 904, 2, 'Bornholm'),
(905, 905, 2, 'Copenhagen'),
(906, 906, 2, 'Faroe Islands'),
(907, 907, 2, 'Frederiksborg'),
(908, 908, 2, 'Fyn'),
(909, 909, 2, 'Kobenhavn'),
(910, 910, 2, 'Nordjylland'),
(911, 911, 2, 'Ribe'),
(912, 912, 2, 'Ringkobing'),
(913, 913, 2, 'Roskilde'),
(914, 914, 2, 'Sonderjylland'),
(915, 915, 2, 'Storstrom'),
(916, 916, 2, 'Vejle'),
(917, 917, 2, 'Vestj&aelig;lland'),
(918, 918, 2, 'Viborg'),
(919, 919, 2, '\'Ali Sabih'),
(920, 920, 2, 'Dikhil'),
(921, 921, 2, 'Djibouti'),
(922, 922, 2, 'Obock'),
(923, 923, 2, 'Tadjoura'),
(924, 924, 2, 'Saint Andrew Parish'),
(925, 925, 2, 'Saint David Parish'),
(926, 926, 2, 'Saint George Parish'),
(927, 927, 2, 'Saint John Parish'),
(928, 928, 2, 'Saint Joseph Parish'),
(929, 929, 2, 'Saint Luke Parish'),
(930, 930, 2, 'Saint Mark Parish'),
(931, 931, 2, 'Saint Patrick Parish'),
(932, 932, 2, 'Saint Paul Parish'),
(933, 933, 2, 'Saint Peter Parish'),
(934, 934, 2, 'Distrito Nacional'),
(935, 935, 2, 'Azua'),
(936, 936, 2, 'Baoruco'),
(937, 937, 2, 'Barahona'),
(938, 938, 2, 'Dajabon'),
(939, 939, 2, 'Duarte'),
(940, 940, 2, 'Elias Pina'),
(941, 941, 2, 'El Seybo'),
(942, 942, 2, 'Espaillat'),
(943, 943, 2, 'Hato Mayor'),
(944, 944, 2, 'Independencia'),
(945, 945, 2, 'La Altagracia'),
(946, 946, 2, 'La Romana'),
(947, 947, 2, 'La Vega'),
(948, 948, 2, 'Maria Trinidad Sanchez'),
(949, 949, 2, 'Monsenor Nouel'),
(950, 950, 2, 'Monte Cristi'),
(951, 951, 2, 'Monte Plata'),
(952, 952, 2, 'Pedernales'),
(953, 953, 2, 'Peravia (Bani)'),
(954, 954, 2, 'Puerto Plata'),
(955, 955, 2, 'Salcedo'),
(956, 956, 2, 'Samana'),
(957, 957, 2, 'Sanchez Ramirez'),
(958, 958, 2, 'San Cristobal'),
(959, 959, 2, 'San Jose de Ocoa'),
(960, 960, 2, 'San Juan'),
(961, 961, 2, 'San Pedro de Macoris'),
(962, 962, 2, 'Santiago'),
(963, 963, 2, 'Santiago Rodriguez'),
(964, 964, 2, 'Santo Domingo'),
(965, 965, 2, 'Valverde'),
(966, 966, 2, 'Aileu'),
(967, 967, 2, 'Ainaro'),
(968, 968, 2, 'Baucau'),
(969, 969, 2, 'Bobonaro'),
(970, 970, 2, 'Cova Lima'),
(971, 971, 2, 'Dili'),
(972, 972, 2, 'Ermera'),
(973, 973, 2, 'Lautem'),
(974, 974, 2, 'Liquica'),
(975, 975, 2, 'Manatuto'),
(976, 976, 2, 'Manufahi'),
(977, 977, 2, 'Oecussi'),
(978, 978, 2, 'Viqueque'),
(979, 979, 2, 'Azuay'),
(980, 980, 2, 'Bolivar'),
(981, 981, 2, 'Ca&ntilde;ar'),
(982, 982, 2, 'Carchi'),
(983, 983, 2, 'Chimborazo'),
(984, 984, 2, 'Cotopaxi'),
(985, 985, 2, 'El Oro'),
(986, 986, 2, 'Esmeraldas'),
(987, 987, 2, 'Gal&aacute;pagos'),
(988, 988, 2, 'Guayas'),
(989, 989, 2, 'Imbabura'),
(990, 990, 2, 'Loja'),
(991, 991, 2, 'Los Rios'),
(992, 992, 2, 'Manab&iacute;'),
(993, 993, 2, 'Morona Santiago'),
(994, 994, 2, 'Napo'),
(995, 995, 2, 'Orellana'),
(996, 996, 2, 'Pastaza'),
(997, 997, 2, 'Pichincha'),
(998, 998, 2, 'Sucumb&iacute;os'),
(999, 999, 2, 'Tungurahua'),
(1000, 1000, 2, 'Zamora Chinchipe'),
(1001, 1001, 2, 'Ad Daqahliyah'),
(1002, 1002, 2, 'Al Bahr al Ahmar'),
(1003, 1003, 2, 'Al Buhayrah'),
(1004, 1004, 2, 'Al Fayyum'),
(1005, 1005, 2, 'Al Gharbiyah'),
(1006, 1006, 2, 'Al Iskandariyah'),
(1007, 1007, 2, 'Al Isma\'iliyah'),
(1008, 1008, 2, 'Al Jizah'),
(1009, 1009, 2, 'Al Minufiyah'),
(1010, 1010, 2, 'Al Minya'),
(1011, 1011, 2, 'Al Qahirah'),
(1012, 1012, 2, 'Al Qalyubiyah'),
(1013, 1013, 2, 'Al Wadi al Jadid'),
(1014, 1014, 2, 'Ash Sharqiyah'),
(1015, 1015, 2, 'As Suways'),
(1016, 1016, 2, 'Aswan'),
(1017, 1017, 2, 'Asyut'),
(1018, 1018, 2, 'Bani Suwayf'),
(1019, 1019, 2, 'Bur Sa\'id'),
(1020, 1020, 2, 'Dumyat'),
(1021, 1021, 2, 'Janub Sina\''),
(1022, 1022, 2, 'Kafr ash Shaykh'),
(1023, 1023, 2, 'Matruh'),
(1024, 1024, 2, 'Qina'),
(1025, 1025, 2, 'Shamal Sina\''),
(1026, 1026, 2, 'Suhaj'),
(1027, 1027, 2, 'Ahuachapan'),
(1028, 1028, 2, 'Cabanas'),
(1029, 1029, 2, 'Chalatenango'),
(1030, 1030, 2, 'Cuscatlan'),
(1031, 1031, 2, 'La Libertad'),
(1032, 1032, 2, 'La Paz'),
(1033, 1033, 2, 'La Union'),
(1034, 1034, 2, 'Morazan'),
(1035, 1035, 2, 'San Miguel'),
(1036, 1036, 2, 'San Salvador'),
(1037, 1037, 2, 'San Vicente'),
(1038, 1038, 2, 'Santa Ana'),
(1039, 1039, 2, 'Sonsonate'),
(1040, 1040, 2, 'Usulutan'),
(1041, 1041, 2, 'Provincia Annobon'),
(1042, 1042, 2, 'Provincia Bioko Norte'),
(1043, 1043, 2, 'Provincia Bioko Sur'),
(1044, 1044, 2, 'Provincia Centro Sur'),
(1045, 1045, 2, 'Provincia Kie-Ntem'),
(1046, 1046, 2, 'Provincia Litoral'),
(1047, 1047, 2, 'Provincia Wele-Nzas'),
(1048, 1048, 2, 'Central (Maekel)'),
(1049, 1049, 2, 'Anseba (Keren)'),
(1050, 1050, 2, 'Southern Red Sea (Debub-Keih-Bahri)'),
(1051, 1051, 2, 'Northern Red Sea (Semien-Keih-Bahri)'),
(1052, 1052, 2, 'Southern (Debub)'),
(1053, 1053, 2, 'Gash-Barka (Barentu)'),
(1054, 1054, 2, 'Harjumaa (Tallinn)'),
(1055, 1055, 2, 'Hiiumaa (Kardla)'),
(1056, 1056, 2, 'Ida-Virumaa (Johvi)'),
(1057, 1057, 2, 'Jarvamaa (Paide)'),
(1058, 1058, 2, 'Jogevamaa (Jogeva)'),
(1059, 1059, 2, 'Laane-Virumaa (Rakvere)'),
(1060, 1060, 2, 'Laanemaa (Haapsalu)'),
(1061, 1061, 2, 'Parnumaa (Parnu)'),
(1062, 1062, 2, 'Polvamaa (Polva)'),
(1063, 1063, 2, 'Raplamaa (Rapla)'),
(1064, 1064, 2, 'Saaremaa (Kuessaare)'),
(1065, 1065, 2, 'Tartumaa (Tartu)'),
(1066, 1066, 2, 'Valgamaa (Valga)'),
(1067, 1067, 2, 'Viljandimaa (Viljandi)'),
(1068, 1068, 2, 'Vorumaa (Voru)'),
(1069, 1069, 2, 'Afar'),
(1070, 1070, 2, 'Amhara'),
(1071, 1071, 2, 'Benishangul-Gumaz'),
(1072, 1072, 2, 'Gambela'),
(1073, 1073, 2, 'Hariai'),
(1074, 1074, 2, 'Oromia'),
(1075, 1075, 2, 'Somali'),
(1076, 1076, 2, 'Southern Nations - Nationalities and Peoples Region'),
(1077, 1077, 2, 'Tigray'),
(1078, 1078, 2, 'Addis Ababa'),
(1079, 1079, 2, 'Dire Dawa'),
(1080, 1080, 2, 'Central Division'),
(1081, 1081, 2, 'Northern Division'),
(1082, 1082, 2, 'Eastern Division'),
(1083, 1083, 2, 'Western Division'),
(1084, 1084, 2, 'Rotuma'),
(1085, 1085, 2, 'Ahvenanmaan lääni'),
(1086, 1086, 2, 'Etelä-Suomen lääni'),
(1087, 1087, 2, 'Itä-Suomen lääni'),
(1088, 1088, 2, 'Länsi-Suomen lääni'),
(1089, 1089, 2, 'Lapin lääni'),
(1090, 1090, 2, 'Oulun lääni'),
(1091, 1114, 2, 'Ain'),
(1092, 1115, 2, 'Aisne'),
(1093, 1116, 2, 'Allier'),
(1094, 1117, 2, 'Alpes de Haute Provence'),
(1095, 1118, 2, 'Hautes-Alpes'),
(1096, 1119, 2, 'Alpes Maritimes'),
(1097, 1120, 2, 'Ard&egrave;che'),
(1098, 1121, 2, 'Ardennes'),
(1099, 1122, 2, 'Ari&egrave;ge'),
(1100, 1123, 2, 'Aube'),
(1101, 1124, 2, 'Aude'),
(1102, 1125, 2, 'Aveyron'),
(1103, 1126, 2, 'Bouches du Rh&ocirc;ne'),
(1104, 1127, 2, 'Calvados'),
(1105, 1128, 2, 'Cantal'),
(1106, 1129, 2, 'Charente'),
(1107, 1130, 2, 'Charente Maritime'),
(1108, 1131, 2, 'Cher'),
(1109, 1132, 2, 'Corr&egrave;ze'),
(1110, 1133, 2, 'Corse du Sud'),
(1111, 1134, 2, 'Haute Corse'),
(1112, 1135, 2, 'C&ocirc;te d&#039;or'),
(1113, 1136, 2, 'C&ocirc;tes d&#039;Armor'),
(1114, 1137, 2, 'Creuse'),
(1115, 1138, 2, 'Dordogne'),
(1116, 1139, 2, 'Doubs'),
(1117, 1140, 2, 'Dr&ocirc;me'),
(1118, 1141, 2, 'Eure'),
(1119, 1142, 2, 'Eure et Loir'),
(1120, 1143, 2, 'Finist&egrave;re'),
(1121, 1144, 2, 'Gard'),
(1122, 1145, 2, 'Haute Garonne'),
(1123, 1146, 2, 'Gers'),
(1124, 1147, 2, 'Gironde'),
(1125, 1148, 2, 'H&eacute;rault'),
(1126, 1149, 2, 'Ille et Vilaine'),
(1127, 1150, 2, 'Indre'),
(1128, 1151, 2, 'Indre et Loire'),
(1129, 1152, 2, 'Is&eacute;re'),
(1130, 1153, 2, 'Jura'),
(1131, 1154, 2, 'Landes'),
(1132, 1155, 2, 'Loir et Cher'),
(1133, 1156, 2, 'Loire'),
(1134, 1157, 2, 'Haute Loire'),
(1135, 1158, 2, 'Loire Atlantique'),
(1136, 1159, 2, 'Loiret'),
(1137, 1160, 2, 'Lot'),
(1138, 1161, 2, 'Lot et Garonne'),
(1139, 1162, 2, 'Loz&egrave;re'),
(1140, 1163, 2, 'Maine et Loire'),
(1141, 1164, 2, 'Manche'),
(1142, 1165, 2, 'Marne'),
(1143, 1166, 2, 'Haute Marne'),
(1144, 1167, 2, 'Mayenne'),
(1145, 1168, 2, 'Meurthe et Moselle'),
(1146, 1169, 2, 'Meuse'),
(1147, 1170, 2, 'Morbihan'),
(1148, 1171, 2, 'Moselle'),
(1149, 1172, 2, 'Ni&egrave;vre'),
(1150, 1173, 2, 'Nord'),
(1151, 1174, 2, 'Oise'),
(1152, 1175, 2, 'Orne'),
(1153, 1176, 2, 'Pas de Calais'),
(1154, 1177, 2, 'Puy de D&ocirc;me'),
(1155, 1178, 2, 'Pyr&eacute;n&eacute;es Atlantiques'),
(1156, 1179, 2, 'Hautes Pyr&eacute;n&eacute;es'),
(1157, 1180, 2, 'Pyr&eacute;n&eacute;es Orientales'),
(1158, 1181, 2, 'Bas Rhin'),
(1159, 1182, 2, 'Haut Rhin'),
(1160, 1183, 2, 'Rh&ocirc;ne'),
(1161, 1184, 2, 'Haute Sa&ocirc;ne'),
(1162, 1185, 2, 'Sa&ocirc;ne et Loire'),
(1163, 1186, 2, 'Sarthe'),
(1164, 1187, 2, 'Savoie'),
(1165, 1188, 2, 'Haute Savoie'),
(1166, 1189, 2, 'Paris'),
(1167, 1190, 2, 'Seine Maritime'),
(1168, 1191, 2, 'Seine et Marne'),
(1169, 1192, 2, 'Yvelines'),
(1170, 1193, 2, 'Deux S&egrave;vres'),
(1171, 1194, 2, 'Somme'),
(1172, 1195, 2, 'Tarn'),
(1173, 1196, 2, 'Tarn et Garonne'),
(1174, 1197, 2, 'Var'),
(1175, 1198, 2, 'Vaucluse'),
(1176, 1199, 2, 'Vend&eacute;e'),
(1177, 1200, 2, 'Vienne'),
(1178, 1201, 2, 'Haute Vienne'),
(1179, 1202, 2, 'Vosges'),
(1180, 1203, 2, 'Yonne'),
(1181, 1204, 2, 'Territoire de Belfort'),
(1182, 1205, 2, 'Essonne'),
(1183, 1206, 2, 'Hauts de Seine'),
(1184, 1207, 2, 'Seine St-Denis'),
(1185, 1208, 2, 'Val de Marne'),
(1186, 1209, 2, 'Val d\'Oise'),
(1187, 1210, 2, 'Archipel des Marquises'),
(1188, 1211, 2, 'Archipel des Tuamotu'),
(1189, 1212, 2, 'Archipel des Tubuai'),
(1190, 1213, 2, 'Iles du Vent'),
(1191, 1214, 2, 'Iles Sous-le-Vent'),
(1192, 1215, 2, 'Iles Crozet'),
(1193, 1216, 2, 'Iles Kerguelen'),
(1194, 1217, 2, 'Ile Amsterdam'),
(1195, 1218, 2, 'Ile Saint-Paul'),
(1196, 1219, 2, 'Adelie Land'),
(1197, 1220, 2, 'Estuaire'),
(1198, 1221, 2, 'Haut-Ogooue'),
(1199, 1222, 2, 'Moyen-Ogooue'),
(1200, 1223, 2, 'Ngounie'),
(1201, 1224, 2, 'Nyanga'),
(1202, 1225, 2, 'Ogooue-Ivindo'),
(1203, 1226, 2, 'Ogooue-Lolo'),
(1204, 1227, 2, 'Ogooue-Maritime'),
(1205, 1228, 2, 'Woleu-Ntem'),
(1206, 1229, 2, 'Banjul'),
(1207, 1230, 2, 'Basse'),
(1208, 1231, 2, 'Brikama'),
(1209, 1232, 2, 'Janjangbure'),
(1210, 1233, 2, 'Kanifeng'),
(1211, 1234, 2, 'Kerewan'),
(1212, 1235, 2, 'Kuntaur'),
(1213, 1236, 2, 'Mansakonko'),
(1214, 1237, 2, 'Lower River'),
(1215, 1238, 2, 'Central River'),
(1216, 1239, 2, 'North Bank'),
(1217, 1240, 2, 'Upper River'),
(1218, 1241, 2, 'Western'),
(1219, 1242, 2, 'Abkhazia'),
(1220, 1243, 2, 'Ajaria'),
(1221, 1244, 2, 'Tbilisi'),
(1222, 1245, 2, 'Guria'),
(1223, 1246, 2, 'Imereti'),
(1224, 1247, 2, 'Kakheti'),
(1225, 1248, 2, 'Kvemo Kartli'),
(1226, 1249, 2, 'Mtskheta-Mtianeti'),
(1227, 1250, 2, 'Racha Lechkhumi and Kvemo Svanet'),
(1228, 1251, 2, 'Samegrelo-Zemo Svaneti'),
(1229, 1252, 2, 'Samtskhe-Javakheti'),
(1230, 1253, 2, 'Shida Kartli'),
(1231, 1254, 2, 'Baden-Württemberg'),
(1232, 1255, 2, 'Bayern'),
(1233, 1256, 2, 'Berlin'),
(1234, 1257, 2, 'Brandenburg'),
(1235, 1258, 2, 'Bremen'),
(1236, 1259, 2, 'Hamburg'),
(1237, 1260, 2, 'Hessen'),
(1238, 1261, 2, 'Mecklenburg-Vorpommern'),
(1239, 1262, 2, 'Niedersachsen'),
(1240, 1263, 2, 'Nordrhein-Westfalen'),
(1241, 1264, 2, 'Rheinland-Pfalz'),
(1242, 1265, 2, 'Saarland'),
(1243, 1266, 2, 'Sachsen'),
(1244, 1267, 2, 'Sachsen-Anhalt'),
(1245, 1268, 2, 'Schleswig-Holstein'),
(1246, 1269, 2, 'Thüringen'),
(1247, 1270, 2, 'Ashanti Region'),
(1248, 1271, 2, 'Brong-Ahafo Region'),
(1249, 1272, 2, 'Central Region'),
(1250, 1273, 2, 'Eastern Region'),
(1251, 1274, 2, 'Greater Accra Region'),
(1252, 1275, 2, 'Northern Region'),
(1253, 1276, 2, 'Upper East Region'),
(1254, 1277, 2, 'Upper West Region'),
(1255, 1278, 2, 'Volta Region'),
(1256, 1279, 2, 'Western Region'),
(1257, 1280, 2, 'Attica'),
(1258, 1281, 2, 'Central Greece'),
(1259, 1282, 2, 'Central Macedonia'),
(1260, 1283, 2, 'Crete'),
(1261, 1284, 2, 'East Macedonia and Thrace'),
(1262, 1285, 2, 'Epirus'),
(1263, 1286, 2, 'Ionian Islands'),
(1264, 1287, 2, 'North Aegean'),
(1265, 1288, 2, 'Peloponnesos'),
(1266, 1289, 2, 'South Aegean'),
(1267, 1290, 2, 'Thessaly'),
(1268, 1291, 2, 'West Greece'),
(1269, 1292, 2, 'West Macedonia'),
(1270, 1293, 2, 'Avannaa'),
(1271, 1294, 2, 'Tunu'),
(1272, 1295, 2, 'Kitaa'),
(1273, 1296, 2, 'Saint Andrew'),
(1274, 1297, 2, 'Saint David'),
(1275, 1298, 2, 'Saint George'),
(1276, 1299, 2, 'Saint John'),
(1277, 1300, 2, 'Saint Mark'),
(1278, 1301, 2, 'Saint Patrick'),
(1279, 1302, 2, 'Carriacou'),
(1280, 1303, 2, 'Petit Martinique'),
(1281, 1304, 2, 'Alta Verapaz'),
(1282, 1305, 2, 'Baja Verapaz'),
(1283, 1306, 2, 'Chimaltenango'),
(1284, 1307, 2, 'Chiquimula'),
(1285, 1308, 2, 'El Peten'),
(1286, 1309, 2, 'El Progreso'),
(1287, 1310, 2, 'El Quiche'),
(1288, 1311, 2, 'Escuintla'),
(1289, 1312, 2, 'Guatemala'),
(1290, 1313, 2, 'Huehuetenango'),
(1291, 1314, 2, 'Izabal'),
(1292, 1315, 2, 'Jalapa'),
(1293, 1316, 2, 'Jutiapa'),
(1294, 1317, 2, 'Quetzaltenango'),
(1295, 1318, 2, 'Retalhuleu'),
(1296, 1319, 2, 'Sacatepequez'),
(1297, 1320, 2, 'San Marcos'),
(1298, 1321, 2, 'Santa Rosa'),
(1299, 1322, 2, 'Solola'),
(1300, 1323, 2, 'Suchitepequez'),
(1301, 1324, 2, 'Totonicapan'),
(1302, 1325, 2, 'Zacapa'),
(1303, 1326, 2, 'Conakry'),
(1304, 1327, 2, 'Beyla'),
(1305, 1328, 2, 'Boffa'),
(1306, 1329, 2, 'Boke'),
(1307, 1330, 2, 'Coyah'),
(1308, 1331, 2, 'Dabola'),
(1309, 1332, 2, 'Dalaba'),
(1310, 1333, 2, 'Dinguiraye'),
(1311, 1334, 2, 'Dubreka'),
(1312, 1335, 2, 'Faranah'),
(1313, 1336, 2, 'Forecariah'),
(1314, 1337, 2, 'Fria'),
(1315, 1338, 2, 'Gaoual'),
(1316, 1339, 2, 'Gueckedou'),
(1317, 1340, 2, 'Kankan'),
(1318, 1341, 2, 'Kerouane'),
(1319, 1342, 2, 'Kindia'),
(1320, 1343, 2, 'Kissidougou'),
(1321, 1344, 2, 'Koubia'),
(1322, 1345, 2, 'Koundara'),
(1323, 1346, 2, 'Kouroussa'),
(1324, 1347, 2, 'Labe'),
(1325, 1348, 2, 'Lelouma'),
(1326, 1349, 2, 'Lola'),
(1327, 1350, 2, 'Macenta'),
(1328, 1351, 2, 'Mali'),
(1329, 1352, 2, 'Mamou'),
(1330, 1353, 2, 'Mandiana'),
(1331, 1354, 2, 'Nzerekore'),
(1332, 1355, 2, 'Pita'),
(1333, 1356, 2, 'Siguiri'),
(1334, 1357, 2, 'Telimele'),
(1335, 1358, 2, 'Tougue'),
(1336, 1359, 2, 'Yomou'),
(1337, 1360, 2, 'Bafata Region'),
(1338, 1361, 2, 'Biombo Region'),
(1339, 1362, 2, 'Bissau Region'),
(1340, 1363, 2, 'Bolama Region'),
(1341, 1364, 2, 'Cacheu Region'),
(1342, 1365, 2, 'Gabu Region'),
(1343, 1366, 2, 'Oio Region'),
(1344, 1367, 2, 'Quinara Region'),
(1345, 1368, 2, 'Tombali Region'),
(1346, 1369, 2, 'Barima-Waini'),
(1347, 1370, 2, 'Cuyuni-Mazaruni'),
(1348, 1371, 2, 'Demerara-Mahaica'),
(1349, 1372, 2, 'East Berbice-Corentyne'),
(1350, 1373, 2, 'Essequibo Islands-West Demerara'),
(1351, 1374, 2, 'Mahaica-Berbice'),
(1352, 1375, 2, 'Pomeroon-Supenaam'),
(1353, 1376, 2, 'Potaro-Siparuni'),
(1354, 1377, 2, 'Upper Demerara-Berbice'),
(1355, 1378, 2, 'Upper Takutu-Upper Essequibo'),
(1356, 1379, 2, 'Artibonite'),
(1357, 1380, 2, 'Centre'),
(1358, 1381, 2, 'Grand\'Anse'),
(1359, 1382, 2, 'Nord'),
(1360, 1383, 2, 'Nord-Est'),
(1361, 1384, 2, 'Nord-Ouest'),
(1362, 1385, 2, 'Ouest'),
(1363, 1386, 2, 'Sud'),
(1364, 1387, 2, 'Sud-Est'),
(1365, 1388, 2, 'Flat Island'),
(1366, 1389, 2, 'McDonald Island'),
(1367, 1390, 2, 'Shag Island'),
(1368, 1391, 2, 'Heard Island'),
(1369, 1392, 2, 'Atlantida'),
(1370, 1393, 2, 'Choluteca'),
(1371, 1394, 2, 'Colon'),
(1372, 1395, 2, 'Comayagua'),
(1373, 1396, 2, 'Copan'),
(1374, 1397, 2, 'Cortes'),
(1375, 1398, 2, 'El Paraiso'),
(1376, 1399, 2, 'Francisco Morazan'),
(1377, 1400, 2, 'Gracias a Dios'),
(1378, 1401, 2, 'Intibuca'),
(1379, 1402, 2, 'Islas de la Bahia (Bay Islands)'),
(1380, 1403, 2, 'La Paz'),
(1381, 1404, 2, 'Lempira'),
(1382, 1405, 2, 'Ocotepeque'),
(1383, 1406, 2, 'Olancho'),
(1384, 1407, 2, 'Santa Barbara'),
(1385, 1408, 2, 'Valle'),
(1386, 1409, 2, 'Yoro'),
(1387, 1410, 2, 'Central and Western Hong Kong Island'),
(1388, 1411, 2, 'Eastern Hong Kong Island'),
(1389, 1412, 2, 'Southern Hong Kong Island'),
(1390, 1413, 2, 'Wan Chai Hong Kong Island'),
(1391, 1414, 2, 'Kowloon City Kowloon'),
(1392, 1415, 2, 'Kwun Tong Kowloon'),
(1393, 1416, 2, 'Sham Shui Po Kowloon'),
(1394, 1417, 2, 'Wong Tai Sin Kowloon'),
(1395, 1418, 2, 'Yau Tsim Mong Kowloon'),
(1396, 1419, 2, 'Islands New Territories'),
(1397, 1420, 2, 'Kwai Tsing New Territories'),
(1398, 1421, 2, 'North New Territories'),
(1399, 1422, 2, 'Sai Kung New Territories'),
(1400, 1423, 2, 'Sha Tin New Territories'),
(1401, 1424, 2, 'Tai Po New Territories'),
(1402, 1425, 2, 'Tsuen Wan New Territories'),
(1403, 1426, 2, 'Tuen Mun New Territories'),
(1404, 1427, 2, 'Yuen Long New Territories'),
(1405, 1467, 2, 'Austurland'),
(1406, 1468, 2, 'Hofuoborgarsvaeoi'),
(1407, 1469, 2, 'Norourland eystra'),
(1408, 1470, 2, 'Norourland vestra'),
(1409, 1471, 2, 'Suourland'),
(1410, 1472, 2, 'Suournes'),
(1411, 1473, 2, 'Vestfiroir'),
(1412, 1474, 2, 'Vesturland'),
(1413, 1475, 2, 'Andaman and Nicobar Islands'),
(1414, 1476, 2, 'Andhra Pradesh'),
(1415, 1477, 2, 'Arunachal Pradesh'),
(1416, 1478, 2, 'Assam'),
(1417, 1479, 2, 'Bihar'),
(1418, 1480, 2, 'Chandigarh'),
(1419, 1481, 2, 'Dadra and Nagar Haveli'),
(1420, 1482, 2, 'Daman and Diu'),
(1421, 1483, 2, 'Delhi'),
(1422, 1484, 2, 'Goa'),
(1423, 1485, 2, 'Gujarat'),
(1424, 1486, 2, 'Haryana'),
(1425, 1487, 2, 'Himachal Pradesh'),
(1426, 1488, 2, 'Jammu and Kashmir'),
(1427, 1489, 2, 'Karnataka'),
(1428, 1490, 2, 'Kerala'),
(1429, 1491, 2, 'Lakshadweep Islands'),
(1430, 1492, 2, 'Madhya Pradesh'),
(1431, 1493, 2, 'Maharashtra'),
(1432, 1494, 2, 'Manipur'),
(1433, 1495, 2, 'Meghalaya'),
(1434, 1496, 2, 'Mizoram'),
(1435, 1497, 2, 'Nagaland'),
(1436, 1498, 2, 'Orissa'),
(1437, 1499, 2, 'Puducherry'),
(1438, 1500, 2, 'Punjab'),
(1439, 1501, 2, 'Rajasthan'),
(1440, 1502, 2, 'Sikkim'),
(1441, 1503, 2, 'Tamil Nadu'),
(1442, 1504, 2, 'Tripura'),
(1443, 1505, 2, 'Uttar Pradesh'),
(1444, 1506, 2, 'West Bengal'),
(1445, 1507, 2, 'Aceh'),
(1446, 1508, 2, 'Bali'),
(1447, 1509, 2, 'Banten'),
(1448, 1510, 2, 'Bengkulu'),
(1449, 1511, 2, 'BoDeTaBek'),
(1450, 1512, 2, 'Gorontalo'),
(1451, 1513, 2, 'Jakarta Raya'),
(1452, 1514, 2, 'Jambi'),
(1453, 1515, 2, 'Jawa Barat'),
(1454, 1516, 2, 'Jawa Tengah'),
(1455, 1517, 2, 'Jawa Timur'),
(1456, 1518, 2, 'Kalimantan Barat'),
(1457, 1519, 2, 'Kalimantan Selatan'),
(1458, 1520, 2, 'Kalimantan Tengah'),
(1459, 1521, 2, 'Kalimantan Timur'),
(1460, 1522, 2, 'Kepulauan Bangka Belitung'),
(1461, 1523, 2, 'Lampung'),
(1462, 1524, 2, 'Maluku'),
(1463, 1525, 2, 'Maluku Utara'),
(1464, 1526, 2, 'Nusa Tenggara Barat'),
(1465, 1527, 2, 'Nusa Tenggara Timur'),
(1466, 1528, 2, 'Papua'),
(1467, 1529, 2, 'Riau'),
(1468, 1530, 2, 'Sulawesi Selatan'),
(1469, 1531, 2, 'Sulawesi Tengah'),
(1470, 1532, 2, 'Sulawesi Tenggara'),
(1471, 1533, 2, 'Sulawesi Utara'),
(1472, 1534, 2, 'Sumatera Barat'),
(1473, 1535, 2, 'Sumatera Selatan'),
(1474, 1536, 2, 'Sumatera Utara'),
(1475, 1537, 2, 'Yogyakarta'),
(1476, 1538, 2, 'Tehran'),
(1477, 1539, 2, 'Qom'),
(1478, 1540, 2, 'Markazi'),
(1479, 1541, 2, 'Qazvin'),
(1480, 1542, 2, 'Gilan'),
(1481, 1543, 2, 'Ardabil'),
(1482, 1544, 2, 'Zanjan'),
(1483, 1545, 2, 'East Azarbaijan'),
(1484, 1546, 2, 'West Azarbaijan'),
(1485, 1547, 2, 'Kurdistan'),
(1486, 1548, 2, 'Hamadan'),
(1487, 1549, 2, 'Kermanshah'),
(1488, 1550, 2, 'Ilam'),
(1489, 1551, 2, 'Lorestan'),
(1490, 1552, 2, 'Khuzestan'),
(1491, 1553, 2, 'Chahar Mahaal and Bakhtiari'),
(1492, 1554, 2, 'Kohkiluyeh and Buyer Ahmad'),
(1493, 1555, 2, 'Bushehr'),
(1494, 1556, 2, 'Fars'),
(1495, 1557, 2, 'Hormozgan'),
(1496, 1558, 2, 'Sistan and Baluchistan'),
(1497, 1559, 2, 'Kerman'),
(1498, 1560, 2, 'Yazd'),
(1499, 1561, 2, 'Esfahan'),
(1500, 1562, 2, 'Semnan'),
(1501, 1563, 2, 'Mazandaran'),
(1502, 1564, 2, 'Golestan'),
(1503, 1565, 2, 'North Khorasan'),
(1504, 1566, 2, 'Razavi Khorasan'),
(1505, 1567, 2, 'South Khorasan'),
(1506, 1568, 2, 'Baghdad'),
(1507, 1569, 2, 'Salah ad Din'),
(1508, 1570, 2, 'Diyala'),
(1509, 1571, 2, 'Wasit'),
(1510, 1572, 2, 'Maysan'),
(1511, 1573, 2, 'Al Basrah'),
(1512, 1574, 2, 'Dhi Qar'),
(1513, 1575, 2, 'Al Muthanna'),
(1514, 1576, 2, 'Al Qadisyah'),
(1515, 1577, 2, 'Babil'),
(1516, 1578, 2, 'Al Karbala'),
(1517, 1579, 2, 'An Najaf'),
(1518, 1580, 2, 'Al Anbar'),
(1519, 1581, 2, 'Ninawa'),
(1520, 1582, 2, 'Dahuk'),
(1521, 1583, 2, 'Arbil'),
(1522, 1584, 2, 'At Ta\'mim'),
(1523, 1585, 2, 'As Sulaymaniyah'),
(1524, 1586, 2, 'Carlow'),
(1525, 1587, 2, 'Cavan'),
(1526, 1588, 2, 'Clare'),
(1527, 1589, 2, 'Cork'),
(1528, 1590, 2, 'Donegal'),
(1529, 1591, 2, 'Dublin'),
(1530, 1592, 2, 'Galway'),
(1531, 1593, 2, 'Kerry'),
(1532, 1594, 2, 'Kildare'),
(1533, 1595, 2, 'Kilkenny'),
(1534, 1596, 2, 'Laois'),
(1535, 1597, 2, 'Leitrim'),
(1536, 1598, 2, 'Limerick'),
(1537, 1599, 2, 'Longford'),
(1538, 1600, 2, 'Louth'),
(1539, 1601, 2, 'Mayo'),
(1540, 1602, 2, 'Meath'),
(1541, 1603, 2, 'Monaghan'),
(1542, 1604, 2, 'Offaly'),
(1543, 1605, 2, 'Roscommon'),
(1544, 1606, 2, 'Sligo'),
(1545, 1607, 2, 'Tipperary'),
(1546, 1608, 2, 'Waterford'),
(1547, 1609, 2, 'Westmeath'),
(1548, 1610, 2, 'Wexford'),
(1549, 1611, 2, 'Wicklow'),
(1550, 1612, 2, 'Be\'er Sheva'),
(1551, 1613, 2, 'Bika\'at Hayarden'),
(1552, 1614, 2, 'Eilat and Arava'),
(1553, 1615, 2, 'Galil'),
(1554, 1616, 2, 'Haifa'),
(1555, 1617, 2, 'Jehuda Mountains'),
(1556, 1618, 2, 'Jerusalem'),
(1557, 1619, 2, 'Negev'),
(1558, 1620, 2, 'Semaria'),
(1559, 1621, 2, 'Sharon'),
(1560, 1622, 2, 'Tel Aviv (Gosh Dan)'),
(1561, 3860, 2, 'Caltanissetta'),
(1562, 3842, 2, 'Agrigento'),
(1563, 3843, 2, 'Alessandria'),
(1564, 3844, 2, 'Ancona'),
(1565, 3845, 2, 'Aosta'),
(1566, 3846, 2, 'Arezzo'),
(1567, 3847, 2, 'Ascoli Piceno'),
(1568, 3848, 2, 'Asti'),
(1569, 3849, 2, 'Avellino'),
(1570, 3850, 2, 'Bari'),
(1571, 3851, 2, 'Belluno'),
(1572, 3852, 2, 'Benevento'),
(1573, 3853, 2, 'Bergamo'),
(1574, 3854, 2, 'Biella'),
(1575, 3855, 2, 'Bologna'),
(1576, 3856, 2, 'Bolzano'),
(1577, 3857, 2, 'Brescia'),
(1578, 3858, 2, 'Brindisi'),
(1579, 3859, 2, 'Cagliari'),
(1580, 1643, 2, 'Clarendon Parish'),
(1581, 1644, 2, 'Hanover Parish'),
(1582, 1645, 2, 'Kingston Parish'),
(1583, 1646, 2, 'Manchester Parish'),
(1584, 1647, 2, 'Portland Parish'),
(1585, 1648, 2, 'Saint Andrew Parish'),
(1586, 1649, 2, 'Saint Ann Parish'),
(1587, 1650, 2, 'Saint Catherine Parish'),
(1588, 1651, 2, 'Saint Elizabeth Parish'),
(1589, 1652, 2, 'Saint James Parish'),
(1590, 1653, 2, 'Saint Mary Parish'),
(1591, 1654, 2, 'Saint Thomas Parish'),
(1592, 1655, 2, 'Trelawny Parish'),
(1593, 1656, 2, 'Westmoreland Parish'),
(1594, 1657, 2, 'Aichi'),
(1595, 1658, 2, 'Akita'),
(1596, 1659, 2, 'Aomori'),
(1597, 1660, 2, 'Chiba'),
(1598, 1661, 2, 'Ehime'),
(1599, 1662, 2, 'Fukui'),
(1600, 1663, 2, 'Fukuoka'),
(1601, 1664, 2, 'Fukushima'),
(1602, 1665, 2, 'Gifu'),
(1603, 1666, 2, 'Gumma'),
(1604, 1667, 2, 'Hiroshima'),
(1605, 1668, 2, 'Hokkaido'),
(1606, 1669, 2, 'Hyogo'),
(1607, 1670, 2, 'Ibaraki'),
(1608, 1671, 2, 'Ishikawa'),
(1609, 1672, 2, 'Iwate'),
(1610, 1673, 2, 'Kagawa'),
(1611, 1674, 2, 'Kagoshima'),
(1612, 1675, 2, 'Kanagawa'),
(1613, 1676, 2, 'Kochi'),
(1614, 1677, 2, 'Kumamoto'),
(1615, 1678, 2, 'Kyoto'),
(1616, 1679, 2, 'Mie'),
(1617, 1680, 2, 'Miyagi'),
(1618, 1681, 2, 'Miyazaki'),
(1619, 1682, 2, 'Nagano'),
(1620, 1683, 2, 'Nagasaki'),
(1621, 1684, 2, 'Nara'),
(1622, 1685, 2, 'Niigata'),
(1623, 1686, 2, 'Oita'),
(1624, 1687, 2, 'Okayama'),
(1625, 1688, 2, 'Okinawa'),
(1626, 1689, 2, 'Osaka'),
(1627, 1690, 2, 'Saga'),
(1628, 1691, 2, 'Saitama'),
(1629, 1692, 2, 'Shiga'),
(1630, 1693, 2, 'Shimane'),
(1631, 1694, 2, 'Shizuoka'),
(1632, 1695, 2, 'Tochigi'),
(1633, 1696, 2, 'Tokushima'),
(1634, 1697, 2, 'Tokyo'),
(1635, 1698, 2, 'Tottori'),
(1636, 1699, 2, 'Toyama'),
(1637, 1700, 2, 'Wakayama'),
(1638, 1701, 2, 'Yamagata'),
(1639, 1702, 2, 'Yamaguchi'),
(1640, 1703, 2, 'Yamanashi'),
(1641, 1704, 2, '\'Amman'),
(1642, 1705, 2, 'Ajlun'),
(1643, 1706, 2, 'Al \'Aqabah'),
(1644, 1707, 2, 'Al Balqa\''),
(1645, 1708, 2, 'Al Karak'),
(1646, 1709, 2, 'Al Mafraq'),
(1647, 1710, 2, 'At Tafilah'),
(1648, 1711, 2, 'Az Zarqa\''),
(1649, 1712, 2, 'Irbid'),
(1650, 1713, 2, 'Jarash'),
(1651, 1714, 2, 'Ma\'an'),
(1652, 1715, 2, 'Madaba'),
(1653, 1716, 2, 'Almaty'),
(1654, 1717, 2, 'Almaty City'),
(1655, 1718, 2, 'Aqmola'),
(1656, 1719, 2, 'Aqtobe'),
(1657, 1720, 2, 'Astana City'),
(1658, 1721, 2, 'Atyrau'),
(1659, 1722, 2, 'Batys Qazaqstan'),
(1660, 1723, 2, 'Bayqongyr City'),
(1661, 1724, 2, 'Mangghystau'),
(1662, 1725, 2, 'Ongtustik Qazaqstan'),
(1663, 1726, 2, 'Pavlodar'),
(1664, 1727, 2, 'Qaraghandy'),
(1665, 1728, 2, 'Qostanay'),
(1666, 1729, 2, 'Qyzylorda'),
(1667, 1730, 2, 'Shyghys Qazaqstan'),
(1668, 1731, 2, 'Soltustik Qazaqstan'),
(1669, 1732, 2, 'Zhambyl'),
(1670, 1733, 2, 'Central'),
(1671, 1734, 2, 'Coast'),
(1672, 1735, 2, 'Eastern'),
(1673, 1736, 2, 'Nairobi Area'),
(1674, 1737, 2, 'North Eastern'),
(1675, 1738, 2, 'Nyanza'),
(1676, 1739, 2, 'Rift Valley'),
(1677, 1740, 2, 'Western'),
(1678, 1741, 2, 'Abaiang'),
(1679, 1742, 2, 'Abemama'),
(1680, 1743, 2, 'Aranuka'),
(1681, 1744, 2, 'Arorae'),
(1682, 1745, 2, 'Banaba'),
(1683, 1746, 2, 'Beru'),
(1684, 1747, 2, 'Butaritari'),
(1685, 1748, 2, 'Kanton'),
(1686, 1749, 2, 'Kiritimati'),
(1687, 1750, 2, 'Kuria'),
(1688, 1751, 2, 'Maiana'),
(1689, 1752, 2, 'Makin'),
(1690, 1753, 2, 'Marakei'),
(1691, 1754, 2, 'Nikunau'),
(1692, 1755, 2, 'Nonouti'),
(1693, 1756, 2, 'Onotoa'),
(1694, 1757, 2, 'Tabiteuea'),
(1695, 1758, 2, 'Tabuaeran'),
(1696, 1759, 2, 'Tamana'),
(1697, 1760, 2, 'Tarawa'),
(1698, 1761, 2, 'Teraina'),
(1699, 1762, 2, 'Chagang-do'),
(1700, 1763, 2, 'Hamgyong-bukto'),
(1701, 1764, 2, 'Hamgyong-namdo'),
(1702, 1765, 2, 'Hwanghae-bukto'),
(1703, 1766, 2, 'Hwanghae-namdo'),
(1704, 1767, 2, 'Kangwon-do'),
(1705, 1768, 2, 'P\'yongan-bukto'),
(1706, 1769, 2, 'P\'yongan-namdo'),
(1707, 1770, 2, 'Ryanggang-do (Yanggang-do)'),
(1708, 1771, 2, 'Rason Directly Governed City'),
(1709, 1772, 2, 'P\'yongyang Special City'),
(1710, 1773, 2, 'Ch\'ungch\'ong-bukto'),
(1711, 1774, 2, 'Ch\'ungch\'ong-namdo'),
(1712, 1775, 2, 'Cheju-do'),
(1713, 1776, 2, 'Cholla-bukto'),
(1714, 1777, 2, 'Cholla-namdo'),
(1715, 1778, 2, 'Inch\'on-gwangyoksi'),
(1716, 1779, 2, 'Kangwon-do'),
(1717, 1780, 2, 'Kwangju-gwangyoksi'),
(1718, 1781, 2, 'Kyonggi-do'),
(1719, 1782, 2, 'Kyongsang-bukto'),
(1720, 1783, 2, 'Kyongsang-namdo'),
(1721, 1784, 2, 'Pusan-gwangyoksi'),
(1722, 1785, 2, 'Soul-t\'ukpyolsi'),
(1723, 1786, 2, 'Taegu-gwangyoksi'),
(1724, 1787, 2, 'Taejon-gwangyoksi'),
(1725, 1788, 2, 'Al \'Asimah'),
(1726, 1789, 2, 'Al Ahmadi'),
(1727, 1790, 2, 'Al Farwaniyah'),
(1728, 1791, 2, 'Al Jahra\''),
(1729, 1792, 2, 'Hawalli'),
(1730, 1793, 2, 'Bishkek'),
(1731, 1794, 2, 'Batken'),
(1732, 1795, 2, 'Chu'),
(1733, 1796, 2, 'Jalal-Abad'),
(1734, 1797, 2, 'Naryn'),
(1735, 1798, 2, 'Osh'),
(1736, 1799, 2, 'Talas'),
(1737, 1800, 2, 'Ysyk-Kol'),
(1738, 1801, 2, 'Vientiane'),
(1739, 1802, 2, 'Attapu'),
(1740, 1803, 2, 'Bokeo'),
(1741, 1804, 2, 'Bolikhamxai'),
(1742, 1805, 2, 'Champasak'),
(1743, 1806, 2, 'Houaphan'),
(1744, 1807, 2, 'Khammouan'),
(1745, 1808, 2, 'Louang Namtha'),
(1746, 1809, 2, 'Louangphabang'),
(1747, 1810, 2, 'Oudomxai'),
(1748, 1811, 2, 'Phongsali'),
(1749, 1812, 2, 'Salavan'),
(1750, 1813, 2, 'Savannakhet'),
(1751, 1814, 2, 'Vientiane'),
(1752, 1815, 2, 'Xaignabouli'),
(1753, 1816, 2, 'Xekong'),
(1754, 1817, 2, 'Xiangkhoang'),
(1755, 1818, 2, 'Xaisomboun'),
(1756, 1852, 2, 'Berea'),
(1757, 1853, 2, 'Butha-Buthe'),
(1758, 1854, 2, 'Leribe'),
(1759, 1855, 2, 'Mafeteng'),
(1760, 1856, 2, 'Maseru'),
(1761, 1857, 2, 'Mohale\'s Hoek'),
(1762, 1858, 2, 'Mokhotlong'),
(1763, 1859, 2, 'Qacha\'s Nek'),
(1764, 1860, 2, 'Quthing'),
(1765, 1861, 2, 'Thaba-Tseka'),
(1766, 1862, 2, 'Bomi'),
(1767, 1863, 2, 'Bong'),
(1768, 1864, 2, 'Grand Bassa'),
(1769, 1865, 2, 'Grand Cape Mount'),
(1770, 1866, 2, 'Grand Gedeh'),
(1771, 1867, 2, 'Grand Kru'),
(1772, 1868, 2, 'Lofa'),
(1773, 1869, 2, 'Margibi'),
(1774, 1870, 2, 'Maryland'),
(1775, 1871, 2, 'Montserrado'),
(1776, 1872, 2, 'Nimba'),
(1777, 1873, 2, 'River Cess'),
(1778, 1874, 2, 'Sinoe'),
(1779, 1875, 2, 'Ajdabiya'),
(1780, 1876, 2, 'Al \'Aziziyah'),
(1781, 1877, 2, 'Al Fatih'),
(1782, 1878, 2, 'Al Jabal al Akhdar'),
(1783, 1879, 2, 'Al Jufrah'),
(1784, 1880, 2, 'Al Khums'),
(1785, 1881, 2, 'Al Kufrah'),
(1786, 1882, 2, 'An Nuqat al Khams'),
(1787, 1883, 2, 'Ash Shati\''),
(1788, 1884, 2, 'Awbari'),
(1789, 1885, 2, 'Az Zawiyah'),
(1790, 1886, 2, 'Banghazi'),
(1791, 1887, 2, 'Darnah'),
(1792, 1888, 2, 'Ghadamis'),
(1793, 1889, 2, 'Gharyan'),
(1794, 1890, 2, 'Misratah'),
(1795, 1891, 2, 'Murzuq'),
(1796, 1892, 2, 'Sabha'),
(1797, 1893, 2, 'Sawfajjin'),
(1798, 1894, 2, 'Surt'),
(1799, 1895, 2, 'Tarabulus (Tripoli)'),
(1800, 1896, 2, 'Tarhunah'),
(1801, 1897, 2, 'Tubruq'),
(1802, 1898, 2, 'Yafran'),
(1803, 1899, 2, 'Zlitan'),
(1804, 1900, 2, 'Vaduz'),
(1805, 1901, 2, 'Schaan'),
(1806, 1902, 2, 'Balzers'),
(1807, 1903, 2, 'Triesen');
INSERT INTO `oc_zone_description` (`zone_description_id`, `zone_id`, `language_id`, `name`) VALUES
(1808, 1904, 2, 'Eschen'),
(1809, 1905, 2, 'Mauren'),
(1810, 1906, 2, 'Triesenberg'),
(1811, 1907, 2, 'Ruggell'),
(1812, 1908, 2, 'Gamprin'),
(1813, 1909, 2, 'Schellenberg'),
(1814, 1910, 2, 'Planken'),
(1815, 1911, 2, 'Alytus'),
(1816, 1912, 2, 'Kaunas'),
(1817, 1913, 2, 'Klaipeda'),
(1818, 1914, 2, 'Marijampole'),
(1819, 1915, 2, 'Panevezys'),
(1820, 1916, 2, 'Siauliai'),
(1821, 1917, 2, 'Taurage'),
(1822, 1918, 2, 'Telsiai'),
(1823, 1919, 2, 'Utena'),
(1824, 1920, 2, 'Vilnius'),
(1825, 1921, 2, 'Diekirch'),
(1826, 1922, 2, 'Clervaux'),
(1827, 1923, 2, 'Redange'),
(1828, 1924, 2, 'Vianden'),
(1829, 1925, 2, 'Wiltz'),
(1830, 1926, 2, 'Grevenmacher'),
(1831, 1927, 2, 'Echternach'),
(1832, 1928, 2, 'Remich'),
(1833, 1929, 2, 'Luxembourg'),
(1834, 1930, 2, 'Capellen'),
(1835, 1931, 2, 'Esch-sur-Alzette'),
(1836, 1932, 2, 'Mersch'),
(1837, 1933, 2, 'Our Lady Fatima Parish'),
(1838, 1934, 2, 'St. Anthony Parish'),
(1839, 1935, 2, 'St. Lazarus Parish'),
(1840, 1936, 2, 'Cathedral Parish'),
(1841, 1937, 2, 'St. Lawrence Parish'),
(1842, 1938, 2, 'Antananarivo'),
(1843, 1939, 2, 'Antsiranana'),
(1844, 1940, 2, 'Fianarantsoa'),
(1845, 1941, 2, 'Mahajanga'),
(1846, 1942, 2, 'Toamasina'),
(1847, 1943, 2, 'Toliara'),
(1848, 1944, 2, 'Balaka'),
(1849, 1945, 2, 'Blantyre'),
(1850, 1946, 2, 'Chikwawa'),
(1851, 1947, 2, 'Chiradzulu'),
(1852, 1948, 2, 'Chitipa'),
(1853, 1949, 2, 'Dedza'),
(1854, 1950, 2, 'Dowa'),
(1855, 1951, 2, 'Karonga'),
(1856, 1952, 2, 'Kasungu'),
(1857, 1953, 2, 'Likoma'),
(1858, 1954, 2, 'Lilongwe'),
(1859, 1955, 2, 'Machinga'),
(1860, 1956, 2, 'Mangochi'),
(1861, 1957, 2, 'Mchinji'),
(1862, 1958, 2, 'Mulanje'),
(1863, 1959, 2, 'Mwanza'),
(1864, 1960, 2, 'Mzimba'),
(1865, 1961, 2, 'Ntcheu'),
(1866, 1962, 2, 'Nkhata Bay'),
(1867, 1963, 2, 'Nkhotakota'),
(1868, 1964, 2, 'Nsanje'),
(1869, 1965, 2, 'Ntchisi'),
(1870, 1966, 2, 'Phalombe'),
(1871, 1967, 2, 'Rumphi'),
(1872, 1968, 2, 'Salima'),
(1873, 1969, 2, 'Thyolo'),
(1874, 1970, 2, 'Zomba'),
(1875, 1971, 2, 'Johor'),
(1876, 1972, 2, 'Kedah'),
(1877, 1973, 2, 'Kelantan'),
(1878, 1974, 2, 'Labuan'),
(1879, 1975, 2, 'Melaka'),
(1880, 1976, 2, 'Negeri Sembilan'),
(1881, 1977, 2, 'Pahang'),
(1882, 1978, 2, 'Perak'),
(1883, 1979, 2, 'Perlis'),
(1884, 1980, 2, 'Pulau Pinang'),
(1885, 1981, 2, 'Sabah'),
(1886, 1982, 2, 'Sarawak'),
(1887, 1983, 2, 'Selangor'),
(1888, 1984, 2, 'Terengganu'),
(1889, 1985, 2, 'Kuala Lumpur'),
(1890, 4035, 2, 'Putrajaya'),
(1891, 1986, 2, 'Thiladhunmathi Uthuru'),
(1892, 1987, 2, 'Thiladhunmathi Dhekunu'),
(1893, 1988, 2, 'Miladhunmadulu Uthuru'),
(1894, 1989, 2, 'Miladhunmadulu Dhekunu'),
(1895, 1990, 2, 'Maalhosmadulu Uthuru'),
(1896, 1991, 2, 'Maalhosmadulu Dhekunu'),
(1897, 1992, 2, 'Faadhippolhu'),
(1898, 1993, 2, 'Male Atoll'),
(1899, 1994, 2, 'Ari Atoll Uthuru'),
(1900, 1995, 2, 'Ari Atoll Dheknu'),
(1901, 1996, 2, 'Felidhe Atoll'),
(1902, 1997, 2, 'Mulaku Atoll'),
(1903, 1998, 2, 'Nilandhe Atoll Uthuru'),
(1904, 1999, 2, 'Nilandhe Atoll Dhekunu'),
(1905, 2000, 2, 'Kolhumadulu'),
(1906, 2001, 2, 'Hadhdhunmathi'),
(1907, 2002, 2, 'Huvadhu Atoll Uthuru'),
(1908, 2003, 2, 'Huvadhu Atoll Dhekunu'),
(1909, 2004, 2, 'Fua Mulaku'),
(1910, 2005, 2, 'Addu'),
(1911, 2006, 2, 'Gao'),
(1912, 2007, 2, 'Kayes'),
(1913, 2008, 2, 'Kidal'),
(1914, 2009, 2, 'Koulikoro'),
(1915, 2010, 2, 'Mopti'),
(1916, 2011, 2, 'Segou'),
(1917, 2012, 2, 'Sikasso'),
(1918, 2013, 2, 'Tombouctou'),
(1919, 2014, 2, 'Bamako Capital District'),
(1920, 2015, 2, 'Attard'),
(1921, 2016, 2, 'Balzan'),
(1922, 2017, 2, 'Birgu'),
(1923, 2018, 2, 'Birkirkara'),
(1924, 2019, 2, 'Birzebbuga'),
(1925, 2020, 2, 'Bormla'),
(1926, 2021, 2, 'Dingli'),
(1927, 2022, 2, 'Fgura'),
(1928, 2023, 2, 'Floriana'),
(1929, 2024, 2, 'Gudja'),
(1930, 2025, 2, 'Gzira'),
(1931, 2026, 2, 'Gargur'),
(1932, 2027, 2, 'Gaxaq'),
(1933, 2028, 2, 'Hamrun'),
(1934, 2029, 2, 'Iklin'),
(1935, 2030, 2, 'Isla'),
(1936, 2031, 2, 'Kalkara'),
(1937, 2032, 2, 'Kirkop'),
(1938, 2033, 2, 'Lija'),
(1939, 2034, 2, 'Luqa'),
(1940, 2035, 2, 'Marsa'),
(1941, 2036, 2, 'Marsaskala'),
(1942, 2037, 2, 'Marsaxlokk'),
(1943, 2038, 2, 'Mdina'),
(1944, 2039, 2, 'Melliea'),
(1945, 2040, 2, 'Mgarr'),
(1946, 2041, 2, 'Mosta'),
(1947, 2042, 2, 'Mqabba'),
(1948, 2043, 2, 'Msida'),
(1949, 2044, 2, 'Mtarfa'),
(1950, 2045, 2, 'Naxxar'),
(1951, 2046, 2, 'Paola'),
(1952, 2047, 2, 'Pembroke'),
(1953, 2048, 2, 'Pieta'),
(1954, 2049, 2, 'Qormi'),
(1955, 2050, 2, 'Qrendi'),
(1956, 2051, 2, 'Rabat'),
(1957, 2052, 2, 'Safi'),
(1958, 2053, 2, 'San Giljan'),
(1959, 2054, 2, 'Santa Lucija'),
(1960, 2055, 2, 'San Pawl il-Bahar'),
(1961, 2056, 2, 'San Gwann'),
(1962, 2057, 2, 'Santa Venera'),
(1963, 2058, 2, 'Siggiewi'),
(1964, 2059, 2, 'Sliema'),
(1965, 2060, 2, 'Swieqi'),
(1966, 2061, 2, 'Ta Xbiex'),
(1967, 2062, 2, 'Tarxien'),
(1968, 2063, 2, 'Valletta'),
(1969, 2064, 2, 'Xgajra'),
(1970, 2065, 2, 'Zabbar'),
(1971, 2066, 2, 'Zebbug'),
(1972, 2067, 2, 'Zejtun'),
(1973, 2068, 2, 'Zurrieq'),
(1974, 2069, 2, 'Fontana'),
(1975, 2070, 2, 'Ghajnsielem'),
(1976, 2071, 2, 'Gharb'),
(1977, 2072, 2, 'Ghasri'),
(1978, 2073, 2, 'Kercem'),
(1979, 2074, 2, 'Munxar'),
(1980, 2075, 2, 'Nadur'),
(1981, 2076, 2, 'Qala'),
(1982, 2077, 2, 'Victoria'),
(1983, 2078, 2, 'San Lawrenz'),
(1984, 2079, 2, 'Sannat'),
(1985, 2080, 2, 'Xagra'),
(1986, 2081, 2, 'Xewkija'),
(1987, 2082, 2, 'Zebbug'),
(1988, 2083, 2, 'Ailinginae'),
(1989, 2084, 2, 'Ailinglaplap'),
(1990, 2085, 2, 'Ailuk'),
(1991, 2086, 2, 'Arno'),
(1992, 2087, 2, 'Aur'),
(1993, 2088, 2, 'Bikar'),
(1994, 2089, 2, 'Bikini'),
(1995, 2090, 2, 'Bokak'),
(1996, 2091, 2, 'Ebon'),
(1997, 2092, 2, 'Enewetak'),
(1998, 2093, 2, 'Erikub'),
(1999, 2094, 2, 'Jabat'),
(2000, 2095, 2, 'Jaluit'),
(2001, 2096, 2, 'Jemo'),
(2002, 2097, 2, 'Kili'),
(2003, 2098, 2, 'Kwajalein'),
(2004, 2099, 2, 'Lae'),
(2005, 2100, 2, 'Lib'),
(2006, 2101, 2, 'Likiep'),
(2007, 2102, 2, 'Majuro'),
(2008, 2103, 2, 'Maloelap'),
(2009, 2104, 2, 'Mejit'),
(2010, 2105, 2, 'Mili'),
(2011, 2106, 2, 'Namorik'),
(2012, 2107, 2, 'Namu'),
(2013, 2108, 2, 'Rongelap'),
(2014, 2109, 2, 'Rongrik'),
(2015, 2110, 2, 'Toke'),
(2016, 2111, 2, 'Ujae'),
(2017, 2112, 2, 'Ujelang'),
(2018, 2113, 2, 'Utirik'),
(2019, 2114, 2, 'Wotho'),
(2020, 2115, 2, 'Wotje'),
(2021, 2116, 2, 'Adrar'),
(2022, 2117, 2, 'Assaba'),
(2023, 2118, 2, 'Brakna'),
(2024, 2119, 2, 'Dakhlet Nouadhibou'),
(2025, 2120, 2, 'Gorgol'),
(2026, 2121, 2, 'Guidimaka'),
(2027, 2122, 2, 'Hodh Ech Chargui'),
(2028, 2123, 2, 'Hodh El Gharbi'),
(2029, 2124, 2, 'Inchiri'),
(2030, 2125, 2, 'Tagant'),
(2031, 2126, 2, 'Tiris Zemmour'),
(2032, 2127, 2, 'Trarza'),
(2033, 2128, 2, 'Nouakchott'),
(2034, 2129, 2, 'Beau Bassin-Rose Hill'),
(2035, 2130, 2, 'Curepipe'),
(2036, 2131, 2, 'Port Louis'),
(2037, 2132, 2, 'Quatre Bornes'),
(2038, 2133, 2, 'Vacoas-Phoenix'),
(2039, 2134, 2, 'Agalega Islands'),
(2040, 2135, 2, 'Cargados Carajos Shoals (Saint Brandon Islands)'),
(2041, 2136, 2, 'Rodrigues'),
(2042, 2137, 2, 'Black River'),
(2043, 2138, 2, 'Flacq'),
(2044, 2139, 2, 'Grand Port'),
(2045, 2140, 2, 'Moka'),
(2046, 2141, 2, 'Pamplemousses'),
(2047, 2142, 2, 'Plaines Wilhems'),
(2048, 2143, 2, 'Port Louis'),
(2049, 2144, 2, 'Riviere du Rempart'),
(2050, 2145, 2, 'Savanne'),
(2051, 2146, 2, 'Baja California Norte'),
(2052, 2147, 2, 'Baja California Sur'),
(2053, 2148, 2, 'Campeche'),
(2054, 2149, 2, 'Chiapas'),
(2055, 2150, 2, 'Chihuahua'),
(2056, 2151, 2, 'Coahuila de Zaragoza'),
(2057, 2152, 2, 'Colima'),
(2058, 2153, 2, 'Distrito Federal'),
(2059, 2154, 2, 'Durango'),
(2060, 2155, 2, 'Guanajuato'),
(2061, 2156, 2, 'Guerrero'),
(2062, 2157, 2, 'Hidalgo'),
(2063, 2158, 2, 'Jalisco'),
(2064, 2159, 2, 'Mexico'),
(2065, 2160, 2, 'Michoacan de Ocampo'),
(2066, 2161, 2, 'Morelos'),
(2067, 2162, 2, 'Nayarit'),
(2068, 2163, 2, 'Nuevo Leon'),
(2069, 2164, 2, 'Oaxaca'),
(2070, 2165, 2, 'Puebla'),
(2071, 2166, 2, 'Queretaro de Arteaga'),
(2072, 2167, 2, 'Quintana Roo'),
(2073, 2168, 2, 'San Luis Potosi'),
(2074, 2169, 2, 'Sinaloa'),
(2075, 2170, 2, 'Sonora'),
(2076, 2171, 2, 'Tabasco'),
(2077, 2172, 2, 'Tamaulipas'),
(2078, 2173, 2, 'Tlaxcala'),
(2079, 2174, 2, 'Veracruz-Llave'),
(2080, 2175, 2, 'Yucatan'),
(2081, 2176, 2, 'Zacatecas'),
(2082, 2177, 2, 'Chuuk'),
(2083, 2178, 2, 'Kosrae'),
(2084, 2179, 2, 'Pohnpei'),
(2085, 2180, 2, 'Yap'),
(2086, 2181, 2, 'Gagauzia'),
(2087, 2182, 2, 'Chisinau'),
(2088, 2183, 2, 'Balti'),
(2089, 2184, 2, 'Cahul'),
(2090, 2185, 2, 'Edinet'),
(2091, 2186, 2, 'Lapusna'),
(2092, 2187, 2, 'Orhei'),
(2093, 2188, 2, 'Soroca'),
(2094, 2189, 2, 'Tighina'),
(2095, 2190, 2, 'Ungheni'),
(2096, 2191, 2, 'St‚nga Nistrului'),
(2097, 2192, 2, 'Fontvieille'),
(2098, 2193, 2, 'La Condamine'),
(2099, 2194, 2, 'Monaco-Ville'),
(2100, 2195, 2, 'Monte-Carlo'),
(2101, 2196, 2, 'Ulanbaatar'),
(2102, 2197, 2, 'Orhon'),
(2103, 2198, 2, 'Darhan uul'),
(2104, 2199, 2, 'Hentiy'),
(2105, 2200, 2, 'Hovsgol'),
(2106, 2201, 2, 'Hovd'),
(2107, 2202, 2, 'Uvs'),
(2108, 2203, 2, 'Tov'),
(2109, 2204, 2, 'Selenge'),
(2110, 2205, 2, 'Suhbaatar'),
(2111, 2206, 2, 'Omnogovi'),
(2112, 2207, 2, 'Ovorhangay'),
(2113, 2208, 2, 'Dzavhan'),
(2114, 2209, 2, 'DundgovL'),
(2115, 2210, 2, 'Dornod'),
(2116, 2211, 2, 'Dornogov'),
(2117, 2212, 2, 'Govi-Sumber'),
(2118, 2213, 2, 'Govi-Altay'),
(2119, 2214, 2, 'Bulgan'),
(2120, 2215, 2, 'Bayanhongor'),
(2121, 2216, 2, 'Bayan-Olgiy'),
(2122, 2217, 2, 'Arhangay'),
(2123, 2218, 2, 'Saint Anthony'),
(2124, 2219, 2, 'Saint Georges'),
(2125, 2220, 2, 'Saint Peter'),
(2126, 2221, 2, 'Agadir'),
(2127, 2222, 2, 'Al Hoceima'),
(2128, 2223, 2, 'Azilal'),
(2129, 2224, 2, 'Beni Mellal'),
(2130, 2225, 2, 'Ben Slimane'),
(2131, 2226, 2, 'Boulemane'),
(2132, 2227, 2, 'Casablanca'),
(2133, 2228, 2, 'Chaouen'),
(2134, 2229, 2, 'El Jadida'),
(2135, 2230, 2, 'El Kelaa des Sraghna'),
(2136, 2231, 2, 'Er Rachidia'),
(2137, 2232, 2, 'Essaouira'),
(2138, 2233, 2, 'Fes'),
(2139, 2234, 2, 'Figuig'),
(2140, 2235, 2, 'Guelmim'),
(2141, 2236, 2, 'Ifrane'),
(2142, 2237, 2, 'Kenitra'),
(2143, 2238, 2, 'Khemisset'),
(2144, 2239, 2, 'Khenifra'),
(2145, 2240, 2, 'Khouribga'),
(2146, 2241, 2, 'Laayoune'),
(2147, 2242, 2, 'Larache'),
(2148, 2243, 2, 'Marrakech'),
(2149, 2244, 2, 'Meknes'),
(2150, 2245, 2, 'Nador'),
(2151, 2246, 2, 'Ouarzazate'),
(2152, 2247, 2, 'Oujda'),
(2153, 2248, 2, 'Rabat-Sale'),
(2154, 2249, 2, 'Safi'),
(2155, 2250, 2, 'Settat'),
(2156, 2251, 2, 'Sidi Kacem'),
(2157, 2252, 2, 'Tangier'),
(2158, 2253, 2, 'Tan-Tan'),
(2159, 2254, 2, 'Taounate'),
(2160, 2255, 2, 'Taroudannt'),
(2161, 2256, 2, 'Tata'),
(2162, 2257, 2, 'Taza'),
(2163, 2258, 2, 'Tetouan'),
(2164, 2259, 2, 'Tiznit'),
(2165, 2260, 2, 'Ad Dakhla'),
(2166, 2261, 2, 'Boujdour'),
(2167, 2262, 2, 'Es Smara'),
(2168, 2263, 2, 'Cabo Delgado'),
(2169, 2264, 2, 'Gaza'),
(2170, 2265, 2, 'Inhambane'),
(2171, 2266, 2, 'Manica'),
(2172, 2267, 2, 'Maputo (city)'),
(2173, 2268, 2, 'Maputo'),
(2174, 2269, 2, 'Nampula'),
(2175, 2270, 2, 'Niassa'),
(2176, 2271, 2, 'Sofala'),
(2177, 2272, 2, 'Tete'),
(2178, 2273, 2, 'Zambezia'),
(2179, 2274, 2, 'Ayeyarwady'),
(2180, 2275, 2, 'Bago'),
(2181, 2276, 2, 'Magway'),
(2182, 2277, 2, 'Mandalay'),
(2183, 2278, 2, 'Sagaing'),
(2184, 2279, 2, 'Tanintharyi'),
(2185, 2280, 2, 'Yangon'),
(2186, 2281, 2, 'Chin State'),
(2187, 2282, 2, 'Kachin State'),
(2188, 2283, 2, 'Kayah State'),
(2189, 2284, 2, 'Kayin State'),
(2190, 2285, 2, 'Mon State'),
(2191, 2286, 2, 'Rakhine State'),
(2192, 2287, 2, 'Shan State'),
(2193, 2288, 2, 'Caprivi'),
(2194, 2289, 2, 'Erongo'),
(2195, 2290, 2, 'Hardap'),
(2196, 2291, 2, 'Karas'),
(2197, 2292, 2, 'Kavango'),
(2198, 2293, 2, 'Khomas'),
(2199, 2294, 2, 'Kunene'),
(2200, 2295, 2, 'Ohangwena'),
(2201, 2296, 2, 'Omaheke'),
(2202, 2297, 2, 'Omusati'),
(2203, 2298, 2, 'Oshana'),
(2204, 2299, 2, 'Oshikoto'),
(2205, 2300, 2, 'Otjozondjupa'),
(2206, 2301, 2, 'Aiwo'),
(2207, 2302, 2, 'Anabar'),
(2208, 2303, 2, 'Anetan'),
(2209, 2304, 2, 'Anibare'),
(2210, 2305, 2, 'Baiti'),
(2211, 2306, 2, 'Boe'),
(2212, 2307, 2, 'Buada'),
(2213, 2308, 2, 'Denigomodu'),
(2214, 2309, 2, 'Ewa'),
(2215, 2310, 2, 'Ijuw'),
(2216, 2311, 2, 'Meneng'),
(2217, 2312, 2, 'Nibok'),
(2218, 2313, 2, 'Uaboe'),
(2219, 2314, 2, 'Yaren'),
(2220, 2315, 2, 'Bagmati'),
(2221, 2316, 2, 'Bheri'),
(2222, 2317, 2, 'Dhawalagiri'),
(2223, 2318, 2, 'Gandaki'),
(2224, 2319, 2, 'Janakpur'),
(2225, 2320, 2, 'Karnali'),
(2226, 2321, 2, 'Kosi'),
(2227, 2322, 2, 'Lumbini'),
(2228, 2323, 2, 'Mahakali'),
(2229, 2324, 2, 'Mechi'),
(2230, 2325, 2, 'Narayani'),
(2231, 2326, 2, 'Rapti'),
(2232, 2327, 2, 'Sagarmatha'),
(2233, 2328, 2, 'Seti'),
(2234, 2329, 2, 'Drenthe'),
(2235, 2330, 2, 'Flevoland'),
(2236, 2331, 2, 'Friesland'),
(2237, 2332, 2, 'Gelderland'),
(2238, 2333, 2, 'Groningen'),
(2239, 2334, 2, 'Limburg'),
(2240, 2335, 2, 'Noord Brabant'),
(2241, 2336, 2, 'Noord Holland'),
(2242, 2337, 2, 'Overijssel'),
(2243, 2338, 2, 'Utrecht'),
(2244, 2339, 2, 'Zeeland'),
(2245, 2340, 2, 'Zuid Holland'),
(2246, 2341, 2, 'Iles Loyaute'),
(2247, 2342, 2, 'Nord'),
(2248, 2343, 2, 'Sud'),
(2249, 2344, 2, 'Auckland'),
(2250, 2345, 2, 'Bay of Plenty'),
(2251, 2346, 2, 'Canterbury'),
(2252, 2347, 2, 'Coromandel'),
(2253, 2348, 2, 'Gisborne'),
(2254, 2349, 2, 'Fiordland'),
(2255, 2350, 2, 'Hawke\'s Bay'),
(2256, 2351, 2, 'Marlborough'),
(2257, 2352, 2, 'Manawatu-Wanganui'),
(2258, 2353, 2, 'Mt Cook-Mackenzie'),
(2259, 2354, 2, 'Nelson'),
(2260, 2355, 2, 'Northland'),
(2261, 2356, 2, 'Otago'),
(2262, 2357, 2, 'Southland'),
(2263, 2358, 2, 'Taranaki'),
(2264, 2359, 2, 'Wellington'),
(2265, 2360, 2, 'Waikato'),
(2266, 2361, 2, 'Wairarapa'),
(2267, 2362, 2, 'West Coast'),
(2268, 2363, 2, 'Atlantico Norte'),
(2269, 2364, 2, 'Atlantico Sur'),
(2270, 2365, 2, 'Boaco'),
(2271, 2366, 2, 'Carazo'),
(2272, 2367, 2, 'Chinandega'),
(2273, 2368, 2, 'Chontales'),
(2274, 2369, 2, 'Esteli'),
(2275, 2370, 2, 'Granada'),
(2276, 2371, 2, 'Jinotega'),
(2277, 2372, 2, 'Leon'),
(2278, 2373, 2, 'Madriz'),
(2279, 2374, 2, 'Managua'),
(2280, 2375, 2, 'Masaya'),
(2281, 2376, 2, 'Matagalpa'),
(2282, 2377, 2, 'Nuevo Segovia'),
(2283, 2378, 2, 'Rio San Juan'),
(2284, 2379, 2, 'Rivas'),
(2285, 2380, 2, 'Agadez'),
(2286, 2381, 2, 'Diffa'),
(2287, 2382, 2, 'Dosso'),
(2288, 2383, 2, 'Maradi'),
(2289, 2384, 2, 'Niamey'),
(2290, 2385, 2, 'Tahoua'),
(2291, 2386, 2, 'Tillaberi'),
(2292, 2387, 2, 'Zinder'),
(2293, 2388, 2, 'Abia'),
(2294, 2389, 2, 'Abuja Federal Capital Territory'),
(2295, 2390, 2, 'Adamawa'),
(2296, 2391, 2, 'Akwa Ibom'),
(2297, 2392, 2, 'Anambra'),
(2298, 2393, 2, 'Bauchi'),
(2299, 2394, 2, 'Bayelsa'),
(2300, 2395, 2, 'Benue'),
(2301, 2396, 2, 'Borno'),
(2302, 2397, 2, 'Cross River'),
(2303, 2398, 2, 'Delta'),
(2304, 2399, 2, 'Ebonyi'),
(2305, 2400, 2, 'Edo'),
(2306, 2401, 2, 'Ekiti'),
(2307, 2402, 2, 'Enugu'),
(2308, 2403, 2, 'Gombe'),
(2309, 2404, 2, 'Imo'),
(2310, 2405, 2, 'Jigawa'),
(2311, 2406, 2, 'Kaduna'),
(2312, 2407, 2, 'Kano'),
(2313, 2408, 2, 'Katsina'),
(2314, 2409, 2, 'Kebbi'),
(2315, 2410, 2, 'Kogi'),
(2316, 2411, 2, 'Kwara'),
(2317, 2412, 2, 'Lagos'),
(2318, 2413, 2, 'Nassarawa'),
(2319, 2414, 2, 'Niger'),
(2320, 2415, 2, 'Ogun'),
(2321, 2416, 2, 'Ondo'),
(2322, 2417, 2, 'Osun'),
(2323, 2418, 2, 'Oyo'),
(2324, 2419, 2, 'Plateau'),
(2325, 2420, 2, 'Rivers'),
(2326, 2421, 2, 'Sokoto'),
(2327, 2422, 2, 'Taraba'),
(2328, 2423, 2, 'Yobe'),
(2329, 2424, 2, 'Zamfara'),
(2330, 2425, 2, 'Northern Islands'),
(2331, 2426, 2, 'Rota'),
(2332, 2427, 2, 'Saipan'),
(2333, 2428, 2, 'Tinian'),
(2334, 2429, 2, 'Akershus'),
(2335, 2430, 2, 'Aust-Agder'),
(2336, 2431, 2, 'Buskerud'),
(2337, 2432, 2, 'Finnmark'),
(2338, 2433, 2, 'Hedmark'),
(2339, 2434, 2, 'Hordaland'),
(2340, 2435, 2, 'More og Romdal'),
(2341, 2436, 2, 'Nord-Trondelag'),
(2342, 2437, 2, 'Nordland'),
(2343, 2438, 2, 'Ostfold'),
(2344, 2439, 2, 'Oppland'),
(2345, 2440, 2, 'Oslo'),
(2346, 2441, 2, 'Rogaland'),
(2347, 2442, 2, 'Sor-Trondelag'),
(2348, 2443, 2, 'Sogn og Fjordane'),
(2349, 2444, 2, 'Svalbard'),
(2350, 2445, 2, 'Telemark'),
(2351, 2446, 2, 'Troms'),
(2352, 2447, 2, 'Vest-Agder'),
(2353, 2448, 2, 'Vestfold'),
(2354, 2449, 2, 'Ad Dakhiliyah'),
(2355, 2450, 2, 'Al Batinah'),
(2356, 2451, 2, 'Al Wusta'),
(2357, 2452, 2, 'Ash Sharqiyah'),
(2358, 2453, 2, 'Az Zahirah'),
(2359, 2454, 2, 'Masqat'),
(2360, 2455, 2, 'Musandam'),
(2361, 2456, 2, 'Zufar'),
(2362, 2457, 2, 'Balochistan'),
(2363, 2458, 2, 'Federally Administered Tribal Areas'),
(2364, 2459, 2, 'Islamabad Capital Territory'),
(2365, 2460, 2, 'North-West Frontier'),
(2366, 2461, 2, 'Punjab'),
(2367, 2462, 2, 'Sindh'),
(2368, 2463, 2, 'Aimeliik'),
(2369, 2464, 2, 'Airai'),
(2370, 2465, 2, 'Angaur'),
(2371, 2466, 2, 'Hatohobei'),
(2372, 2467, 2, 'Kayangel'),
(2373, 2468, 2, 'Koror'),
(2374, 2469, 2, 'Melekeok'),
(2375, 2470, 2, 'Ngaraard'),
(2376, 2471, 2, 'Ngarchelong'),
(2377, 2472, 2, 'Ngardmau'),
(2378, 2473, 2, 'Ngatpang'),
(2379, 2474, 2, 'Ngchesar'),
(2380, 2475, 2, 'Ngeremlengui'),
(2381, 2476, 2, 'Ngiwal'),
(2382, 2477, 2, 'Peleliu'),
(2383, 2478, 2, 'Sonsorol'),
(2384, 2479, 2, 'Bocas del Toro'),
(2385, 2480, 2, 'Chiriqui'),
(2386, 2481, 2, 'Cocle'),
(2387, 2482, 2, 'Colon'),
(2388, 2483, 2, 'Darien'),
(2389, 2484, 2, 'Herrera'),
(2390, 2485, 2, 'Los Santos'),
(2391, 2486, 2, 'Panama'),
(2392, 2487, 2, 'San Blas'),
(2393, 2488, 2, 'Veraguas'),
(2394, 2489, 2, 'Bougainville'),
(2395, 2490, 2, 'Central'),
(2396, 2491, 2, 'Chimbu'),
(2397, 2492, 2, 'Eastern Highlands'),
(2398, 2493, 2, 'East New Britain'),
(2399, 2494, 2, 'East Sepik'),
(2400, 2495, 2, 'Enga'),
(2401, 2496, 2, 'Gulf'),
(2402, 2497, 2, 'Madang'),
(2403, 2498, 2, 'Manus'),
(2404, 2499, 2, 'Milne Bay'),
(2405, 2500, 2, 'Morobe'),
(2406, 2501, 2, 'National Capital'),
(2407, 2502, 2, 'New Ireland'),
(2408, 2503, 2, 'Northern'),
(2409, 2504, 2, 'Sandaun'),
(2410, 2505, 2, 'Southern Highlands'),
(2411, 2506, 2, 'Western'),
(2412, 2507, 2, 'Western Highlands'),
(2413, 2508, 2, 'West New Britain'),
(2414, 2509, 2, 'Alto Paraguay'),
(2415, 2510, 2, 'Alto Parana'),
(2416, 2511, 2, 'Amambay'),
(2417, 2512, 2, 'Asuncion'),
(2418, 2513, 2, 'Boqueron'),
(2419, 2514, 2, 'Caaguazu'),
(2420, 2515, 2, 'Caazapa'),
(2421, 2516, 2, 'Canindeyu'),
(2422, 2517, 2, 'Central'),
(2423, 2518, 2, 'Concepcion'),
(2424, 2519, 2, 'Cordillera'),
(2425, 2520, 2, 'Guaira'),
(2426, 2521, 2, 'Itapua'),
(2427, 2522, 2, 'Misiones'),
(2428, 2523, 2, 'Neembucu'),
(2429, 2524, 2, 'Paraguari'),
(2430, 2525, 2, 'Presidente Hayes'),
(2431, 2526, 2, 'San Pedro'),
(2432, 2527, 2, 'Amazonas'),
(2433, 2528, 2, 'Ancash'),
(2434, 2529, 2, 'Apurimac'),
(2435, 2530, 2, 'Arequipa'),
(2436, 2531, 2, 'Ayacucho'),
(2437, 2532, 2, 'Cajamarca'),
(2438, 2533, 2, 'Callao'),
(2439, 2534, 2, 'Cusco'),
(2440, 2535, 2, 'Huancavelica'),
(2441, 2536, 2, 'Huanuco'),
(2442, 2537, 2, 'Ica'),
(2443, 2538, 2, 'Junin'),
(2444, 2539, 2, 'La Libertad'),
(2445, 2540, 2, 'Lambayeque'),
(2446, 2541, 2, 'Lima'),
(2447, 2542, 2, 'Loreto'),
(2448, 2543, 2, 'Madre de Dios'),
(2449, 2544, 2, 'Moquegua'),
(2450, 2545, 2, 'Pasco'),
(2451, 2546, 2, 'Piura'),
(2452, 2547, 2, 'Puno'),
(2453, 2548, 2, 'San Martin'),
(2454, 2549, 2, 'Tacna'),
(2455, 2550, 2, 'Tumbes'),
(2456, 2551, 2, 'Ucayali'),
(2457, 2552, 2, 'Abra'),
(2458, 2553, 2, 'Agusan del Norte'),
(2459, 2554, 2, 'Agusan del Sur'),
(2460, 2555, 2, 'Aklan'),
(2461, 2556, 2, 'Albay'),
(2462, 2557, 2, 'Antique'),
(2463, 2558, 2, 'Apayao'),
(2464, 2559, 2, 'Aurora'),
(2465, 2560, 2, 'Basilan'),
(2466, 2561, 2, 'Bataan'),
(2467, 2562, 2, 'Batanes'),
(2468, 2563, 2, 'Batangas'),
(2469, 2564, 2, 'Biliran'),
(2470, 2565, 2, 'Benguet'),
(2471, 2566, 2, 'Bohol'),
(2472, 2567, 2, 'Bukidnon'),
(2473, 2568, 2, 'Bulacan'),
(2474, 2569, 2, 'Cagayan'),
(2475, 2570, 2, 'Camarines Norte'),
(2476, 2571, 2, 'Camarines Sur'),
(2477, 2572, 2, 'Camiguin'),
(2478, 2573, 2, 'Capiz'),
(2479, 2574, 2, 'Catanduanes'),
(2480, 2575, 2, 'Cavite'),
(2481, 2576, 2, 'Cebu'),
(2482, 2577, 2, 'Compostela'),
(2483, 2578, 2, 'Davao del Norte'),
(2484, 2579, 2, 'Davao del Sur'),
(2485, 2580, 2, 'Davao Oriental'),
(2486, 2581, 2, 'Eastern Samar'),
(2487, 2582, 2, 'Guimaras'),
(2488, 2583, 2, 'Ifugao'),
(2489, 2584, 2, 'Ilocos Norte'),
(2490, 2585, 2, 'Ilocos Sur'),
(2491, 2586, 2, 'Iloilo'),
(2492, 2587, 2, 'Isabela'),
(2493, 2588, 2, 'Kalinga'),
(2494, 2589, 2, 'Laguna'),
(2495, 2590, 2, 'Lanao del Norte'),
(2496, 2591, 2, 'Lanao del Sur'),
(2497, 2592, 2, 'La Union'),
(2498, 2593, 2, 'Leyte'),
(2499, 2594, 2, 'Maguindanao'),
(2500, 2595, 2, 'Marinduque'),
(2501, 2596, 2, 'Masbate'),
(2502, 2597, 2, 'Mindoro Occidental'),
(2503, 2598, 2, 'Mindoro Oriental'),
(2504, 2599, 2, 'Misamis Occidental'),
(2505, 2600, 2, 'Misamis Oriental'),
(2506, 2601, 2, 'Mountain'),
(2507, 2602, 2, 'Negros Occidental'),
(2508, 2603, 2, 'Negros Oriental'),
(2509, 2604, 2, 'North Cotabato'),
(2510, 2605, 2, 'Northern Samar'),
(2511, 2606, 2, 'Nueva Ecija'),
(2512, 2607, 2, 'Nueva Vizcaya'),
(2513, 2608, 2, 'Palawan'),
(2514, 2609, 2, 'Pampanga'),
(2515, 2610, 2, 'Pangasinan'),
(2516, 2611, 2, 'Quezon'),
(2517, 2612, 2, 'Quirino'),
(2518, 2613, 2, 'Rizal'),
(2519, 2614, 2, 'Romblon'),
(2520, 2615, 2, 'Samar'),
(2521, 2616, 2, 'Sarangani'),
(2522, 2617, 2, 'Siquijor'),
(2523, 2618, 2, 'Sorsogon'),
(2524, 2619, 2, 'South Cotabato'),
(2525, 2620, 2, 'Southern Leyte'),
(2526, 2621, 2, 'Sultan Kudarat'),
(2527, 2622, 2, 'Sulu'),
(2528, 2623, 2, 'Surigao del Norte'),
(2529, 2624, 2, 'Surigao del Sur'),
(2530, 2625, 2, 'Tarlac'),
(2531, 2626, 2, 'Tawi-Tawi'),
(2532, 2627, 2, 'Zambales'),
(2533, 2628, 2, 'Zamboanga del Norte'),
(2534, 2629, 2, 'Zamboanga del Sur'),
(2535, 2630, 2, 'Zamboanga Sibugay'),
(2536, 2631, 2, 'Dolnoslaskie'),
(2537, 2632, 2, 'Kujawsko-Pomorskie'),
(2538, 2633, 2, 'Lodzkie'),
(2539, 2634, 2, 'Lubelskie'),
(2540, 2635, 2, 'Lubuskie'),
(2541, 2636, 2, 'Malopolskie'),
(2542, 2637, 2, 'Mazowieckie'),
(2543, 2638, 2, 'Opolskie'),
(2544, 2639, 2, 'Podkarpackie'),
(2545, 2640, 2, 'Podlaskie'),
(2546, 2641, 2, 'Pomorskie'),
(2547, 2642, 2, 'Slaskie'),
(2548, 2643, 2, 'Swietokrzyskie'),
(2549, 2644, 2, 'Warminsko-Mazurskie'),
(2550, 2645, 2, 'Wielkopolskie'),
(2551, 2646, 2, 'Zachodniopomorskie'),
(2552, 2647, 2, 'Saint Pierre'),
(2553, 2648, 2, 'Miquelon'),
(2554, 2649, 2, 'A&ccedil;ores'),
(2555, 2650, 2, 'Aveiro'),
(2556, 2651, 2, 'Beja'),
(2557, 2652, 2, 'Braga'),
(2558, 2653, 2, 'Bragan&ccedil;a'),
(2559, 2654, 2, 'Castelo Branco'),
(2560, 2655, 2, 'Coimbra'),
(2561, 2656, 2, '&Eacute;vora'),
(2562, 2657, 2, 'Faro'),
(2563, 2658, 2, 'Guarda'),
(2564, 2659, 2, 'Leiria'),
(2565, 2660, 2, 'Lisboa'),
(2566, 2661, 2, 'Madeira'),
(2567, 2662, 2, 'Portalegre'),
(2568, 2663, 2, 'Porto'),
(2569, 2664, 2, 'Santar&eacute;m'),
(2570, 2665, 2, 'Set&uacute;bal'),
(2571, 2666, 2, 'Viana do Castelo'),
(2572, 2667, 2, 'Vila Real'),
(2573, 2668, 2, 'Viseu'),
(2574, 2669, 2, 'Ad Dawhah'),
(2575, 2670, 2, 'Al Ghuwayriyah'),
(2576, 2671, 2, 'Al Jumayliyah'),
(2577, 2672, 2, 'Al Khawr'),
(2578, 2673, 2, 'Al Wakrah'),
(2579, 2674, 2, 'Ar Rayyan'),
(2580, 2675, 2, 'Jarayan al Batinah'),
(2581, 2676, 2, 'Madinat ash Shamal'),
(2582, 2677, 2, 'Umm Sa\'id'),
(2583, 2678, 2, 'Umm Salal'),
(2584, 2679, 2, 'Alba'),
(2585, 2680, 2, 'Arad'),
(2586, 2681, 2, 'Arges'),
(2587, 2682, 2, 'Bacau'),
(2588, 2683, 2, 'Bihor'),
(2589, 2684, 2, 'Bistrita-Nasaud'),
(2590, 2685, 2, 'Botosani'),
(2591, 2686, 2, 'Brasov'),
(2592, 2687, 2, 'Braila'),
(2593, 2688, 2, 'Bucuresti'),
(2594, 2689, 2, 'Buzau'),
(2595, 2690, 2, 'Caras-Severin'),
(2596, 2691, 2, 'Calarasi'),
(2597, 2692, 2, 'Cluj'),
(2598, 2693, 2, 'Constanta'),
(2599, 2694, 2, 'Covasna'),
(2600, 2695, 2, 'Dimbovita'),
(2601, 2696, 2, 'Dolj'),
(2602, 2697, 2, 'Galati'),
(2603, 2698, 2, 'Giurgiu'),
(2604, 2699, 2, 'Gorj'),
(2605, 2700, 2, 'Harghita'),
(2606, 2701, 2, 'Hunedoara'),
(2607, 2702, 2, 'Ialomita'),
(2608, 2703, 2, 'Iasi'),
(2609, 2704, 2, 'Ilfov'),
(2610, 2705, 2, 'Maramures'),
(2611, 2706, 2, 'Mehedinti'),
(2612, 2707, 2, 'Mures'),
(2613, 2708, 2, 'Neamt'),
(2614, 2709, 2, 'Olt'),
(2615, 2710, 2, 'Prahova'),
(2616, 2711, 2, 'Satu-Mare'),
(2617, 2712, 2, 'Salaj'),
(2618, 2713, 2, 'Sibiu'),
(2619, 2714, 2, 'Suceava'),
(2620, 2715, 2, 'Teleorman'),
(2621, 2716, 2, 'Timis'),
(2622, 2717, 2, 'Tulcea'),
(2623, 2718, 2, 'Vaslui'),
(2624, 2719, 2, 'Valcea'),
(2625, 2720, 2, 'Vrancea'),
(2626, 2721, 2, 'Abakan'),
(2627, 2722, 2, 'Aginskoye'),
(2628, 2723, 2, 'Anadyr'),
(2629, 2724, 2, 'Arkahangelsk'),
(2630, 2725, 2, 'Astrakhan'),
(2631, 2726, 2, 'Barnaul'),
(2632, 2727, 2, 'Belgorod'),
(2633, 2728, 2, 'Birobidzhan'),
(2634, 2729, 2, 'Blagoveshchensk'),
(2635, 2730, 2, 'Bryansk'),
(2636, 2731, 2, 'Cheboksary'),
(2637, 2732, 2, 'Chelyabinsk'),
(2638, 2733, 2, 'Cherkessk'),
(2639, 2734, 2, 'Chita'),
(2640, 2735, 2, 'Dudinka'),
(2641, 2736, 2, 'Elista'),
(2642, 2738, 2, 'Gorno-Altaysk'),
(2643, 2739, 2, 'Groznyy'),
(2644, 2740, 2, 'Irkutsk'),
(2645, 2741, 2, 'Ivanovo'),
(2646, 2742, 2, 'Izhevsk'),
(2647, 2743, 2, 'Kalinigrad'),
(2648, 2744, 2, 'Kaluga'),
(2649, 2745, 2, 'Kasnodar'),
(2650, 2746, 2, 'Kazan'),
(2651, 2747, 2, 'Kemerovo'),
(2652, 2748, 2, 'Khabarovsk'),
(2653, 2749, 2, 'Khanty-Mansiysk'),
(2654, 2750, 2, 'Kostroma'),
(2655, 2751, 2, 'Krasnodar'),
(2656, 2752, 2, 'Krasnoyarsk'),
(2657, 2753, 2, 'Kudymkar'),
(2658, 2754, 2, 'Kurgan'),
(2659, 2755, 2, 'Kursk'),
(2660, 2756, 2, 'Kyzyl'),
(2661, 2757, 2, 'Lipetsk'),
(2662, 2758, 2, 'Magadan'),
(2663, 2759, 2, 'Makhachkala'),
(2664, 2760, 2, 'Maykop'),
(2665, 2761, 2, 'Moscow'),
(2666, 2762, 2, 'Murmansk'),
(2667, 2763, 2, 'Nalchik'),
(2668, 2764, 2, 'Naryan Mar'),
(2669, 2765, 2, 'Nazran'),
(2670, 2766, 2, 'Nizhniy Novgorod'),
(2671, 2767, 2, 'Novgorod'),
(2672, 2768, 2, 'Novosibirsk'),
(2673, 2769, 2, 'Omsk'),
(2674, 2770, 2, 'Orel'),
(2675, 2771, 2, 'Orenburg'),
(2676, 2772, 2, 'Palana'),
(2677, 2773, 2, 'Penza'),
(2678, 2774, 2, 'Perm'),
(2679, 2775, 2, 'Petropavlovsk-Kamchatskiy'),
(2680, 2776, 2, 'Petrozavodsk'),
(2681, 2777, 2, 'Pskov'),
(2682, 2778, 2, 'Rostov-na-Donu'),
(2683, 2779, 2, 'Ryazan'),
(2684, 2780, 2, 'Salekhard'),
(2685, 2781, 2, 'Samara'),
(2686, 2782, 2, 'Saransk'),
(2687, 2783, 2, 'Saratov'),
(2688, 2784, 2, 'Smolensk'),
(2689, 2785, 2, 'St. Petersburg'),
(2690, 2786, 2, 'Stavropol'),
(2691, 2787, 2, 'Syktyvkar'),
(2692, 2788, 2, 'Tambov'),
(2693, 2789, 2, 'Tomsk'),
(2694, 2790, 2, 'Tula'),
(2695, 2791, 2, 'Tura'),
(2696, 2792, 2, 'Tver'),
(2697, 2793, 2, 'Tyumen'),
(2698, 2794, 2, 'Ufa'),
(2699, 2795, 2, 'Ul\'yanovsk'),
(2700, 2796, 2, 'Ulan-Ude'),
(2701, 2797, 2, 'Ust\'-Ordynskiy'),
(2702, 2798, 2, 'Vladikavkaz'),
(2703, 2799, 2, 'Vladimir'),
(2704, 2800, 2, 'Vladivostok'),
(2705, 2801, 2, 'Volgograd'),
(2706, 2802, 2, 'Vologda'),
(2707, 2803, 2, 'Voronezh'),
(2708, 2804, 2, 'Vyatka'),
(2709, 2805, 2, 'Yakutsk'),
(2710, 2806, 2, 'Yaroslavl'),
(2711, 2807, 2, 'Yekaterinburg'),
(2712, 2808, 2, 'Yoshkar-Ola'),
(2713, 2809, 2, 'Butare'),
(2714, 2810, 2, 'Byumba'),
(2715, 2811, 2, 'Cyangugu'),
(2716, 2812, 2, 'Gikongoro'),
(2717, 2813, 2, 'Gisenyi'),
(2718, 2814, 2, 'Gitarama'),
(2719, 2815, 2, 'Kibungo'),
(2720, 2816, 2, 'Kibuye'),
(2721, 2817, 2, 'Kigali Rurale'),
(2722, 2818, 2, 'Kigali-ville'),
(2723, 2819, 2, 'Ruhengeri'),
(2724, 2820, 2, 'Umutara'),
(2725, 2821, 2, 'Christ Church Nichola Town'),
(2726, 2822, 2, 'Saint Anne Sandy Point'),
(2727, 2823, 2, 'Saint George Basseterre'),
(2728, 2824, 2, 'Saint George Gingerland'),
(2729, 2825, 2, 'Saint James Windward'),
(2730, 2826, 2, 'Saint John Capesterre'),
(2731, 2827, 2, 'Saint John Figtree'),
(2732, 2828, 2, 'Saint Mary Cayon'),
(2733, 2829, 2, 'Saint Paul Capesterre'),
(2734, 2830, 2, 'Saint Paul Charlestown'),
(2735, 2831, 2, 'Saint Peter Basseterre'),
(2736, 2832, 2, 'Saint Thomas Lowland'),
(2737, 2833, 2, 'Saint Thomas Middle Island'),
(2738, 2834, 2, 'Trinity Palmetto Point'),
(2739, 2835, 2, 'Anse-la-Raye'),
(2740, 2836, 2, 'Castries'),
(2741, 2837, 2, 'Choiseul'),
(2742, 2838, 2, 'Dauphin'),
(2743, 2839, 2, 'Dennery'),
(2744, 2840, 2, 'Gros-Islet'),
(2745, 2841, 2, 'Laborie'),
(2746, 2842, 2, 'Micoud'),
(2747, 2843, 2, 'Praslin'),
(2748, 2844, 2, 'Soufriere'),
(2749, 2845, 2, 'Vieux-Fort'),
(2750, 2846, 2, 'Charlotte'),
(2751, 2847, 2, 'Grenadines'),
(2752, 2848, 2, 'Saint Andrew'),
(2753, 2849, 2, 'Saint David'),
(2754, 2850, 2, 'Saint George'),
(2755, 2851, 2, 'Saint Patrick'),
(2756, 2852, 2, 'A\'ana'),
(2757, 2853, 2, 'Aiga-i-le-Tai'),
(2758, 2854, 2, 'Atua'),
(2759, 2855, 2, 'Fa\'asaleleaga'),
(2760, 2856, 2, 'Gaga\'emauga'),
(2761, 2857, 2, 'Gagaifomauga'),
(2762, 2858, 2, 'Palauli'),
(2763, 2859, 2, 'Satupa\'itea'),
(2764, 2860, 2, 'Tuamasaga'),
(2765, 2861, 2, 'Va\'a-o-Fonoti'),
(2766, 2862, 2, 'Vaisigano'),
(2767, 2863, 2, 'Acquaviva'),
(2768, 2864, 2, 'Borgo Maggiore'),
(2769, 2865, 2, 'Chiesanuova'),
(2770, 2866, 2, 'Domagnano'),
(2771, 2867, 2, 'Faetano'),
(2772, 2868, 2, 'Fiorentino'),
(2773, 2869, 2, 'Montegiardino'),
(2774, 2870, 2, 'Citta di San Marino'),
(2775, 2871, 2, 'Serravalle'),
(2776, 2872, 2, 'Sao Tome'),
(2777, 2873, 2, 'Principe'),
(2778, 2874, 2, 'Al Bahah'),
(2779, 2875, 2, 'Al Hudud ash Shamaliyah'),
(2780, 2876, 2, 'Al Jawf'),
(2781, 2877, 2, 'Al Madinah'),
(2782, 2878, 2, 'Al Qasim'),
(2783, 2879, 2, 'Ar Riyad'),
(2784, 2880, 2, 'Ash Sharqiyah (Eastern)'),
(2785, 2881, 2, '\'Asir'),
(2786, 2882, 2, 'Ha\'il'),
(2787, 2883, 2, 'Jizan'),
(2788, 2884, 2, 'Makkah'),
(2789, 2885, 2, 'Najran'),
(2790, 2886, 2, 'Tabuk'),
(2791, 2887, 2, 'Dakar'),
(2792, 2888, 2, 'Diourbel'),
(2793, 2889, 2, 'Fatick'),
(2794, 2890, 2, 'Kaolack'),
(2795, 2891, 2, 'Kolda'),
(2796, 2892, 2, 'Louga'),
(2797, 2893, 2, 'Matam'),
(2798, 2894, 2, 'Saint-Louis'),
(2799, 2895, 2, 'Tambacounda'),
(2800, 2896, 2, 'Thies'),
(2801, 2897, 2, 'Ziguinchor'),
(2802, 2898, 2, 'Anse aux Pins'),
(2803, 2899, 2, 'Anse Boileau'),
(2804, 2900, 2, 'Anse Etoile'),
(2805, 2901, 2, 'Anse Louis'),
(2806, 2902, 2, 'Anse Royale'),
(2807, 2903, 2, 'Baie Lazare'),
(2808, 2904, 2, 'Baie Sainte Anne'),
(2809, 2905, 2, 'Beau Vallon'),
(2810, 2906, 2, 'Bel Air'),
(2811, 2907, 2, 'Bel Ombre'),
(2812, 2908, 2, 'Cascade'),
(2813, 2909, 2, 'Glacis'),
(2814, 2910, 2, 'Grand\' Anse (on Mahe)'),
(2815, 2911, 2, 'Grand\' Anse (on Praslin)'),
(2816, 2912, 2, 'La Digue'),
(2817, 2913, 2, 'La Riviere Anglaise'),
(2818, 2914, 2, 'Mont Buxton'),
(2819, 2915, 2, 'Mont Fleuri'),
(2820, 2916, 2, 'Plaisance'),
(2821, 2917, 2, 'Pointe La Rue'),
(2822, 2918, 2, 'Port Glaud'),
(2823, 2919, 2, 'Saint Louis'),
(2824, 2920, 2, 'Takamaka'),
(2825, 2921, 2, 'Eastern'),
(2826, 2922, 2, 'Northern'),
(2827, 2923, 2, 'Southern'),
(2828, 2924, 2, 'Western'),
(2829, 2925, 2, 'Banskobystrický'),
(2830, 2926, 2, 'Bratislavský'),
(2831, 2927, 2, 'Košický'),
(2832, 2928, 2, 'Nitriansky'),
(2833, 2929, 2, 'Prešovský'),
(2834, 2930, 2, 'Trenčiansky'),
(2835, 2931, 2, 'Trnavský'),
(2836, 2932, 2, 'Žilinský'),
(2837, 2933, 2, 'Central'),
(2838, 2934, 2, 'Choiseul'),
(2839, 2935, 2, 'Guadalcanal'),
(2840, 2936, 2, 'Honiara'),
(2841, 2937, 2, 'Isabel'),
(2842, 2938, 2, 'Makira'),
(2843, 2939, 2, 'Malaita'),
(2844, 2940, 2, 'Rennell and Bellona'),
(2845, 2941, 2, 'Temotu'),
(2846, 2942, 2, 'Western'),
(2847, 2943, 2, 'Awdal'),
(2848, 2944, 2, 'Bakool'),
(2849, 2945, 2, 'Banaadir'),
(2850, 2946, 2, 'Bari'),
(2851, 2947, 2, 'Bay'),
(2852, 2948, 2, 'Galguduud'),
(2853, 2949, 2, 'Gedo'),
(2854, 2950, 2, 'Hiiraan'),
(2855, 2951, 2, 'Jubbada Dhexe'),
(2856, 2952, 2, 'Jubbada Hoose'),
(2857, 2953, 2, 'Mudug'),
(2858, 2954, 2, 'Nugaal'),
(2859, 2955, 2, 'Sanaag'),
(2860, 2956, 2, 'Shabeellaha Dhexe'),
(2861, 2957, 2, 'Shabeellaha Hoose'),
(2862, 2958, 2, 'Sool'),
(2863, 2959, 2, 'Togdheer'),
(2864, 2960, 2, 'Woqooyi Galbeed'),
(2865, 2961, 2, 'Eastern Cape'),
(2866, 2962, 2, 'Free State'),
(2867, 2963, 2, 'Gauteng'),
(2868, 2964, 2, 'KwaZulu-Natal'),
(2869, 2965, 2, 'Limpopo'),
(2870, 2966, 2, 'Mpumalanga'),
(2871, 2967, 2, 'North West'),
(2872, 2968, 2, 'Northern Cape'),
(2873, 2969, 2, 'Western Cape'),
(2874, 2970, 2, 'La Coru&ntilde;a'),
(2875, 2971, 2, '&Aacute;lava'),
(2876, 2972, 2, 'Albacete'),
(2877, 2973, 2, 'Alicante'),
(2878, 2974, 2, 'Almeria'),
(2879, 2975, 2, 'Asturias'),
(2880, 2976, 2, '&Aacute;vila'),
(2881, 2977, 2, 'Badajoz'),
(2882, 2978, 2, 'Baleares'),
(2883, 2979, 2, 'Barcelona'),
(2884, 2980, 2, 'Burgos'),
(2885, 2981, 2, 'C&aacute;ceres'),
(2886, 2982, 2, 'C&aacute;diz'),
(2887, 2983, 2, 'Cantabria'),
(2888, 2984, 2, 'Castell&oacute;n'),
(2889, 2985, 2, 'Ceuta'),
(2890, 2986, 2, 'Ciudad Real'),
(2891, 2987, 2, 'C&oacute;rdoba'),
(2892, 2988, 2, 'Cuenca'),
(2893, 2989, 2, 'Girona'),
(2894, 2990, 2, 'Granada'),
(2895, 2991, 2, 'Guadalajara'),
(2896, 2992, 2, 'Guip&uacute;zcoa'),
(2897, 2993, 2, 'Huelva'),
(2898, 2994, 2, 'Huesca'),
(2899, 2995, 2, 'Ja&eacute;n'),
(2900, 2996, 2, 'La Rioja'),
(2901, 2997, 2, 'Las Palmas'),
(2902, 2998, 2, 'Leon'),
(2903, 2999, 2, 'Lleida'),
(2904, 3000, 2, 'Lugo'),
(2905, 3001, 2, 'Madrid'),
(2906, 3002, 2, 'Malaga'),
(2907, 3003, 2, 'Melilla'),
(2908, 3004, 2, 'Murcia'),
(2909, 3005, 2, 'Navarra'),
(2910, 3006, 2, 'Ourense'),
(2911, 3007, 2, 'Palencia'),
(2912, 3008, 2, 'Pontevedra'),
(2913, 3009, 2, 'Salamanca'),
(2914, 3010, 2, 'Santa Cruz de Tenerife'),
(2915, 3011, 2, 'Segovia'),
(2916, 3012, 2, 'Sevilla'),
(2917, 3013, 2, 'Soria'),
(2918, 3014, 2, 'Tarragona'),
(2919, 3015, 2, 'Teruel'),
(2920, 3016, 2, 'Toledo'),
(2921, 3017, 2, 'Valencia'),
(2922, 3018, 2, 'Valladolid'),
(2923, 3019, 2, 'Vizcaya'),
(2924, 3020, 2, 'Zamora'),
(2925, 3021, 2, 'Zaragoza'),
(2926, 3022, 2, 'Central'),
(2927, 3023, 2, 'Eastern'),
(2928, 3024, 2, 'North Central'),
(2929, 3025, 2, 'Northern'),
(2930, 3026, 2, 'North Western'),
(2931, 3027, 2, 'Sabaragamuwa'),
(2932, 3028, 2, 'Southern'),
(2933, 3029, 2, 'Uva'),
(2934, 3030, 2, 'Western'),
(2935, 3032, 2, 'Saint Helena'),
(2936, 3034, 2, 'A\'ali an Nil'),
(2937, 3035, 2, 'Al Bahr al Ahmar'),
(2938, 3036, 2, 'Al Buhayrat'),
(2939, 3037, 2, 'Al Jazirah'),
(2940, 3038, 2, 'Al Khartum'),
(2941, 3039, 2, 'Al Qadarif'),
(2942, 3040, 2, 'Al Wahdah'),
(2943, 3041, 2, 'An Nil al Abyad'),
(2944, 3042, 2, 'An Nil al Azraq'),
(2945, 3043, 2, 'Ash Shamaliyah'),
(2946, 3044, 2, 'Bahr al Jabal'),
(2947, 3045, 2, 'Gharb al Istiwa\'iyah'),
(2948, 3046, 2, 'Gharb Bahr al Ghazal'),
(2949, 3047, 2, 'Gharb Darfur'),
(2950, 3048, 2, 'Gharb Kurdufan'),
(2951, 3049, 2, 'Janub Darfur'),
(2952, 3050, 2, 'Janub Kurdufan'),
(2953, 3051, 2, 'Junqali'),
(2954, 3052, 2, 'Kassala'),
(2955, 3053, 2, 'Nahr an Nil'),
(2956, 3054, 2, 'Shamal Bahr al Ghazal'),
(2957, 3055, 2, 'Shamal Darfur'),
(2958, 3056, 2, 'Shamal Kurdufan'),
(2959, 3057, 2, 'Sharq al Istiwa\'iyah'),
(2960, 3058, 2, 'Sinnar'),
(2961, 3059, 2, 'Warab'),
(2962, 3060, 2, 'Brokopondo'),
(2963, 3061, 2, 'Commewijne'),
(2964, 3062, 2, 'Coronie'),
(2965, 3063, 2, 'Marowijne'),
(2966, 3064, 2, 'Nickerie'),
(2967, 3065, 2, 'Para'),
(2968, 3066, 2, 'Paramaribo'),
(2969, 3067, 2, 'Saramacca'),
(2970, 3068, 2, 'Sipaliwini'),
(2971, 3069, 2, 'Wanica'),
(2972, 3070, 2, 'Hhohho'),
(2973, 3071, 2, 'Lubombo'),
(2974, 3072, 2, 'Manzini'),
(2975, 3073, 2, 'Shishelweni'),
(2976, 3074, 2, 'Blekinge'),
(2977, 3075, 2, 'Dalarna'),
(2978, 3076, 2, 'Gävleborg'),
(2979, 3077, 2, 'Gotland'),
(2980, 3078, 2, 'Halland'),
(2981, 3079, 2, 'Jämtland'),
(2982, 3080, 2, 'Jönköping'),
(2983, 3081, 2, 'Kalmar'),
(2984, 3082, 2, 'Kronoberg'),
(2985, 3083, 2, 'Norrbotten'),
(2986, 3084, 2, 'Örebro'),
(2987, 3085, 2, 'Östergötland'),
(2988, 3086, 2, 'Sk&aring;ne'),
(2989, 3087, 2, 'Södermanland'),
(2990, 3088, 2, 'Stockholm'),
(2991, 3089, 2, 'Uppsala'),
(2992, 3090, 2, 'Värmland'),
(2993, 3091, 2, 'Västerbotten'),
(2994, 3092, 2, 'Västernorrland'),
(2995, 3093, 2, 'Västmanland'),
(2996, 3094, 2, 'Västra Götaland'),
(2997, 3095, 2, 'Aargau'),
(2998, 3096, 2, 'Appenzell Ausserrhoden'),
(2999, 3097, 2, 'Appenzell Innerrhoden'),
(3000, 3098, 2, 'Basel-Stadt'),
(3001, 3099, 2, 'Basel-Landschaft'),
(3002, 3100, 2, 'Bern'),
(3003, 3101, 2, 'Fribourg'),
(3004, 3102, 2, 'Gen&egrave;ve'),
(3005, 3103, 2, 'Glarus'),
(3006, 3104, 2, 'Graubünden'),
(3007, 3105, 2, 'Jura'),
(3008, 3106, 2, 'Luzern'),
(3009, 3107, 2, 'Neuch&acirc;tel'),
(3010, 3108, 2, 'Nidwald'),
(3011, 3109, 2, 'Obwald'),
(3012, 3110, 2, 'St. Gallen'),
(3013, 3111, 2, 'Schaffhausen'),
(3014, 3112, 2, 'Schwyz'),
(3015, 3113, 2, 'Solothurn'),
(3016, 3114, 2, 'Thurgau'),
(3017, 3115, 2, 'Ticino'),
(3018, 3116, 2, 'Uri'),
(3019, 3117, 2, 'Valais'),
(3020, 3118, 2, 'Vaud'),
(3021, 3119, 2, 'Zug'),
(3022, 3120, 2, 'Zürich'),
(3023, 3121, 2, 'Al Hasakah'),
(3024, 3122, 2, 'Al Ladhiqiyah'),
(3025, 3123, 2, 'Al Qunaytirah'),
(3026, 3124, 2, 'Ar Raqqah'),
(3027, 3125, 2, 'As Suwayda'),
(3028, 3126, 2, 'Dara'),
(3029, 3127, 2, 'Dayr az Zawr'),
(3030, 3128, 2, 'Dimashq'),
(3031, 3129, 2, 'Halab'),
(3032, 3130, 2, 'Hamah'),
(3033, 3131, 2, 'Hims'),
(3034, 3132, 2, 'Idlib'),
(3035, 3133, 2, 'Rif Dimashq'),
(3036, 3134, 2, 'Tartus'),
(3037, 3135, 2, 'Chang-hua'),
(3038, 3136, 2, 'Chia-i'),
(3039, 3137, 2, 'Hsin-chu'),
(3040, 3138, 2, 'Hua-lien'),
(3041, 3139, 2, 'I-lan'),
(3042, 3140, 2, 'Kao-hsiung county'),
(3043, 3141, 2, 'Kin-men'),
(3044, 3142, 2, 'Lien-chiang'),
(3045, 3143, 2, 'Miao-li'),
(3046, 3144, 2, 'Nan-t\'ou'),
(3047, 3145, 2, 'P\'eng-hu'),
(3048, 3146, 2, 'P\'ing-tung'),
(3049, 3147, 2, 'T\'ai-chung'),
(3050, 3148, 2, 'T\'ai-nan'),
(3051, 3149, 2, 'T\'ai-pei county'),
(3052, 3150, 2, 'T\'ai-tung'),
(3053, 3151, 2, 'T\'ao-yuan'),
(3054, 3152, 2, 'Yun-lin'),
(3055, 3153, 2, 'Chia-i city'),
(3056, 3154, 2, 'Chi-lung'),
(3057, 3155, 2, 'Hsin-chu'),
(3058, 3156, 2, 'T\'ai-chung'),
(3059, 3157, 2, 'T\'ai-nan'),
(3060, 3158, 2, 'Kao-hsiung city'),
(3061, 3159, 2, 'T\'ai-pei city'),
(3062, 3160, 2, 'Gorno-Badakhstan'),
(3063, 3161, 2, 'Khatlon'),
(3064, 3162, 2, 'Sughd'),
(3065, 3163, 2, 'Arusha'),
(3066, 3164, 2, 'Dar es Salaam'),
(3067, 3165, 2, 'Dodoma'),
(3068, 3166, 2, 'Iringa'),
(3069, 3167, 2, 'Kagera'),
(3070, 3168, 2, 'Kigoma'),
(3071, 3169, 2, 'Kilimanjaro'),
(3072, 3170, 2, 'Lindi'),
(3073, 3171, 2, 'Manyara'),
(3074, 3172, 2, 'Mara'),
(3075, 3173, 2, 'Mbeya'),
(3076, 3174, 2, 'Morogoro'),
(3077, 3175, 2, 'Mtwara'),
(3078, 3176, 2, 'Mwanza'),
(3079, 3177, 2, 'Pemba North'),
(3080, 3178, 2, 'Pemba South'),
(3081, 3179, 2, 'Pwani'),
(3082, 3180, 2, 'Rukwa'),
(3083, 3181, 2, 'Ruvuma'),
(3084, 3182, 2, 'Shinyanga'),
(3085, 3183, 2, 'Singida'),
(3086, 3184, 2, 'Tabora'),
(3087, 3185, 2, 'Tanga'),
(3088, 3186, 2, 'Zanzibar Central/South'),
(3089, 3187, 2, 'Zanzibar North'),
(3090, 3188, 2, 'Zanzibar Urban/West'),
(3091, 3189, 2, 'Amnat Charoen'),
(3092, 3190, 2, 'Ang Thong'),
(3093, 3191, 2, 'Ayutthaya'),
(3094, 3192, 2, 'Bangkok'),
(3095, 3193, 2, 'Buriram'),
(3096, 3194, 2, 'Chachoengsao'),
(3097, 3195, 2, 'Chai Nat'),
(3098, 3196, 2, 'Chaiyaphum'),
(3099, 3197, 2, 'Chanthaburi'),
(3100, 3198, 2, 'Chiang Mai'),
(3101, 3199, 2, 'Chiang Rai'),
(3102, 3200, 2, 'Chon Buri'),
(3103, 3201, 2, 'Chumphon'),
(3104, 3202, 2, 'Kalasin'),
(3105, 3203, 2, 'Kamphaeng Phet'),
(3106, 3204, 2, 'Kanchanaburi'),
(3107, 3205, 2, 'Khon Kaen'),
(3108, 3206, 2, 'Krabi'),
(3109, 3207, 2, 'Lampang'),
(3110, 3208, 2, 'Lamphun'),
(3111, 3209, 2, 'Loei'),
(3112, 3210, 2, 'Lop Buri'),
(3113, 3211, 2, 'Mae Hong Son'),
(3114, 3212, 2, 'Maha Sarakham'),
(3115, 3213, 2, 'Mukdahan'),
(3116, 3214, 2, 'Nakhon Nayok'),
(3117, 3215, 2, 'Nakhon Pathom'),
(3118, 3216, 2, 'Nakhon Phanom'),
(3119, 3217, 2, 'Nakhon Ratchasima'),
(3120, 3218, 2, 'Nakhon Sawan'),
(3121, 3219, 2, 'Nakhon Si Thammarat'),
(3122, 3220, 2, 'Nan'),
(3123, 3221, 2, 'Narathiwat'),
(3124, 3222, 2, 'Nong Bua Lamphu'),
(3125, 3223, 2, 'Nong Khai'),
(3126, 3224, 2, 'Nonthaburi'),
(3127, 3225, 2, 'Pathum Thani'),
(3128, 3226, 2, 'Pattani'),
(3129, 3227, 2, 'Phangnga'),
(3130, 3228, 2, 'Phatthalung'),
(3131, 3229, 2, 'Phayao'),
(3132, 3230, 2, 'Phetchabun'),
(3133, 3231, 2, 'Phetchaburi'),
(3134, 3232, 2, 'Phichit'),
(3135, 3233, 2, 'Phitsanulok'),
(3136, 3234, 2, 'Phrae'),
(3137, 3235, 2, 'Phuket'),
(3138, 3236, 2, 'Prachin Buri'),
(3139, 3237, 2, 'Prachuap Khiri Khan'),
(3140, 3238, 2, 'Ranong'),
(3141, 3239, 2, 'Ratchaburi'),
(3142, 3240, 2, 'Rayong'),
(3143, 3241, 2, 'Roi Et'),
(3144, 3242, 2, 'Sa Kaeo'),
(3145, 3243, 2, 'Sakon Nakhon'),
(3146, 3244, 2, 'Samut Prakan'),
(3147, 3245, 2, 'Samut Sakhon'),
(3148, 3246, 2, 'Samut Songkhram'),
(3149, 3247, 2, 'Sara Buri'),
(3150, 3248, 2, 'Satun'),
(3151, 3249, 2, 'Sing Buri'),
(3152, 3250, 2, 'Sisaket'),
(3153, 3251, 2, 'Songkhla'),
(3154, 3252, 2, 'Sukhothai'),
(3155, 3253, 2, 'Suphan Buri'),
(3156, 3254, 2, 'Surat Thani'),
(3157, 3255, 2, 'Surin'),
(3158, 3256, 2, 'Tak'),
(3159, 3257, 2, 'Trang'),
(3160, 3258, 2, 'Trat'),
(3161, 3259, 2, 'Ubon Ratchathani'),
(3162, 3260, 2, 'Udon Thani'),
(3163, 3261, 2, 'Uthai Thani'),
(3164, 3262, 2, 'Uttaradit'),
(3165, 3263, 2, 'Yala'),
(3166, 3264, 2, 'Yasothon'),
(3167, 3265, 2, 'Kara'),
(3168, 3266, 2, 'Plateaux'),
(3169, 3267, 2, 'Savanes'),
(3170, 3268, 2, 'Centrale'),
(3171, 3269, 2, 'Maritime'),
(3172, 3270, 2, 'Atafu'),
(3173, 3271, 2, 'Fakaofo'),
(3174, 3272, 2, 'Nukunonu'),
(3175, 3273, 2, 'Ha\'apai'),
(3176, 3274, 2, 'Tongatapu'),
(3177, 3275, 2, 'Vava\'u'),
(3178, 3276, 2, 'Couva/Tabaquite/Talparo'),
(3179, 3277, 2, 'Diego Martin'),
(3180, 3278, 2, 'Mayaro/Rio Claro'),
(3181, 3279, 2, 'Penal/Debe'),
(3182, 3280, 2, 'Princes Town'),
(3183, 3281, 2, 'Sangre Grande'),
(3184, 3282, 2, 'San Juan/Laventille'),
(3185, 3283, 2, 'Siparia'),
(3186, 3284, 2, 'Tunapuna/Piarco'),
(3187, 3285, 2, 'Port of Spain'),
(3188, 3286, 2, 'San Fernando'),
(3189, 3287, 2, 'Arima'),
(3190, 3288, 2, 'Point Fortin'),
(3191, 3289, 2, 'Chaguanas'),
(3192, 3290, 2, 'Tobago'),
(3193, 3291, 2, 'Ariana'),
(3194, 3292, 2, 'Beja'),
(3195, 3293, 2, 'Ben Arous'),
(3196, 3294, 2, 'Bizerte'),
(3197, 3295, 2, 'Gabes'),
(3198, 3296, 2, 'Gafsa'),
(3199, 3297, 2, 'Jendouba'),
(3200, 3298, 2, 'Kairouan'),
(3201, 3299, 2, 'Kasserine'),
(3202, 3300, 2, 'Kebili'),
(3203, 3301, 2, 'Kef'),
(3204, 3302, 2, 'Mahdia'),
(3205, 3303, 2, 'Manouba'),
(3206, 3304, 2, 'Medenine'),
(3207, 3305, 2, 'Monastir'),
(3208, 3306, 2, 'Nabeul'),
(3209, 3307, 2, 'Sfax'),
(3210, 3308, 2, 'Sidi'),
(3211, 3309, 2, 'Siliana'),
(3212, 3310, 2, 'Sousse'),
(3213, 3311, 2, 'Tataouine'),
(3214, 3312, 2, 'Tozeur'),
(3215, 3313, 2, 'Tunis'),
(3216, 3314, 2, 'Zaghouan'),
(3217, 3315, 2, 'Adana'),
(3218, 3316, 2, 'Adıyaman'),
(3219, 3317, 2, 'Afyonkarahisar'),
(3220, 3318, 2, 'Ağrı'),
(3221, 3319, 2, 'Aksaray'),
(3222, 3320, 2, 'Amasya'),
(3223, 3321, 2, 'Ankara'),
(3224, 3322, 2, 'Antalya'),
(3225, 3323, 2, 'Ardahan'),
(3226, 3324, 2, 'Artvin'),
(3227, 3325, 2, 'Aydın'),
(3228, 3326, 2, 'Balıkesir'),
(3229, 3327, 2, 'Bartın'),
(3230, 3328, 2, 'Batman'),
(3231, 3329, 2, 'Bayburt'),
(3232, 3330, 2, 'Bilecik'),
(3233, 3331, 2, 'Bingöl'),
(3234, 3332, 2, 'Bitlis'),
(3235, 3333, 2, 'Bolu'),
(3236, 3334, 2, 'Burdur'),
(3237, 3335, 2, 'Bursa'),
(3238, 3336, 2, 'Çanakkale'),
(3239, 3337, 2, 'Çankırı'),
(3240, 3338, 2, 'Çorum'),
(3241, 3339, 2, 'Denizli'),
(3242, 3340, 2, 'Diyarbakır'),
(3243, 3341, 2, 'Düzce'),
(3244, 3342, 2, 'Edirne'),
(3245, 3343, 2, 'Elazığ'),
(3246, 3344, 2, 'Erzincan'),
(3247, 3345, 2, 'Erzurum'),
(3248, 3346, 2, 'Eskişehir'),
(3249, 3347, 2, 'Gaziantep'),
(3250, 3348, 2, 'Giresun'),
(3251, 3349, 2, 'Gümüşhane'),
(3252, 3350, 2, 'Hakkari'),
(3253, 3351, 2, 'Hatay'),
(3254, 3352, 2, 'Iğdır'),
(3255, 3353, 2, 'Isparta'),
(3256, 3354, 2, 'İstanbul'),
(3257, 3355, 2, 'İzmir'),
(3258, 3356, 2, 'Kahramanmaraş'),
(3259, 3357, 2, 'Karabük'),
(3260, 3358, 2, 'Karaman'),
(3261, 3359, 2, 'Kars'),
(3262, 3360, 2, 'Kastamonu'),
(3263, 3361, 2, 'Kayseri'),
(3264, 3362, 2, 'Kilis'),
(3265, 3363, 2, 'Kırıkkale'),
(3266, 3364, 2, 'Kırklareli'),
(3267, 3365, 2, 'Kırşehir'),
(3268, 3366, 2, 'Kocaeli'),
(3269, 3367, 2, 'Konya'),
(3270, 3368, 2, 'Kütahya'),
(3271, 3369, 2, 'Malatya'),
(3272, 3370, 2, 'Manisa'),
(3273, 3371, 2, 'Mardin'),
(3274, 3372, 2, 'Mersin'),
(3275, 3373, 2, 'Muğla'),
(3276, 3374, 2, 'Muş'),
(3277, 3375, 2, 'Nevşehir'),
(3278, 3376, 2, 'Niğde'),
(3279, 3377, 2, 'Ordu'),
(3280, 3378, 2, 'Osmaniye'),
(3281, 3379, 2, 'Rize'),
(3282, 3380, 2, 'Sakarya'),
(3283, 3381, 2, 'Samsun'),
(3284, 3382, 2, 'Şanlıurfa'),
(3285, 3383, 2, 'Siirt'),
(3286, 3384, 2, 'Sinop'),
(3287, 3385, 2, 'Şırnak'),
(3288, 3386, 2, 'Sivas'),
(3289, 3387, 2, 'Tekirdağ'),
(3290, 3388, 2, 'Tokat'),
(3291, 3389, 2, 'Trabzon'),
(3292, 3390, 2, 'Tunceli'),
(3293, 3391, 2, 'Uşak'),
(3294, 3392, 2, 'Van'),
(3295, 3393, 2, 'Yalova'),
(3296, 3394, 2, 'Yozgat'),
(3297, 3395, 2, 'Zonguldak'),
(3298, 3396, 2, 'Ahal Welayaty'),
(3299, 3397, 2, 'Balkan Welayaty'),
(3300, 3398, 2, 'Dashhowuz Welayaty'),
(3301, 3399, 2, 'Lebap Welayaty'),
(3302, 3400, 2, 'Mary Welayaty'),
(3303, 3401, 2, 'Ambergris Cays'),
(3304, 3402, 2, 'Dellis Cay'),
(3305, 3403, 2, 'French Cay'),
(3306, 3404, 2, 'Little Water Cay'),
(3307, 3405, 2, 'Parrot Cay'),
(3308, 3406, 2, 'Pine Cay'),
(3309, 3407, 2, 'Salt Cay'),
(3310, 3408, 2, 'Grand Turk'),
(3311, 3409, 2, 'South Caicos'),
(3312, 3410, 2, 'East Caicos'),
(3313, 3411, 2, 'Middle Caicos'),
(3314, 3412, 2, 'North Caicos'),
(3315, 3413, 2, 'Providenciales'),
(3316, 3414, 2, 'West Caicos'),
(3317, 3415, 2, 'Nanumanga'),
(3318, 3416, 2, 'Niulakita'),
(3319, 3417, 2, 'Niutao'),
(3320, 3418, 2, 'Funafuti'),
(3321, 3419, 2, 'Nanumea'),
(3322, 3420, 2, 'Nui'),
(3323, 3421, 2, 'Nukufetau'),
(3324, 3422, 2, 'Nukulaelae'),
(3325, 3423, 2, 'Vaitupu'),
(3326, 3424, 2, 'Kalangala'),
(3327, 3425, 2, 'Kampala'),
(3328, 3426, 2, 'Kayunga'),
(3329, 3427, 2, 'Kiboga'),
(3330, 3428, 2, 'Luwero'),
(3331, 3429, 2, 'Masaka'),
(3332, 3430, 2, 'Mpigi'),
(3333, 3431, 2, 'Mubende'),
(3334, 3432, 2, 'Mukono'),
(3335, 3433, 2, 'Nakasongola'),
(3336, 3434, 2, 'Rakai'),
(3337, 3435, 2, 'Sembabule'),
(3338, 3436, 2, 'Wakiso'),
(3339, 3437, 2, 'Bugiri'),
(3340, 3438, 2, 'Busia'),
(3341, 3439, 2, 'Iganga'),
(3342, 3440, 2, 'Jinja'),
(3343, 3441, 2, 'Kaberamaido'),
(3344, 3442, 2, 'Kamuli'),
(3345, 3443, 2, 'Kapchorwa'),
(3346, 3444, 2, 'Katakwi'),
(3347, 3445, 2, 'Kumi'),
(3348, 3446, 2, 'Mayuge'),
(3349, 3447, 2, 'Mbale'),
(3350, 3448, 2, 'Pallisa'),
(3351, 3449, 2, 'Sironko'),
(3352, 3450, 2, 'Soroti'),
(3353, 3451, 2, 'Tororo'),
(3354, 3452, 2, 'Adjumani'),
(3355, 3453, 2, 'Apac'),
(3356, 3454, 2, 'Arua'),
(3357, 3455, 2, 'Gulu'),
(3358, 3456, 2, 'Kitgum'),
(3359, 3457, 2, 'Kotido'),
(3360, 3458, 2, 'Lira'),
(3361, 3459, 2, 'Moroto'),
(3362, 3460, 2, 'Moyo'),
(3363, 3461, 2, 'Nakapiripirit'),
(3364, 3462, 2, 'Nebbi'),
(3365, 3463, 2, 'Pader'),
(3366, 3464, 2, 'Yumbe'),
(3367, 3465, 2, 'Bundibugyo'),
(3368, 3466, 2, 'Bushenyi'),
(3369, 3467, 2, 'Hoima'),
(3370, 3468, 2, 'Kabale'),
(3371, 3469, 2, 'Kabarole'),
(3372, 3470, 2, 'Kamwenge'),
(3373, 3471, 2, 'Kanungu'),
(3374, 3472, 2, 'Kasese'),
(3375, 3473, 2, 'Kibaale'),
(3376, 3474, 2, 'Kisoro'),
(3377, 3475, 2, 'Kyenjojo'),
(3378, 3476, 2, 'Masindi'),
(3379, 3477, 2, 'Mbarara'),
(3380, 3478, 2, 'Ntungamo'),
(3381, 3479, 2, 'Rukungiri'),
(3382, 3480, 2, 'Cherkas\'ka Oblast\''),
(3383, 3481, 2, 'Chernihivs\'ka Oblast\''),
(3384, 3482, 2, 'Chernivets\'ka Oblast\''),
(3385, 3483, 2, 'Crimea'),
(3386, 3484, 2, 'Dnipropetrovs\'ka Oblast\''),
(3387, 3485, 2, 'Donets\'ka Oblast\''),
(3388, 3486, 2, 'Ivano-Frankivs\'ka Oblast\''),
(3389, 3487, 2, 'Khersons\'ka Oblast\''),
(3390, 3488, 2, 'Khmel\'nyts\'ka Oblast\''),
(3391, 3489, 2, 'Kirovohrads\'ka Oblast\''),
(3392, 3490, 2, 'Kyiv'),
(3393, 3491, 2, 'Kyivs\'ka Oblast\''),
(3394, 3492, 2, 'Luhans\'ka Oblast\''),
(3395, 3493, 2, 'L\'vivs\'ka Oblast\''),
(3396, 3494, 2, 'Mykolayivs\'ka Oblast\''),
(3397, 3495, 2, 'Odes\'ka Oblast\''),
(3398, 3496, 2, 'Poltavs\'ka Oblast\''),
(3399, 3497, 2, 'Rivnens\'ka Oblast\''),
(3400, 3498, 2, 'Sevastopol\''),
(3401, 3499, 2, 'Sums\'ka Oblast\''),
(3402, 3500, 2, 'Ternopil\'s\'ka Oblast\''),
(3403, 3501, 2, 'Vinnyts\'ka Oblast\''),
(3404, 3502, 2, 'Volyns\'ka Oblast\''),
(3405, 3503, 2, 'Zakarpats\'ka Oblast\''),
(3406, 3504, 2, 'Zaporiz\'ka Oblast\''),
(3407, 3505, 2, 'Zhytomyrs\'ka oblast\''),
(3408, 3506, 2, 'Abu Dhabi'),
(3409, 3507, 2, '\'Ajman'),
(3410, 3508, 2, 'Al Fujayrah'),
(3411, 3509, 2, 'Ash Shariqah'),
(3412, 3510, 2, 'Dubai'),
(3413, 3511, 2, 'R\'as al Khaymah'),
(3414, 3512, 2, 'Umm al Qaywayn'),
(3415, 3513, 2, 'Aberdeen'),
(3416, 3514, 2, 'Aberdeenshire'),
(3417, 3515, 2, 'Anglesey'),
(3418, 3516, 2, 'Angus'),
(3419, 3517, 2, 'Argyll and Bute'),
(3420, 3518, 2, 'Bedfordshire'),
(3421, 3519, 2, 'Berkshire'),
(3422, 3520, 2, 'Blaenau Gwent'),
(3423, 3521, 2, 'Bridgend'),
(3424, 3522, 2, 'Bristol'),
(3425, 3523, 2, 'Buckinghamshire'),
(3426, 3524, 2, 'Caerphilly'),
(3427, 3525, 2, 'Cambridgeshire'),
(3428, 3526, 2, 'Cardiff'),
(3429, 3527, 2, 'Carmarthenshire'),
(3430, 3528, 2, 'Ceredigion'),
(3431, 3529, 2, 'Cheshire'),
(3432, 3530, 2, 'Clackmannanshire'),
(3433, 3531, 2, 'Conwy'),
(3434, 3532, 2, 'Cornwall'),
(3435, 3533, 2, 'Denbighshire'),
(3436, 3534, 2, 'Derbyshire'),
(3437, 3535, 2, 'Devon'),
(3438, 3536, 2, 'Dorset'),
(3439, 3537, 2, 'Dumfries and Galloway'),
(3440, 3538, 2, 'Dundee'),
(3441, 3539, 2, 'Durham'),
(3442, 3540, 2, 'East Ayrshire'),
(3443, 3541, 2, 'East Dunbartonshire'),
(3444, 3542, 2, 'East Lothian'),
(3445, 3543, 2, 'East Renfrewshire'),
(3446, 3544, 2, 'East Riding of Yorkshire'),
(3447, 3545, 2, 'East Sussex'),
(3448, 3546, 2, 'Edinburgh'),
(3449, 3547, 2, 'Essex'),
(3450, 3548, 2, 'Falkirk'),
(3451, 3549, 2, 'Fife'),
(3452, 3550, 2, 'Flintshire'),
(3453, 3551, 2, 'Glasgow'),
(3454, 3552, 2, 'Gloucestershire'),
(3455, 3553, 2, 'Greater London'),
(3456, 3554, 2, 'Greater Manchester'),
(3457, 3555, 2, 'Gwynedd'),
(3458, 3556, 2, 'Hampshire'),
(3459, 3557, 2, 'Herefordshire'),
(3460, 3558, 2, 'Hertfordshire'),
(3461, 3559, 2, 'Highlands'),
(3462, 3560, 2, 'Inverclyde'),
(3463, 3561, 2, 'Isle of Wight'),
(3464, 3562, 2, 'Kent'),
(3465, 3563, 2, 'Lancashire'),
(3466, 3564, 2, 'Leicestershire'),
(3467, 3565, 2, 'Lincolnshire'),
(3468, 3566, 2, 'Merseyside'),
(3469, 3567, 2, 'Merthyr Tydfil'),
(3470, 3568, 2, 'Midlothian'),
(3471, 3569, 2, 'Monmouthshire'),
(3472, 3570, 2, 'Moray'),
(3473, 3571, 2, 'Neath Port Talbot'),
(3474, 3572, 2, 'Newport'),
(3475, 3573, 2, 'Norfolk'),
(3476, 3574, 2, 'North Ayrshire'),
(3477, 3575, 2, 'North Lanarkshire'),
(3478, 3576, 2, 'North Yorkshire'),
(3479, 3577, 2, 'Northamptonshire'),
(3480, 3578, 2, 'Northumberland'),
(3481, 3579, 2, 'Nottinghamshire'),
(3482, 3580, 2, 'Orkney Islands'),
(3483, 3581, 2, 'Oxfordshire'),
(3484, 3582, 2, 'Pembrokeshire'),
(3485, 3583, 2, 'Perth and Kinross'),
(3486, 3584, 2, 'Powys'),
(3487, 3585, 2, 'Renfrewshire'),
(3488, 3586, 2, 'Rhondda Cynon Taff'),
(3489, 3587, 2, 'Rutland'),
(3490, 3588, 2, 'Scottish Borders'),
(3491, 3589, 2, 'Shetland Islands'),
(3492, 3590, 2, 'Shropshire'),
(3493, 3591, 2, 'Somerset'),
(3494, 3592, 2, 'South Ayrshire'),
(3495, 3593, 2, 'South Lanarkshire'),
(3496, 3594, 2, 'South Yorkshire'),
(3497, 3595, 2, 'Staffordshire'),
(3498, 3596, 2, 'Stirling'),
(3499, 3597, 2, 'Suffolk'),
(3500, 3598, 2, 'Surrey'),
(3501, 3599, 2, 'Swansea'),
(3502, 3600, 2, 'Torfaen'),
(3503, 3601, 2, 'Tyne and Wear'),
(3504, 3602, 2, 'Vale of Glamorgan'),
(3505, 3603, 2, 'Warwickshire'),
(3506, 3604, 2, 'West Dunbartonshire'),
(3507, 3605, 2, 'West Lothian'),
(3508, 3606, 2, 'West Midlands'),
(3509, 3607, 2, 'West Sussex'),
(3510, 3608, 2, 'West Yorkshire'),
(3511, 3609, 2, 'Western Isles'),
(3512, 3610, 2, 'Wiltshire'),
(3513, 3611, 2, 'Worcestershire'),
(3514, 3612, 2, 'Wrexham'),
(3515, 3613, 2, 'Alabama'),
(3516, 3614, 2, 'Alaska'),
(3517, 3615, 2, 'American Samoa'),
(3518, 3616, 2, 'Arizona'),
(3519, 3617, 2, 'Arkansas'),
(3520, 3618, 2, 'Armed Forces Africa'),
(3521, 3619, 2, 'Armed Forces Americas'),
(3522, 3620, 2, 'Armed Forces Canada'),
(3523, 3621, 2, 'Armed Forces Europe'),
(3524, 3622, 2, 'Armed Forces Middle East'),
(3525, 3623, 2, 'Armed Forces Pacific'),
(3526, 3624, 2, 'California'),
(3527, 3625, 2, 'Colorado'),
(3528, 3626, 2, 'Connecticut'),
(3529, 3627, 2, 'Delaware'),
(3530, 3628, 2, 'District of Columbia'),
(3531, 3629, 2, 'Federated States Of Micronesia'),
(3532, 3630, 2, 'Florida'),
(3533, 3631, 2, 'Georgia'),
(3534, 3632, 2, 'Guam'),
(3535, 3633, 2, 'Hawaii'),
(3536, 3634, 2, 'Idaho'),
(3537, 3635, 2, 'Illinois'),
(3538, 3636, 2, 'Indiana'),
(3539, 3637, 2, 'Iowa'),
(3540, 3638, 2, 'Kansas'),
(3541, 3639, 2, 'Kentucky'),
(3542, 3640, 2, 'Louisiana'),
(3543, 3641, 2, 'Maine'),
(3544, 3642, 2, 'Marshall Islands'),
(3545, 3643, 2, 'Maryland'),
(3546, 3644, 2, 'Massachusetts'),
(3547, 3645, 2, 'Michigan'),
(3548, 3646, 2, 'Minnesota'),
(3549, 3647, 2, 'Mississippi'),
(3550, 3648, 2, 'Missouri'),
(3551, 3649, 2, 'Montana'),
(3552, 3650, 2, 'Nebraska'),
(3553, 3651, 2, 'Nevada'),
(3554, 3652, 2, 'New Hampshire'),
(3555, 3653, 2, 'New Jersey'),
(3556, 3654, 2, 'New Mexico'),
(3557, 3655, 2, 'New York'),
(3558, 3656, 2, 'North Carolina'),
(3559, 3657, 2, 'North Dakota'),
(3560, 3658, 2, 'Northern Mariana Islands'),
(3561, 3659, 2, 'Ohio'),
(3562, 3660, 2, 'Oklahoma'),
(3563, 3661, 2, 'Oregon'),
(3564, 3662, 2, 'Palau'),
(3565, 3663, 2, 'Pennsylvania'),
(3566, 3664, 2, 'Puerto Rico'),
(3567, 3665, 2, 'Rhode Island'),
(3568, 3666, 2, 'South Carolina'),
(3569, 3667, 2, 'South Dakota'),
(3570, 3668, 2, 'Tennessee'),
(3571, 3669, 2, 'Texas'),
(3572, 3670, 2, 'Utah'),
(3573, 3671, 2, 'Vermont'),
(3574, 3672, 2, 'Virgin Islands'),
(3575, 3673, 2, 'Virginia'),
(3576, 3674, 2, 'Washington'),
(3577, 3675, 2, 'West Virginia'),
(3578, 3676, 2, 'Wisconsin'),
(3579, 3677, 2, 'Wyoming'),
(3580, 3678, 2, 'Baker Island');
INSERT INTO `oc_zone_description` (`zone_description_id`, `zone_id`, `language_id`, `name`) VALUES
(3581, 3679, 2, 'Howland Island'),
(3582, 3680, 2, 'Jarvis Island'),
(3583, 3681, 2, 'Johnston Atoll'),
(3584, 3682, 2, 'Kingman Reef'),
(3585, 3683, 2, 'Midway Atoll'),
(3586, 3684, 2, 'Navassa Island'),
(3587, 3685, 2, 'Palmyra Atoll'),
(3588, 3686, 2, 'Wake Island'),
(3589, 3687, 2, 'Artigas'),
(3590, 3688, 2, 'Canelones'),
(3591, 3689, 2, 'Cerro Largo'),
(3592, 3690, 2, 'Colonia'),
(3593, 3691, 2, 'Durazno'),
(3594, 3692, 2, 'Flores'),
(3595, 3693, 2, 'Florida'),
(3596, 3694, 2, 'Lavalleja'),
(3597, 3695, 2, 'Maldonado'),
(3598, 3696, 2, 'Montevideo'),
(3599, 3697, 2, 'Paysandu'),
(3600, 3698, 2, 'Rio Negro'),
(3601, 3699, 2, 'Rivera'),
(3602, 3700, 2, 'Rocha'),
(3603, 3701, 2, 'Salto'),
(3604, 3702, 2, 'San Jose'),
(3605, 3703, 2, 'Soriano'),
(3606, 3704, 2, 'Tacuarembo'),
(3607, 3705, 2, 'Treinta y Tres'),
(3608, 3706, 2, 'Andijon'),
(3609, 3707, 2, 'Buxoro'),
(3610, 3708, 2, 'Farg\'ona'),
(3611, 3709, 2, 'Jizzax'),
(3612, 3710, 2, 'Namangan'),
(3613, 3711, 2, 'Navoiy'),
(3614, 3712, 2, 'Qashqadaryo'),
(3615, 3713, 2, 'Qoraqalpog\'iston Republikasi'),
(3616, 3714, 2, 'Samarqand'),
(3617, 3715, 2, 'Sirdaryo'),
(3618, 3716, 2, 'Surxondaryo'),
(3619, 3717, 2, 'Toshkent City'),
(3620, 3718, 2, 'Toshkent Region'),
(3621, 3719, 2, 'Xorazm'),
(3622, 3720, 2, 'Malampa'),
(3623, 3721, 2, 'Penama'),
(3624, 3722, 2, 'Sanma'),
(3625, 3723, 2, 'Shefa'),
(3626, 3724, 2, 'Tafea'),
(3627, 3725, 2, 'Torba'),
(3628, 3726, 2, 'Amazonas'),
(3629, 3727, 2, 'Anzoategui'),
(3630, 3728, 2, 'Apure'),
(3631, 3729, 2, 'Aragua'),
(3632, 3730, 2, 'Barinas'),
(3633, 3731, 2, 'Bolivar'),
(3634, 3732, 2, 'Carabobo'),
(3635, 3733, 2, 'Cojedes'),
(3636, 3734, 2, 'Delta Amacuro'),
(3637, 3735, 2, 'Dependencias Federales'),
(3638, 3736, 2, 'Distrito Federal'),
(3639, 3737, 2, 'Falcon'),
(3640, 3738, 2, 'Guarico'),
(3641, 3739, 2, 'Lara'),
(3642, 3740, 2, 'Merida'),
(3643, 3741, 2, 'Miranda'),
(3644, 3742, 2, 'Monagas'),
(3645, 3743, 2, 'Nueva Esparta'),
(3646, 3744, 2, 'Portuguesa'),
(3647, 3745, 2, 'Sucre'),
(3648, 3746, 2, 'Tachira'),
(3649, 3747, 2, 'Trujillo'),
(3650, 3748, 2, 'Vargas'),
(3651, 3749, 2, 'Yaracuy'),
(3652, 3750, 2, 'Zulia'),
(3653, 3751, 2, 'An Giang'),
(3654, 3752, 2, 'Bac Giang'),
(3655, 3753, 2, 'Bac Kan'),
(3656, 3754, 2, 'Bac Lieu'),
(3657, 3755, 2, 'Bac Ninh'),
(3658, 3756, 2, 'Ba Ria-Vung Tau'),
(3659, 3757, 2, 'Ben Tre'),
(3660, 3758, 2, 'Binh Dinh'),
(3661, 3759, 2, 'Binh Duong'),
(3662, 3760, 2, 'Binh Phuoc'),
(3663, 3761, 2, 'Binh Thuan'),
(3664, 3762, 2, 'Ca Mau'),
(3665, 3763, 2, 'Can Tho'),
(3666, 3764, 2, 'Cao Bang'),
(3667, 3765, 2, 'Dak Lak'),
(3668, 3766, 2, 'Dak Nong'),
(3669, 3767, 2, 'Da Nang'),
(3670, 3768, 2, 'Dien Bien'),
(3671, 3769, 2, 'Dong Nai'),
(3672, 3770, 2, 'Dong Thap'),
(3673, 3771, 2, 'Gia Lai'),
(3674, 3772, 2, 'Ha Giang'),
(3675, 3773, 2, 'Hai Duong'),
(3676, 3774, 2, 'Hai Phong'),
(3677, 3775, 2, 'Ha Nam'),
(3678, 3776, 2, 'Ha Noi'),
(3679, 3777, 2, 'Ha Tay'),
(3680, 3778, 2, 'Ha Tinh'),
(3681, 3779, 2, 'Hoa Binh'),
(3682, 3780, 2, 'Ho Chi Minh City'),
(3683, 3781, 2, 'Hau Giang'),
(3684, 3782, 2, 'Hung Yen'),
(3685, 3783, 2, 'Saint Croix'),
(3686, 3784, 2, 'Saint John'),
(3687, 3785, 2, 'Saint Thomas'),
(3688, 3786, 2, 'Alo'),
(3689, 3787, 2, 'Sigave'),
(3690, 3788, 2, 'Wallis'),
(3691, 3789, 2, 'Abyan'),
(3692, 3790, 2, 'Adan'),
(3693, 3791, 2, 'Amran'),
(3694, 3792, 2, 'Al Bayda'),
(3695, 3793, 2, 'Ad Dali'),
(3696, 3794, 2, 'Dhamar'),
(3697, 3795, 2, 'Hadramawt'),
(3698, 3796, 2, 'Hajjah'),
(3699, 3797, 2, 'Al Hudaydah'),
(3700, 3798, 2, 'Ibb'),
(3701, 3799, 2, 'Al Jawf'),
(3702, 3800, 2, 'Lahij'),
(3703, 3801, 2, 'Ma\'rib'),
(3704, 3802, 2, 'Al Mahrah'),
(3705, 3803, 2, 'Al Mahwit'),
(3706, 3804, 2, 'Sa\'dah'),
(3707, 3805, 2, 'San\'a'),
(3708, 3806, 2, 'Shabwah'),
(3709, 3807, 2, 'Ta\'izz'),
(3710, 3812, 2, 'Bas-Congo'),
(3711, 3813, 2, 'Bandundu'),
(3712, 3814, 2, 'Equateur'),
(3713, 3815, 2, 'Katanga'),
(3714, 3816, 2, 'Kasai-Oriental'),
(3715, 3817, 2, 'Kinshasa'),
(3716, 3818, 2, 'Kasai-Occidental'),
(3717, 3819, 2, 'Maniema'),
(3718, 3820, 2, 'Nord-Kivu'),
(3719, 3821, 2, 'Orientale'),
(3720, 3822, 2, 'Sud-Kivu'),
(3721, 3823, 2, 'Central'),
(3722, 3824, 2, 'Copperbelt'),
(3723, 3825, 2, 'Eastern'),
(3724, 3826, 2, 'Luapula'),
(3725, 3827, 2, 'Lusaka'),
(3726, 3828, 2, 'Northern'),
(3727, 3829, 2, 'North-Western'),
(3728, 3830, 2, 'Southern'),
(3729, 3831, 2, 'Western'),
(3730, 3832, 2, 'Bulawayo'),
(3731, 3833, 2, 'Harare'),
(3732, 3834, 2, 'Manicaland'),
(3733, 3835, 2, 'Mashonaland Central'),
(3734, 3836, 2, 'Mashonaland East'),
(3735, 3837, 2, 'Mashonaland West'),
(3736, 3838, 2, 'Masvingo'),
(3737, 3839, 2, 'Matabeleland North'),
(3738, 3840, 2, 'Matabeleland South'),
(3739, 3841, 2, 'Midlands'),
(3740, 3861, 2, 'Campobasso'),
(3741, 3862, 2, 'Carbonia-Iglesias'),
(3742, 3863, 2, 'Caserta'),
(3743, 3864, 2, 'Catania'),
(3744, 3865, 2, 'Catanzaro'),
(3745, 3866, 2, 'Chieti'),
(3746, 3867, 2, 'Como'),
(3747, 3868, 2, 'Cosenza'),
(3748, 3869, 2, 'Cremona'),
(3749, 3870, 2, 'Crotone'),
(3750, 3871, 2, 'Cuneo'),
(3751, 3872, 2, 'Enna'),
(3752, 3873, 2, 'Ferrara'),
(3753, 3874, 2, 'Firenze'),
(3754, 3875, 2, 'Foggia'),
(3755, 3876, 2, 'Forli-Cesena'),
(3756, 3877, 2, 'Frosinone'),
(3757, 3878, 2, 'Genova'),
(3758, 3879, 2, 'Gorizia'),
(3759, 3880, 2, 'Grosseto'),
(3760, 3881, 2, 'Imperia'),
(3761, 3882, 2, 'Isernia'),
(3762, 3883, 2, 'L&#39;Aquila'),
(3763, 3884, 2, 'La Spezia'),
(3764, 3885, 2, 'Latina'),
(3765, 3886, 2, 'Lecce'),
(3766, 3887, 2, 'Lecco'),
(3767, 3888, 2, 'Livorno'),
(3768, 3889, 2, 'Lodi'),
(3769, 3890, 2, 'Lucca'),
(3770, 3891, 2, 'Macerata'),
(3771, 3892, 2, 'Mantova'),
(3772, 3893, 2, 'Massa-Carrara'),
(3773, 3894, 2, 'Matera'),
(3774, 3895, 2, 'Medio Campidano'),
(3775, 3896, 2, 'Messina'),
(3776, 3897, 2, 'Milano'),
(3777, 3898, 2, 'Modena'),
(3778, 3899, 2, 'Napoli'),
(3779, 3900, 2, 'Novara'),
(3780, 3901, 2, 'Nuoro'),
(3781, 3902, 2, 'Ogliastra'),
(3782, 3903, 2, 'Olbia-Tempio'),
(3783, 3904, 2, 'Oristano'),
(3784, 3905, 2, 'Padova'),
(3785, 3906, 2, 'Palermo'),
(3786, 3907, 2, 'Parma'),
(3787, 3908, 2, 'Pavia'),
(3788, 3909, 2, 'Perugia'),
(3789, 3910, 2, 'Pesaro e Urbino'),
(3790, 3911, 2, 'Pescara'),
(3791, 3912, 2, 'Piacenza'),
(3792, 3913, 2, 'Pisa'),
(3793, 3914, 2, 'Pistoia'),
(3794, 3915, 2, 'Pordenone'),
(3795, 3916, 2, 'Potenza'),
(3796, 3917, 2, 'Prato'),
(3797, 3918, 2, 'Ragusa'),
(3798, 3919, 2, 'Ravenna'),
(3799, 3920, 2, 'Reggio Calabria'),
(3800, 3921, 2, 'Reggio Emilia'),
(3801, 3922, 2, 'Rieti'),
(3802, 3923, 2, 'Rimini'),
(3803, 3924, 2, 'Roma'),
(3804, 3925, 2, 'Rovigo'),
(3805, 3926, 2, 'Salerno'),
(3806, 3927, 2, 'Sassari'),
(3807, 3928, 2, 'Savona'),
(3808, 3929, 2, 'Siena'),
(3809, 3930, 2, 'Siracusa'),
(3810, 3931, 2, 'Sondrio'),
(3811, 3932, 2, 'Taranto'),
(3812, 3933, 2, 'Teramo'),
(3813, 3934, 2, 'Terni'),
(3814, 3935, 2, 'Torino'),
(3815, 3936, 2, 'Trapani'),
(3816, 3937, 2, 'Trento'),
(3817, 3938, 2, 'Treviso'),
(3818, 3939, 2, 'Trieste'),
(3819, 3940, 2, 'Udine'),
(3820, 3941, 2, 'Varese'),
(3821, 3942, 2, 'Venezia'),
(3822, 3943, 2, 'Verbano-Cusio-Ossola'),
(3823, 3944, 2, 'Vercelli'),
(3824, 3945, 2, 'Verona'),
(3825, 3946, 2, 'Vibo Valentia'),
(3826, 3947, 2, 'Vicenza'),
(3827, 3948, 2, 'Viterbo'),
(3828, 3949, 2, 'County Antrim'),
(3829, 3950, 2, 'County Armagh'),
(3830, 3951, 2, 'County Down'),
(3831, 3952, 2, 'County Fermanagh'),
(3832, 3953, 2, 'County Londonderry'),
(3833, 3954, 2, 'County Tyrone'),
(3834, 3955, 2, 'Cumbria'),
(3835, 3956, 2, 'Pomurska'),
(3836, 3957, 2, 'Podravska'),
(3837, 3958, 2, 'Koroška'),
(3838, 3959, 2, 'Savinjska'),
(3839, 3960, 2, 'Zasavska'),
(3840, 3961, 2, 'Spodnjeposavska'),
(3841, 3962, 2, 'Jugovzhodna Slovenija'),
(3842, 3963, 2, 'Osrednjeslovenska'),
(3843, 3964, 2, 'Gorenjska'),
(3844, 3965, 2, 'Notranjsko-kraška'),
(3845, 3966, 2, 'Goriška'),
(3846, 3967, 2, 'Obalno-kraška'),
(3847, 3968, 2, 'Ruse'),
(3848, 3969, 2, 'Alborz'),
(3849, 3970, 2, 'Brussels-Capital Region'),
(3850, 3971, 2, 'Aguascalientes'),
(3851, 3973, 2, 'Andrijevica'),
(3852, 3974, 2, 'Bar'),
(3853, 3975, 2, 'Berane'),
(3854, 3976, 2, 'Bijelo Polje'),
(3855, 3977, 2, 'Budva'),
(3856, 3978, 2, 'Cetinje'),
(3857, 3979, 2, 'Danilovgrad'),
(3858, 3980, 2, 'Herceg-Novi'),
(3859, 3981, 2, 'Kolašin'),
(3860, 3982, 2, 'Kotor'),
(3861, 3983, 2, 'Mojkovac'),
(3862, 3984, 2, 'Nikšić'),
(3863, 3985, 2, 'Plav'),
(3864, 3986, 2, 'Pljevlja'),
(3865, 3987, 2, 'Plužine'),
(3866, 3988, 2, 'Podgorica'),
(3867, 3989, 2, 'Rožaje'),
(3868, 3990, 2, 'Šavnik'),
(3869, 3991, 2, 'Tivat'),
(3870, 3992, 2, 'Ulcinj'),
(3871, 3993, 2, 'Žabljak'),
(3872, 3994, 2, 'Belgrade'),
(3873, 3995, 2, 'North Bačka'),
(3874, 3996, 2, 'Central Banat'),
(3875, 3997, 2, 'North Banat'),
(3876, 3998, 2, 'South Banat'),
(3877, 3999, 2, 'West Bačka'),
(3878, 4000, 2, 'South Bačka'),
(3879, 4001, 2, 'Srem'),
(3880, 4002, 2, 'Mačva'),
(3881, 4003, 2, 'Kolubara'),
(3882, 4004, 2, 'Podunavlje'),
(3883, 4005, 2, 'Braničevo'),
(3884, 4006, 2, 'Šumadija'),
(3885, 4007, 2, 'Pomoravlje'),
(3886, 4008, 2, 'Bor'),
(3887, 4009, 2, 'Zaječar'),
(3888, 4010, 2, 'Zlatibor'),
(3889, 4011, 2, 'Moravica'),
(3890, 4012, 2, 'Raška'),
(3891, 4013, 2, 'Rasina'),
(3892, 4014, 2, 'Nišava'),
(3893, 4015, 2, 'Toplica'),
(3894, 4016, 2, 'Pirot'),
(3895, 4017, 2, 'Jablanica'),
(3896, 4018, 2, 'Pčinja'),
(3897, 4020, 2, 'Bonaire'),
(3898, 4021, 2, 'Saba'),
(3899, 4022, 2, 'Sint Eustatius'),
(3900, 4023, 2, 'Central Equatoria'),
(3901, 4024, 2, 'Eastern Equatoria'),
(3902, 4025, 2, 'Jonglei'),
(3903, 4026, 2, 'Lakes'),
(3904, 4027, 2, 'Northern Bahr el-Ghazal'),
(3905, 4028, 2, 'Unity'),
(3906, 4029, 2, 'Upper Nile'),
(3907, 4030, 2, 'Warrap'),
(3908, 4031, 2, 'Western Bahr el-Ghazal'),
(3909, 4032, 2, 'Western Equatoria'),
(3910, 4036, 2, 'Ainaži, Salacgrīvas novads'),
(3911, 4037, 2, 'Aizkraukle, Aizkraukles novads'),
(3912, 4038, 2, 'Aizkraukles novads'),
(3913, 4039, 2, 'Aizpute, Aizputes novads'),
(3914, 4040, 2, 'Aizputes novads'),
(3915, 4041, 2, 'Aknīste, Aknīstes novads'),
(3916, 4042, 2, 'Aknīstes novads'),
(3917, 4043, 2, 'Aloja, Alojas novads'),
(3918, 4044, 2, 'Alojas novads'),
(3919, 4045, 2, 'Alsungas novads'),
(3920, 4046, 2, 'Alūksne, Alūksnes novads'),
(3921, 4047, 2, 'Alūksnes novads'),
(3922, 4048, 2, 'Amatas novads'),
(3923, 4049, 2, 'Ape, Apes novads'),
(3924, 4050, 2, 'Apes novads'),
(3925, 4051, 2, 'Auce, Auces novads'),
(3926, 4052, 2, 'Auces novads'),
(3927, 4053, 2, 'Ādažu novads'),
(3928, 4054, 2, 'Babītes novads'),
(3929, 4055, 2, 'Baldone, Baldones novads'),
(3930, 4056, 2, 'Baldones novads'),
(3931, 4057, 2, 'Baloži, Ķekavas novads'),
(3932, 4058, 2, 'Baltinavas novads'),
(3933, 4059, 2, 'Balvi, Balvu novads'),
(3934, 4060, 2, 'Balvu novads'),
(3935, 4061, 2, 'Bauska, Bauskas novads'),
(3936, 4062, 2, 'Bauskas novads'),
(3937, 4063, 2, 'Beverīnas novads'),
(3938, 4064, 2, 'Brocēni, Brocēnu novads'),
(3939, 4065, 2, 'Brocēnu novads'),
(3940, 4066, 2, 'Burtnieku novads'),
(3941, 4067, 2, 'Carnikavas novads'),
(3942, 4068, 2, 'Cesvaine, Cesvaines novads'),
(3943, 4069, 2, 'Cesvaines novads'),
(3944, 4070, 2, 'Cēsis, Cēsu novads'),
(3945, 4071, 2, 'Cēsu novads'),
(3946, 4072, 2, 'Ciblas novads'),
(3947, 4073, 2, 'Dagda, Dagdas novads'),
(3948, 4074, 2, 'Dagdas novads'),
(3949, 4075, 2, 'Daugavpils'),
(3950, 4076, 2, 'Daugavpils novads'),
(3951, 4077, 2, 'Dobele, Dobeles novads'),
(3952, 4078, 2, 'Dobeles novads'),
(3953, 4079, 2, 'Dundagas novads'),
(3954, 4080, 2, 'Durbe, Durbes novads'),
(3955, 4081, 2, 'Durbes novads'),
(3956, 4082, 2, 'Engures novads'),
(3957, 4083, 2, 'Ērgļu novads'),
(3958, 4084, 2, 'Garkalnes novads'),
(3959, 4085, 2, 'Grobiņa, Grobiņas novads'),
(3960, 4086, 2, 'Grobiņas novads'),
(3961, 4087, 2, 'Gulbene, Gulbenes novads'),
(3962, 4088, 2, 'Gulbenes novads'),
(3963, 4089, 2, 'Iecavas novads'),
(3964, 4090, 2, 'Ikšķile, Ikšķiles novads'),
(3965, 4091, 2, 'Ikšķiles novads'),
(3966, 4092, 2, 'Ilūkste, Ilūkstes novads'),
(3967, 4093, 2, 'Ilūkstes novads'),
(3968, 4094, 2, 'Inčukalna novads'),
(3969, 4095, 2, 'Jaunjelgava, Jaunjelgavas novads'),
(3970, 4096, 2, 'Jaunjelgavas novads'),
(3971, 4097, 2, 'Jaunpiebalgas novads'),
(3972, 4098, 2, 'Jaunpils novads'),
(3973, 4099, 2, 'Jelgava'),
(3974, 4100, 2, 'Jelgavas novads'),
(3975, 4101, 2, 'Jēkabpils'),
(3976, 4102, 2, 'Jēkabpils novads'),
(3977, 4103, 2, 'Jūrmala'),
(3978, 4104, 2, 'Kalnciems, Jelgavas novads'),
(3979, 4105, 2, 'Kandava, Kandavas novads'),
(3980, 4106, 2, 'Kandavas novads'),
(3981, 4107, 2, 'Kārsava, Kārsavas novads'),
(3982, 4108, 2, 'Kārsavas novads'),
(3983, 4109, 2, 'Kocēnu novads ,bij. Valmieras)'),
(3984, 4110, 2, 'Kokneses novads'),
(3985, 4111, 2, 'Krāslava, Krāslavas novads'),
(3986, 4112, 2, 'Krāslavas novads'),
(3987, 4113, 2, 'Krimuldas novads'),
(3988, 4114, 2, 'Krustpils novads'),
(3989, 4115, 2, 'Kuldīga, Kuldīgas novads'),
(3990, 4116, 2, 'Kuldīgas novads'),
(3991, 4117, 2, 'Ķeguma novads'),
(3992, 4118, 2, 'Ķegums, Ķeguma novads'),
(3993, 4119, 2, 'Ķekavas novads'),
(3994, 4120, 2, 'Lielvārde, Lielvārdes novads'),
(3995, 4121, 2, 'Lielvārdes novads'),
(3996, 4122, 2, 'Liepāja'),
(3997, 4123, 2, 'Limbaži, Limbažu novads'),
(3998, 4124, 2, 'Limbažu novads'),
(3999, 4125, 2, 'Līgatne, Līgatnes novads'),
(4000, 4126, 2, 'Līgatnes novads'),
(4001, 4127, 2, 'Līvāni, Līvānu novads'),
(4002, 4128, 2, 'Līvānu novads'),
(4003, 4129, 2, 'Lubāna, Lubānas novads'),
(4004, 4130, 2, 'Lubānas novads'),
(4005, 4131, 2, 'Ludza, Ludzas novads'),
(4006, 4132, 2, 'Ludzas novads'),
(4007, 4133, 2, 'Madona, Madonas novads'),
(4008, 4134, 2, 'Madonas novads'),
(4009, 4135, 2, 'Mazsalaca, Mazsalacas novads'),
(4010, 4136, 2, 'Mazsalacas novads'),
(4011, 4137, 2, 'Mālpils novads'),
(4012, 4138, 2, 'Mārupes novads'),
(4013, 4139, 2, 'Mērsraga novads'),
(4014, 4140, 2, 'Naukšēnu novads'),
(4015, 4141, 2, 'Neretas novads'),
(4016, 4142, 2, 'Nīcas novads'),
(4017, 4143, 2, 'Ogre, Ogres novads'),
(4018, 4144, 2, 'Ogres novads'),
(4019, 4145, 2, 'Olaine, Olaines novads'),
(4020, 4146, 2, 'Olaines novads'),
(4021, 4147, 2, 'Ozolnieku novads'),
(4022, 4148, 2, 'Pārgaujas novads'),
(4023, 4149, 2, 'Pāvilosta, Pāvilostas novads'),
(4024, 4150, 2, 'Pāvilostas novads'),
(4025, 4151, 2, 'Piltene, Ventspils novads'),
(4026, 4152, 2, 'Pļaviņas, Pļaviņu novads'),
(4027, 4153, 2, 'Pļaviņu novads'),
(4028, 4154, 2, 'Preiļi, Preiļu novads'),
(4029, 4155, 2, 'Preiļu novads'),
(4030, 4156, 2, 'Priekule, Priekules novads'),
(4031, 4157, 2, 'Priekules novads'),
(4032, 4158, 2, 'Priekuļu novads'),
(4033, 4159, 2, 'Raunas novads'),
(4034, 4160, 2, 'Rēzekne'),
(4035, 4161, 2, 'Rēzeknes novads'),
(4036, 4162, 2, 'Riebiņu novads'),
(4037, 4163, 2, 'Rīga'),
(4038, 4164, 2, 'Rojas novads'),
(4039, 4165, 2, 'Ropažu novads'),
(4040, 4166, 2, 'Rucavas novads'),
(4041, 4167, 2, 'Rugāju novads'),
(4042, 4168, 2, 'Rundāles novads'),
(4043, 4169, 2, 'Rūjiena, Rūjienas novads'),
(4044, 4170, 2, 'Rūjienas novads'),
(4045, 4171, 2, 'Sabile, Talsu novads'),
(4046, 4172, 2, 'Salacgrīva, Salacgrīvas novads'),
(4047, 4173, 2, 'Salacgrīvas novads'),
(4048, 4174, 2, 'Salas novads'),
(4049, 4175, 2, 'Salaspils novads'),
(4050, 4176, 2, 'Salaspils, Salaspils novads'),
(4051, 4177, 2, 'Saldus novads'),
(4052, 4178, 2, 'Saldus, Saldus novads'),
(4053, 4179, 2, 'Saulkrasti, Saulkrastu novads'),
(4054, 4180, 2, 'Saulkrastu novads'),
(4055, 4181, 2, 'Seda, Strenču novads'),
(4056, 4182, 2, 'Sējas novads'),
(4057, 4183, 2, 'Sigulda, Siguldas novads'),
(4058, 4184, 2, 'Siguldas novads'),
(4059, 4185, 2, 'Skrīveru novads'),
(4060, 4186, 2, 'Skrunda, Skrundas novads'),
(4061, 4187, 2, 'Skrundas novads'),
(4062, 4188, 2, 'Smiltene, Smiltenes novads'),
(4063, 4189, 2, 'Smiltenes novads'),
(4064, 4190, 2, 'Staicele, Alojas novads'),
(4065, 4191, 2, 'Stende, Talsu novads'),
(4066, 4192, 2, 'Stopiņu novads'),
(4067, 4193, 2, 'Strenči, Strenču novads'),
(4068, 4194, 2, 'Strenču novads'),
(4069, 4195, 2, 'Subate, Ilūkstes novads'),
(4070, 4196, 2, 'Talsi, Talsu novads'),
(4071, 4197, 2, 'Talsu novads'),
(4072, 4198, 2, 'Tērvetes novads'),
(4073, 4199, 2, 'Tukuma novads'),
(4074, 4200, 2, 'Tukums, Tukuma novads'),
(4075, 4201, 2, 'Vaiņodes novads'),
(4076, 4202, 2, 'Valdemārpils, Talsu novads'),
(4077, 4203, 2, 'Valka, Valkas novads'),
(4078, 4204, 2, 'Valkas novads'),
(4079, 4205, 2, 'Valmiera'),
(4080, 4206, 2, 'Vangaži, Inčukalna novads'),
(4081, 4207, 2, 'Varakļāni, Varakļānu novads'),
(4082, 4208, 2, 'Varakļānu novads'),
(4083, 4209, 2, 'Vārkavas novads'),
(4084, 4210, 2, 'Vecpiebalgas novads'),
(4085, 4211, 2, 'Vecumnieku novads'),
(4086, 4212, 2, 'Ventspils'),
(4087, 4213, 2, 'Ventspils novads'),
(4088, 4214, 2, 'Viesīte, Viesītes novads'),
(4089, 4215, 2, 'Viesītes novads'),
(4090, 4216, 2, 'Viļaka, Viļakas novads'),
(4091, 4217, 2, 'Viļakas novads'),
(4092, 4218, 2, 'Viļāni, Viļānu novads'),
(4093, 4219, 2, 'Viļānu novads'),
(4094, 4220, 2, 'Zilupe, Zilupes novads'),
(4095, 4221, 2, 'Zilupes novads'),
(4096, 4222, 2, 'Arica y Parinacota'),
(4097, 4223, 2, 'Los Rios'),
(4098, 4224, 2, 'Kharkivs\'ka Oblast\''),
(4099, 4225, 2, 'Beirut'),
(4100, 4226, 2, 'Bekaa'),
(4101, 4227, 2, 'Mount Lebanon'),
(4102, 4228, 2, 'Nabatieh'),
(4103, 4229, 2, 'North'),
(4104, 4230, 2, 'South'),
(4105, 4231, 2, 'Telangana'),
(4106, 4232, 2, 'Проверка'),
(4107, 4233, 2, '3'),
(8192, 1, 3, 'Badakhshan'),
(8193, 2, 3, 'Badghis'),
(8194, 3, 3, 'Baghlan'),
(8195, 4, 3, 'Balkh'),
(8196, 5, 3, 'Bamian'),
(8197, 6, 3, 'Farah'),
(8198, 7, 3, 'Faryab'),
(8199, 8, 3, 'Ghazni'),
(8200, 9, 3, 'Ghowr'),
(8201, 10, 3, 'Helmand'),
(8202, 11, 3, 'Herat'),
(8203, 12, 3, 'Jowzjan'),
(8204, 13, 3, 'Kabul'),
(8205, 14, 3, 'Kandahar'),
(8206, 15, 3, 'Kapisa'),
(8207, 16, 3, 'Khost'),
(8208, 17, 3, 'Konar'),
(8209, 18, 3, 'Kondoz'),
(8210, 19, 3, 'Laghman'),
(8211, 20, 3, 'Lowgar'),
(8212, 21, 3, 'Nangrahar'),
(8213, 22, 3, 'Nimruz'),
(8214, 23, 3, 'Nurestan'),
(8215, 24, 3, 'Oruzgan'),
(8216, 25, 3, 'Paktia'),
(8217, 26, 3, 'Paktika'),
(8218, 27, 3, 'Parwan'),
(8219, 28, 3, 'Samangan'),
(8220, 29, 3, 'Sar-e Pol'),
(8221, 30, 3, 'Takhar'),
(8222, 31, 3, 'Wardak'),
(8223, 32, 3, 'Zabol'),
(8224, 33, 3, 'Berat'),
(8225, 34, 3, 'Bulqize'),
(8226, 35, 3, 'Delvine'),
(8227, 36, 3, 'Devoll'),
(8228, 37, 3, 'Diber'),
(8229, 38, 3, 'Durres'),
(8230, 39, 3, 'Elbasan'),
(8231, 40, 3, 'Kolonje'),
(8232, 41, 3, 'Fier'),
(8233, 42, 3, 'Gjirokaster'),
(8234, 43, 3, 'Gramsh'),
(8235, 44, 3, 'Has'),
(8236, 45, 3, 'Kavaje'),
(8237, 46, 3, 'Kurbin'),
(8238, 47, 3, 'Kucove'),
(8239, 48, 3, 'Korce'),
(8240, 49, 3, 'Kruje'),
(8241, 50, 3, 'Kukes'),
(8242, 51, 3, 'Librazhd'),
(8243, 52, 3, 'Lezhe'),
(8244, 53, 3, 'Lushnje'),
(8245, 54, 3, 'Malesi e Madhe'),
(8246, 55, 3, 'Mallakaster'),
(8247, 56, 3, 'Mat'),
(8248, 57, 3, 'Mirdite'),
(8249, 58, 3, 'Peqin'),
(8250, 59, 3, 'Permet'),
(8251, 60, 3, 'Pogradec'),
(8252, 61, 3, 'Puke'),
(8253, 62, 3, 'Shkoder'),
(8254, 63, 3, 'Skrapar'),
(8255, 64, 3, 'Sarande'),
(8256, 65, 3, 'Tepelene'),
(8257, 66, 3, 'Tropoje'),
(8258, 67, 3, 'Tirane'),
(8259, 68, 3, 'Vlore'),
(8260, 69, 3, 'Adrar'),
(8261, 70, 3, 'Ain Defla'),
(8262, 71, 3, 'Ain Temouchent'),
(8263, 72, 3, 'Alger'),
(8264, 73, 3, 'Annaba'),
(8265, 74, 3, 'Batna'),
(8266, 75, 3, 'Bechar'),
(8267, 76, 3, 'Bejaia'),
(8268, 77, 3, 'Biskra'),
(8269, 78, 3, 'Blida'),
(8270, 79, 3, 'Bordj Bou Arreridj'),
(8271, 80, 3, 'Bouira'),
(8272, 81, 3, 'Boumerdes'),
(8273, 82, 3, 'Chlef'),
(8274, 83, 3, 'Constantine'),
(8275, 84, 3, 'Djelfa'),
(8276, 85, 3, 'El Bayadh'),
(8277, 86, 3, 'El Oued'),
(8278, 87, 3, 'El Tarf'),
(8279, 88, 3, 'Ghardaia'),
(8280, 89, 3, 'Guelma'),
(8281, 90, 3, 'Illizi'),
(8282, 91, 3, 'Jijel'),
(8283, 92, 3, 'Khenchela'),
(8284, 93, 3, 'Laghouat'),
(8285, 94, 3, 'Muaskar'),
(8286, 95, 3, 'Medea'),
(8287, 96, 3, 'Mila'),
(8288, 97, 3, 'Mostaganem'),
(8289, 98, 3, 'M\'Sila'),
(8290, 99, 3, 'Naama'),
(8291, 100, 3, 'Oran'),
(8292, 101, 3, 'Ouargla'),
(8293, 102, 3, 'Oum el-Bouaghi'),
(8294, 103, 3, 'Relizane'),
(8295, 104, 3, 'Saida'),
(8296, 105, 3, 'Setif'),
(8297, 106, 3, 'Sidi Bel Abbes'),
(8298, 107, 3, 'Skikda'),
(8299, 108, 3, 'Souk Ahras'),
(8300, 109, 3, 'Tamanghasset'),
(8301, 110, 3, 'Tebessa'),
(8302, 111, 3, 'Tiaret'),
(8303, 112, 3, 'Tindouf'),
(8304, 113, 3, 'Tipaza'),
(8305, 114, 3, 'Tissemsilt'),
(8306, 115, 3, 'Tizi Ouzou'),
(8307, 116, 3, 'Tlemcen'),
(8308, 117, 3, 'Eastern'),
(8309, 118, 3, 'Manu\'a'),
(8310, 119, 3, 'Rose Island'),
(8311, 120, 3, 'Swains Island'),
(8312, 121, 3, 'Western'),
(8313, 122, 3, 'Andorra la Vella'),
(8314, 123, 3, 'Canillo'),
(8315, 124, 3, 'Encamp'),
(8316, 125, 3, 'Escaldes-Engordany'),
(8317, 126, 3, 'La Massana'),
(8318, 127, 3, 'Ordino'),
(8319, 128, 3, 'Sant Julia de Loria'),
(8320, 129, 3, 'Bengo'),
(8321, 130, 3, 'Benguela'),
(8322, 131, 3, 'Bie'),
(8323, 132, 3, 'Cabinda'),
(8324, 133, 3, 'Cuando-Cubango'),
(8325, 134, 3, 'Cuanza Norte'),
(8326, 135, 3, 'Cuanza Sul'),
(8327, 136, 3, 'Cunene'),
(8328, 137, 3, 'Huambo'),
(8329, 138, 3, 'Huila'),
(8330, 139, 3, 'Luanda'),
(8331, 140, 3, 'Lunda Norte'),
(8332, 141, 3, 'Lunda Sul'),
(8333, 142, 3, 'Malange'),
(8334, 143, 3, 'Moxico'),
(8335, 144, 3, 'Namibe'),
(8336, 145, 3, 'Uige'),
(8337, 146, 3, 'Zaire'),
(8338, 147, 3, 'Saint George'),
(8339, 148, 3, 'Saint John'),
(8340, 149, 3, 'Saint Mary'),
(8341, 150, 3, 'Saint Paul'),
(8342, 151, 3, 'Saint Peter'),
(8343, 152, 3, 'Saint Philip'),
(8344, 153, 3, 'Barbuda'),
(8345, 154, 3, 'Redonda'),
(8346, 155, 3, 'Antartida e Islas del Atlantico'),
(8347, 156, 3, 'Buenos Aires'),
(8348, 157, 3, 'Catamarca'),
(8349, 158, 3, 'Chaco'),
(8350, 159, 3, 'Chubut'),
(8351, 160, 3, 'Cordoba'),
(8352, 161, 3, 'Corrientes'),
(8353, 162, 3, 'Distrito Federal'),
(8354, 163, 3, 'Entre Rios'),
(8355, 164, 3, 'Formosa'),
(8356, 165, 3, 'Jujuy'),
(8357, 166, 3, 'La Pampa'),
(8358, 167, 3, 'La Rioja'),
(8359, 168, 3, 'Mendoza'),
(8360, 169, 3, 'Misiones'),
(8361, 170, 3, 'Neuquen'),
(8362, 171, 3, 'Rio Negro'),
(8363, 172, 3, 'Salta'),
(8364, 173, 3, 'San Juan'),
(8365, 174, 3, 'San Luis'),
(8366, 175, 3, 'Santa Cruz'),
(8367, 176, 3, 'Santa Fe'),
(8368, 177, 3, 'Santiago del Estero'),
(8369, 178, 3, 'Tierra del Fuego'),
(8370, 179, 3, 'Tucuman'),
(8371, 180, 3, 'Aragatsotn'),
(8372, 181, 3, 'Ararat'),
(8373, 182, 3, 'Armavir'),
(8374, 183, 3, 'Geghark\'unik\''),
(8375, 184, 3, 'Kotayk\''),
(8376, 185, 3, 'Lorri'),
(8377, 186, 3, 'Shirak'),
(8378, 187, 3, 'Syunik\''),
(8379, 188, 3, 'Tavush'),
(8380, 189, 3, 'Vayots\' Dzor'),
(8381, 190, 3, 'Yerevan'),
(8382, 191, 3, 'Australian Capital Territory'),
(8383, 192, 3, 'New South Wales'),
(8384, 193, 3, 'Northern Territory'),
(8385, 194, 3, 'Queensland'),
(8386, 195, 3, 'South Australia'),
(8387, 196, 3, 'Tasmania'),
(8388, 197, 3, 'Victoria'),
(8389, 198, 3, 'Western Australia'),
(8390, 199, 3, 'Burgenland'),
(8391, 200, 3, 'Kärnten'),
(8392, 201, 3, 'Niederösterreich'),
(8393, 202, 3, 'Oberösterreich'),
(8394, 203, 3, 'Salzburg'),
(8395, 204, 3, 'Steiermark'),
(8396, 205, 3, 'Tirol'),
(8397, 206, 3, 'Vorarlberg'),
(8398, 207, 3, 'Wien'),
(8399, 208, 3, 'Ali Bayramli'),
(8400, 209, 3, 'Abseron'),
(8401, 210, 3, 'AgcabAdi'),
(8402, 211, 3, 'Agdam'),
(8403, 212, 3, 'Agdas'),
(8404, 213, 3, 'Agstafa'),
(8405, 214, 3, 'Agsu'),
(8406, 215, 3, 'Astara'),
(8407, 216, 3, 'Baki'),
(8408, 217, 3, 'BabAk'),
(8409, 218, 3, 'BalakAn'),
(8410, 219, 3, 'BArdA'),
(8411, 220, 3, 'Beylaqan'),
(8412, 221, 3, 'Bilasuvar'),
(8413, 222, 3, 'Cabrayil'),
(8414, 223, 3, 'Calilabab'),
(8415, 224, 3, 'Culfa'),
(8416, 225, 3, 'Daskasan'),
(8417, 226, 3, 'Davaci'),
(8418, 227, 3, 'Fuzuli'),
(8419, 228, 3, 'Ganca'),
(8420, 229, 3, 'Gadabay'),
(8421, 230, 3, 'Goranboy'),
(8422, 231, 3, 'Goycay'),
(8423, 232, 3, 'Haciqabul'),
(8424, 233, 3, 'Imisli'),
(8425, 234, 3, 'Ismayilli'),
(8426, 235, 3, 'Kalbacar'),
(8427, 236, 3, 'Kurdamir'),
(8428, 237, 3, 'Lankaran'),
(8429, 238, 3, 'Lacin'),
(8430, 239, 3, 'Lankaran'),
(8431, 240, 3, 'Lerik'),
(8432, 241, 3, 'Masalli'),
(8433, 242, 3, 'Mingacevir'),
(8434, 243, 3, 'Naftalan'),
(8435, 244, 3, 'Neftcala'),
(8436, 245, 3, 'Oguz'),
(8437, 246, 3, 'Ordubad'),
(8438, 247, 3, 'Qabala'),
(8439, 248, 3, 'Qax'),
(8440, 249, 3, 'Qazax'),
(8441, 250, 3, 'Qobustan'),
(8442, 251, 3, 'Quba'),
(8443, 252, 3, 'Qubadli'),
(8444, 253, 3, 'Qusar'),
(8445, 254, 3, 'Saki'),
(8446, 255, 3, 'Saatli'),
(8447, 256, 3, 'Sabirabad'),
(8448, 257, 3, 'Sadarak'),
(8449, 258, 3, 'Sahbuz'),
(8450, 259, 3, 'Saki'),
(8451, 260, 3, 'Salyan'),
(8452, 261, 3, 'Sumqayit'),
(8453, 262, 3, 'Samaxi'),
(8454, 263, 3, 'Samkir'),
(8455, 264, 3, 'Samux'),
(8456, 265, 3, 'Sarur'),
(8457, 266, 3, 'Siyazan'),
(8458, 267, 3, 'Susa'),
(8459, 268, 3, 'Susa'),
(8460, 269, 3, 'Tartar'),
(8461, 270, 3, 'Tovuz'),
(8462, 271, 3, 'Ucar'),
(8463, 272, 3, 'Xankandi'),
(8464, 273, 3, 'Xacmaz'),
(8465, 274, 3, 'Xanlar'),
(8466, 275, 3, 'Xizi'),
(8467, 276, 3, 'Xocali'),
(8468, 277, 3, 'Xocavand'),
(8469, 278, 3, 'Yardimli'),
(8470, 279, 3, 'Yevlax'),
(8471, 280, 3, 'Zangilan'),
(8472, 281, 3, 'Zaqatala'),
(8473, 282, 3, 'Zardab'),
(8474, 283, 3, 'Naxcivan'),
(8475, 284, 3, 'Acklins'),
(8476, 285, 3, 'Berry Islands'),
(8477, 286, 3, 'Bimini'),
(8478, 287, 3, 'Black Point'),
(8479, 288, 3, 'Cat Island'),
(8480, 289, 3, 'Central Abaco'),
(8481, 290, 3, 'Central Andros'),
(8482, 291, 3, 'Central Eleuthera'),
(8483, 292, 3, 'City of Freeport'),
(8484, 293, 3, 'Crooked Island'),
(8485, 294, 3, 'East Grand Bahama'),
(8486, 295, 3, 'Exuma'),
(8487, 296, 3, 'Grand Cay'),
(8488, 297, 3, 'Harbour Island'),
(8489, 298, 3, 'Hope Town'),
(8490, 299, 3, 'Inagua'),
(8491, 300, 3, 'Long Island'),
(8492, 301, 3, 'Mangrove Cay'),
(8493, 302, 3, 'Mayaguana'),
(8494, 303, 3, 'Moore\'s Island'),
(8495, 304, 3, 'North Abaco'),
(8496, 305, 3, 'North Andros'),
(8497, 306, 3, 'North Eleuthera'),
(8498, 307, 3, 'Ragged Island'),
(8499, 308, 3, 'Rum Cay'),
(8500, 309, 3, 'San Salvador'),
(8501, 310, 3, 'South Abaco'),
(8502, 311, 3, 'South Andros'),
(8503, 312, 3, 'South Eleuthera'),
(8504, 313, 3, 'Spanish Wells'),
(8505, 314, 3, 'West Grand Bahama'),
(8506, 315, 3, 'Capital'),
(8507, 316, 3, 'Central'),
(8508, 317, 3, 'Muharraq'),
(8509, 318, 3, 'Northern'),
(8510, 319, 3, 'Southern'),
(8511, 320, 3, 'Barisal'),
(8512, 321, 3, 'Chittagong'),
(8513, 322, 3, 'Dhaka'),
(8514, 323, 3, 'Khulna'),
(8515, 324, 3, 'Rajshahi'),
(8516, 325, 3, 'Sylhet'),
(8517, 326, 3, 'Christ Church'),
(8518, 327, 3, 'Saint Andrew'),
(8519, 328, 3, 'Saint George'),
(8520, 329, 3, 'Saint James'),
(8521, 330, 3, 'Saint John'),
(8522, 331, 3, 'Saint Joseph'),
(8523, 332, 3, 'Saint Lucy'),
(8524, 333, 3, 'Saint Michael'),
(8525, 334, 3, 'Saint Peter'),
(8526, 335, 3, 'Saint Philip'),
(8527, 336, 3, 'Saint Thomas'),
(8528, 337, 3, 'Brestskaya (Brest)'),
(8529, 338, 3, 'Homyel\'skaya (Homyel\')'),
(8530, 339, 3, 'Horad Minsk'),
(8531, 340, 3, 'Hrodzyenskaya (Hrodna)'),
(8532, 341, 3, 'Mahilyowskaya (Mahilyow)'),
(8533, 342, 3, 'Minskaya'),
(8534, 343, 3, 'Vitsyebskaya (Vitsyebsk)'),
(8535, 344, 3, 'Antwerpen'),
(8536, 345, 3, 'Brabant Wallon'),
(8537, 346, 3, 'Hainaut'),
(8538, 347, 3, 'Liège'),
(8539, 348, 3, 'Limburg'),
(8540, 349, 3, 'Luxembourg'),
(8541, 350, 3, 'Namur'),
(8542, 351, 3, 'Oost-Vlaanderen'),
(8543, 352, 3, 'Vlaams Brabant'),
(8544, 353, 3, 'West-Vlaanderen'),
(8545, 354, 3, 'Belize'),
(8546, 355, 3, 'Cayo'),
(8547, 356, 3, 'Corozal'),
(8548, 357, 3, 'Orange Walk'),
(8549, 358, 3, 'Stann Creek'),
(8550, 359, 3, 'Toledo'),
(8551, 360, 3, 'Alibori'),
(8552, 361, 3, 'Atakora'),
(8553, 362, 3, 'Atlantique'),
(8554, 363, 3, 'Borgou'),
(8555, 364, 3, 'Collines'),
(8556, 365, 3, 'Donga'),
(8557, 366, 3, 'Kouffo'),
(8558, 367, 3, 'Littoral'),
(8559, 368, 3, 'Mono'),
(8560, 369, 3, 'Oueme'),
(8561, 370, 3, 'Plateau'),
(8562, 371, 3, 'Zou'),
(8563, 372, 3, 'Devonshire'),
(8564, 373, 3, 'Hamilton City'),
(8565, 374, 3, 'Hamilton'),
(8566, 375, 3, 'Paget'),
(8567, 376, 3, 'Pembroke'),
(8568, 377, 3, 'Saint George City'),
(8569, 378, 3, 'Saint George\'s'),
(8570, 379, 3, 'Sandys'),
(8571, 380, 3, 'Smith\'s'),
(8572, 381, 3, 'Southampton'),
(8573, 382, 3, 'Warwick'),
(8574, 383, 3, 'Bumthang'),
(8575, 384, 3, 'Chukha'),
(8576, 385, 3, 'Dagana'),
(8577, 386, 3, 'Gasa'),
(8578, 387, 3, 'Haa'),
(8579, 388, 3, 'Lhuntse'),
(8580, 389, 3, 'Mongar'),
(8581, 390, 3, 'Paro'),
(8582, 391, 3, 'Pemagatshel'),
(8583, 392, 3, 'Punakha'),
(8584, 393, 3, 'Samdrup Jongkhar'),
(8585, 394, 3, 'Samtse'),
(8586, 395, 3, 'Sarpang'),
(8587, 396, 3, 'Thimphu'),
(8588, 397, 3, 'Trashigang'),
(8589, 398, 3, 'Trashiyangste'),
(8590, 399, 3, 'Trongsa'),
(8591, 400, 3, 'Tsirang'),
(8592, 401, 3, 'Wangdue Phodrang'),
(8593, 402, 3, 'Zhemgang'),
(8594, 403, 3, 'Beni'),
(8595, 404, 3, 'Chuquisaca'),
(8596, 405, 3, 'Cochabamba'),
(8597, 406, 3, 'La Paz'),
(8598, 407, 3, 'Oruro'),
(8599, 408, 3, 'Pando'),
(8600, 409, 3, 'Potosi'),
(8601, 410, 3, 'Santa Cruz'),
(8602, 411, 3, 'Tarija'),
(8603, 412, 3, 'Brcko district'),
(8604, 413, 3, 'Unsko-Sanski Kanton'),
(8605, 414, 3, 'Posavski Kanton'),
(8606, 415, 3, 'Tuzlanski Kanton'),
(8607, 416, 3, 'Zenicko-Dobojski Kanton'),
(8608, 417, 3, 'Bosanskopodrinjski Kanton'),
(8609, 418, 3, 'Srednjebosanski Kanton'),
(8610, 419, 3, 'Hercegovacko-neretvanski Kanton'),
(8611, 420, 3, 'Zapadnohercegovacka Zupanija'),
(8612, 421, 3, 'Kanton Sarajevo'),
(8613, 422, 3, 'Zapadnobosanska'),
(8614, 423, 3, 'Banja Luka'),
(8615, 424, 3, 'Doboj'),
(8616, 425, 3, 'Bijeljina'),
(8617, 426, 3, 'Vlasenica'),
(8618, 427, 3, 'Sarajevo-Romanija or Sokolac'),
(8619, 428, 3, 'Foca'),
(8620, 429, 3, 'Trebinje'),
(8621, 430, 3, 'Central'),
(8622, 431, 3, 'Ghanzi'),
(8623, 432, 3, 'Kgalagadi'),
(8624, 433, 3, 'Kgatleng'),
(8625, 434, 3, 'Kweneng'),
(8626, 435, 3, 'Ngamiland'),
(8627, 436, 3, 'North East'),
(8628, 437, 3, 'North West'),
(8629, 438, 3, 'South East'),
(8630, 439, 3, 'Southern'),
(8631, 440, 3, 'Acre'),
(8632, 441, 3, 'Alagoas'),
(8633, 442, 3, 'Amapá'),
(8634, 443, 3, 'Amazonas'),
(8635, 444, 3, 'Bahia'),
(8636, 445, 3, 'Ceará'),
(8637, 446, 3, 'Distrito Federal'),
(8638, 447, 3, 'Espírito Santo'),
(8639, 448, 3, 'Goiás'),
(8640, 449, 3, 'Maranhão'),
(8641, 450, 3, 'Mato Grosso'),
(8642, 451, 3, 'Mato Grosso do Sul'),
(8643, 452, 3, 'Minas Gerais'),
(8644, 453, 3, 'Pará'),
(8645, 454, 3, 'Paraíba'),
(8646, 455, 3, 'Paraná'),
(8647, 456, 3, 'Pernambuco'),
(8648, 457, 3, 'Piauí'),
(8649, 458, 3, 'Rio de Janeiro'),
(8650, 459, 3, 'Rio Grande do Norte'),
(8651, 460, 3, 'Rio Grande do Sul'),
(8652, 461, 3, 'Rondônia'),
(8653, 462, 3, 'Roraima'),
(8654, 463, 3, 'Santa Catarina'),
(8655, 464, 3, 'São Paulo'),
(8656, 465, 3, 'Sergipe'),
(8657, 466, 3, 'Tocantins'),
(8658, 467, 3, 'Peros Banhos'),
(8659, 468, 3, 'Salomon Islands'),
(8660, 469, 3, 'Nelsons Island'),
(8661, 470, 3, 'Three Brothers'),
(8662, 471, 3, 'Eagle Islands'),
(8663, 472, 3, 'Danger Island'),
(8664, 473, 3, 'Egmont Islands'),
(8665, 474, 3, 'Diego Garcia'),
(8666, 475, 3, 'Belait'),
(8667, 476, 3, 'Brunei and Muara'),
(8668, 477, 3, 'Temburong'),
(8669, 478, 3, 'Tutong'),
(8670, 479, 3, 'Blagoevgrad'),
(8671, 480, 3, 'Burgas'),
(8672, 481, 3, 'Dobrich'),
(8673, 482, 3, 'Gabrovo'),
(8674, 483, 3, 'Haskovo'),
(8675, 484, 3, 'Kardjali'),
(8676, 485, 3, 'Kyustendil'),
(8677, 486, 3, 'Lovech'),
(8678, 487, 3, 'Montana'),
(8679, 488, 3, 'Pazardjik'),
(8680, 489, 3, 'Pernik'),
(8681, 490, 3, 'Pleven'),
(8682, 491, 3, 'Plovdiv'),
(8683, 492, 3, 'Razgrad'),
(8684, 493, 3, 'Shumen'),
(8685, 494, 3, 'Silistra'),
(8686, 495, 3, 'Sliven'),
(8687, 496, 3, 'Smolyan'),
(8688, 497, 3, 'Sofia'),
(8689, 498, 3, 'Sofia - town'),
(8690, 499, 3, 'Stara Zagora'),
(8691, 500, 3, 'Targovishte'),
(8692, 501, 3, 'Varna'),
(8693, 502, 3, 'Veliko Tarnovo'),
(8694, 503, 3, 'Vidin'),
(8695, 504, 3, 'Vratza'),
(8696, 505, 3, 'Yambol'),
(8697, 506, 3, 'Bale'),
(8698, 507, 3, 'Bam'),
(8699, 508, 3, 'Banwa'),
(8700, 509, 3, 'Bazega'),
(8701, 510, 3, 'Bougouriba'),
(8702, 511, 3, 'Boulgou'),
(8703, 512, 3, 'Boulkiemde'),
(8704, 513, 3, 'Comoe'),
(8705, 514, 3, 'Ganzourgou'),
(8706, 515, 3, 'Gnagna'),
(8707, 516, 3, 'Gourma'),
(8708, 517, 3, 'Houet'),
(8709, 518, 3, 'Ioba'),
(8710, 519, 3, 'Kadiogo'),
(8711, 520, 3, 'Kenedougou'),
(8712, 521, 3, 'Komondjari'),
(8713, 522, 3, 'Kompienga'),
(8714, 523, 3, 'Kossi'),
(8715, 524, 3, 'Koulpelogo'),
(8716, 525, 3, 'Kouritenga'),
(8717, 526, 3, 'Kourweogo'),
(8718, 527, 3, 'Leraba'),
(8719, 528, 3, 'Loroum'),
(8720, 529, 3, 'Mouhoun'),
(8721, 530, 3, 'Nahouri'),
(8722, 531, 3, 'Namentenga'),
(8723, 532, 3, 'Nayala'),
(8724, 533, 3, 'Noumbiel'),
(8725, 534, 3, 'Oubritenga'),
(8726, 535, 3, 'Oudalan'),
(8727, 536, 3, 'Passore'),
(8728, 537, 3, 'Poni'),
(8729, 538, 3, 'Sanguie'),
(8730, 539, 3, 'Sanmatenga'),
(8731, 540, 3, 'Seno'),
(8732, 541, 3, 'Sissili'),
(8733, 542, 3, 'Soum'),
(8734, 543, 3, 'Sourou'),
(8735, 544, 3, 'Tapoa'),
(8736, 545, 3, 'Tuy'),
(8737, 546, 3, 'Yagha'),
(8738, 547, 3, 'Yatenga'),
(8739, 548, 3, 'Ziro'),
(8740, 549, 3, 'Zondoma'),
(8741, 550, 3, 'Zoundweogo'),
(8742, 551, 3, 'Bubanza'),
(8743, 552, 3, 'Bujumbura'),
(8744, 553, 3, 'Bururi'),
(8745, 554, 3, 'Cankuzo'),
(8746, 555, 3, 'Cibitoke'),
(8747, 556, 3, 'Gitega'),
(8748, 557, 3, 'Karuzi'),
(8749, 558, 3, 'Kayanza'),
(8750, 559, 3, 'Kirundo'),
(8751, 560, 3, 'Makamba'),
(8752, 561, 3, 'Muramvya'),
(8753, 562, 3, 'Muyinga'),
(8754, 563, 3, 'Mwaro'),
(8755, 564, 3, 'Ngozi'),
(8756, 565, 3, 'Rutana'),
(8757, 566, 3, 'Ruyigi'),
(8758, 567, 3, 'Phnom Penh'),
(8759, 568, 3, 'Preah Seihanu (Kompong Som or Sihanoukville)'),
(8760, 569, 3, 'Pailin'),
(8761, 570, 3, 'Keb'),
(8762, 571, 3, 'Banteay Meanchey'),
(8763, 572, 3, 'Battambang'),
(8764, 573, 3, 'Kampong Cham'),
(8765, 574, 3, 'Kampong Chhnang'),
(8766, 575, 3, 'Kampong Speu'),
(8767, 576, 3, 'Kampong Som'),
(8768, 577, 3, 'Kampong Thom'),
(8769, 578, 3, 'Kampot'),
(8770, 579, 3, 'Kandal'),
(8771, 580, 3, 'Kaoh Kong'),
(8772, 581, 3, 'Kratie'),
(8773, 582, 3, 'Mondul Kiri'),
(8774, 583, 3, 'Oddar Meancheay'),
(8775, 584, 3, 'Pursat'),
(8776, 585, 3, 'Preah Vihear'),
(8777, 586, 3, 'Prey Veng'),
(8778, 587, 3, 'Ratanak Kiri'),
(8779, 588, 3, 'Siemreap'),
(8780, 589, 3, 'Stung Treng'),
(8781, 590, 3, 'Svay Rieng'),
(8782, 591, 3, 'Takeo'),
(8783, 592, 3, 'Adamawa (Adamaoua)'),
(8784, 593, 3, 'Centre'),
(8785, 594, 3, 'East (Est)'),
(8786, 595, 3, 'Extreme North (Extreme-Nord)'),
(8787, 596, 3, 'Littoral'),
(8788, 597, 3, 'North (Nord)'),
(8789, 598, 3, 'Northwest (Nord-Ouest)'),
(8790, 599, 3, 'West (Ouest)'),
(8791, 600, 3, 'South (Sud)'),
(8792, 601, 3, 'Southwest (Sud-Ouest).'),
(8793, 602, 3, 'Alberta'),
(8794, 603, 3, 'British Columbia'),
(8795, 604, 3, 'Manitoba'),
(8796, 605, 3, 'New Brunswick'),
(8797, 606, 3, 'Newfoundland and Labrador'),
(8798, 607, 3, 'Northwest Territories'),
(8799, 608, 3, 'Nova Scotia'),
(8800, 609, 3, 'Nunavut'),
(8801, 610, 3, 'Ontario'),
(8802, 611, 3, 'Prince Edward Island'),
(8803, 612, 3, 'Qu&eacute;bec'),
(8804, 613, 3, 'Saskatchewan'),
(8805, 614, 3, 'Yukon Territory'),
(8806, 615, 3, 'Boa Vista'),
(8807, 616, 3, 'Brava'),
(8808, 617, 3, 'Calheta de Sao Miguel'),
(8809, 618, 3, 'Maio'),
(8810, 619, 3, 'Mosteiros'),
(8811, 620, 3, 'Paul'),
(8812, 621, 3, 'Porto Novo'),
(8813, 622, 3, 'Praia'),
(8814, 623, 3, 'Ribeira Grande'),
(8815, 624, 3, 'Sal'),
(8816, 625, 3, 'Santa Catarina'),
(8817, 626, 3, 'Santa Cruz'),
(8818, 627, 3, 'Sao Domingos'),
(8819, 628, 3, 'Sao Filipe'),
(8820, 629, 3, 'Sao Nicolau'),
(8821, 630, 3, 'Sao Vicente'),
(8822, 631, 3, 'Tarrafal'),
(8823, 632, 3, 'Creek'),
(8824, 633, 3, 'Eastern'),
(8825, 634, 3, 'Midland'),
(8826, 635, 3, 'South Town'),
(8827, 636, 3, 'Spot Bay'),
(8828, 637, 3, 'Stake Bay'),
(8829, 638, 3, 'West End'),
(8830, 639, 3, 'Western'),
(8831, 640, 3, 'Bamingui-Bangoran'),
(8832, 641, 3, 'Basse-Kotto'),
(8833, 642, 3, 'Haute-Kotto'),
(8834, 643, 3, 'Haut-Mbomou'),
(8835, 644, 3, 'Kemo'),
(8836, 645, 3, 'Lobaye'),
(8837, 646, 3, 'Mambere-KadeÔ'),
(8838, 647, 3, 'Mbomou'),
(8839, 648, 3, 'Nana-Mambere'),
(8840, 649, 3, 'Ombella-M\'Poko'),
(8841, 650, 3, 'Ouaka'),
(8842, 651, 3, 'Ouham'),
(8843, 652, 3, 'Ouham-Pende'),
(8844, 653, 3, 'Vakaga'),
(8845, 654, 3, 'Nana-Grebizi'),
(8846, 655, 3, 'Sangha-Mbaere'),
(8847, 656, 3, 'Bangui'),
(8848, 657, 3, 'Batha'),
(8849, 658, 3, 'Biltine'),
(8850, 659, 3, 'Borkou-Ennedi-Tibesti'),
(8851, 660, 3, 'Chari-Baguirmi'),
(8852, 661, 3, 'Guera'),
(8853, 662, 3, 'Kanem'),
(8854, 663, 3, 'Lac'),
(8855, 664, 3, 'Logone Occidental'),
(8856, 665, 3, 'Logone Oriental'),
(8857, 666, 3, 'Mayo-Kebbi'),
(8858, 667, 3, 'Moyen-Chari'),
(8859, 668, 3, 'Ouaddai'),
(8860, 669, 3, 'Salamat'),
(8861, 670, 3, 'Tandjile'),
(8862, 671, 3, 'Aisen del General Carlos Ibanez'),
(8863, 672, 3, 'Antofagasta'),
(8864, 673, 3, 'Araucania'),
(8865, 674, 3, 'Atacama'),
(8866, 675, 3, 'Bio-Bio'),
(8867, 676, 3, 'Coquimbo'),
(8868, 677, 3, 'Libertador General Bernardo O\'Higgins'),
(8869, 678, 3, 'Los Lagos'),
(8870, 679, 3, 'Magallanes y de la Antartica Chilena'),
(8871, 680, 3, 'Maule'),
(8872, 681, 3, 'Region Metropolitana'),
(8873, 682, 3, 'Tarapaca'),
(8874, 683, 3, 'Valparaiso'),
(8875, 684, 3, 'Anhui'),
(8876, 685, 3, 'Beijing'),
(8877, 686, 3, 'Chongqing'),
(8878, 687, 3, 'Fujian'),
(8879, 688, 3, 'Gansu'),
(8880, 689, 3, 'Guangdong'),
(8881, 690, 3, 'Guangxi'),
(8882, 691, 3, 'Guizhou'),
(8883, 692, 3, 'Hainan'),
(8884, 693, 3, 'Hebei'),
(8885, 694, 3, 'Heilongjiang'),
(8886, 695, 3, 'Henan'),
(8887, 696, 3, 'Hong Kong'),
(8888, 697, 3, 'Hubei'),
(8889, 698, 3, 'Hunan'),
(8890, 699, 3, 'Inner Mongolia'),
(8891, 700, 3, 'Jiangsu'),
(8892, 701, 3, 'Jiangxi'),
(8893, 702, 3, 'Jilin'),
(8894, 703, 3, 'Liaoning'),
(8895, 704, 3, 'Macau'),
(8896, 705, 3, 'Ningxia'),
(8897, 706, 3, 'Shaanxi'),
(8898, 707, 3, 'Shandong'),
(8899, 708, 3, 'Shanghai'),
(8900, 709, 3, 'Shanxi'),
(8901, 710, 3, 'Sichuan'),
(8902, 711, 3, 'Tianjin'),
(8903, 712, 3, 'Xinjiang'),
(8904, 713, 3, 'Yunnan'),
(8905, 714, 3, 'Zhejiang'),
(8906, 715, 3, 'Direction Island'),
(8907, 716, 3, 'Home Island'),
(8908, 717, 3, 'Horsburgh Island'),
(8909, 718, 3, 'South Island'),
(8910, 719, 3, 'West Island'),
(8911, 720, 3, 'Amazonas'),
(8912, 721, 3, 'Antioquia'),
(8913, 722, 3, 'Arauca'),
(8914, 723, 3, 'Atlantico'),
(8915, 724, 3, 'Bogota D.C.'),
(8916, 725, 3, 'Bolivar'),
(8917, 726, 3, 'Boyaca'),
(8918, 727, 3, 'Caldas'),
(8919, 728, 3, 'Caqueta'),
(8920, 729, 3, 'Casanare'),
(8921, 730, 3, 'Cauca'),
(8922, 731, 3, 'Cesar'),
(8923, 732, 3, 'Choco'),
(8924, 733, 3, 'Cordoba'),
(8925, 734, 3, 'Cundinamarca'),
(8926, 735, 3, 'Guainia'),
(8927, 736, 3, 'Guajira'),
(8928, 737, 3, 'Guaviare'),
(8929, 738, 3, 'Huila'),
(8930, 739, 3, 'Magdalena'),
(8931, 740, 3, 'Meta'),
(8932, 741, 3, 'Narino'),
(8933, 742, 3, 'Norte de Santander'),
(8934, 743, 3, 'Putumayo'),
(8935, 744, 3, 'Quindio'),
(8936, 745, 3, 'Risaralda'),
(8937, 746, 3, 'San Andres y Providencia'),
(8938, 747, 3, 'Santander'),
(8939, 748, 3, 'Sucre'),
(8940, 749, 3, 'Tolima'),
(8941, 750, 3, 'Valle del Cauca'),
(8942, 751, 3, 'Vaupes'),
(8943, 752, 3, 'Vichada'),
(8944, 753, 3, 'Grande Comore'),
(8945, 754, 3, 'Anjouan'),
(8946, 755, 3, 'Moheli'),
(8947, 756, 3, 'Bouenza'),
(8948, 757, 3, 'Brazzaville'),
(8949, 758, 3, 'Cuvette'),
(8950, 759, 3, 'Cuvette-Ouest'),
(8951, 760, 3, 'Kouilou'),
(8952, 761, 3, 'Lekoumou'),
(8953, 762, 3, 'Likouala'),
(8954, 763, 3, 'Niari'),
(8955, 764, 3, 'Plateaux'),
(8956, 765, 3, 'Pool'),
(8957, 766, 3, 'Sangha'),
(8958, 767, 3, 'Pukapuka'),
(8959, 768, 3, 'Rakahanga'),
(8960, 769, 3, 'Manihiki'),
(8961, 770, 3, 'Penrhyn'),
(8962, 771, 3, 'Nassau Island'),
(8963, 772, 3, 'Surwarrow'),
(8964, 773, 3, 'Palmerston'),
(8965, 774, 3, 'Aitutaki'),
(8966, 775, 3, 'Manuae'),
(8967, 776, 3, 'Takutea'),
(8968, 777, 3, 'Mitiaro'),
(8969, 778, 3, 'Atiu'),
(8970, 779, 3, 'Mauke'),
(8971, 780, 3, 'Rarotonga'),
(8972, 781, 3, 'Mangaia'),
(8973, 782, 3, 'Alajuela'),
(8974, 783, 3, 'Cartago'),
(8975, 784, 3, 'Guanacaste'),
(8976, 785, 3, 'Heredia'),
(8977, 786, 3, 'Limon'),
(8978, 787, 3, 'Puntarenas'),
(8979, 788, 3, 'San Jose'),
(8980, 789, 3, 'Abengourou'),
(8981, 790, 3, 'Abidjan'),
(8982, 791, 3, 'Aboisso'),
(8983, 792, 3, 'Adiake'),
(8984, 793, 3, 'Adzope'),
(8985, 794, 3, 'Agboville'),
(8986, 795, 3, 'Agnibilekrou'),
(8987, 796, 3, 'Alepe'),
(8988, 797, 3, 'Bocanda'),
(8989, 798, 3, 'Bangolo'),
(8990, 799, 3, 'Beoumi'),
(8991, 800, 3, 'Biankouma'),
(8992, 801, 3, 'Bondoukou'),
(8993, 802, 3, 'Bongouanou'),
(8994, 803, 3, 'Bouafle'),
(8995, 804, 3, 'Bouake'),
(8996, 805, 3, 'Bouna'),
(8997, 806, 3, 'Boundiali'),
(8998, 807, 3, 'Dabakala'),
(8999, 808, 3, 'Dabou'),
(9000, 809, 3, 'Daloa'),
(9001, 810, 3, 'Danane'),
(9002, 811, 3, 'Daoukro'),
(9003, 812, 3, 'Dimbokro'),
(9004, 813, 3, 'Divo'),
(9005, 814, 3, 'Duekoue'),
(9006, 815, 3, 'Ferkessedougou'),
(9007, 816, 3, 'Gagnoa'),
(9008, 817, 3, 'Grand-Bassam'),
(9009, 818, 3, 'Grand-Lahou'),
(9010, 819, 3, 'Guiglo'),
(9011, 820, 3, 'Issia'),
(9012, 821, 3, 'Jacqueville'),
(9013, 822, 3, 'Katiola'),
(9014, 823, 3, 'Korhogo'),
(9015, 824, 3, 'Lakota'),
(9016, 825, 3, 'Man'),
(9017, 826, 3, 'Mankono'),
(9018, 827, 3, 'Mbahiakro'),
(9019, 828, 3, 'Odienne'),
(9020, 829, 3, 'Oume'),
(9021, 830, 3, 'Sakassou'),
(9022, 831, 3, 'San-Pedro'),
(9023, 832, 3, 'Sassandra'),
(9024, 833, 3, 'Seguela'),
(9025, 834, 3, 'Sinfra'),
(9026, 835, 3, 'Soubre'),
(9027, 836, 3, 'Tabou'),
(9028, 837, 3, 'Tanda'),
(9029, 838, 3, 'Tiebissou'),
(9030, 839, 3, 'Tingrela'),
(9031, 840, 3, 'Tiassale'),
(9032, 841, 3, 'Touba'),
(9033, 842, 3, 'Toulepleu'),
(9034, 843, 3, 'Toumodi'),
(9035, 844, 3, 'Vavoua'),
(9036, 845, 3, 'Yamoussoukro'),
(9037, 846, 3, 'Zuenoula'),
(9038, 847, 3, 'Bjelovarsko-bilogorska'),
(9039, 848, 3, 'Grad Zagreb'),
(9040, 849, 3, 'Dubrovačko-neretvanska'),
(9041, 850, 3, 'Istarska'),
(9042, 851, 3, 'Karlovačka'),
(9043, 852, 3, 'Koprivničko-križevačka'),
(9044, 853, 3, 'Krapinsko-zagorska'),
(9045, 854, 3, 'Ličko-senjska'),
(9046, 855, 3, 'Međimurska'),
(9047, 856, 3, 'Osječko-baranjska'),
(9048, 857, 3, 'Požeško-slavonska'),
(9049, 858, 3, 'Primorsko-goranska'),
(9050, 859, 3, 'Šibensko-kninska'),
(9051, 860, 3, 'Sisačko-moslavačka'),
(9052, 861, 3, 'Brodsko-posavska'),
(9053, 862, 3, 'Splitsko-dalmatinska'),
(9054, 863, 3, 'Varaždinska'),
(9055, 864, 3, 'Virovitičko-podravska'),
(9056, 865, 3, 'Vukovarsko-srijemska'),
(9057, 866, 3, 'Zadarska'),
(9058, 867, 3, 'Zagrebačka'),
(9059, 868, 3, 'Camaguey'),
(9060, 869, 3, 'Ciego de Avila'),
(9061, 870, 3, 'Cienfuegos'),
(9062, 871, 3, 'Ciudad de La Habana'),
(9063, 872, 3, 'Granma'),
(9064, 873, 3, 'Guantanamo'),
(9065, 874, 3, 'Holguin'),
(9066, 875, 3, 'Isla de la Juventud'),
(9067, 876, 3, 'La Habana'),
(9068, 877, 3, 'Las Tunas'),
(9069, 878, 3, 'Matanzas'),
(9070, 879, 3, 'Pinar del Rio'),
(9071, 880, 3, 'Sancti Spiritus'),
(9072, 881, 3, 'Santiago de Cuba'),
(9073, 882, 3, 'Villa Clara'),
(9074, 883, 3, 'Famagusta'),
(9075, 884, 3, 'Kyrenia'),
(9076, 885, 3, 'Larnaca'),
(9077, 886, 3, 'Limassol'),
(9078, 887, 3, 'Nicosia'),
(9079, 888, 3, 'Paphos'),
(9080, 889, 3, 'Ústecký'),
(9081, 890, 3, 'Jihočeský'),
(9082, 891, 3, 'Jihomoravský'),
(9083, 892, 3, 'Karlovarský'),
(9084, 893, 3, 'Královehradecký'),
(9085, 894, 3, 'Liberecký'),
(9086, 895, 3, 'Moravskoslezský'),
(9087, 896, 3, 'Olomoucký'),
(9088, 897, 3, 'Pardubický'),
(9089, 898, 3, 'Plzeňský'),
(9090, 899, 3, 'Praha'),
(9091, 900, 3, 'Středočeský'),
(9092, 901, 3, 'Vysočina'),
(9093, 902, 3, 'Zlínský'),
(9094, 903, 3, 'Arhus'),
(9095, 904, 3, 'Bornholm'),
(9096, 905, 3, 'Copenhagen'),
(9097, 906, 3, 'Faroe Islands'),
(9098, 907, 3, 'Frederiksborg'),
(9099, 908, 3, 'Fyn'),
(9100, 909, 3, 'Kobenhavn'),
(9101, 910, 3, 'Nordjylland'),
(9102, 911, 3, 'Ribe'),
(9103, 912, 3, 'Ringkobing'),
(9104, 913, 3, 'Roskilde'),
(9105, 914, 3, 'Sonderjylland'),
(9106, 915, 3, 'Storstrom'),
(9107, 916, 3, 'Vejle'),
(9108, 917, 3, 'Vestj&aelig;lland'),
(9109, 918, 3, 'Viborg'),
(9110, 919, 3, '\'Ali Sabih'),
(9111, 920, 3, 'Dikhil'),
(9112, 921, 3, 'Djibouti'),
(9113, 922, 3, 'Obock'),
(9114, 923, 3, 'Tadjoura'),
(9115, 924, 3, 'Saint Andrew Parish'),
(9116, 925, 3, 'Saint David Parish'),
(9117, 926, 3, 'Saint George Parish'),
(9118, 927, 3, 'Saint John Parish'),
(9119, 928, 3, 'Saint Joseph Parish'),
(9120, 929, 3, 'Saint Luke Parish'),
(9121, 930, 3, 'Saint Mark Parish'),
(9122, 931, 3, 'Saint Patrick Parish'),
(9123, 932, 3, 'Saint Paul Parish'),
(9124, 933, 3, 'Saint Peter Parish'),
(9125, 934, 3, 'Distrito Nacional'),
(9126, 935, 3, 'Azua'),
(9127, 936, 3, 'Baoruco'),
(9128, 937, 3, 'Barahona'),
(9129, 938, 3, 'Dajabon'),
(9130, 939, 3, 'Duarte'),
(9131, 940, 3, 'Elias Pina'),
(9132, 941, 3, 'El Seybo'),
(9133, 942, 3, 'Espaillat'),
(9134, 943, 3, 'Hato Mayor'),
(9135, 944, 3, 'Independencia'),
(9136, 945, 3, 'La Altagracia'),
(9137, 946, 3, 'La Romana'),
(9138, 947, 3, 'La Vega'),
(9139, 948, 3, 'Maria Trinidad Sanchez'),
(9140, 949, 3, 'Monsenor Nouel'),
(9141, 950, 3, 'Monte Cristi'),
(9142, 951, 3, 'Monte Plata'),
(9143, 952, 3, 'Pedernales'),
(9144, 953, 3, 'Peravia (Bani)'),
(9145, 954, 3, 'Puerto Plata'),
(9146, 955, 3, 'Salcedo'),
(9147, 956, 3, 'Samana'),
(9148, 957, 3, 'Sanchez Ramirez'),
(9149, 958, 3, 'San Cristobal'),
(9150, 959, 3, 'San Jose de Ocoa'),
(9151, 960, 3, 'San Juan'),
(9152, 961, 3, 'San Pedro de Macoris'),
(9153, 962, 3, 'Santiago'),
(9154, 963, 3, 'Santiago Rodriguez'),
(9155, 964, 3, 'Santo Domingo'),
(9156, 965, 3, 'Valverde'),
(9157, 966, 3, 'Aileu'),
(9158, 967, 3, 'Ainaro'),
(9159, 968, 3, 'Baucau'),
(9160, 969, 3, 'Bobonaro'),
(9161, 970, 3, 'Cova Lima'),
(9162, 971, 3, 'Dili'),
(9163, 972, 3, 'Ermera'),
(9164, 973, 3, 'Lautem'),
(9165, 974, 3, 'Liquica'),
(9166, 975, 3, 'Manatuto'),
(9167, 976, 3, 'Manufahi'),
(9168, 977, 3, 'Oecussi'),
(9169, 978, 3, 'Viqueque'),
(9170, 979, 3, 'Azuay'),
(9171, 980, 3, 'Bolivar'),
(9172, 981, 3, 'Ca&ntilde;ar'),
(9173, 982, 3, 'Carchi'),
(9174, 983, 3, 'Chimborazo'),
(9175, 984, 3, 'Cotopaxi'),
(9176, 985, 3, 'El Oro'),
(9177, 986, 3, 'Esmeraldas'),
(9178, 987, 3, 'Gal&aacute;pagos'),
(9179, 988, 3, 'Guayas'),
(9180, 989, 3, 'Imbabura'),
(9181, 990, 3, 'Loja'),
(9182, 991, 3, 'Los Rios'),
(9183, 992, 3, 'Manab&iacute;'),
(9184, 993, 3, 'Morona Santiago'),
(9185, 994, 3, 'Napo'),
(9186, 995, 3, 'Orellana'),
(9187, 996, 3, 'Pastaza'),
(9188, 997, 3, 'Pichincha'),
(9189, 998, 3, 'Sucumb&iacute;os'),
(9190, 999, 3, 'Tungurahua'),
(9191, 1000, 3, 'Zamora Chinchipe'),
(9192, 1001, 3, 'Ad Daqahliyah'),
(9193, 1002, 3, 'Al Bahr al Ahmar'),
(9194, 1003, 3, 'Al Buhayrah'),
(9195, 1004, 3, 'Al Fayyum'),
(9196, 1005, 3, 'Al Gharbiyah'),
(9197, 1006, 3, 'Al Iskandariyah'),
(9198, 1007, 3, 'Al Isma\'iliyah'),
(9199, 1008, 3, 'Al Jizah'),
(9200, 1009, 3, 'Al Minufiyah'),
(9201, 1010, 3, 'Al Minya'),
(9202, 1011, 3, 'Al Qahirah'),
(9203, 1012, 3, 'Al Qalyubiyah'),
(9204, 1013, 3, 'Al Wadi al Jadid'),
(9205, 1014, 3, 'Ash Sharqiyah'),
(9206, 1015, 3, 'As Suways'),
(9207, 1016, 3, 'Aswan'),
(9208, 1017, 3, 'Asyut'),
(9209, 1018, 3, 'Bani Suwayf'),
(9210, 1019, 3, 'Bur Sa\'id'),
(9211, 1020, 3, 'Dumyat'),
(9212, 1021, 3, 'Janub Sina\''),
(9213, 1022, 3, 'Kafr ash Shaykh'),
(9214, 1023, 3, 'Matruh'),
(9215, 1024, 3, 'Qina'),
(9216, 1025, 3, 'Shamal Sina\''),
(9217, 1026, 3, 'Suhaj'),
(9218, 1027, 3, 'Ahuachapan'),
(9219, 1028, 3, 'Cabanas'),
(9220, 1029, 3, 'Chalatenango'),
(9221, 1030, 3, 'Cuscatlan'),
(9222, 1031, 3, 'La Libertad'),
(9223, 1032, 3, 'La Paz'),
(9224, 1033, 3, 'La Union'),
(9225, 1034, 3, 'Morazan'),
(9226, 1035, 3, 'San Miguel'),
(9227, 1036, 3, 'San Salvador'),
(9228, 1037, 3, 'San Vicente'),
(9229, 1038, 3, 'Santa Ana'),
(9230, 1039, 3, 'Sonsonate'),
(9231, 1040, 3, 'Usulutan'),
(9232, 1041, 3, 'Provincia Annobon'),
(9233, 1042, 3, 'Provincia Bioko Norte'),
(9234, 1043, 3, 'Provincia Bioko Sur'),
(9235, 1044, 3, 'Provincia Centro Sur'),
(9236, 1045, 3, 'Provincia Kie-Ntem'),
(9237, 1046, 3, 'Provincia Litoral'),
(9238, 1047, 3, 'Provincia Wele-Nzas'),
(9239, 1048, 3, 'Central (Maekel)'),
(9240, 1049, 3, 'Anseba (Keren)'),
(9241, 1050, 3, 'Southern Red Sea (Debub-Keih-Bahri)'),
(9242, 1051, 3, 'Northern Red Sea (Semien-Keih-Bahri)'),
(9243, 1052, 3, 'Southern (Debub)'),
(9244, 1053, 3, 'Gash-Barka (Barentu)'),
(9245, 1054, 3, 'Harjumaa (Tallinn)'),
(9246, 1055, 3, 'Hiiumaa (Kardla)'),
(9247, 1056, 3, 'Ida-Virumaa (Johvi)'),
(9248, 1057, 3, 'Jarvamaa (Paide)'),
(9249, 1058, 3, 'Jogevamaa (Jogeva)'),
(9250, 1059, 3, 'Laane-Virumaa (Rakvere)'),
(9251, 1060, 3, 'Laanemaa (Haapsalu)'),
(9252, 1061, 3, 'Parnumaa (Parnu)'),
(9253, 1062, 3, 'Polvamaa (Polva)'),
(9254, 1063, 3, 'Raplamaa (Rapla)'),
(9255, 1064, 3, 'Saaremaa (Kuessaare)'),
(9256, 1065, 3, 'Tartumaa (Tartu)'),
(9257, 1066, 3, 'Valgamaa (Valga)'),
(9258, 1067, 3, 'Viljandimaa (Viljandi)'),
(9259, 1068, 3, 'Vorumaa (Voru)'),
(9260, 1069, 3, 'Afar'),
(9261, 1070, 3, 'Amhara'),
(9262, 1071, 3, 'Benishangul-Gumaz'),
(9263, 1072, 3, 'Gambela'),
(9264, 1073, 3, 'Hariai'),
(9265, 1074, 3, 'Oromia'),
(9266, 1075, 3, 'Somali'),
(9267, 1076, 3, 'Southern Nations - Nationalities and Peoples Region'),
(9268, 1077, 3, 'Tigray'),
(9269, 1078, 3, 'Addis Ababa'),
(9270, 1079, 3, 'Dire Dawa'),
(9271, 1080, 3, 'Central Division'),
(9272, 1081, 3, 'Northern Division'),
(9273, 1082, 3, 'Eastern Division'),
(9274, 1083, 3, 'Western Division'),
(9275, 1084, 3, 'Rotuma'),
(9276, 1085, 3, 'Ahvenanmaan lääni'),
(9277, 1086, 3, 'Etelä-Suomen lääni'),
(9278, 1087, 3, 'Itä-Suomen lääni'),
(9279, 1088, 3, 'Länsi-Suomen lääni'),
(9280, 1089, 3, 'Lapin lääni'),
(9281, 1090, 3, 'Oulun lääni'),
(9282, 1114, 3, 'Ain'),
(9283, 1115, 3, 'Aisne'),
(9284, 1116, 3, 'Allier'),
(9285, 1117, 3, 'Alpes de Haute Provence'),
(9286, 1118, 3, 'Hautes-Alpes'),
(9287, 1119, 3, 'Alpes Maritimes'),
(9288, 1120, 3, 'Ard&egrave;che'),
(9289, 1121, 3, 'Ardennes'),
(9290, 1122, 3, 'Ari&egrave;ge'),
(9291, 1123, 3, 'Aube'),
(9292, 1124, 3, 'Aude'),
(9293, 1125, 3, 'Aveyron'),
(9294, 1126, 3, 'Bouches du Rh&ocirc;ne'),
(9295, 1127, 3, 'Calvados'),
(9296, 1128, 3, 'Cantal'),
(9297, 1129, 3, 'Charente'),
(9298, 1130, 3, 'Charente Maritime'),
(9299, 1131, 3, 'Cher'),
(9300, 1132, 3, 'Corr&egrave;ze'),
(9301, 1133, 3, 'Corse du Sud'),
(9302, 1134, 3, 'Haute Corse'),
(9303, 1135, 3, 'C&ocirc;te d&#039;or'),
(9304, 1136, 3, 'C&ocirc;tes d&#039;Armor'),
(9305, 1137, 3, 'Creuse'),
(9306, 1138, 3, 'Dordogne'),
(9307, 1139, 3, 'Doubs'),
(9308, 1140, 3, 'Dr&ocirc;me'),
(9309, 1141, 3, 'Eure'),
(9310, 1142, 3, 'Eure et Loir'),
(9311, 1143, 3, 'Finist&egrave;re'),
(9312, 1144, 3, 'Gard'),
(9313, 1145, 3, 'Haute Garonne'),
(9314, 1146, 3, 'Gers'),
(9315, 1147, 3, 'Gironde'),
(9316, 1148, 3, 'H&eacute;rault'),
(9317, 1149, 3, 'Ille et Vilaine'),
(9318, 1150, 3, 'Indre'),
(9319, 1151, 3, 'Indre et Loire'),
(9320, 1152, 3, 'Is&eacute;re'),
(9321, 1153, 3, 'Jura'),
(9322, 1154, 3, 'Landes'),
(9323, 1155, 3, 'Loir et Cher'),
(9324, 1156, 3, 'Loire'),
(9325, 1157, 3, 'Haute Loire'),
(9326, 1158, 3, 'Loire Atlantique'),
(9327, 1159, 3, 'Loiret'),
(9328, 1160, 3, 'Lot'),
(9329, 1161, 3, 'Lot et Garonne'),
(9330, 1162, 3, 'Loz&egrave;re'),
(9331, 1163, 3, 'Maine et Loire'),
(9332, 1164, 3, 'Manche'),
(9333, 1165, 3, 'Marne'),
(9334, 1166, 3, 'Haute Marne'),
(9335, 1167, 3, 'Mayenne'),
(9336, 1168, 3, 'Meurthe et Moselle'),
(9337, 1169, 3, 'Meuse'),
(9338, 1170, 3, 'Morbihan'),
(9339, 1171, 3, 'Moselle'),
(9340, 1172, 3, 'Ni&egrave;vre'),
(9341, 1173, 3, 'Nord'),
(9342, 1174, 3, 'Oise'),
(9343, 1175, 3, 'Orne'),
(9344, 1176, 3, 'Pas de Calais'),
(9345, 1177, 3, 'Puy de D&ocirc;me'),
(9346, 1178, 3, 'Pyr&eacute;n&eacute;es Atlantiques'),
(9347, 1179, 3, 'Hautes Pyr&eacute;n&eacute;es'),
(9348, 1180, 3, 'Pyr&eacute;n&eacute;es Orientales'),
(9349, 1181, 3, 'Bas Rhin'),
(9350, 1182, 3, 'Haut Rhin'),
(9351, 1183, 3, 'Rh&ocirc;ne'),
(9352, 1184, 3, 'Haute Sa&ocirc;ne'),
(9353, 1185, 3, 'Sa&ocirc;ne et Loire'),
(9354, 1186, 3, 'Sarthe'),
(9355, 1187, 3, 'Savoie'),
(9356, 1188, 3, 'Haute Savoie'),
(9357, 1189, 3, 'Paris'),
(9358, 1190, 3, 'Seine Maritime'),
(9359, 1191, 3, 'Seine et Marne'),
(9360, 1192, 3, 'Yvelines'),
(9361, 1193, 3, 'Deux S&egrave;vres'),
(9362, 1194, 3, 'Somme'),
(9363, 1195, 3, 'Tarn'),
(9364, 1196, 3, 'Tarn et Garonne'),
(9365, 1197, 3, 'Var'),
(9366, 1198, 3, 'Vaucluse'),
(9367, 1199, 3, 'Vend&eacute;e'),
(9368, 1200, 3, 'Vienne'),
(9369, 1201, 3, 'Haute Vienne'),
(9370, 1202, 3, 'Vosges'),
(9371, 1203, 3, 'Yonne'),
(9372, 1204, 3, 'Territoire de Belfort'),
(9373, 1205, 3, 'Essonne'),
(9374, 1206, 3, 'Hauts de Seine'),
(9375, 1207, 3, 'Seine St-Denis'),
(9376, 1208, 3, 'Val de Marne'),
(9377, 1209, 3, 'Val d\'Oise'),
(9378, 1210, 3, 'Archipel des Marquises'),
(9379, 1211, 3, 'Archipel des Tuamotu'),
(9380, 1212, 3, 'Archipel des Tubuai'),
(9381, 1213, 3, 'Iles du Vent'),
(9382, 1214, 3, 'Iles Sous-le-Vent'),
(9383, 1215, 3, 'Iles Crozet'),
(9384, 1216, 3, 'Iles Kerguelen'),
(9385, 1217, 3, 'Ile Amsterdam'),
(9386, 1218, 3, 'Ile Saint-Paul'),
(9387, 1219, 3, 'Adelie Land'),
(9388, 1220, 3, 'Estuaire'),
(9389, 1221, 3, 'Haut-Ogooue'),
(9390, 1222, 3, 'Moyen-Ogooue'),
(9391, 1223, 3, 'Ngounie'),
(9392, 1224, 3, 'Nyanga'),
(9393, 1225, 3, 'Ogooue-Ivindo'),
(9394, 1226, 3, 'Ogooue-Lolo'),
(9395, 1227, 3, 'Ogooue-Maritime'),
(9396, 1228, 3, 'Woleu-Ntem'),
(9397, 1229, 3, 'Banjul'),
(9398, 1230, 3, 'Basse'),
(9399, 1231, 3, 'Brikama'),
(9400, 1232, 3, 'Janjangbure'),
(9401, 1233, 3, 'Kanifeng'),
(9402, 1234, 3, 'Kerewan'),
(9403, 1235, 3, 'Kuntaur'),
(9404, 1236, 3, 'Mansakonko'),
(9405, 1237, 3, 'Lower River'),
(9406, 1238, 3, 'Central River');
INSERT INTO `oc_zone_description` (`zone_description_id`, `zone_id`, `language_id`, `name`) VALUES
(9407, 1239, 3, 'North Bank'),
(9408, 1240, 3, 'Upper River'),
(9409, 1241, 3, 'Western'),
(9410, 1242, 3, 'Abkhazia'),
(9411, 1243, 3, 'Ajaria'),
(9412, 1244, 3, 'Tbilisi'),
(9413, 1245, 3, 'Guria'),
(9414, 1246, 3, 'Imereti'),
(9415, 1247, 3, 'Kakheti'),
(9416, 1248, 3, 'Kvemo Kartli'),
(9417, 1249, 3, 'Mtskheta-Mtianeti'),
(9418, 1250, 3, 'Racha Lechkhumi and Kvemo Svanet'),
(9419, 1251, 3, 'Samegrelo-Zemo Svaneti'),
(9420, 1252, 3, 'Samtskhe-Javakheti'),
(9421, 1253, 3, 'Shida Kartli'),
(9422, 1254, 3, 'Baden-Württemberg'),
(9423, 1255, 3, 'Bayern'),
(9424, 1256, 3, 'Berlin'),
(9425, 1257, 3, 'Brandenburg'),
(9426, 1258, 3, 'Bremen'),
(9427, 1259, 3, 'Hamburg'),
(9428, 1260, 3, 'Hessen'),
(9429, 1261, 3, 'Mecklenburg-Vorpommern'),
(9430, 1262, 3, 'Niedersachsen'),
(9431, 1263, 3, 'Nordrhein-Westfalen'),
(9432, 1264, 3, 'Rheinland-Pfalz'),
(9433, 1265, 3, 'Saarland'),
(9434, 1266, 3, 'Sachsen'),
(9435, 1267, 3, 'Sachsen-Anhalt'),
(9436, 1268, 3, 'Schleswig-Holstein'),
(9437, 1269, 3, 'Thüringen'),
(9438, 1270, 3, 'Ashanti Region'),
(9439, 1271, 3, 'Brong-Ahafo Region'),
(9440, 1272, 3, 'Central Region'),
(9441, 1273, 3, 'Eastern Region'),
(9442, 1274, 3, 'Greater Accra Region'),
(9443, 1275, 3, 'Northern Region'),
(9444, 1276, 3, 'Upper East Region'),
(9445, 1277, 3, 'Upper West Region'),
(9446, 1278, 3, 'Volta Region'),
(9447, 1279, 3, 'Western Region'),
(9448, 1280, 3, 'Attica'),
(9449, 1281, 3, 'Central Greece'),
(9450, 1282, 3, 'Central Macedonia'),
(9451, 1283, 3, 'Crete'),
(9452, 1284, 3, 'East Macedonia and Thrace'),
(9453, 1285, 3, 'Epirus'),
(9454, 1286, 3, 'Ionian Islands'),
(9455, 1287, 3, 'North Aegean'),
(9456, 1288, 3, 'Peloponnesos'),
(9457, 1289, 3, 'South Aegean'),
(9458, 1290, 3, 'Thessaly'),
(9459, 1291, 3, 'West Greece'),
(9460, 1292, 3, 'West Macedonia'),
(9461, 1293, 3, 'Avannaa'),
(9462, 1294, 3, 'Tunu'),
(9463, 1295, 3, 'Kitaa'),
(9464, 1296, 3, 'Saint Andrew'),
(9465, 1297, 3, 'Saint David'),
(9466, 1298, 3, 'Saint George'),
(9467, 1299, 3, 'Saint John'),
(9468, 1300, 3, 'Saint Mark'),
(9469, 1301, 3, 'Saint Patrick'),
(9470, 1302, 3, 'Carriacou'),
(9471, 1303, 3, 'Petit Martinique'),
(9472, 1304, 3, 'Alta Verapaz'),
(9473, 1305, 3, 'Baja Verapaz'),
(9474, 1306, 3, 'Chimaltenango'),
(9475, 1307, 3, 'Chiquimula'),
(9476, 1308, 3, 'El Peten'),
(9477, 1309, 3, 'El Progreso'),
(9478, 1310, 3, 'El Quiche'),
(9479, 1311, 3, 'Escuintla'),
(9480, 1312, 3, 'Guatemala'),
(9481, 1313, 3, 'Huehuetenango'),
(9482, 1314, 3, 'Izabal'),
(9483, 1315, 3, 'Jalapa'),
(9484, 1316, 3, 'Jutiapa'),
(9485, 1317, 3, 'Quetzaltenango'),
(9486, 1318, 3, 'Retalhuleu'),
(9487, 1319, 3, 'Sacatepequez'),
(9488, 1320, 3, 'San Marcos'),
(9489, 1321, 3, 'Santa Rosa'),
(9490, 1322, 3, 'Solola'),
(9491, 1323, 3, 'Suchitepequez'),
(9492, 1324, 3, 'Totonicapan'),
(9493, 1325, 3, 'Zacapa'),
(9494, 1326, 3, 'Conakry'),
(9495, 1327, 3, 'Beyla'),
(9496, 1328, 3, 'Boffa'),
(9497, 1329, 3, 'Boke'),
(9498, 1330, 3, 'Coyah'),
(9499, 1331, 3, 'Dabola'),
(9500, 1332, 3, 'Dalaba'),
(9501, 1333, 3, 'Dinguiraye'),
(9502, 1334, 3, 'Dubreka'),
(9503, 1335, 3, 'Faranah'),
(9504, 1336, 3, 'Forecariah'),
(9505, 1337, 3, 'Fria'),
(9506, 1338, 3, 'Gaoual'),
(9507, 1339, 3, 'Gueckedou'),
(9508, 1340, 3, 'Kankan'),
(9509, 1341, 3, 'Kerouane'),
(9510, 1342, 3, 'Kindia'),
(9511, 1343, 3, 'Kissidougou'),
(9512, 1344, 3, 'Koubia'),
(9513, 1345, 3, 'Koundara'),
(9514, 1346, 3, 'Kouroussa'),
(9515, 1347, 3, 'Labe'),
(9516, 1348, 3, 'Lelouma'),
(9517, 1349, 3, 'Lola'),
(9518, 1350, 3, 'Macenta'),
(9519, 1351, 3, 'Mali'),
(9520, 1352, 3, 'Mamou'),
(9521, 1353, 3, 'Mandiana'),
(9522, 1354, 3, 'Nzerekore'),
(9523, 1355, 3, 'Pita'),
(9524, 1356, 3, 'Siguiri'),
(9525, 1357, 3, 'Telimele'),
(9526, 1358, 3, 'Tougue'),
(9527, 1359, 3, 'Yomou'),
(9528, 1360, 3, 'Bafata Region'),
(9529, 1361, 3, 'Biombo Region'),
(9530, 1362, 3, 'Bissau Region'),
(9531, 1363, 3, 'Bolama Region'),
(9532, 1364, 3, 'Cacheu Region'),
(9533, 1365, 3, 'Gabu Region'),
(9534, 1366, 3, 'Oio Region'),
(9535, 1367, 3, 'Quinara Region'),
(9536, 1368, 3, 'Tombali Region'),
(9537, 1369, 3, 'Barima-Waini'),
(9538, 1370, 3, 'Cuyuni-Mazaruni'),
(9539, 1371, 3, 'Demerara-Mahaica'),
(9540, 1372, 3, 'East Berbice-Corentyne'),
(9541, 1373, 3, 'Essequibo Islands-West Demerara'),
(9542, 1374, 3, 'Mahaica-Berbice'),
(9543, 1375, 3, 'Pomeroon-Supenaam'),
(9544, 1376, 3, 'Potaro-Siparuni'),
(9545, 1377, 3, 'Upper Demerara-Berbice'),
(9546, 1378, 3, 'Upper Takutu-Upper Essequibo'),
(9547, 1379, 3, 'Artibonite'),
(9548, 1380, 3, 'Centre'),
(9549, 1381, 3, 'Grand\'Anse'),
(9550, 1382, 3, 'Nord'),
(9551, 1383, 3, 'Nord-Est'),
(9552, 1384, 3, 'Nord-Ouest'),
(9553, 1385, 3, 'Ouest'),
(9554, 1386, 3, 'Sud'),
(9555, 1387, 3, 'Sud-Est'),
(9556, 1388, 3, 'Flat Island'),
(9557, 1389, 3, 'McDonald Island'),
(9558, 1390, 3, 'Shag Island'),
(9559, 1391, 3, 'Heard Island'),
(9560, 1392, 3, 'Atlantida'),
(9561, 1393, 3, 'Choluteca'),
(9562, 1394, 3, 'Colon'),
(9563, 1395, 3, 'Comayagua'),
(9564, 1396, 3, 'Copan'),
(9565, 1397, 3, 'Cortes'),
(9566, 1398, 3, 'El Paraiso'),
(9567, 1399, 3, 'Francisco Morazan'),
(9568, 1400, 3, 'Gracias a Dios'),
(9569, 1401, 3, 'Intibuca'),
(9570, 1402, 3, 'Islas de la Bahia (Bay Islands)'),
(9571, 1403, 3, 'La Paz'),
(9572, 1404, 3, 'Lempira'),
(9573, 1405, 3, 'Ocotepeque'),
(9574, 1406, 3, 'Olancho'),
(9575, 1407, 3, 'Santa Barbara'),
(9576, 1408, 3, 'Valle'),
(9577, 1409, 3, 'Yoro'),
(9578, 1410, 3, 'Central and Western Hong Kong Island'),
(9579, 1411, 3, 'Eastern Hong Kong Island'),
(9580, 1412, 3, 'Southern Hong Kong Island'),
(9581, 1413, 3, 'Wan Chai Hong Kong Island'),
(9582, 1414, 3, 'Kowloon City Kowloon'),
(9583, 1415, 3, 'Kwun Tong Kowloon'),
(9584, 1416, 3, 'Sham Shui Po Kowloon'),
(9585, 1417, 3, 'Wong Tai Sin Kowloon'),
(9586, 1418, 3, 'Yau Tsim Mong Kowloon'),
(9587, 1419, 3, 'Islands New Territories'),
(9588, 1420, 3, 'Kwai Tsing New Territories'),
(9589, 1421, 3, 'North New Territories'),
(9590, 1422, 3, 'Sai Kung New Territories'),
(9591, 1423, 3, 'Sha Tin New Territories'),
(9592, 1424, 3, 'Tai Po New Territories'),
(9593, 1425, 3, 'Tsuen Wan New Territories'),
(9594, 1426, 3, 'Tuen Mun New Territories'),
(9595, 1427, 3, 'Yuen Long New Territories'),
(9596, 1467, 3, 'Austurland'),
(9597, 1468, 3, 'Hofuoborgarsvaeoi'),
(9598, 1469, 3, 'Norourland eystra'),
(9599, 1470, 3, 'Norourland vestra'),
(9600, 1471, 3, 'Suourland'),
(9601, 1472, 3, 'Suournes'),
(9602, 1473, 3, 'Vestfiroir'),
(9603, 1474, 3, 'Vesturland'),
(9604, 1475, 3, 'Andaman and Nicobar Islands'),
(9605, 1476, 3, 'Andhra Pradesh'),
(9606, 1477, 3, 'Arunachal Pradesh'),
(9607, 1478, 3, 'Assam'),
(9608, 1479, 3, 'Bihar'),
(9609, 1480, 3, 'Chandigarh'),
(9610, 1481, 3, 'Dadra and Nagar Haveli'),
(9611, 1482, 3, 'Daman and Diu'),
(9612, 1483, 3, 'Delhi'),
(9613, 1484, 3, 'Goa'),
(9614, 1485, 3, 'Gujarat'),
(9615, 1486, 3, 'Haryana'),
(9616, 1487, 3, 'Himachal Pradesh'),
(9617, 1488, 3, 'Jammu and Kashmir'),
(9618, 1489, 3, 'Karnataka'),
(9619, 1490, 3, 'Kerala'),
(9620, 1491, 3, 'Lakshadweep Islands'),
(9621, 1492, 3, 'Madhya Pradesh'),
(9622, 1493, 3, 'Maharashtra'),
(9623, 1494, 3, 'Manipur'),
(9624, 1495, 3, 'Meghalaya'),
(9625, 1496, 3, 'Mizoram'),
(9626, 1497, 3, 'Nagaland'),
(9627, 1498, 3, 'Orissa'),
(9628, 1499, 3, 'Puducherry'),
(9629, 1500, 3, 'Punjab'),
(9630, 1501, 3, 'Rajasthan'),
(9631, 1502, 3, 'Sikkim'),
(9632, 1503, 3, 'Tamil Nadu'),
(9633, 1504, 3, 'Tripura'),
(9634, 1505, 3, 'Uttar Pradesh'),
(9635, 1506, 3, 'West Bengal'),
(9636, 1507, 3, 'Aceh'),
(9637, 1508, 3, 'Bali'),
(9638, 1509, 3, 'Banten'),
(9639, 1510, 3, 'Bengkulu'),
(9640, 1511, 3, 'BoDeTaBek'),
(9641, 1512, 3, 'Gorontalo'),
(9642, 1513, 3, 'Jakarta Raya'),
(9643, 1514, 3, 'Jambi'),
(9644, 1515, 3, 'Jawa Barat'),
(9645, 1516, 3, 'Jawa Tengah'),
(9646, 1517, 3, 'Jawa Timur'),
(9647, 1518, 3, 'Kalimantan Barat'),
(9648, 1519, 3, 'Kalimantan Selatan'),
(9649, 1520, 3, 'Kalimantan Tengah'),
(9650, 1521, 3, 'Kalimantan Timur'),
(9651, 1522, 3, 'Kepulauan Bangka Belitung'),
(9652, 1523, 3, 'Lampung'),
(9653, 1524, 3, 'Maluku'),
(9654, 1525, 3, 'Maluku Utara'),
(9655, 1526, 3, 'Nusa Tenggara Barat'),
(9656, 1527, 3, 'Nusa Tenggara Timur'),
(9657, 1528, 3, 'Papua'),
(9658, 1529, 3, 'Riau'),
(9659, 1530, 3, 'Sulawesi Selatan'),
(9660, 1531, 3, 'Sulawesi Tengah'),
(9661, 1532, 3, 'Sulawesi Tenggara'),
(9662, 1533, 3, 'Sulawesi Utara'),
(9663, 1534, 3, 'Sumatera Barat'),
(9664, 1535, 3, 'Sumatera Selatan'),
(9665, 1536, 3, 'Sumatera Utara'),
(9666, 1537, 3, 'Yogyakarta'),
(9667, 1538, 3, 'Tehran'),
(9668, 1539, 3, 'Qom'),
(9669, 1540, 3, 'Markazi'),
(9670, 1541, 3, 'Qazvin'),
(9671, 1542, 3, 'Gilan'),
(9672, 1543, 3, 'Ardabil'),
(9673, 1544, 3, 'Zanjan'),
(9674, 1545, 3, 'East Azarbaijan'),
(9675, 1546, 3, 'West Azarbaijan'),
(9676, 1547, 3, 'Kurdistan'),
(9677, 1548, 3, 'Hamadan'),
(9678, 1549, 3, 'Kermanshah'),
(9679, 1550, 3, 'Ilam'),
(9680, 1551, 3, 'Lorestan'),
(9681, 1552, 3, 'Khuzestan'),
(9682, 1553, 3, 'Chahar Mahaal and Bakhtiari'),
(9683, 1554, 3, 'Kohkiluyeh and Buyer Ahmad'),
(9684, 1555, 3, 'Bushehr'),
(9685, 1556, 3, 'Fars'),
(9686, 1557, 3, 'Hormozgan'),
(9687, 1558, 3, 'Sistan and Baluchistan'),
(9688, 1559, 3, 'Kerman'),
(9689, 1560, 3, 'Yazd'),
(9690, 1561, 3, 'Esfahan'),
(9691, 1562, 3, 'Semnan'),
(9692, 1563, 3, 'Mazandaran'),
(9693, 1564, 3, 'Golestan'),
(9694, 1565, 3, 'North Khorasan'),
(9695, 1566, 3, 'Razavi Khorasan'),
(9696, 1567, 3, 'South Khorasan'),
(9697, 1568, 3, 'Baghdad'),
(9698, 1569, 3, 'Salah ad Din'),
(9699, 1570, 3, 'Diyala'),
(9700, 1571, 3, 'Wasit'),
(9701, 1572, 3, 'Maysan'),
(9702, 1573, 3, 'Al Basrah'),
(9703, 1574, 3, 'Dhi Qar'),
(9704, 1575, 3, 'Al Muthanna'),
(9705, 1576, 3, 'Al Qadisyah'),
(9706, 1577, 3, 'Babil'),
(9707, 1578, 3, 'Al Karbala'),
(9708, 1579, 3, 'An Najaf'),
(9709, 1580, 3, 'Al Anbar'),
(9710, 1581, 3, 'Ninawa'),
(9711, 1582, 3, 'Dahuk'),
(9712, 1583, 3, 'Arbil'),
(9713, 1584, 3, 'At Ta\'mim'),
(9714, 1585, 3, 'As Sulaymaniyah'),
(9715, 1586, 3, 'Carlow'),
(9716, 1587, 3, 'Cavan'),
(9717, 1588, 3, 'Clare'),
(9718, 1589, 3, 'Cork'),
(9719, 1590, 3, 'Donegal'),
(9720, 1591, 3, 'Dublin'),
(9721, 1592, 3, 'Galway'),
(9722, 1593, 3, 'Kerry'),
(9723, 1594, 3, 'Kildare'),
(9724, 1595, 3, 'Kilkenny'),
(9725, 1596, 3, 'Laois'),
(9726, 1597, 3, 'Leitrim'),
(9727, 1598, 3, 'Limerick'),
(9728, 1599, 3, 'Longford'),
(9729, 1600, 3, 'Louth'),
(9730, 1601, 3, 'Mayo'),
(9731, 1602, 3, 'Meath'),
(9732, 1603, 3, 'Monaghan'),
(9733, 1604, 3, 'Offaly'),
(9734, 1605, 3, 'Roscommon'),
(9735, 1606, 3, 'Sligo'),
(9736, 1607, 3, 'Tipperary'),
(9737, 1608, 3, 'Waterford'),
(9738, 1609, 3, 'Westmeath'),
(9739, 1610, 3, 'Wexford'),
(9740, 1611, 3, 'Wicklow'),
(9741, 1612, 3, 'Be\'er Sheva'),
(9742, 1613, 3, 'Bika\'at Hayarden'),
(9743, 1614, 3, 'Eilat and Arava'),
(9744, 1615, 3, 'Galil'),
(9745, 1616, 3, 'Haifa'),
(9746, 1617, 3, 'Jehuda Mountains'),
(9747, 1618, 3, 'Jerusalem'),
(9748, 1619, 3, 'Negev'),
(9749, 1620, 3, 'Semaria'),
(9750, 1621, 3, 'Sharon'),
(9751, 1622, 3, 'Tel Aviv (Gosh Dan)'),
(9752, 3860, 3, 'Caltanissetta'),
(9753, 3842, 3, 'Agrigento'),
(9754, 3843, 3, 'Alessandria'),
(9755, 3844, 3, 'Ancona'),
(9756, 3845, 3, 'Aosta'),
(9757, 3846, 3, 'Arezzo'),
(9758, 3847, 3, 'Ascoli Piceno'),
(9759, 3848, 3, 'Asti'),
(9760, 3849, 3, 'Avellino'),
(9761, 3850, 3, 'Bari'),
(9762, 3851, 3, 'Belluno'),
(9763, 3852, 3, 'Benevento'),
(9764, 3853, 3, 'Bergamo'),
(9765, 3854, 3, 'Biella'),
(9766, 3855, 3, 'Bologna'),
(9767, 3856, 3, 'Bolzano'),
(9768, 3857, 3, 'Brescia'),
(9769, 3858, 3, 'Brindisi'),
(9770, 3859, 3, 'Cagliari'),
(9771, 1643, 3, 'Clarendon Parish'),
(9772, 1644, 3, 'Hanover Parish'),
(9773, 1645, 3, 'Kingston Parish'),
(9774, 1646, 3, 'Manchester Parish'),
(9775, 1647, 3, 'Portland Parish'),
(9776, 1648, 3, 'Saint Andrew Parish'),
(9777, 1649, 3, 'Saint Ann Parish'),
(9778, 1650, 3, 'Saint Catherine Parish'),
(9779, 1651, 3, 'Saint Elizabeth Parish'),
(9780, 1652, 3, 'Saint James Parish'),
(9781, 1653, 3, 'Saint Mary Parish'),
(9782, 1654, 3, 'Saint Thomas Parish'),
(9783, 1655, 3, 'Trelawny Parish'),
(9784, 1656, 3, 'Westmoreland Parish'),
(9785, 1657, 3, 'Aichi'),
(9786, 1658, 3, 'Akita'),
(9787, 1659, 3, 'Aomori'),
(9788, 1660, 3, 'Chiba'),
(9789, 1661, 3, 'Ehime'),
(9790, 1662, 3, 'Fukui'),
(9791, 1663, 3, 'Fukuoka'),
(9792, 1664, 3, 'Fukushima'),
(9793, 1665, 3, 'Gifu'),
(9794, 1666, 3, 'Gumma'),
(9795, 1667, 3, 'Hiroshima'),
(9796, 1668, 3, 'Hokkaido'),
(9797, 1669, 3, 'Hyogo'),
(9798, 1670, 3, 'Ibaraki'),
(9799, 1671, 3, 'Ishikawa'),
(9800, 1672, 3, 'Iwate'),
(9801, 1673, 3, 'Kagawa'),
(9802, 1674, 3, 'Kagoshima'),
(9803, 1675, 3, 'Kanagawa'),
(9804, 1676, 3, 'Kochi'),
(9805, 1677, 3, 'Kumamoto'),
(9806, 1678, 3, 'Kyoto'),
(9807, 1679, 3, 'Mie'),
(9808, 1680, 3, 'Miyagi'),
(9809, 1681, 3, 'Miyazaki'),
(9810, 1682, 3, 'Nagano'),
(9811, 1683, 3, 'Nagasaki'),
(9812, 1684, 3, 'Nara'),
(9813, 1685, 3, 'Niigata'),
(9814, 1686, 3, 'Oita'),
(9815, 1687, 3, 'Okayama'),
(9816, 1688, 3, 'Okinawa'),
(9817, 1689, 3, 'Osaka'),
(9818, 1690, 3, 'Saga'),
(9819, 1691, 3, 'Saitama'),
(9820, 1692, 3, 'Shiga'),
(9821, 1693, 3, 'Shimane'),
(9822, 1694, 3, 'Shizuoka'),
(9823, 1695, 3, 'Tochigi'),
(9824, 1696, 3, 'Tokushima'),
(9825, 1697, 3, 'Tokyo'),
(9826, 1698, 3, 'Tottori'),
(9827, 1699, 3, 'Toyama'),
(9828, 1700, 3, 'Wakayama'),
(9829, 1701, 3, 'Yamagata'),
(9830, 1702, 3, 'Yamaguchi'),
(9831, 1703, 3, 'Yamanashi'),
(9832, 1704, 3, '\'Amman'),
(9833, 1705, 3, 'Ajlun'),
(9834, 1706, 3, 'Al \'Aqabah'),
(9835, 1707, 3, 'Al Balqa\''),
(9836, 1708, 3, 'Al Karak'),
(9837, 1709, 3, 'Al Mafraq'),
(9838, 1710, 3, 'At Tafilah'),
(9839, 1711, 3, 'Az Zarqa\''),
(9840, 1712, 3, 'Irbid'),
(9841, 1713, 3, 'Jarash'),
(9842, 1714, 3, 'Ma\'an'),
(9843, 1715, 3, 'Madaba'),
(9844, 1716, 3, 'Almaty'),
(9845, 1717, 3, 'Almaty City'),
(9846, 1718, 3, 'Aqmola'),
(9847, 1719, 3, 'Aqtobe'),
(9848, 1720, 3, 'Astana City'),
(9849, 1721, 3, 'Atyrau'),
(9850, 1722, 3, 'Batys Qazaqstan'),
(9851, 1723, 3, 'Bayqongyr City'),
(9852, 1724, 3, 'Mangghystau'),
(9853, 1725, 3, 'Ongtustik Qazaqstan'),
(9854, 1726, 3, 'Pavlodar'),
(9855, 1727, 3, 'Qaraghandy'),
(9856, 1728, 3, 'Qostanay'),
(9857, 1729, 3, 'Qyzylorda'),
(9858, 1730, 3, 'Shyghys Qazaqstan'),
(9859, 1731, 3, 'Soltustik Qazaqstan'),
(9860, 1732, 3, 'Zhambyl'),
(9861, 1733, 3, 'Central'),
(9862, 1734, 3, 'Coast'),
(9863, 1735, 3, 'Eastern'),
(9864, 1736, 3, 'Nairobi Area'),
(9865, 1737, 3, 'North Eastern'),
(9866, 1738, 3, 'Nyanza'),
(9867, 1739, 3, 'Rift Valley'),
(9868, 1740, 3, 'Western'),
(9869, 1741, 3, 'Abaiang'),
(9870, 1742, 3, 'Abemama'),
(9871, 1743, 3, 'Aranuka'),
(9872, 1744, 3, 'Arorae'),
(9873, 1745, 3, 'Banaba'),
(9874, 1746, 3, 'Beru'),
(9875, 1747, 3, 'Butaritari'),
(9876, 1748, 3, 'Kanton'),
(9877, 1749, 3, 'Kiritimati'),
(9878, 1750, 3, 'Kuria'),
(9879, 1751, 3, 'Maiana'),
(9880, 1752, 3, 'Makin'),
(9881, 1753, 3, 'Marakei'),
(9882, 1754, 3, 'Nikunau'),
(9883, 1755, 3, 'Nonouti'),
(9884, 1756, 3, 'Onotoa'),
(9885, 1757, 3, 'Tabiteuea'),
(9886, 1758, 3, 'Tabuaeran'),
(9887, 1759, 3, 'Tamana'),
(9888, 1760, 3, 'Tarawa'),
(9889, 1761, 3, 'Teraina'),
(9890, 1762, 3, 'Chagang-do'),
(9891, 1763, 3, 'Hamgyong-bukto'),
(9892, 1764, 3, 'Hamgyong-namdo'),
(9893, 1765, 3, 'Hwanghae-bukto'),
(9894, 1766, 3, 'Hwanghae-namdo'),
(9895, 1767, 3, 'Kangwon-do'),
(9896, 1768, 3, 'P\'yongan-bukto'),
(9897, 1769, 3, 'P\'yongan-namdo'),
(9898, 1770, 3, 'Ryanggang-do (Yanggang-do)'),
(9899, 1771, 3, 'Rason Directly Governed City'),
(9900, 1772, 3, 'P\'yongyang Special City'),
(9901, 1773, 3, 'Ch\'ungch\'ong-bukto'),
(9902, 1774, 3, 'Ch\'ungch\'ong-namdo'),
(9903, 1775, 3, 'Cheju-do'),
(9904, 1776, 3, 'Cholla-bukto'),
(9905, 1777, 3, 'Cholla-namdo'),
(9906, 1778, 3, 'Inch\'on-gwangyoksi'),
(9907, 1779, 3, 'Kangwon-do'),
(9908, 1780, 3, 'Kwangju-gwangyoksi'),
(9909, 1781, 3, 'Kyonggi-do'),
(9910, 1782, 3, 'Kyongsang-bukto'),
(9911, 1783, 3, 'Kyongsang-namdo'),
(9912, 1784, 3, 'Pusan-gwangyoksi'),
(9913, 1785, 3, 'Soul-t\'ukpyolsi'),
(9914, 1786, 3, 'Taegu-gwangyoksi'),
(9915, 1787, 3, 'Taejon-gwangyoksi'),
(9916, 1788, 3, 'Al \'Asimah'),
(9917, 1789, 3, 'Al Ahmadi'),
(9918, 1790, 3, 'Al Farwaniyah'),
(9919, 1791, 3, 'Al Jahra\''),
(9920, 1792, 3, 'Hawalli'),
(9921, 1793, 3, 'Bishkek'),
(9922, 1794, 3, 'Batken'),
(9923, 1795, 3, 'Chu'),
(9924, 1796, 3, 'Jalal-Abad'),
(9925, 1797, 3, 'Naryn'),
(9926, 1798, 3, 'Osh'),
(9927, 1799, 3, 'Talas'),
(9928, 1800, 3, 'Ysyk-Kol'),
(9929, 1801, 3, 'Vientiane'),
(9930, 1802, 3, 'Attapu'),
(9931, 1803, 3, 'Bokeo'),
(9932, 1804, 3, 'Bolikhamxai'),
(9933, 1805, 3, 'Champasak'),
(9934, 1806, 3, 'Houaphan'),
(9935, 1807, 3, 'Khammouan'),
(9936, 1808, 3, 'Louang Namtha'),
(9937, 1809, 3, 'Louangphabang'),
(9938, 1810, 3, 'Oudomxai'),
(9939, 1811, 3, 'Phongsali'),
(9940, 1812, 3, 'Salavan'),
(9941, 1813, 3, 'Savannakhet'),
(9942, 1814, 3, 'Vientiane'),
(9943, 1815, 3, 'Xaignabouli'),
(9944, 1816, 3, 'Xekong'),
(9945, 1817, 3, 'Xiangkhoang'),
(9946, 1818, 3, 'Xaisomboun'),
(9947, 1852, 3, 'Berea'),
(9948, 1853, 3, 'Butha-Buthe'),
(9949, 1854, 3, 'Leribe'),
(9950, 1855, 3, 'Mafeteng'),
(9951, 1856, 3, 'Maseru'),
(9952, 1857, 3, 'Mohale\'s Hoek'),
(9953, 1858, 3, 'Mokhotlong'),
(9954, 1859, 3, 'Qacha\'s Nek'),
(9955, 1860, 3, 'Quthing'),
(9956, 1861, 3, 'Thaba-Tseka'),
(9957, 1862, 3, 'Bomi'),
(9958, 1863, 3, 'Bong'),
(9959, 1864, 3, 'Grand Bassa'),
(9960, 1865, 3, 'Grand Cape Mount'),
(9961, 1866, 3, 'Grand Gedeh'),
(9962, 1867, 3, 'Grand Kru'),
(9963, 1868, 3, 'Lofa'),
(9964, 1869, 3, 'Margibi'),
(9965, 1870, 3, 'Maryland'),
(9966, 1871, 3, 'Montserrado'),
(9967, 1872, 3, 'Nimba'),
(9968, 1873, 3, 'River Cess'),
(9969, 1874, 3, 'Sinoe'),
(9970, 1875, 3, 'Ajdabiya'),
(9971, 1876, 3, 'Al \'Aziziyah'),
(9972, 1877, 3, 'Al Fatih'),
(9973, 1878, 3, 'Al Jabal al Akhdar'),
(9974, 1879, 3, 'Al Jufrah'),
(9975, 1880, 3, 'Al Khums'),
(9976, 1881, 3, 'Al Kufrah'),
(9977, 1882, 3, 'An Nuqat al Khams'),
(9978, 1883, 3, 'Ash Shati\''),
(9979, 1884, 3, 'Awbari'),
(9980, 1885, 3, 'Az Zawiyah'),
(9981, 1886, 3, 'Banghazi'),
(9982, 1887, 3, 'Darnah'),
(9983, 1888, 3, 'Ghadamis'),
(9984, 1889, 3, 'Gharyan'),
(9985, 1890, 3, 'Misratah'),
(9986, 1891, 3, 'Murzuq'),
(9987, 1892, 3, 'Sabha'),
(9988, 1893, 3, 'Sawfajjin'),
(9989, 1894, 3, 'Surt'),
(9990, 1895, 3, 'Tarabulus (Tripoli)'),
(9991, 1896, 3, 'Tarhunah'),
(9992, 1897, 3, 'Tubruq'),
(9993, 1898, 3, 'Yafran'),
(9994, 1899, 3, 'Zlitan'),
(9995, 1900, 3, 'Vaduz'),
(9996, 1901, 3, 'Schaan'),
(9997, 1902, 3, 'Balzers'),
(9998, 1903, 3, 'Triesen'),
(9999, 1904, 3, 'Eschen'),
(10000, 1905, 3, 'Mauren'),
(10001, 1906, 3, 'Triesenberg'),
(10002, 1907, 3, 'Ruggell'),
(10003, 1908, 3, 'Gamprin'),
(10004, 1909, 3, 'Schellenberg'),
(10005, 1910, 3, 'Planken'),
(10006, 1911, 3, 'Alytus'),
(10007, 1912, 3, 'Kaunas'),
(10008, 1913, 3, 'Klaipeda'),
(10009, 1914, 3, 'Marijampole'),
(10010, 1915, 3, 'Panevezys'),
(10011, 1916, 3, 'Siauliai'),
(10012, 1917, 3, 'Taurage'),
(10013, 1918, 3, 'Telsiai'),
(10014, 1919, 3, 'Utena'),
(10015, 1920, 3, 'Vilnius'),
(10016, 1921, 3, 'Diekirch'),
(10017, 1922, 3, 'Clervaux'),
(10018, 1923, 3, 'Redange'),
(10019, 1924, 3, 'Vianden'),
(10020, 1925, 3, 'Wiltz'),
(10021, 1926, 3, 'Grevenmacher'),
(10022, 1927, 3, 'Echternach'),
(10023, 1928, 3, 'Remich'),
(10024, 1929, 3, 'Luxembourg'),
(10025, 1930, 3, 'Capellen'),
(10026, 1931, 3, 'Esch-sur-Alzette'),
(10027, 1932, 3, 'Mersch'),
(10028, 1933, 3, 'Our Lady Fatima Parish'),
(10029, 1934, 3, 'St. Anthony Parish'),
(10030, 1935, 3, 'St. Lazarus Parish'),
(10031, 1936, 3, 'Cathedral Parish'),
(10032, 1937, 3, 'St. Lawrence Parish'),
(10033, 1938, 3, 'Antananarivo'),
(10034, 1939, 3, 'Antsiranana'),
(10035, 1940, 3, 'Fianarantsoa'),
(10036, 1941, 3, 'Mahajanga'),
(10037, 1942, 3, 'Toamasina'),
(10038, 1943, 3, 'Toliara'),
(10039, 1944, 3, 'Balaka'),
(10040, 1945, 3, 'Blantyre'),
(10041, 1946, 3, 'Chikwawa'),
(10042, 1947, 3, 'Chiradzulu'),
(10043, 1948, 3, 'Chitipa'),
(10044, 1949, 3, 'Dedza'),
(10045, 1950, 3, 'Dowa'),
(10046, 1951, 3, 'Karonga'),
(10047, 1952, 3, 'Kasungu'),
(10048, 1953, 3, 'Likoma'),
(10049, 1954, 3, 'Lilongwe'),
(10050, 1955, 3, 'Machinga'),
(10051, 1956, 3, 'Mangochi'),
(10052, 1957, 3, 'Mchinji'),
(10053, 1958, 3, 'Mulanje'),
(10054, 1959, 3, 'Mwanza'),
(10055, 1960, 3, 'Mzimba'),
(10056, 1961, 3, 'Ntcheu'),
(10057, 1962, 3, 'Nkhata Bay'),
(10058, 1963, 3, 'Nkhotakota'),
(10059, 1964, 3, 'Nsanje'),
(10060, 1965, 3, 'Ntchisi'),
(10061, 1966, 3, 'Phalombe'),
(10062, 1967, 3, 'Rumphi'),
(10063, 1968, 3, 'Salima'),
(10064, 1969, 3, 'Thyolo'),
(10065, 1970, 3, 'Zomba'),
(10066, 1971, 3, 'Johor'),
(10067, 1972, 3, 'Kedah'),
(10068, 1973, 3, 'Kelantan'),
(10069, 1974, 3, 'Labuan'),
(10070, 1975, 3, 'Melaka'),
(10071, 1976, 3, 'Negeri Sembilan'),
(10072, 1977, 3, 'Pahang'),
(10073, 1978, 3, 'Perak'),
(10074, 1979, 3, 'Perlis'),
(10075, 1980, 3, 'Pulau Pinang'),
(10076, 1981, 3, 'Sabah'),
(10077, 1982, 3, 'Sarawak'),
(10078, 1983, 3, 'Selangor'),
(10079, 1984, 3, 'Terengganu'),
(10080, 1985, 3, 'Kuala Lumpur'),
(10081, 4035, 3, 'Putrajaya'),
(10082, 1986, 3, 'Thiladhunmathi Uthuru'),
(10083, 1987, 3, 'Thiladhunmathi Dhekunu'),
(10084, 1988, 3, 'Miladhunmadulu Uthuru'),
(10085, 1989, 3, 'Miladhunmadulu Dhekunu'),
(10086, 1990, 3, 'Maalhosmadulu Uthuru'),
(10087, 1991, 3, 'Maalhosmadulu Dhekunu'),
(10088, 1992, 3, 'Faadhippolhu'),
(10089, 1993, 3, 'Male Atoll'),
(10090, 1994, 3, 'Ari Atoll Uthuru'),
(10091, 1995, 3, 'Ari Atoll Dheknu'),
(10092, 1996, 3, 'Felidhe Atoll'),
(10093, 1997, 3, 'Mulaku Atoll'),
(10094, 1998, 3, 'Nilandhe Atoll Uthuru'),
(10095, 1999, 3, 'Nilandhe Atoll Dhekunu'),
(10096, 2000, 3, 'Kolhumadulu'),
(10097, 2001, 3, 'Hadhdhunmathi'),
(10098, 2002, 3, 'Huvadhu Atoll Uthuru'),
(10099, 2003, 3, 'Huvadhu Atoll Dhekunu'),
(10100, 2004, 3, 'Fua Mulaku'),
(10101, 2005, 3, 'Addu'),
(10102, 2006, 3, 'Gao'),
(10103, 2007, 3, 'Kayes'),
(10104, 2008, 3, 'Kidal'),
(10105, 2009, 3, 'Koulikoro'),
(10106, 2010, 3, 'Mopti'),
(10107, 2011, 3, 'Segou'),
(10108, 2012, 3, 'Sikasso'),
(10109, 2013, 3, 'Tombouctou'),
(10110, 2014, 3, 'Bamako Capital District'),
(10111, 2015, 3, 'Attard'),
(10112, 2016, 3, 'Balzan'),
(10113, 2017, 3, 'Birgu'),
(10114, 2018, 3, 'Birkirkara'),
(10115, 2019, 3, 'Birzebbuga'),
(10116, 2020, 3, 'Bormla'),
(10117, 2021, 3, 'Dingli'),
(10118, 2022, 3, 'Fgura'),
(10119, 2023, 3, 'Floriana'),
(10120, 2024, 3, 'Gudja'),
(10121, 2025, 3, 'Gzira'),
(10122, 2026, 3, 'Gargur'),
(10123, 2027, 3, 'Gaxaq'),
(10124, 2028, 3, 'Hamrun'),
(10125, 2029, 3, 'Iklin'),
(10126, 2030, 3, 'Isla'),
(10127, 2031, 3, 'Kalkara'),
(10128, 2032, 3, 'Kirkop'),
(10129, 2033, 3, 'Lija'),
(10130, 2034, 3, 'Luqa'),
(10131, 2035, 3, 'Marsa'),
(10132, 2036, 3, 'Marsaskala'),
(10133, 2037, 3, 'Marsaxlokk'),
(10134, 2038, 3, 'Mdina'),
(10135, 2039, 3, 'Melliea'),
(10136, 2040, 3, 'Mgarr'),
(10137, 2041, 3, 'Mosta'),
(10138, 2042, 3, 'Mqabba'),
(10139, 2043, 3, 'Msida'),
(10140, 2044, 3, 'Mtarfa'),
(10141, 2045, 3, 'Naxxar'),
(10142, 2046, 3, 'Paola'),
(10143, 2047, 3, 'Pembroke'),
(10144, 2048, 3, 'Pieta'),
(10145, 2049, 3, 'Qormi'),
(10146, 2050, 3, 'Qrendi'),
(10147, 2051, 3, 'Rabat'),
(10148, 2052, 3, 'Safi'),
(10149, 2053, 3, 'San Giljan'),
(10150, 2054, 3, 'Santa Lucija'),
(10151, 2055, 3, 'San Pawl il-Bahar'),
(10152, 2056, 3, 'San Gwann'),
(10153, 2057, 3, 'Santa Venera'),
(10154, 2058, 3, 'Siggiewi'),
(10155, 2059, 3, 'Sliema'),
(10156, 2060, 3, 'Swieqi'),
(10157, 2061, 3, 'Ta Xbiex'),
(10158, 2062, 3, 'Tarxien'),
(10159, 2063, 3, 'Valletta'),
(10160, 2064, 3, 'Xgajra'),
(10161, 2065, 3, 'Zabbar'),
(10162, 2066, 3, 'Zebbug'),
(10163, 2067, 3, 'Zejtun'),
(10164, 2068, 3, 'Zurrieq'),
(10165, 2069, 3, 'Fontana'),
(10166, 2070, 3, 'Ghajnsielem'),
(10167, 2071, 3, 'Gharb'),
(10168, 2072, 3, 'Ghasri'),
(10169, 2073, 3, 'Kercem'),
(10170, 2074, 3, 'Munxar'),
(10171, 2075, 3, 'Nadur'),
(10172, 2076, 3, 'Qala'),
(10173, 2077, 3, 'Victoria'),
(10174, 2078, 3, 'San Lawrenz'),
(10175, 2079, 3, 'Sannat'),
(10176, 2080, 3, 'Xagra'),
(10177, 2081, 3, 'Xewkija'),
(10178, 2082, 3, 'Zebbug'),
(10179, 2083, 3, 'Ailinginae'),
(10180, 2084, 3, 'Ailinglaplap'),
(10181, 2085, 3, 'Ailuk'),
(10182, 2086, 3, 'Arno'),
(10183, 2087, 3, 'Aur'),
(10184, 2088, 3, 'Bikar'),
(10185, 2089, 3, 'Bikini'),
(10186, 2090, 3, 'Bokak'),
(10187, 2091, 3, 'Ebon'),
(10188, 2092, 3, 'Enewetak'),
(10189, 2093, 3, 'Erikub'),
(10190, 2094, 3, 'Jabat'),
(10191, 2095, 3, 'Jaluit'),
(10192, 2096, 3, 'Jemo'),
(10193, 2097, 3, 'Kili'),
(10194, 2098, 3, 'Kwajalein'),
(10195, 2099, 3, 'Lae'),
(10196, 2100, 3, 'Lib'),
(10197, 2101, 3, 'Likiep'),
(10198, 2102, 3, 'Majuro'),
(10199, 2103, 3, 'Maloelap'),
(10200, 2104, 3, 'Mejit'),
(10201, 2105, 3, 'Mili'),
(10202, 2106, 3, 'Namorik'),
(10203, 2107, 3, 'Namu'),
(10204, 2108, 3, 'Rongelap'),
(10205, 2109, 3, 'Rongrik'),
(10206, 2110, 3, 'Toke'),
(10207, 2111, 3, 'Ujae'),
(10208, 2112, 3, 'Ujelang'),
(10209, 2113, 3, 'Utirik'),
(10210, 2114, 3, 'Wotho'),
(10211, 2115, 3, 'Wotje'),
(10212, 2116, 3, 'Adrar'),
(10213, 2117, 3, 'Assaba'),
(10214, 2118, 3, 'Brakna'),
(10215, 2119, 3, 'Dakhlet Nouadhibou'),
(10216, 2120, 3, 'Gorgol'),
(10217, 2121, 3, 'Guidimaka'),
(10218, 2122, 3, 'Hodh Ech Chargui'),
(10219, 2123, 3, 'Hodh El Gharbi'),
(10220, 2124, 3, 'Inchiri'),
(10221, 2125, 3, 'Tagant'),
(10222, 2126, 3, 'Tiris Zemmour'),
(10223, 2127, 3, 'Trarza'),
(10224, 2128, 3, 'Nouakchott'),
(10225, 2129, 3, 'Beau Bassin-Rose Hill'),
(10226, 2130, 3, 'Curepipe'),
(10227, 2131, 3, 'Port Louis'),
(10228, 2132, 3, 'Quatre Bornes'),
(10229, 2133, 3, 'Vacoas-Phoenix'),
(10230, 2134, 3, 'Agalega Islands'),
(10231, 2135, 3, 'Cargados Carajos Shoals (Saint Brandon Islands)'),
(10232, 2136, 3, 'Rodrigues'),
(10233, 2137, 3, 'Black River'),
(10234, 2138, 3, 'Flacq'),
(10235, 2139, 3, 'Grand Port'),
(10236, 2140, 3, 'Moka'),
(10237, 2141, 3, 'Pamplemousses'),
(10238, 2142, 3, 'Plaines Wilhems'),
(10239, 2143, 3, 'Port Louis'),
(10240, 2144, 3, 'Riviere du Rempart'),
(10241, 2145, 3, 'Savanne'),
(10242, 2146, 3, 'Baja California Norte'),
(10243, 2147, 3, 'Baja California Sur'),
(10244, 2148, 3, 'Campeche'),
(10245, 2149, 3, 'Chiapas'),
(10246, 2150, 3, 'Chihuahua'),
(10247, 2151, 3, 'Coahuila de Zaragoza'),
(10248, 2152, 3, 'Colima'),
(10249, 2153, 3, 'Distrito Federal'),
(10250, 2154, 3, 'Durango'),
(10251, 2155, 3, 'Guanajuato'),
(10252, 2156, 3, 'Guerrero'),
(10253, 2157, 3, 'Hidalgo'),
(10254, 2158, 3, 'Jalisco'),
(10255, 2159, 3, 'Mexico'),
(10256, 2160, 3, 'Michoacan de Ocampo'),
(10257, 2161, 3, 'Morelos'),
(10258, 2162, 3, 'Nayarit'),
(10259, 2163, 3, 'Nuevo Leon'),
(10260, 2164, 3, 'Oaxaca'),
(10261, 2165, 3, 'Puebla'),
(10262, 2166, 3, 'Queretaro de Arteaga'),
(10263, 2167, 3, 'Quintana Roo'),
(10264, 2168, 3, 'San Luis Potosi'),
(10265, 2169, 3, 'Sinaloa'),
(10266, 2170, 3, 'Sonora'),
(10267, 2171, 3, 'Tabasco'),
(10268, 2172, 3, 'Tamaulipas'),
(10269, 2173, 3, 'Tlaxcala'),
(10270, 2174, 3, 'Veracruz-Llave'),
(10271, 2175, 3, 'Yucatan'),
(10272, 2176, 3, 'Zacatecas'),
(10273, 2177, 3, 'Chuuk'),
(10274, 2178, 3, 'Kosrae'),
(10275, 2179, 3, 'Pohnpei'),
(10276, 2180, 3, 'Yap'),
(10277, 2181, 3, 'Gagauzia'),
(10278, 2182, 3, 'Chisinau'),
(10279, 2183, 3, 'Balti'),
(10280, 2184, 3, 'Cahul'),
(10281, 2185, 3, 'Edinet'),
(10282, 2186, 3, 'Lapusna'),
(10283, 2187, 3, 'Orhei'),
(10284, 2188, 3, 'Soroca'),
(10285, 2189, 3, 'Tighina'),
(10286, 2190, 3, 'Ungheni'),
(10287, 2191, 3, 'St‚nga Nistrului'),
(10288, 2192, 3, 'Fontvieille'),
(10289, 2193, 3, 'La Condamine'),
(10290, 2194, 3, 'Monaco-Ville'),
(10291, 2195, 3, 'Monte-Carlo'),
(10292, 2196, 3, 'Ulanbaatar'),
(10293, 2197, 3, 'Orhon'),
(10294, 2198, 3, 'Darhan uul'),
(10295, 2199, 3, 'Hentiy'),
(10296, 2200, 3, 'Hovsgol'),
(10297, 2201, 3, 'Hovd'),
(10298, 2202, 3, 'Uvs'),
(10299, 2203, 3, 'Tov'),
(10300, 2204, 3, 'Selenge'),
(10301, 2205, 3, 'Suhbaatar'),
(10302, 2206, 3, 'Omnogovi'),
(10303, 2207, 3, 'Ovorhangay'),
(10304, 2208, 3, 'Dzavhan'),
(10305, 2209, 3, 'DundgovL'),
(10306, 2210, 3, 'Dornod'),
(10307, 2211, 3, 'Dornogov'),
(10308, 2212, 3, 'Govi-Sumber'),
(10309, 2213, 3, 'Govi-Altay'),
(10310, 2214, 3, 'Bulgan'),
(10311, 2215, 3, 'Bayanhongor'),
(10312, 2216, 3, 'Bayan-Olgiy'),
(10313, 2217, 3, 'Arhangay'),
(10314, 2218, 3, 'Saint Anthony'),
(10315, 2219, 3, 'Saint Georges'),
(10316, 2220, 3, 'Saint Peter'),
(10317, 2221, 3, 'Agadir'),
(10318, 2222, 3, 'Al Hoceima'),
(10319, 2223, 3, 'Azilal'),
(10320, 2224, 3, 'Beni Mellal'),
(10321, 2225, 3, 'Ben Slimane'),
(10322, 2226, 3, 'Boulemane'),
(10323, 2227, 3, 'Casablanca'),
(10324, 2228, 3, 'Chaouen'),
(10325, 2229, 3, 'El Jadida'),
(10326, 2230, 3, 'El Kelaa des Sraghna'),
(10327, 2231, 3, 'Er Rachidia'),
(10328, 2232, 3, 'Essaouira'),
(10329, 2233, 3, 'Fes'),
(10330, 2234, 3, 'Figuig'),
(10331, 2235, 3, 'Guelmim'),
(10332, 2236, 3, 'Ifrane'),
(10333, 2237, 3, 'Kenitra'),
(10334, 2238, 3, 'Khemisset'),
(10335, 2239, 3, 'Khenifra'),
(10336, 2240, 3, 'Khouribga'),
(10337, 2241, 3, 'Laayoune'),
(10338, 2242, 3, 'Larache'),
(10339, 2243, 3, 'Marrakech'),
(10340, 2244, 3, 'Meknes'),
(10341, 2245, 3, 'Nador'),
(10342, 2246, 3, 'Ouarzazate'),
(10343, 2247, 3, 'Oujda'),
(10344, 2248, 3, 'Rabat-Sale'),
(10345, 2249, 3, 'Safi'),
(10346, 2250, 3, 'Settat'),
(10347, 2251, 3, 'Sidi Kacem'),
(10348, 2252, 3, 'Tangier'),
(10349, 2253, 3, 'Tan-Tan'),
(10350, 2254, 3, 'Taounate'),
(10351, 2255, 3, 'Taroudannt'),
(10352, 2256, 3, 'Tata'),
(10353, 2257, 3, 'Taza'),
(10354, 2258, 3, 'Tetouan'),
(10355, 2259, 3, 'Tiznit'),
(10356, 2260, 3, 'Ad Dakhla'),
(10357, 2261, 3, 'Boujdour'),
(10358, 2262, 3, 'Es Smara'),
(10359, 2263, 3, 'Cabo Delgado'),
(10360, 2264, 3, 'Gaza'),
(10361, 2265, 3, 'Inhambane'),
(10362, 2266, 3, 'Manica'),
(10363, 2267, 3, 'Maputo (city)'),
(10364, 2268, 3, 'Maputo'),
(10365, 2269, 3, 'Nampula'),
(10366, 2270, 3, 'Niassa'),
(10367, 2271, 3, 'Sofala'),
(10368, 2272, 3, 'Tete'),
(10369, 2273, 3, 'Zambezia'),
(10370, 2274, 3, 'Ayeyarwady'),
(10371, 2275, 3, 'Bago'),
(10372, 2276, 3, 'Magway'),
(10373, 2277, 3, 'Mandalay'),
(10374, 2278, 3, 'Sagaing'),
(10375, 2279, 3, 'Tanintharyi'),
(10376, 2280, 3, 'Yangon'),
(10377, 2281, 3, 'Chin State'),
(10378, 2282, 3, 'Kachin State'),
(10379, 2283, 3, 'Kayah State'),
(10380, 2284, 3, 'Kayin State'),
(10381, 2285, 3, 'Mon State'),
(10382, 2286, 3, 'Rakhine State'),
(10383, 2287, 3, 'Shan State'),
(10384, 2288, 3, 'Caprivi'),
(10385, 2289, 3, 'Erongo'),
(10386, 2290, 3, 'Hardap'),
(10387, 2291, 3, 'Karas'),
(10388, 2292, 3, 'Kavango'),
(10389, 2293, 3, 'Khomas'),
(10390, 2294, 3, 'Kunene'),
(10391, 2295, 3, 'Ohangwena'),
(10392, 2296, 3, 'Omaheke'),
(10393, 2297, 3, 'Omusati'),
(10394, 2298, 3, 'Oshana'),
(10395, 2299, 3, 'Oshikoto'),
(10396, 2300, 3, 'Otjozondjupa'),
(10397, 2301, 3, 'Aiwo'),
(10398, 2302, 3, 'Anabar'),
(10399, 2303, 3, 'Anetan'),
(10400, 2304, 3, 'Anibare'),
(10401, 2305, 3, 'Baiti'),
(10402, 2306, 3, 'Boe'),
(10403, 2307, 3, 'Buada'),
(10404, 2308, 3, 'Denigomodu'),
(10405, 2309, 3, 'Ewa'),
(10406, 2310, 3, 'Ijuw'),
(10407, 2311, 3, 'Meneng'),
(10408, 2312, 3, 'Nibok'),
(10409, 2313, 3, 'Uaboe'),
(10410, 2314, 3, 'Yaren'),
(10411, 2315, 3, 'Bagmati'),
(10412, 2316, 3, 'Bheri'),
(10413, 2317, 3, 'Dhawalagiri'),
(10414, 2318, 3, 'Gandaki'),
(10415, 2319, 3, 'Janakpur'),
(10416, 2320, 3, 'Karnali'),
(10417, 2321, 3, 'Kosi'),
(10418, 2322, 3, 'Lumbini'),
(10419, 2323, 3, 'Mahakali'),
(10420, 2324, 3, 'Mechi'),
(10421, 2325, 3, 'Narayani'),
(10422, 2326, 3, 'Rapti'),
(10423, 2327, 3, 'Sagarmatha'),
(10424, 2328, 3, 'Seti'),
(10425, 2329, 3, 'Drenthe'),
(10426, 2330, 3, 'Flevoland'),
(10427, 2331, 3, 'Friesland'),
(10428, 2332, 3, 'Gelderland'),
(10429, 2333, 3, 'Groningen'),
(10430, 2334, 3, 'Limburg'),
(10431, 2335, 3, 'Noord Brabant'),
(10432, 2336, 3, 'Noord Holland'),
(10433, 2337, 3, 'Overijssel'),
(10434, 2338, 3, 'Utrecht'),
(10435, 2339, 3, 'Zeeland'),
(10436, 2340, 3, 'Zuid Holland'),
(10437, 2341, 3, 'Iles Loyaute'),
(10438, 2342, 3, 'Nord'),
(10439, 2343, 3, 'Sud'),
(10440, 2344, 3, 'Auckland'),
(10441, 2345, 3, 'Bay of Plenty'),
(10442, 2346, 3, 'Canterbury'),
(10443, 2347, 3, 'Coromandel'),
(10444, 2348, 3, 'Gisborne'),
(10445, 2349, 3, 'Fiordland'),
(10446, 2350, 3, 'Hawke\'s Bay'),
(10447, 2351, 3, 'Marlborough'),
(10448, 2352, 3, 'Manawatu-Wanganui'),
(10449, 2353, 3, 'Mt Cook-Mackenzie'),
(10450, 2354, 3, 'Nelson'),
(10451, 2355, 3, 'Northland'),
(10452, 2356, 3, 'Otago'),
(10453, 2357, 3, 'Southland'),
(10454, 2358, 3, 'Taranaki'),
(10455, 2359, 3, 'Wellington'),
(10456, 2360, 3, 'Waikato'),
(10457, 2361, 3, 'Wairarapa'),
(10458, 2362, 3, 'West Coast'),
(10459, 2363, 3, 'Atlantico Norte'),
(10460, 2364, 3, 'Atlantico Sur'),
(10461, 2365, 3, 'Boaco'),
(10462, 2366, 3, 'Carazo'),
(10463, 2367, 3, 'Chinandega'),
(10464, 2368, 3, 'Chontales'),
(10465, 2369, 3, 'Esteli'),
(10466, 2370, 3, 'Granada'),
(10467, 2371, 3, 'Jinotega'),
(10468, 2372, 3, 'Leon'),
(10469, 2373, 3, 'Madriz'),
(10470, 2374, 3, 'Managua'),
(10471, 2375, 3, 'Masaya'),
(10472, 2376, 3, 'Matagalpa'),
(10473, 2377, 3, 'Nuevo Segovia'),
(10474, 2378, 3, 'Rio San Juan'),
(10475, 2379, 3, 'Rivas'),
(10476, 2380, 3, 'Agadez'),
(10477, 2381, 3, 'Diffa'),
(10478, 2382, 3, 'Dosso'),
(10479, 2383, 3, 'Maradi'),
(10480, 2384, 3, 'Niamey'),
(10481, 2385, 3, 'Tahoua'),
(10482, 2386, 3, 'Tillaberi'),
(10483, 2387, 3, 'Zinder'),
(10484, 2388, 3, 'Abia'),
(10485, 2389, 3, 'Abuja Federal Capital Territory'),
(10486, 2390, 3, 'Adamawa'),
(10487, 2391, 3, 'Akwa Ibom'),
(10488, 2392, 3, 'Anambra'),
(10489, 2393, 3, 'Bauchi'),
(10490, 2394, 3, 'Bayelsa'),
(10491, 2395, 3, 'Benue'),
(10492, 2396, 3, 'Borno'),
(10493, 2397, 3, 'Cross River'),
(10494, 2398, 3, 'Delta'),
(10495, 2399, 3, 'Ebonyi'),
(10496, 2400, 3, 'Edo'),
(10497, 2401, 3, 'Ekiti'),
(10498, 2402, 3, 'Enugu'),
(10499, 2403, 3, 'Gombe'),
(10500, 2404, 3, 'Imo'),
(10501, 2405, 3, 'Jigawa'),
(10502, 2406, 3, 'Kaduna'),
(10503, 2407, 3, 'Kano'),
(10504, 2408, 3, 'Katsina'),
(10505, 2409, 3, 'Kebbi'),
(10506, 2410, 3, 'Kogi'),
(10507, 2411, 3, 'Kwara'),
(10508, 2412, 3, 'Lagos'),
(10509, 2413, 3, 'Nassarawa'),
(10510, 2414, 3, 'Niger'),
(10511, 2415, 3, 'Ogun'),
(10512, 2416, 3, 'Ondo'),
(10513, 2417, 3, 'Osun'),
(10514, 2418, 3, 'Oyo'),
(10515, 2419, 3, 'Plateau'),
(10516, 2420, 3, 'Rivers'),
(10517, 2421, 3, 'Sokoto'),
(10518, 2422, 3, 'Taraba'),
(10519, 2423, 3, 'Yobe'),
(10520, 2424, 3, 'Zamfara'),
(10521, 2425, 3, 'Northern Islands'),
(10522, 2426, 3, 'Rota'),
(10523, 2427, 3, 'Saipan'),
(10524, 2428, 3, 'Tinian'),
(10525, 2429, 3, 'Akershus'),
(10526, 2430, 3, 'Aust-Agder'),
(10527, 2431, 3, 'Buskerud'),
(10528, 2432, 3, 'Finnmark'),
(10529, 2433, 3, 'Hedmark'),
(10530, 2434, 3, 'Hordaland'),
(10531, 2435, 3, 'More og Romdal'),
(10532, 2436, 3, 'Nord-Trondelag'),
(10533, 2437, 3, 'Nordland'),
(10534, 2438, 3, 'Ostfold'),
(10535, 2439, 3, 'Oppland'),
(10536, 2440, 3, 'Oslo'),
(10537, 2441, 3, 'Rogaland'),
(10538, 2442, 3, 'Sor-Trondelag'),
(10539, 2443, 3, 'Sogn og Fjordane'),
(10540, 2444, 3, 'Svalbard'),
(10541, 2445, 3, 'Telemark'),
(10542, 2446, 3, 'Troms'),
(10543, 2447, 3, 'Vest-Agder'),
(10544, 2448, 3, 'Vestfold'),
(10545, 2449, 3, 'Ad Dakhiliyah'),
(10546, 2450, 3, 'Al Batinah'),
(10547, 2451, 3, 'Al Wusta'),
(10548, 2452, 3, 'Ash Sharqiyah'),
(10549, 2453, 3, 'Az Zahirah'),
(10550, 2454, 3, 'Masqat'),
(10551, 2455, 3, 'Musandam'),
(10552, 2456, 3, 'Zufar'),
(10553, 2457, 3, 'Balochistan'),
(10554, 2458, 3, 'Federally Administered Tribal Areas'),
(10555, 2459, 3, 'Islamabad Capital Territory'),
(10556, 2460, 3, 'North-West Frontier'),
(10557, 2461, 3, 'Punjab'),
(10558, 2462, 3, 'Sindh'),
(10559, 2463, 3, 'Aimeliik'),
(10560, 2464, 3, 'Airai'),
(10561, 2465, 3, 'Angaur'),
(10562, 2466, 3, 'Hatohobei'),
(10563, 2467, 3, 'Kayangel'),
(10564, 2468, 3, 'Koror'),
(10565, 2469, 3, 'Melekeok'),
(10566, 2470, 3, 'Ngaraard'),
(10567, 2471, 3, 'Ngarchelong'),
(10568, 2472, 3, 'Ngardmau'),
(10569, 2473, 3, 'Ngatpang'),
(10570, 2474, 3, 'Ngchesar'),
(10571, 2475, 3, 'Ngeremlengui'),
(10572, 2476, 3, 'Ngiwal'),
(10573, 2477, 3, 'Peleliu'),
(10574, 2478, 3, 'Sonsorol'),
(10575, 2479, 3, 'Bocas del Toro'),
(10576, 2480, 3, 'Chiriqui'),
(10577, 2481, 3, 'Cocle'),
(10578, 2482, 3, 'Colon'),
(10579, 2483, 3, 'Darien'),
(10580, 2484, 3, 'Herrera'),
(10581, 2485, 3, 'Los Santos'),
(10582, 2486, 3, 'Panama'),
(10583, 2487, 3, 'San Blas'),
(10584, 2488, 3, 'Veraguas'),
(10585, 2489, 3, 'Bougainville'),
(10586, 2490, 3, 'Central'),
(10587, 2491, 3, 'Chimbu'),
(10588, 2492, 3, 'Eastern Highlands'),
(10589, 2493, 3, 'East New Britain'),
(10590, 2494, 3, 'East Sepik'),
(10591, 2495, 3, 'Enga'),
(10592, 2496, 3, 'Gulf'),
(10593, 2497, 3, 'Madang'),
(10594, 2498, 3, 'Manus'),
(10595, 2499, 3, 'Milne Bay'),
(10596, 2500, 3, 'Morobe'),
(10597, 2501, 3, 'National Capital'),
(10598, 2502, 3, 'New Ireland'),
(10599, 2503, 3, 'Northern'),
(10600, 2504, 3, 'Sandaun'),
(10601, 2505, 3, 'Southern Highlands'),
(10602, 2506, 3, 'Western'),
(10603, 2507, 3, 'Western Highlands'),
(10604, 2508, 3, 'West New Britain'),
(10605, 2509, 3, 'Alto Paraguay'),
(10606, 2510, 3, 'Alto Parana'),
(10607, 2511, 3, 'Amambay'),
(10608, 2512, 3, 'Asuncion'),
(10609, 2513, 3, 'Boqueron'),
(10610, 2514, 3, 'Caaguazu'),
(10611, 2515, 3, 'Caazapa'),
(10612, 2516, 3, 'Canindeyu'),
(10613, 2517, 3, 'Central'),
(10614, 2518, 3, 'Concepcion'),
(10615, 2519, 3, 'Cordillera'),
(10616, 2520, 3, 'Guaira'),
(10617, 2521, 3, 'Itapua'),
(10618, 2522, 3, 'Misiones'),
(10619, 2523, 3, 'Neembucu'),
(10620, 2524, 3, 'Paraguari'),
(10621, 2525, 3, 'Presidente Hayes'),
(10622, 2526, 3, 'San Pedro'),
(10623, 2527, 3, 'Amazonas'),
(10624, 2528, 3, 'Ancash'),
(10625, 2529, 3, 'Apurimac'),
(10626, 2530, 3, 'Arequipa'),
(10627, 2531, 3, 'Ayacucho'),
(10628, 2532, 3, 'Cajamarca'),
(10629, 2533, 3, 'Callao'),
(10630, 2534, 3, 'Cusco'),
(10631, 2535, 3, 'Huancavelica'),
(10632, 2536, 3, 'Huanuco'),
(10633, 2537, 3, 'Ica'),
(10634, 2538, 3, 'Junin'),
(10635, 2539, 3, 'La Libertad'),
(10636, 2540, 3, 'Lambayeque'),
(10637, 2541, 3, 'Lima'),
(10638, 2542, 3, 'Loreto'),
(10639, 2543, 3, 'Madre de Dios'),
(10640, 2544, 3, 'Moquegua'),
(10641, 2545, 3, 'Pasco'),
(10642, 2546, 3, 'Piura'),
(10643, 2547, 3, 'Puno'),
(10644, 2548, 3, 'San Martin'),
(10645, 2549, 3, 'Tacna'),
(10646, 2550, 3, 'Tumbes'),
(10647, 2551, 3, 'Ucayali'),
(10648, 2552, 3, 'Abra'),
(10649, 2553, 3, 'Agusan del Norte'),
(10650, 2554, 3, 'Agusan del Sur'),
(10651, 2555, 3, 'Aklan'),
(10652, 2556, 3, 'Albay'),
(10653, 2557, 3, 'Antique'),
(10654, 2558, 3, 'Apayao'),
(10655, 2559, 3, 'Aurora'),
(10656, 2560, 3, 'Basilan'),
(10657, 2561, 3, 'Bataan'),
(10658, 2562, 3, 'Batanes'),
(10659, 2563, 3, 'Batangas'),
(10660, 2564, 3, 'Biliran'),
(10661, 2565, 3, 'Benguet'),
(10662, 2566, 3, 'Bohol'),
(10663, 2567, 3, 'Bukidnon'),
(10664, 2568, 3, 'Bulacan'),
(10665, 2569, 3, 'Cagayan'),
(10666, 2570, 3, 'Camarines Norte'),
(10667, 2571, 3, 'Camarines Sur'),
(10668, 2572, 3, 'Camiguin'),
(10669, 2573, 3, 'Capiz'),
(10670, 2574, 3, 'Catanduanes'),
(10671, 2575, 3, 'Cavite'),
(10672, 2576, 3, 'Cebu'),
(10673, 2577, 3, 'Compostela'),
(10674, 2578, 3, 'Davao del Norte'),
(10675, 2579, 3, 'Davao del Sur'),
(10676, 2580, 3, 'Davao Oriental'),
(10677, 2581, 3, 'Eastern Samar'),
(10678, 2582, 3, 'Guimaras'),
(10679, 2583, 3, 'Ifugao'),
(10680, 2584, 3, 'Ilocos Norte'),
(10681, 2585, 3, 'Ilocos Sur'),
(10682, 2586, 3, 'Iloilo'),
(10683, 2587, 3, 'Isabela'),
(10684, 2588, 3, 'Kalinga'),
(10685, 2589, 3, 'Laguna'),
(10686, 2590, 3, 'Lanao del Norte'),
(10687, 2591, 3, 'Lanao del Sur'),
(10688, 2592, 3, 'La Union'),
(10689, 2593, 3, 'Leyte'),
(10690, 2594, 3, 'Maguindanao'),
(10691, 2595, 3, 'Marinduque'),
(10692, 2596, 3, 'Masbate'),
(10693, 2597, 3, 'Mindoro Occidental'),
(10694, 2598, 3, 'Mindoro Oriental'),
(10695, 2599, 3, 'Misamis Occidental'),
(10696, 2600, 3, 'Misamis Oriental'),
(10697, 2601, 3, 'Mountain'),
(10698, 2602, 3, 'Negros Occidental'),
(10699, 2603, 3, 'Negros Oriental'),
(10700, 2604, 3, 'North Cotabato'),
(10701, 2605, 3, 'Northern Samar'),
(10702, 2606, 3, 'Nueva Ecija'),
(10703, 2607, 3, 'Nueva Vizcaya'),
(10704, 2608, 3, 'Palawan'),
(10705, 2609, 3, 'Pampanga'),
(10706, 2610, 3, 'Pangasinan'),
(10707, 2611, 3, 'Quezon'),
(10708, 2612, 3, 'Quirino'),
(10709, 2613, 3, 'Rizal'),
(10710, 2614, 3, 'Romblon'),
(10711, 2615, 3, 'Samar'),
(10712, 2616, 3, 'Sarangani'),
(10713, 2617, 3, 'Siquijor'),
(10714, 2618, 3, 'Sorsogon'),
(10715, 2619, 3, 'South Cotabato'),
(10716, 2620, 3, 'Southern Leyte'),
(10717, 2621, 3, 'Sultan Kudarat'),
(10718, 2622, 3, 'Sulu'),
(10719, 2623, 3, 'Surigao del Norte'),
(10720, 2624, 3, 'Surigao del Sur'),
(10721, 2625, 3, 'Tarlac'),
(10722, 2626, 3, 'Tawi-Tawi'),
(10723, 2627, 3, 'Zambales'),
(10724, 2628, 3, 'Zamboanga del Norte'),
(10725, 2629, 3, 'Zamboanga del Sur'),
(10726, 2630, 3, 'Zamboanga Sibugay'),
(10727, 2631, 3, 'Dolnoslaskie'),
(10728, 2632, 3, 'Kujawsko-Pomorskie'),
(10729, 2633, 3, 'Lodzkie'),
(10730, 2634, 3, 'Lubelskie'),
(10731, 2635, 3, 'Lubuskie'),
(10732, 2636, 3, 'Malopolskie'),
(10733, 2637, 3, 'Mazowieckie'),
(10734, 2638, 3, 'Opolskie'),
(10735, 2639, 3, 'Podkarpackie'),
(10736, 2640, 3, 'Podlaskie'),
(10737, 2641, 3, 'Pomorskie'),
(10738, 2642, 3, 'Slaskie'),
(10739, 2643, 3, 'Swietokrzyskie'),
(10740, 2644, 3, 'Warminsko-Mazurskie'),
(10741, 2645, 3, 'Wielkopolskie'),
(10742, 2646, 3, 'Zachodniopomorskie'),
(10743, 2647, 3, 'Saint Pierre'),
(10744, 2648, 3, 'Miquelon'),
(10745, 2649, 3, 'A&ccedil;ores'),
(10746, 2650, 3, 'Aveiro'),
(10747, 2651, 3, 'Beja'),
(10748, 2652, 3, 'Braga'),
(10749, 2653, 3, 'Bragan&ccedil;a'),
(10750, 2654, 3, 'Castelo Branco'),
(10751, 2655, 3, 'Coimbra'),
(10752, 2656, 3, '&Eacute;vora'),
(10753, 2657, 3, 'Faro'),
(10754, 2658, 3, 'Guarda'),
(10755, 2659, 3, 'Leiria'),
(10756, 2660, 3, 'Lisboa'),
(10757, 2661, 3, 'Madeira'),
(10758, 2662, 3, 'Portalegre'),
(10759, 2663, 3, 'Porto'),
(10760, 2664, 3, 'Santar&eacute;m'),
(10761, 2665, 3, 'Set&uacute;bal'),
(10762, 2666, 3, 'Viana do Castelo'),
(10763, 2667, 3, 'Vila Real'),
(10764, 2668, 3, 'Viseu'),
(10765, 2669, 3, 'Ad Dawhah'),
(10766, 2670, 3, 'Al Ghuwayriyah'),
(10767, 2671, 3, 'Al Jumayliyah'),
(10768, 2672, 3, 'Al Khawr'),
(10769, 2673, 3, 'Al Wakrah'),
(10770, 2674, 3, 'Ar Rayyan'),
(10771, 2675, 3, 'Jarayan al Batinah'),
(10772, 2676, 3, 'Madinat ash Shamal'),
(10773, 2677, 3, 'Umm Sa\'id'),
(10774, 2678, 3, 'Umm Salal'),
(10775, 2679, 3, 'Alba'),
(10776, 2680, 3, 'Arad'),
(10777, 2681, 3, 'Arges'),
(10778, 2682, 3, 'Bacau'),
(10779, 2683, 3, 'Bihor'),
(10780, 2684, 3, 'Bistrita-Nasaud'),
(10781, 2685, 3, 'Botosani'),
(10782, 2686, 3, 'Brasov'),
(10783, 2687, 3, 'Braila'),
(10784, 2688, 3, 'Bucuresti'),
(10785, 2689, 3, 'Buzau'),
(10786, 2690, 3, 'Caras-Severin'),
(10787, 2691, 3, 'Calarasi'),
(10788, 2692, 3, 'Cluj'),
(10789, 2693, 3, 'Constanta'),
(10790, 2694, 3, 'Covasna'),
(10791, 2695, 3, 'Dimbovita'),
(10792, 2696, 3, 'Dolj'),
(10793, 2697, 3, 'Galati'),
(10794, 2698, 3, 'Giurgiu'),
(10795, 2699, 3, 'Gorj'),
(10796, 2700, 3, 'Harghita'),
(10797, 2701, 3, 'Hunedoara'),
(10798, 2702, 3, 'Ialomita'),
(10799, 2703, 3, 'Iasi'),
(10800, 2704, 3, 'Ilfov'),
(10801, 2705, 3, 'Maramures'),
(10802, 2706, 3, 'Mehedinti'),
(10803, 2707, 3, 'Mures'),
(10804, 2708, 3, 'Neamt'),
(10805, 2709, 3, 'Olt'),
(10806, 2710, 3, 'Prahova'),
(10807, 2711, 3, 'Satu-Mare'),
(10808, 2712, 3, 'Salaj'),
(10809, 2713, 3, 'Sibiu'),
(10810, 2714, 3, 'Suceava'),
(10811, 2715, 3, 'Teleorman'),
(10812, 2716, 3, 'Timis'),
(10813, 2717, 3, 'Tulcea'),
(10814, 2718, 3, 'Vaslui'),
(10815, 2719, 3, 'Valcea'),
(10816, 2720, 3, 'Vrancea'),
(10817, 2721, 3, 'Abakan'),
(10818, 2722, 3, 'Aginskoye'),
(10819, 2723, 3, 'Anadyr'),
(10820, 2724, 3, 'Arkahangelsk'),
(10821, 2725, 3, 'Astrakhan'),
(10822, 2726, 3, 'Barnaul'),
(10823, 2727, 3, 'Belgorod'),
(10824, 2728, 3, 'Birobidzhan'),
(10825, 2729, 3, 'Blagoveshchensk'),
(10826, 2730, 3, 'Bryansk'),
(10827, 2731, 3, 'Cheboksary'),
(10828, 2732, 3, 'Chelyabinsk'),
(10829, 2733, 3, 'Cherkessk'),
(10830, 2734, 3, 'Chita'),
(10831, 2735, 3, 'Dudinka'),
(10832, 2736, 3, 'Elista'),
(10833, 2738, 3, 'Gorno-Altaysk'),
(10834, 2739, 3, 'Groznyy'),
(10835, 2740, 3, 'Irkutsk'),
(10836, 2741, 3, 'Ivanovo'),
(10837, 2742, 3, 'Izhevsk'),
(10838, 2743, 3, 'Kalinigrad'),
(10839, 2744, 3, 'Kaluga'),
(10840, 2745, 3, 'Kasnodar'),
(10841, 2746, 3, 'Kazan'),
(10842, 2747, 3, 'Kemerovo'),
(10843, 2748, 3, 'Khabarovsk'),
(10844, 2749, 3, 'Khanty-Mansiysk'),
(10845, 2750, 3, 'Kostroma'),
(10846, 2751, 3, 'Krasnodar'),
(10847, 2752, 3, 'Krasnoyarsk'),
(10848, 2753, 3, 'Kudymkar'),
(10849, 2754, 3, 'Kurgan'),
(10850, 2755, 3, 'Kursk'),
(10851, 2756, 3, 'Kyzyl'),
(10852, 2757, 3, 'Lipetsk'),
(10853, 2758, 3, 'Magadan'),
(10854, 2759, 3, 'Makhachkala'),
(10855, 2760, 3, 'Maykop'),
(10856, 2761, 3, 'Moscow'),
(10857, 2762, 3, 'Murmansk'),
(10858, 2763, 3, 'Nalchik'),
(10859, 2764, 3, 'Naryan Mar'),
(10860, 2765, 3, 'Nazran'),
(10861, 2766, 3, 'Nizhniy Novgorod'),
(10862, 2767, 3, 'Novgorod'),
(10863, 2768, 3, 'Novosibirsk'),
(10864, 2769, 3, 'Omsk'),
(10865, 2770, 3, 'Orel'),
(10866, 2771, 3, 'Orenburg'),
(10867, 2772, 3, 'Palana'),
(10868, 2773, 3, 'Penza'),
(10869, 2774, 3, 'Perm'),
(10870, 2775, 3, 'Petropavlovsk-Kamchatskiy'),
(10871, 2776, 3, 'Petrozavodsk'),
(10872, 2777, 3, 'Pskov'),
(10873, 2778, 3, 'Rostov-na-Donu'),
(10874, 2779, 3, 'Ryazan'),
(10875, 2780, 3, 'Salekhard'),
(10876, 2781, 3, 'Samara'),
(10877, 2782, 3, 'Saransk'),
(10878, 2783, 3, 'Saratov'),
(10879, 2784, 3, 'Smolensk'),
(10880, 2785, 3, 'St. Petersburg'),
(10881, 2786, 3, 'Stavropol'),
(10882, 2787, 3, 'Syktyvkar'),
(10883, 2788, 3, 'Tambov'),
(10884, 2789, 3, 'Tomsk'),
(10885, 2790, 3, 'Tula'),
(10886, 2791, 3, 'Tura'),
(10887, 2792, 3, 'Tver'),
(10888, 2793, 3, 'Tyumen'),
(10889, 2794, 3, 'Ufa'),
(10890, 2795, 3, 'Ul\'yanovsk'),
(10891, 2796, 3, 'Ulan-Ude'),
(10892, 2797, 3, 'Ust\'-Ordynskiy'),
(10893, 2798, 3, 'Vladikavkaz'),
(10894, 2799, 3, 'Vladimir'),
(10895, 2800, 3, 'Vladivostok'),
(10896, 2801, 3, 'Volgograd'),
(10897, 2802, 3, 'Vologda'),
(10898, 2803, 3, 'Voronezh'),
(10899, 2804, 3, 'Vyatka'),
(10900, 2805, 3, 'Yakutsk'),
(10901, 2806, 3, 'Yaroslavl'),
(10902, 2807, 3, 'Yekaterinburg'),
(10903, 2808, 3, 'Yoshkar-Ola'),
(10904, 2809, 3, 'Butare'),
(10905, 2810, 3, 'Byumba'),
(10906, 2811, 3, 'Cyangugu'),
(10907, 2812, 3, 'Gikongoro'),
(10908, 2813, 3, 'Gisenyi'),
(10909, 2814, 3, 'Gitarama'),
(10910, 2815, 3, 'Kibungo'),
(10911, 2816, 3, 'Kibuye'),
(10912, 2817, 3, 'Kigali Rurale'),
(10913, 2818, 3, 'Kigali-ville'),
(10914, 2819, 3, 'Ruhengeri'),
(10915, 2820, 3, 'Umutara'),
(10916, 2821, 3, 'Christ Church Nichola Town'),
(10917, 2822, 3, 'Saint Anne Sandy Point'),
(10918, 2823, 3, 'Saint George Basseterre'),
(10919, 2824, 3, 'Saint George Gingerland'),
(10920, 2825, 3, 'Saint James Windward'),
(10921, 2826, 3, 'Saint John Capesterre'),
(10922, 2827, 3, 'Saint John Figtree'),
(10923, 2828, 3, 'Saint Mary Cayon'),
(10924, 2829, 3, 'Saint Paul Capesterre'),
(10925, 2830, 3, 'Saint Paul Charlestown'),
(10926, 2831, 3, 'Saint Peter Basseterre'),
(10927, 2832, 3, 'Saint Thomas Lowland'),
(10928, 2833, 3, 'Saint Thomas Middle Island'),
(10929, 2834, 3, 'Trinity Palmetto Point'),
(10930, 2835, 3, 'Anse-la-Raye'),
(10931, 2836, 3, 'Castries'),
(10932, 2837, 3, 'Choiseul'),
(10933, 2838, 3, 'Dauphin'),
(10934, 2839, 3, 'Dennery'),
(10935, 2840, 3, 'Gros-Islet'),
(10936, 2841, 3, 'Laborie'),
(10937, 2842, 3, 'Micoud'),
(10938, 2843, 3, 'Praslin'),
(10939, 2844, 3, 'Soufriere'),
(10940, 2845, 3, 'Vieux-Fort'),
(10941, 2846, 3, 'Charlotte'),
(10942, 2847, 3, 'Grenadines'),
(10943, 2848, 3, 'Saint Andrew'),
(10944, 2849, 3, 'Saint David'),
(10945, 2850, 3, 'Saint George'),
(10946, 2851, 3, 'Saint Patrick'),
(10947, 2852, 3, 'A\'ana'),
(10948, 2853, 3, 'Aiga-i-le-Tai'),
(10949, 2854, 3, 'Atua'),
(10950, 2855, 3, 'Fa\'asaleleaga'),
(10951, 2856, 3, 'Gaga\'emauga'),
(10952, 2857, 3, 'Gagaifomauga'),
(10953, 2858, 3, 'Palauli'),
(10954, 2859, 3, 'Satupa\'itea'),
(10955, 2860, 3, 'Tuamasaga'),
(10956, 2861, 3, 'Va\'a-o-Fonoti'),
(10957, 2862, 3, 'Vaisigano'),
(10958, 2863, 3, 'Acquaviva'),
(10959, 2864, 3, 'Borgo Maggiore'),
(10960, 2865, 3, 'Chiesanuova'),
(10961, 2866, 3, 'Domagnano'),
(10962, 2867, 3, 'Faetano'),
(10963, 2868, 3, 'Fiorentino'),
(10964, 2869, 3, 'Montegiardino'),
(10965, 2870, 3, 'Citta di San Marino'),
(10966, 2871, 3, 'Serravalle'),
(10967, 2872, 3, 'Sao Tome'),
(10968, 2873, 3, 'Principe'),
(10969, 2874, 3, 'Al Bahah'),
(10970, 2875, 3, 'Al Hudud ash Shamaliyah'),
(10971, 2876, 3, 'Al Jawf'),
(10972, 2877, 3, 'Al Madinah'),
(10973, 2878, 3, 'Al Qasim'),
(10974, 2879, 3, 'Ar Riyad'),
(10975, 2880, 3, 'Ash Sharqiyah (Eastern)'),
(10976, 2881, 3, '\'Asir'),
(10977, 2882, 3, 'Ha\'il'),
(10978, 2883, 3, 'Jizan'),
(10979, 2884, 3, 'Makkah'),
(10980, 2885, 3, 'Najran'),
(10981, 2886, 3, 'Tabuk'),
(10982, 2887, 3, 'Dakar'),
(10983, 2888, 3, 'Diourbel'),
(10984, 2889, 3, 'Fatick'),
(10985, 2890, 3, 'Kaolack'),
(10986, 2891, 3, 'Kolda'),
(10987, 2892, 3, 'Louga'),
(10988, 2893, 3, 'Matam'),
(10989, 2894, 3, 'Saint-Louis'),
(10990, 2895, 3, 'Tambacounda'),
(10991, 2896, 3, 'Thies'),
(10992, 2897, 3, 'Ziguinchor'),
(10993, 2898, 3, 'Anse aux Pins'),
(10994, 2899, 3, 'Anse Boileau'),
(10995, 2900, 3, 'Anse Etoile'),
(10996, 2901, 3, 'Anse Louis'),
(10997, 2902, 3, 'Anse Royale'),
(10998, 2903, 3, 'Baie Lazare'),
(10999, 2904, 3, 'Baie Sainte Anne'),
(11000, 2905, 3, 'Beau Vallon'),
(11001, 2906, 3, 'Bel Air'),
(11002, 2907, 3, 'Bel Ombre'),
(11003, 2908, 3, 'Cascade'),
(11004, 2909, 3, 'Glacis'),
(11005, 2910, 3, 'Grand\' Anse (on Mahe)'),
(11006, 2911, 3, 'Grand\' Anse (on Praslin)'),
(11007, 2912, 3, 'La Digue'),
(11008, 2913, 3, 'La Riviere Anglaise'),
(11009, 2914, 3, 'Mont Buxton'),
(11010, 2915, 3, 'Mont Fleuri'),
(11011, 2916, 3, 'Plaisance'),
(11012, 2917, 3, 'Pointe La Rue'),
(11013, 2918, 3, 'Port Glaud'),
(11014, 2919, 3, 'Saint Louis'),
(11015, 2920, 3, 'Takamaka'),
(11016, 2921, 3, 'Eastern'),
(11017, 2922, 3, 'Northern'),
(11018, 2923, 3, 'Southern'),
(11019, 2924, 3, 'Western'),
(11020, 2925, 3, 'Banskobystrický'),
(11021, 2926, 3, 'Bratislavský'),
(11022, 2927, 3, 'Košický'),
(11023, 2928, 3, 'Nitriansky'),
(11024, 2929, 3, 'Prešovský'),
(11025, 2930, 3, 'Trenčiansky'),
(11026, 2931, 3, 'Trnavský'),
(11027, 2932, 3, 'Žilinský'),
(11028, 2933, 3, 'Central'),
(11029, 2934, 3, 'Choiseul'),
(11030, 2935, 3, 'Guadalcanal'),
(11031, 2936, 3, 'Honiara'),
(11032, 2937, 3, 'Isabel'),
(11033, 2938, 3, 'Makira'),
(11034, 2939, 3, 'Malaita'),
(11035, 2940, 3, 'Rennell and Bellona'),
(11036, 2941, 3, 'Temotu'),
(11037, 2942, 3, 'Western'),
(11038, 2943, 3, 'Awdal'),
(11039, 2944, 3, 'Bakool'),
(11040, 2945, 3, 'Banaadir'),
(11041, 2946, 3, 'Bari'),
(11042, 2947, 3, 'Bay'),
(11043, 2948, 3, 'Galguduud'),
(11044, 2949, 3, 'Gedo'),
(11045, 2950, 3, 'Hiiraan'),
(11046, 2951, 3, 'Jubbada Dhexe'),
(11047, 2952, 3, 'Jubbada Hoose'),
(11048, 2953, 3, 'Mudug'),
(11049, 2954, 3, 'Nugaal'),
(11050, 2955, 3, 'Sanaag'),
(11051, 2956, 3, 'Shabeellaha Dhexe'),
(11052, 2957, 3, 'Shabeellaha Hoose'),
(11053, 2958, 3, 'Sool'),
(11054, 2959, 3, 'Togdheer'),
(11055, 2960, 3, 'Woqooyi Galbeed'),
(11056, 2961, 3, 'Eastern Cape'),
(11057, 2962, 3, 'Free State'),
(11058, 2963, 3, 'Gauteng'),
(11059, 2964, 3, 'KwaZulu-Natal'),
(11060, 2965, 3, 'Limpopo'),
(11061, 2966, 3, 'Mpumalanga'),
(11062, 2967, 3, 'North West'),
(11063, 2968, 3, 'Northern Cape'),
(11064, 2969, 3, 'Western Cape'),
(11065, 2970, 3, 'La Coru&ntilde;a'),
(11066, 2971, 3, '&Aacute;lava'),
(11067, 2972, 3, 'Albacete'),
(11068, 2973, 3, 'Alicante'),
(11069, 2974, 3, 'Almeria'),
(11070, 2975, 3, 'Asturias'),
(11071, 2976, 3, '&Aacute;vila'),
(11072, 2977, 3, 'Badajoz'),
(11073, 2978, 3, 'Baleares'),
(11074, 2979, 3, 'Barcelona'),
(11075, 2980, 3, 'Burgos'),
(11076, 2981, 3, 'C&aacute;ceres'),
(11077, 2982, 3, 'C&aacute;diz'),
(11078, 2983, 3, 'Cantabria'),
(11079, 2984, 3, 'Castell&oacute;n'),
(11080, 2985, 3, 'Ceuta'),
(11081, 2986, 3, 'Ciudad Real'),
(11082, 2987, 3, 'C&oacute;rdoba'),
(11083, 2988, 3, 'Cuenca'),
(11084, 2989, 3, 'Girona'),
(11085, 2990, 3, 'Granada'),
(11086, 2991, 3, 'Guadalajara'),
(11087, 2992, 3, 'Guip&uacute;zcoa'),
(11088, 2993, 3, 'Huelva'),
(11089, 2994, 3, 'Huesca'),
(11090, 2995, 3, 'Ja&eacute;n'),
(11091, 2996, 3, 'La Rioja'),
(11092, 2997, 3, 'Las Palmas'),
(11093, 2998, 3, 'Leon'),
(11094, 2999, 3, 'Lleida'),
(11095, 3000, 3, 'Lugo'),
(11096, 3001, 3, 'Madrid'),
(11097, 3002, 3, 'Malaga'),
(11098, 3003, 3, 'Melilla'),
(11099, 3004, 3, 'Murcia'),
(11100, 3005, 3, 'Navarra'),
(11101, 3006, 3, 'Ourense'),
(11102, 3007, 3, 'Palencia'),
(11103, 3008, 3, 'Pontevedra'),
(11104, 3009, 3, 'Salamanca'),
(11105, 3010, 3, 'Santa Cruz de Tenerife'),
(11106, 3011, 3, 'Segovia'),
(11107, 3012, 3, 'Sevilla'),
(11108, 3013, 3, 'Soria'),
(11109, 3014, 3, 'Tarragona'),
(11110, 3015, 3, 'Teruel'),
(11111, 3016, 3, 'Toledo'),
(11112, 3017, 3, 'Valencia'),
(11113, 3018, 3, 'Valladolid'),
(11114, 3019, 3, 'Vizcaya'),
(11115, 3020, 3, 'Zamora'),
(11116, 3021, 3, 'Zaragoza'),
(11117, 3022, 3, 'Central'),
(11118, 3023, 3, 'Eastern'),
(11119, 3024, 3, 'North Central'),
(11120, 3025, 3, 'Northern'),
(11121, 3026, 3, 'North Western'),
(11122, 3027, 3, 'Sabaragamuwa'),
(11123, 3028, 3, 'Southern'),
(11124, 3029, 3, 'Uva'),
(11125, 3030, 3, 'Western'),
(11126, 3032, 3, 'Saint Helena'),
(11127, 3034, 3, 'A\'ali an Nil');
INSERT INTO `oc_zone_description` (`zone_description_id`, `zone_id`, `language_id`, `name`) VALUES
(11128, 3035, 3, 'Al Bahr al Ahmar'),
(11129, 3036, 3, 'Al Buhayrat'),
(11130, 3037, 3, 'Al Jazirah'),
(11131, 3038, 3, 'Al Khartum'),
(11132, 3039, 3, 'Al Qadarif'),
(11133, 3040, 3, 'Al Wahdah'),
(11134, 3041, 3, 'An Nil al Abyad'),
(11135, 3042, 3, 'An Nil al Azraq'),
(11136, 3043, 3, 'Ash Shamaliyah'),
(11137, 3044, 3, 'Bahr al Jabal'),
(11138, 3045, 3, 'Gharb al Istiwa\'iyah'),
(11139, 3046, 3, 'Gharb Bahr al Ghazal'),
(11140, 3047, 3, 'Gharb Darfur'),
(11141, 3048, 3, 'Gharb Kurdufan'),
(11142, 3049, 3, 'Janub Darfur'),
(11143, 3050, 3, 'Janub Kurdufan'),
(11144, 3051, 3, 'Junqali'),
(11145, 3052, 3, 'Kassala'),
(11146, 3053, 3, 'Nahr an Nil'),
(11147, 3054, 3, 'Shamal Bahr al Ghazal'),
(11148, 3055, 3, 'Shamal Darfur'),
(11149, 3056, 3, 'Shamal Kurdufan'),
(11150, 3057, 3, 'Sharq al Istiwa\'iyah'),
(11151, 3058, 3, 'Sinnar'),
(11152, 3059, 3, 'Warab'),
(11153, 3060, 3, 'Brokopondo'),
(11154, 3061, 3, 'Commewijne'),
(11155, 3062, 3, 'Coronie'),
(11156, 3063, 3, 'Marowijne'),
(11157, 3064, 3, 'Nickerie'),
(11158, 3065, 3, 'Para'),
(11159, 3066, 3, 'Paramaribo'),
(11160, 3067, 3, 'Saramacca'),
(11161, 3068, 3, 'Sipaliwini'),
(11162, 3069, 3, 'Wanica'),
(11163, 3070, 3, 'Hhohho'),
(11164, 3071, 3, 'Lubombo'),
(11165, 3072, 3, 'Manzini'),
(11166, 3073, 3, 'Shishelweni'),
(11167, 3074, 3, 'Blekinge'),
(11168, 3075, 3, 'Dalarna'),
(11169, 3076, 3, 'Gävleborg'),
(11170, 3077, 3, 'Gotland'),
(11171, 3078, 3, 'Halland'),
(11172, 3079, 3, 'Jämtland'),
(11173, 3080, 3, 'Jönköping'),
(11174, 3081, 3, 'Kalmar'),
(11175, 3082, 3, 'Kronoberg'),
(11176, 3083, 3, 'Norrbotten'),
(11177, 3084, 3, 'Örebro'),
(11178, 3085, 3, 'Östergötland'),
(11179, 3086, 3, 'Sk&aring;ne'),
(11180, 3087, 3, 'Södermanland'),
(11181, 3088, 3, 'Stockholm'),
(11182, 3089, 3, 'Uppsala'),
(11183, 3090, 3, 'Värmland'),
(11184, 3091, 3, 'Västerbotten'),
(11185, 3092, 3, 'Västernorrland'),
(11186, 3093, 3, 'Västmanland'),
(11187, 3094, 3, 'Västra Götaland'),
(11188, 3095, 3, 'Aargau'),
(11189, 3096, 3, 'Appenzell Ausserrhoden'),
(11190, 3097, 3, 'Appenzell Innerrhoden'),
(11191, 3098, 3, 'Basel-Stadt'),
(11192, 3099, 3, 'Basel-Landschaft'),
(11193, 3100, 3, 'Bern'),
(11194, 3101, 3, 'Fribourg'),
(11195, 3102, 3, 'Gen&egrave;ve'),
(11196, 3103, 3, 'Glarus'),
(11197, 3104, 3, 'Graubünden'),
(11198, 3105, 3, 'Jura'),
(11199, 3106, 3, 'Luzern'),
(11200, 3107, 3, 'Neuch&acirc;tel'),
(11201, 3108, 3, 'Nidwald'),
(11202, 3109, 3, 'Obwald'),
(11203, 3110, 3, 'St. Gallen'),
(11204, 3111, 3, 'Schaffhausen'),
(11205, 3112, 3, 'Schwyz'),
(11206, 3113, 3, 'Solothurn'),
(11207, 3114, 3, 'Thurgau'),
(11208, 3115, 3, 'Ticino'),
(11209, 3116, 3, 'Uri'),
(11210, 3117, 3, 'Valais'),
(11211, 3118, 3, 'Vaud'),
(11212, 3119, 3, 'Zug'),
(11213, 3120, 3, 'Zürich'),
(11214, 3121, 3, 'Al Hasakah'),
(11215, 3122, 3, 'Al Ladhiqiyah'),
(11216, 3123, 3, 'Al Qunaytirah'),
(11217, 3124, 3, 'Ar Raqqah'),
(11218, 3125, 3, 'As Suwayda'),
(11219, 3126, 3, 'Dara'),
(11220, 3127, 3, 'Dayr az Zawr'),
(11221, 3128, 3, 'Dimashq'),
(11222, 3129, 3, 'Halab'),
(11223, 3130, 3, 'Hamah'),
(11224, 3131, 3, 'Hims'),
(11225, 3132, 3, 'Idlib'),
(11226, 3133, 3, 'Rif Dimashq'),
(11227, 3134, 3, 'Tartus'),
(11228, 3135, 3, 'Chang-hua'),
(11229, 3136, 3, 'Chia-i'),
(11230, 3137, 3, 'Hsin-chu'),
(11231, 3138, 3, 'Hua-lien'),
(11232, 3139, 3, 'I-lan'),
(11233, 3140, 3, 'Kao-hsiung county'),
(11234, 3141, 3, 'Kin-men'),
(11235, 3142, 3, 'Lien-chiang'),
(11236, 3143, 3, 'Miao-li'),
(11237, 3144, 3, 'Nan-t\'ou'),
(11238, 3145, 3, 'P\'eng-hu'),
(11239, 3146, 3, 'P\'ing-tung'),
(11240, 3147, 3, 'T\'ai-chung'),
(11241, 3148, 3, 'T\'ai-nan'),
(11242, 3149, 3, 'T\'ai-pei county'),
(11243, 3150, 3, 'T\'ai-tung'),
(11244, 3151, 3, 'T\'ao-yuan'),
(11245, 3152, 3, 'Yun-lin'),
(11246, 3153, 3, 'Chia-i city'),
(11247, 3154, 3, 'Chi-lung'),
(11248, 3155, 3, 'Hsin-chu'),
(11249, 3156, 3, 'T\'ai-chung'),
(11250, 3157, 3, 'T\'ai-nan'),
(11251, 3158, 3, 'Kao-hsiung city'),
(11252, 3159, 3, 'T\'ai-pei city'),
(11253, 3160, 3, 'Gorno-Badakhstan'),
(11254, 3161, 3, 'Khatlon'),
(11255, 3162, 3, 'Sughd'),
(11256, 3163, 3, 'Arusha'),
(11257, 3164, 3, 'Dar es Salaam'),
(11258, 3165, 3, 'Dodoma'),
(11259, 3166, 3, 'Iringa'),
(11260, 3167, 3, 'Kagera'),
(11261, 3168, 3, 'Kigoma'),
(11262, 3169, 3, 'Kilimanjaro'),
(11263, 3170, 3, 'Lindi'),
(11264, 3171, 3, 'Manyara'),
(11265, 3172, 3, 'Mara'),
(11266, 3173, 3, 'Mbeya'),
(11267, 3174, 3, 'Morogoro'),
(11268, 3175, 3, 'Mtwara'),
(11269, 3176, 3, 'Mwanza'),
(11270, 3177, 3, 'Pemba North'),
(11271, 3178, 3, 'Pemba South'),
(11272, 3179, 3, 'Pwani'),
(11273, 3180, 3, 'Rukwa'),
(11274, 3181, 3, 'Ruvuma'),
(11275, 3182, 3, 'Shinyanga'),
(11276, 3183, 3, 'Singida'),
(11277, 3184, 3, 'Tabora'),
(11278, 3185, 3, 'Tanga'),
(11279, 3186, 3, 'Zanzibar Central/South'),
(11280, 3187, 3, 'Zanzibar North'),
(11281, 3188, 3, 'Zanzibar Urban/West'),
(11282, 3189, 3, 'Amnat Charoen'),
(11283, 3190, 3, 'Ang Thong'),
(11284, 3191, 3, 'Ayutthaya'),
(11285, 3192, 3, 'Bangkok'),
(11286, 3193, 3, 'Buriram'),
(11287, 3194, 3, 'Chachoengsao'),
(11288, 3195, 3, 'Chai Nat'),
(11289, 3196, 3, 'Chaiyaphum'),
(11290, 3197, 3, 'Chanthaburi'),
(11291, 3198, 3, 'Chiang Mai'),
(11292, 3199, 3, 'Chiang Rai'),
(11293, 3200, 3, 'Chon Buri'),
(11294, 3201, 3, 'Chumphon'),
(11295, 3202, 3, 'Kalasin'),
(11296, 3203, 3, 'Kamphaeng Phet'),
(11297, 3204, 3, 'Kanchanaburi'),
(11298, 3205, 3, 'Khon Kaen'),
(11299, 3206, 3, 'Krabi'),
(11300, 3207, 3, 'Lampang'),
(11301, 3208, 3, 'Lamphun'),
(11302, 3209, 3, 'Loei'),
(11303, 3210, 3, 'Lop Buri'),
(11304, 3211, 3, 'Mae Hong Son'),
(11305, 3212, 3, 'Maha Sarakham'),
(11306, 3213, 3, 'Mukdahan'),
(11307, 3214, 3, 'Nakhon Nayok'),
(11308, 3215, 3, 'Nakhon Pathom'),
(11309, 3216, 3, 'Nakhon Phanom'),
(11310, 3217, 3, 'Nakhon Ratchasima'),
(11311, 3218, 3, 'Nakhon Sawan'),
(11312, 3219, 3, 'Nakhon Si Thammarat'),
(11313, 3220, 3, 'Nan'),
(11314, 3221, 3, 'Narathiwat'),
(11315, 3222, 3, 'Nong Bua Lamphu'),
(11316, 3223, 3, 'Nong Khai'),
(11317, 3224, 3, 'Nonthaburi'),
(11318, 3225, 3, 'Pathum Thani'),
(11319, 3226, 3, 'Pattani'),
(11320, 3227, 3, 'Phangnga'),
(11321, 3228, 3, 'Phatthalung'),
(11322, 3229, 3, 'Phayao'),
(11323, 3230, 3, 'Phetchabun'),
(11324, 3231, 3, 'Phetchaburi'),
(11325, 3232, 3, 'Phichit'),
(11326, 3233, 3, 'Phitsanulok'),
(11327, 3234, 3, 'Phrae'),
(11328, 3235, 3, 'Phuket'),
(11329, 3236, 3, 'Prachin Buri'),
(11330, 3237, 3, 'Prachuap Khiri Khan'),
(11331, 3238, 3, 'Ranong'),
(11332, 3239, 3, 'Ratchaburi'),
(11333, 3240, 3, 'Rayong'),
(11334, 3241, 3, 'Roi Et'),
(11335, 3242, 3, 'Sa Kaeo'),
(11336, 3243, 3, 'Sakon Nakhon'),
(11337, 3244, 3, 'Samut Prakan'),
(11338, 3245, 3, 'Samut Sakhon'),
(11339, 3246, 3, 'Samut Songkhram'),
(11340, 3247, 3, 'Sara Buri'),
(11341, 3248, 3, 'Satun'),
(11342, 3249, 3, 'Sing Buri'),
(11343, 3250, 3, 'Sisaket'),
(11344, 3251, 3, 'Songkhla'),
(11345, 3252, 3, 'Sukhothai'),
(11346, 3253, 3, 'Suphan Buri'),
(11347, 3254, 3, 'Surat Thani'),
(11348, 3255, 3, 'Surin'),
(11349, 3256, 3, 'Tak'),
(11350, 3257, 3, 'Trang'),
(11351, 3258, 3, 'Trat'),
(11352, 3259, 3, 'Ubon Ratchathani'),
(11353, 3260, 3, 'Udon Thani'),
(11354, 3261, 3, 'Uthai Thani'),
(11355, 3262, 3, 'Uttaradit'),
(11356, 3263, 3, 'Yala'),
(11357, 3264, 3, 'Yasothon'),
(11358, 3265, 3, 'Kara'),
(11359, 3266, 3, 'Plateaux'),
(11360, 3267, 3, 'Savanes'),
(11361, 3268, 3, 'Centrale'),
(11362, 3269, 3, 'Maritime'),
(11363, 3270, 3, 'Atafu'),
(11364, 3271, 3, 'Fakaofo'),
(11365, 3272, 3, 'Nukunonu'),
(11366, 3273, 3, 'Ha\'apai'),
(11367, 3274, 3, 'Tongatapu'),
(11368, 3275, 3, 'Vava\'u'),
(11369, 3276, 3, 'Couva/Tabaquite/Talparo'),
(11370, 3277, 3, 'Diego Martin'),
(11371, 3278, 3, 'Mayaro/Rio Claro'),
(11372, 3279, 3, 'Penal/Debe'),
(11373, 3280, 3, 'Princes Town'),
(11374, 3281, 3, 'Sangre Grande'),
(11375, 3282, 3, 'San Juan/Laventille'),
(11376, 3283, 3, 'Siparia'),
(11377, 3284, 3, 'Tunapuna/Piarco'),
(11378, 3285, 3, 'Port of Spain'),
(11379, 3286, 3, 'San Fernando'),
(11380, 3287, 3, 'Arima'),
(11381, 3288, 3, 'Point Fortin'),
(11382, 3289, 3, 'Chaguanas'),
(11383, 3290, 3, 'Tobago'),
(11384, 3291, 3, 'Ariana'),
(11385, 3292, 3, 'Beja'),
(11386, 3293, 3, 'Ben Arous'),
(11387, 3294, 3, 'Bizerte'),
(11388, 3295, 3, 'Gabes'),
(11389, 3296, 3, 'Gafsa'),
(11390, 3297, 3, 'Jendouba'),
(11391, 3298, 3, 'Kairouan'),
(11392, 3299, 3, 'Kasserine'),
(11393, 3300, 3, 'Kebili'),
(11394, 3301, 3, 'Kef'),
(11395, 3302, 3, 'Mahdia'),
(11396, 3303, 3, 'Manouba'),
(11397, 3304, 3, 'Medenine'),
(11398, 3305, 3, 'Monastir'),
(11399, 3306, 3, 'Nabeul'),
(11400, 3307, 3, 'Sfax'),
(11401, 3308, 3, 'Sidi'),
(11402, 3309, 3, 'Siliana'),
(11403, 3310, 3, 'Sousse'),
(11404, 3311, 3, 'Tataouine'),
(11405, 3312, 3, 'Tozeur'),
(11406, 3313, 3, 'Tunis'),
(11407, 3314, 3, 'Zaghouan'),
(11408, 3315, 3, 'Adana'),
(11409, 3316, 3, 'Adıyaman'),
(11410, 3317, 3, 'Afyonkarahisar'),
(11411, 3318, 3, 'Ağrı'),
(11412, 3319, 3, 'Aksaray'),
(11413, 3320, 3, 'Amasya'),
(11414, 3321, 3, 'Ankara'),
(11415, 3322, 3, 'Antalya'),
(11416, 3323, 3, 'Ardahan'),
(11417, 3324, 3, 'Artvin'),
(11418, 3325, 3, 'Aydın'),
(11419, 3326, 3, 'Balıkesir'),
(11420, 3327, 3, 'Bartın'),
(11421, 3328, 3, 'Batman'),
(11422, 3329, 3, 'Bayburt'),
(11423, 3330, 3, 'Bilecik'),
(11424, 3331, 3, 'Bingöl'),
(11425, 3332, 3, 'Bitlis'),
(11426, 3333, 3, 'Bolu'),
(11427, 3334, 3, 'Burdur'),
(11428, 3335, 3, 'Bursa'),
(11429, 3336, 3, 'Çanakkale'),
(11430, 3337, 3, 'Çankırı'),
(11431, 3338, 3, 'Çorum'),
(11432, 3339, 3, 'Denizli'),
(11433, 3340, 3, 'Diyarbakır'),
(11434, 3341, 3, 'Düzce'),
(11435, 3342, 3, 'Edirne'),
(11436, 3343, 3, 'Elazığ'),
(11437, 3344, 3, 'Erzincan'),
(11438, 3345, 3, 'Erzurum'),
(11439, 3346, 3, 'Eskişehir'),
(11440, 3347, 3, 'Gaziantep'),
(11441, 3348, 3, 'Giresun'),
(11442, 3349, 3, 'Gümüşhane'),
(11443, 3350, 3, 'Hakkari'),
(11444, 3351, 3, 'Hatay'),
(11445, 3352, 3, 'Iğdır'),
(11446, 3353, 3, 'Isparta'),
(11447, 3354, 3, 'İstanbul'),
(11448, 3355, 3, 'İzmir'),
(11449, 3356, 3, 'Kahramanmaraş'),
(11450, 3357, 3, 'Karabük'),
(11451, 3358, 3, 'Karaman'),
(11452, 3359, 3, 'Kars'),
(11453, 3360, 3, 'Kastamonu'),
(11454, 3361, 3, 'Kayseri'),
(11455, 3362, 3, 'Kilis'),
(11456, 3363, 3, 'Kırıkkale'),
(11457, 3364, 3, 'Kırklareli'),
(11458, 3365, 3, 'Kırşehir'),
(11459, 3366, 3, 'Kocaeli'),
(11460, 3367, 3, 'Konya'),
(11461, 3368, 3, 'Kütahya'),
(11462, 3369, 3, 'Malatya'),
(11463, 3370, 3, 'Manisa'),
(11464, 3371, 3, 'Mardin'),
(11465, 3372, 3, 'Mersin'),
(11466, 3373, 3, 'Muğla'),
(11467, 3374, 3, 'Muş'),
(11468, 3375, 3, 'Nevşehir'),
(11469, 3376, 3, 'Niğde'),
(11470, 3377, 3, 'Ordu'),
(11471, 3378, 3, 'Osmaniye'),
(11472, 3379, 3, 'Rize'),
(11473, 3380, 3, 'Sakarya'),
(11474, 3381, 3, 'Samsun'),
(11475, 3382, 3, 'Şanlıurfa'),
(11476, 3383, 3, 'Siirt'),
(11477, 3384, 3, 'Sinop'),
(11478, 3385, 3, 'Şırnak'),
(11479, 3386, 3, 'Sivas'),
(11480, 3387, 3, 'Tekirdağ'),
(11481, 3388, 3, 'Tokat'),
(11482, 3389, 3, 'Trabzon'),
(11483, 3390, 3, 'Tunceli'),
(11484, 3391, 3, 'Uşak'),
(11485, 3392, 3, 'Van'),
(11486, 3393, 3, 'Yalova'),
(11487, 3394, 3, 'Yozgat'),
(11488, 3395, 3, 'Zonguldak'),
(11489, 3396, 3, 'Ahal Welayaty'),
(11490, 3397, 3, 'Balkan Welayaty'),
(11491, 3398, 3, 'Dashhowuz Welayaty'),
(11492, 3399, 3, 'Lebap Welayaty'),
(11493, 3400, 3, 'Mary Welayaty'),
(11494, 3401, 3, 'Ambergris Cays'),
(11495, 3402, 3, 'Dellis Cay'),
(11496, 3403, 3, 'French Cay'),
(11497, 3404, 3, 'Little Water Cay'),
(11498, 3405, 3, 'Parrot Cay'),
(11499, 3406, 3, 'Pine Cay'),
(11500, 3407, 3, 'Salt Cay'),
(11501, 3408, 3, 'Grand Turk'),
(11502, 3409, 3, 'South Caicos'),
(11503, 3410, 3, 'East Caicos'),
(11504, 3411, 3, 'Middle Caicos'),
(11505, 3412, 3, 'North Caicos'),
(11506, 3413, 3, 'Providenciales'),
(11507, 3414, 3, 'West Caicos'),
(11508, 3415, 3, 'Nanumanga'),
(11509, 3416, 3, 'Niulakita'),
(11510, 3417, 3, 'Niutao'),
(11511, 3418, 3, 'Funafuti'),
(11512, 3419, 3, 'Nanumea'),
(11513, 3420, 3, 'Nui'),
(11514, 3421, 3, 'Nukufetau'),
(11515, 3422, 3, 'Nukulaelae'),
(11516, 3423, 3, 'Vaitupu'),
(11517, 3424, 3, 'Kalangala'),
(11518, 3425, 3, 'Kampala'),
(11519, 3426, 3, 'Kayunga'),
(11520, 3427, 3, 'Kiboga'),
(11521, 3428, 3, 'Luwero'),
(11522, 3429, 3, 'Masaka'),
(11523, 3430, 3, 'Mpigi'),
(11524, 3431, 3, 'Mubende'),
(11525, 3432, 3, 'Mukono'),
(11526, 3433, 3, 'Nakasongola'),
(11527, 3434, 3, 'Rakai'),
(11528, 3435, 3, 'Sembabule'),
(11529, 3436, 3, 'Wakiso'),
(11530, 3437, 3, 'Bugiri'),
(11531, 3438, 3, 'Busia'),
(11532, 3439, 3, 'Iganga'),
(11533, 3440, 3, 'Jinja'),
(11534, 3441, 3, 'Kaberamaido'),
(11535, 3442, 3, 'Kamuli'),
(11536, 3443, 3, 'Kapchorwa'),
(11537, 3444, 3, 'Katakwi'),
(11538, 3445, 3, 'Kumi'),
(11539, 3446, 3, 'Mayuge'),
(11540, 3447, 3, 'Mbale'),
(11541, 3448, 3, 'Pallisa'),
(11542, 3449, 3, 'Sironko'),
(11543, 3450, 3, 'Soroti'),
(11544, 3451, 3, 'Tororo'),
(11545, 3452, 3, 'Adjumani'),
(11546, 3453, 3, 'Apac'),
(11547, 3454, 3, 'Arua'),
(11548, 3455, 3, 'Gulu'),
(11549, 3456, 3, 'Kitgum'),
(11550, 3457, 3, 'Kotido'),
(11551, 3458, 3, 'Lira'),
(11552, 3459, 3, 'Moroto'),
(11553, 3460, 3, 'Moyo'),
(11554, 3461, 3, 'Nakapiripirit'),
(11555, 3462, 3, 'Nebbi'),
(11556, 3463, 3, 'Pader'),
(11557, 3464, 3, 'Yumbe'),
(11558, 3465, 3, 'Bundibugyo'),
(11559, 3466, 3, 'Bushenyi'),
(11560, 3467, 3, 'Hoima'),
(11561, 3468, 3, 'Kabale'),
(11562, 3469, 3, 'Kabarole'),
(11563, 3470, 3, 'Kamwenge'),
(11564, 3471, 3, 'Kanungu'),
(11565, 3472, 3, 'Kasese'),
(11566, 3473, 3, 'Kibaale'),
(11567, 3474, 3, 'Kisoro'),
(11568, 3475, 3, 'Kyenjojo'),
(11569, 3476, 3, 'Masindi'),
(11570, 3477, 3, 'Mbarara'),
(11571, 3478, 3, 'Ntungamo'),
(11572, 3479, 3, 'Rukungiri'),
(11573, 3480, 3, 'Cherkas\'ka Oblast\''),
(11574, 3481, 3, 'Chernihivs\'ka Oblast\''),
(11575, 3482, 3, 'Chernivets\'ka Oblast\''),
(11576, 3483, 3, 'Crimea'),
(11577, 3484, 3, 'Dnipropetrovs\'ka Oblast\''),
(11578, 3485, 3, 'Donets\'ka Oblast\''),
(11579, 3486, 3, 'Ivano-Frankivs\'ka Oblast\''),
(11580, 3487, 3, 'Khersons\'ka Oblast\''),
(11581, 3488, 3, 'Khmel\'nyts\'ka Oblast\''),
(11582, 3489, 3, 'Kirovohrads\'ka Oblast\''),
(11583, 3490, 3, 'Kyiv'),
(11584, 3491, 3, 'Kyivs\'ka Oblast\''),
(11585, 3492, 3, 'Luhans\'ka Oblast\''),
(11586, 3493, 3, 'L\'vivs\'ka Oblast\''),
(11587, 3494, 3, 'Mykolayivs\'ka Oblast\''),
(11588, 3495, 3, 'Odes\'ka Oblast\''),
(11589, 3496, 3, 'Poltavs\'ka Oblast\''),
(11590, 3497, 3, 'Rivnens\'ka Oblast\''),
(11591, 3498, 3, 'Sevastopol\''),
(11592, 3499, 3, 'Sums\'ka Oblast\''),
(11593, 3500, 3, 'Ternopil\'s\'ka Oblast\''),
(11594, 3501, 3, 'Vinnyts\'ka Oblast\''),
(11595, 3502, 3, 'Volyns\'ka Oblast\''),
(11596, 3503, 3, 'Zakarpats\'ka Oblast\''),
(11597, 3504, 3, 'Zaporiz\'ka Oblast\''),
(11598, 3505, 3, 'Zhytomyrs\'ka oblast\''),
(11599, 3506, 3, 'Abu Dhabi'),
(11600, 3507, 3, '\'Ajman'),
(11601, 3508, 3, 'Al Fujayrah'),
(11602, 3509, 3, 'Ash Shariqah'),
(11603, 3510, 3, 'Dubai'),
(11604, 3511, 3, 'R\'as al Khaymah'),
(11605, 3512, 3, 'Umm al Qaywayn'),
(11606, 3513, 3, 'Aberdeen'),
(11607, 3514, 3, 'Aberdeenshire'),
(11608, 3515, 3, 'Anglesey'),
(11609, 3516, 3, 'Angus'),
(11610, 3517, 3, 'Argyll and Bute'),
(11611, 3518, 3, 'Bedfordshire'),
(11612, 3519, 3, 'Berkshire'),
(11613, 3520, 3, 'Blaenau Gwent'),
(11614, 3521, 3, 'Bridgend'),
(11615, 3522, 3, 'Bristol'),
(11616, 3523, 3, 'Buckinghamshire'),
(11617, 3524, 3, 'Caerphilly'),
(11618, 3525, 3, 'Cambridgeshire'),
(11619, 3526, 3, 'Cardiff'),
(11620, 3527, 3, 'Carmarthenshire'),
(11621, 3528, 3, 'Ceredigion'),
(11622, 3529, 3, 'Cheshire'),
(11623, 3530, 3, 'Clackmannanshire'),
(11624, 3531, 3, 'Conwy'),
(11625, 3532, 3, 'Cornwall'),
(11626, 3533, 3, 'Denbighshire'),
(11627, 3534, 3, 'Derbyshire'),
(11628, 3535, 3, 'Devon'),
(11629, 3536, 3, 'Dorset'),
(11630, 3537, 3, 'Dumfries and Galloway'),
(11631, 3538, 3, 'Dundee'),
(11632, 3539, 3, 'Durham'),
(11633, 3540, 3, 'East Ayrshire'),
(11634, 3541, 3, 'East Dunbartonshire'),
(11635, 3542, 3, 'East Lothian'),
(11636, 3543, 3, 'East Renfrewshire'),
(11637, 3544, 3, 'East Riding of Yorkshire'),
(11638, 3545, 3, 'East Sussex'),
(11639, 3546, 3, 'Edinburgh'),
(11640, 3547, 3, 'Essex'),
(11641, 3548, 3, 'Falkirk'),
(11642, 3549, 3, 'Fife'),
(11643, 3550, 3, 'Flintshire'),
(11644, 3551, 3, 'Glasgow'),
(11645, 3552, 3, 'Gloucestershire'),
(11646, 3553, 3, 'Greater London'),
(11647, 3554, 3, 'Greater Manchester'),
(11648, 3555, 3, 'Gwynedd'),
(11649, 3556, 3, 'Hampshire'),
(11650, 3557, 3, 'Herefordshire'),
(11651, 3558, 3, 'Hertfordshire'),
(11652, 3559, 3, 'Highlands'),
(11653, 3560, 3, 'Inverclyde'),
(11654, 3561, 3, 'Isle of Wight'),
(11655, 3562, 3, 'Kent'),
(11656, 3563, 3, 'Lancashire'),
(11657, 3564, 3, 'Leicestershire'),
(11658, 3565, 3, 'Lincolnshire'),
(11659, 3566, 3, 'Merseyside'),
(11660, 3567, 3, 'Merthyr Tydfil'),
(11661, 3568, 3, 'Midlothian'),
(11662, 3569, 3, 'Monmouthshire'),
(11663, 3570, 3, 'Moray'),
(11664, 3571, 3, 'Neath Port Talbot'),
(11665, 3572, 3, 'Newport'),
(11666, 3573, 3, 'Norfolk'),
(11667, 3574, 3, 'North Ayrshire'),
(11668, 3575, 3, 'North Lanarkshire'),
(11669, 3576, 3, 'North Yorkshire'),
(11670, 3577, 3, 'Northamptonshire'),
(11671, 3578, 3, 'Northumberland'),
(11672, 3579, 3, 'Nottinghamshire'),
(11673, 3580, 3, 'Orkney Islands'),
(11674, 3581, 3, 'Oxfordshire'),
(11675, 3582, 3, 'Pembrokeshire'),
(11676, 3583, 3, 'Perth and Kinross'),
(11677, 3584, 3, 'Powys'),
(11678, 3585, 3, 'Renfrewshire'),
(11679, 3586, 3, 'Rhondda Cynon Taff'),
(11680, 3587, 3, 'Rutland'),
(11681, 3588, 3, 'Scottish Borders'),
(11682, 3589, 3, 'Shetland Islands'),
(11683, 3590, 3, 'Shropshire'),
(11684, 3591, 3, 'Somerset'),
(11685, 3592, 3, 'South Ayrshire'),
(11686, 3593, 3, 'South Lanarkshire'),
(11687, 3594, 3, 'South Yorkshire'),
(11688, 3595, 3, 'Staffordshire'),
(11689, 3596, 3, 'Stirling'),
(11690, 3597, 3, 'Suffolk'),
(11691, 3598, 3, 'Surrey'),
(11692, 3599, 3, 'Swansea'),
(11693, 3600, 3, 'Torfaen'),
(11694, 3601, 3, 'Tyne and Wear'),
(11695, 3602, 3, 'Vale of Glamorgan'),
(11696, 3603, 3, 'Warwickshire'),
(11697, 3604, 3, 'West Dunbartonshire'),
(11698, 3605, 3, 'West Lothian'),
(11699, 3606, 3, 'West Midlands'),
(11700, 3607, 3, 'West Sussex'),
(11701, 3608, 3, 'West Yorkshire'),
(11702, 3609, 3, 'Western Isles'),
(11703, 3610, 3, 'Wiltshire'),
(11704, 3611, 3, 'Worcestershire'),
(11705, 3612, 3, 'Wrexham'),
(11706, 3613, 3, 'Alabama'),
(11707, 3614, 3, 'Alaska'),
(11708, 3615, 3, 'American Samoa'),
(11709, 3616, 3, 'Arizona'),
(11710, 3617, 3, 'Arkansas'),
(11711, 3618, 3, 'Armed Forces Africa'),
(11712, 3619, 3, 'Armed Forces Americas'),
(11713, 3620, 3, 'Armed Forces Canada'),
(11714, 3621, 3, 'Armed Forces Europe'),
(11715, 3622, 3, 'Armed Forces Middle East'),
(11716, 3623, 3, 'Armed Forces Pacific'),
(11717, 3624, 3, 'California'),
(11718, 3625, 3, 'Colorado'),
(11719, 3626, 3, 'Connecticut'),
(11720, 3627, 3, 'Delaware'),
(11721, 3628, 3, 'District of Columbia'),
(11722, 3629, 3, 'Federated States Of Micronesia'),
(11723, 3630, 3, 'Florida'),
(11724, 3631, 3, 'Georgia'),
(11725, 3632, 3, 'Guam'),
(11726, 3633, 3, 'Hawaii'),
(11727, 3634, 3, 'Idaho'),
(11728, 3635, 3, 'Illinois'),
(11729, 3636, 3, 'Indiana'),
(11730, 3637, 3, 'Iowa'),
(11731, 3638, 3, 'Kansas'),
(11732, 3639, 3, 'Kentucky'),
(11733, 3640, 3, 'Louisiana'),
(11734, 3641, 3, 'Maine'),
(11735, 3642, 3, 'Marshall Islands'),
(11736, 3643, 3, 'Maryland'),
(11737, 3644, 3, 'Massachusetts'),
(11738, 3645, 3, 'Michigan'),
(11739, 3646, 3, 'Minnesota'),
(11740, 3647, 3, 'Mississippi'),
(11741, 3648, 3, 'Missouri'),
(11742, 3649, 3, 'Montana'),
(11743, 3650, 3, 'Nebraska'),
(11744, 3651, 3, 'Nevada'),
(11745, 3652, 3, 'New Hampshire'),
(11746, 3653, 3, 'New Jersey'),
(11747, 3654, 3, 'New Mexico'),
(11748, 3655, 3, 'New York'),
(11749, 3656, 3, 'North Carolina'),
(11750, 3657, 3, 'North Dakota'),
(11751, 3658, 3, 'Northern Mariana Islands'),
(11752, 3659, 3, 'Ohio'),
(11753, 3660, 3, 'Oklahoma'),
(11754, 3661, 3, 'Oregon'),
(11755, 3662, 3, 'Palau'),
(11756, 3663, 3, 'Pennsylvania'),
(11757, 3664, 3, 'Puerto Rico'),
(11758, 3665, 3, 'Rhode Island'),
(11759, 3666, 3, 'South Carolina'),
(11760, 3667, 3, 'South Dakota'),
(11761, 3668, 3, 'Tennessee'),
(11762, 3669, 3, 'Texas'),
(11763, 3670, 3, 'Utah'),
(11764, 3671, 3, 'Vermont'),
(11765, 3672, 3, 'Virgin Islands'),
(11766, 3673, 3, 'Virginia'),
(11767, 3674, 3, 'Washington'),
(11768, 3675, 3, 'West Virginia'),
(11769, 3676, 3, 'Wisconsin'),
(11770, 3677, 3, 'Wyoming'),
(11771, 3678, 3, 'Baker Island'),
(11772, 3679, 3, 'Howland Island'),
(11773, 3680, 3, 'Jarvis Island'),
(11774, 3681, 3, 'Johnston Atoll'),
(11775, 3682, 3, 'Kingman Reef'),
(11776, 3683, 3, 'Midway Atoll'),
(11777, 3684, 3, 'Navassa Island'),
(11778, 3685, 3, 'Palmyra Atoll'),
(11779, 3686, 3, 'Wake Island'),
(11780, 3687, 3, 'Artigas'),
(11781, 3688, 3, 'Canelones'),
(11782, 3689, 3, 'Cerro Largo'),
(11783, 3690, 3, 'Colonia'),
(11784, 3691, 3, 'Durazno'),
(11785, 3692, 3, 'Flores'),
(11786, 3693, 3, 'Florida'),
(11787, 3694, 3, 'Lavalleja'),
(11788, 3695, 3, 'Maldonado'),
(11789, 3696, 3, 'Montevideo'),
(11790, 3697, 3, 'Paysandu'),
(11791, 3698, 3, 'Rio Negro'),
(11792, 3699, 3, 'Rivera'),
(11793, 3700, 3, 'Rocha'),
(11794, 3701, 3, 'Salto'),
(11795, 3702, 3, 'San Jose'),
(11796, 3703, 3, 'Soriano'),
(11797, 3704, 3, 'Tacuarembo'),
(11798, 3705, 3, 'Treinta y Tres'),
(11799, 3706, 3, 'Andijon'),
(11800, 3707, 3, 'Buxoro'),
(11801, 3708, 3, 'Farg\'ona'),
(11802, 3709, 3, 'Jizzax'),
(11803, 3710, 3, 'Namangan'),
(11804, 3711, 3, 'Navoiy'),
(11805, 3712, 3, 'Qashqadaryo'),
(11806, 3713, 3, 'Qoraqalpog\'iston Republikasi'),
(11807, 3714, 3, 'Samarqand'),
(11808, 3715, 3, 'Sirdaryo'),
(11809, 3716, 3, 'Surxondaryo'),
(11810, 3717, 3, 'Toshkent City'),
(11811, 3718, 3, 'Toshkent Region'),
(11812, 3719, 3, 'Xorazm'),
(11813, 3720, 3, 'Malampa'),
(11814, 3721, 3, 'Penama'),
(11815, 3722, 3, 'Sanma'),
(11816, 3723, 3, 'Shefa'),
(11817, 3724, 3, 'Tafea'),
(11818, 3725, 3, 'Torba'),
(11819, 3726, 3, 'Amazonas'),
(11820, 3727, 3, 'Anzoategui'),
(11821, 3728, 3, 'Apure'),
(11822, 3729, 3, 'Aragua'),
(11823, 3730, 3, 'Barinas'),
(11824, 3731, 3, 'Bolivar'),
(11825, 3732, 3, 'Carabobo'),
(11826, 3733, 3, 'Cojedes'),
(11827, 3734, 3, 'Delta Amacuro'),
(11828, 3735, 3, 'Dependencias Federales'),
(11829, 3736, 3, 'Distrito Federal'),
(11830, 3737, 3, 'Falcon'),
(11831, 3738, 3, 'Guarico'),
(11832, 3739, 3, 'Lara'),
(11833, 3740, 3, 'Merida'),
(11834, 3741, 3, 'Miranda'),
(11835, 3742, 3, 'Monagas'),
(11836, 3743, 3, 'Nueva Esparta'),
(11837, 3744, 3, 'Portuguesa'),
(11838, 3745, 3, 'Sucre'),
(11839, 3746, 3, 'Tachira'),
(11840, 3747, 3, 'Trujillo'),
(11841, 3748, 3, 'Vargas'),
(11842, 3749, 3, 'Yaracuy'),
(11843, 3750, 3, 'Zulia'),
(11844, 3751, 3, 'An Giang'),
(11845, 3752, 3, 'Bac Giang'),
(11846, 3753, 3, 'Bac Kan'),
(11847, 3754, 3, 'Bac Lieu'),
(11848, 3755, 3, 'Bac Ninh'),
(11849, 3756, 3, 'Ba Ria-Vung Tau'),
(11850, 3757, 3, 'Ben Tre'),
(11851, 3758, 3, 'Binh Dinh'),
(11852, 3759, 3, 'Binh Duong'),
(11853, 3760, 3, 'Binh Phuoc'),
(11854, 3761, 3, 'Binh Thuan'),
(11855, 3762, 3, 'Ca Mau'),
(11856, 3763, 3, 'Can Tho'),
(11857, 3764, 3, 'Cao Bang'),
(11858, 3765, 3, 'Dak Lak'),
(11859, 3766, 3, 'Dak Nong'),
(11860, 3767, 3, 'Da Nang'),
(11861, 3768, 3, 'Dien Bien'),
(11862, 3769, 3, 'Dong Nai'),
(11863, 3770, 3, 'Dong Thap'),
(11864, 3771, 3, 'Gia Lai'),
(11865, 3772, 3, 'Ha Giang'),
(11866, 3773, 3, 'Hai Duong'),
(11867, 3774, 3, 'Hai Phong'),
(11868, 3775, 3, 'Ha Nam'),
(11869, 3776, 3, 'Ha Noi'),
(11870, 3777, 3, 'Ha Tay'),
(11871, 3778, 3, 'Ha Tinh'),
(11872, 3779, 3, 'Hoa Binh'),
(11873, 3780, 3, 'Ho Chi Minh City'),
(11874, 3781, 3, 'Hau Giang'),
(11875, 3782, 3, 'Hung Yen'),
(11876, 3783, 3, 'Saint Croix'),
(11877, 3784, 3, 'Saint John'),
(11878, 3785, 3, 'Saint Thomas'),
(11879, 3786, 3, 'Alo'),
(11880, 3787, 3, 'Sigave'),
(11881, 3788, 3, 'Wallis'),
(11882, 3789, 3, 'Abyan'),
(11883, 3790, 3, 'Adan'),
(11884, 3791, 3, 'Amran'),
(11885, 3792, 3, 'Al Bayda'),
(11886, 3793, 3, 'Ad Dali'),
(11887, 3794, 3, 'Dhamar'),
(11888, 3795, 3, 'Hadramawt'),
(11889, 3796, 3, 'Hajjah'),
(11890, 3797, 3, 'Al Hudaydah'),
(11891, 3798, 3, 'Ibb'),
(11892, 3799, 3, 'Al Jawf'),
(11893, 3800, 3, 'Lahij'),
(11894, 3801, 3, 'Ma\'rib'),
(11895, 3802, 3, 'Al Mahrah'),
(11896, 3803, 3, 'Al Mahwit'),
(11897, 3804, 3, 'Sa\'dah'),
(11898, 3805, 3, 'San\'a'),
(11899, 3806, 3, 'Shabwah'),
(11900, 3807, 3, 'Ta\'izz'),
(11901, 3812, 3, 'Bas-Congo'),
(11902, 3813, 3, 'Bandundu'),
(11903, 3814, 3, 'Equateur'),
(11904, 3815, 3, 'Katanga'),
(11905, 3816, 3, 'Kasai-Oriental'),
(11906, 3817, 3, 'Kinshasa'),
(11907, 3818, 3, 'Kasai-Occidental'),
(11908, 3819, 3, 'Maniema'),
(11909, 3820, 3, 'Nord-Kivu'),
(11910, 3821, 3, 'Orientale'),
(11911, 3822, 3, 'Sud-Kivu'),
(11912, 3823, 3, 'Central'),
(11913, 3824, 3, 'Copperbelt'),
(11914, 3825, 3, 'Eastern'),
(11915, 3826, 3, 'Luapula'),
(11916, 3827, 3, 'Lusaka'),
(11917, 3828, 3, 'Northern'),
(11918, 3829, 3, 'North-Western'),
(11919, 3830, 3, 'Southern'),
(11920, 3831, 3, 'Western'),
(11921, 3832, 3, 'Bulawayo'),
(11922, 3833, 3, 'Harare'),
(11923, 3834, 3, 'Manicaland'),
(11924, 3835, 3, 'Mashonaland Central'),
(11925, 3836, 3, 'Mashonaland East'),
(11926, 3837, 3, 'Mashonaland West'),
(11927, 3838, 3, 'Masvingo'),
(11928, 3839, 3, 'Matabeleland North'),
(11929, 3840, 3, 'Matabeleland South'),
(11930, 3841, 3, 'Midlands'),
(11931, 3861, 3, 'Campobasso'),
(11932, 3862, 3, 'Carbonia-Iglesias'),
(11933, 3863, 3, 'Caserta'),
(11934, 3864, 3, 'Catania'),
(11935, 3865, 3, 'Catanzaro'),
(11936, 3866, 3, 'Chieti'),
(11937, 3867, 3, 'Como'),
(11938, 3868, 3, 'Cosenza'),
(11939, 3869, 3, 'Cremona'),
(11940, 3870, 3, 'Crotone'),
(11941, 3871, 3, 'Cuneo'),
(11942, 3872, 3, 'Enna'),
(11943, 3873, 3, 'Ferrara'),
(11944, 3874, 3, 'Firenze'),
(11945, 3875, 3, 'Foggia'),
(11946, 3876, 3, 'Forli-Cesena'),
(11947, 3877, 3, 'Frosinone'),
(11948, 3878, 3, 'Genova'),
(11949, 3879, 3, 'Gorizia'),
(11950, 3880, 3, 'Grosseto'),
(11951, 3881, 3, 'Imperia'),
(11952, 3882, 3, 'Isernia'),
(11953, 3883, 3, 'L&#39;Aquila'),
(11954, 3884, 3, 'La Spezia'),
(11955, 3885, 3, 'Latina'),
(11956, 3886, 3, 'Lecce'),
(11957, 3887, 3, 'Lecco'),
(11958, 3888, 3, 'Livorno'),
(11959, 3889, 3, 'Lodi'),
(11960, 3890, 3, 'Lucca'),
(11961, 3891, 3, 'Macerata'),
(11962, 3892, 3, 'Mantova'),
(11963, 3893, 3, 'Massa-Carrara'),
(11964, 3894, 3, 'Matera'),
(11965, 3895, 3, 'Medio Campidano'),
(11966, 3896, 3, 'Messina'),
(11967, 3897, 3, 'Milano'),
(11968, 3898, 3, 'Modena'),
(11969, 3899, 3, 'Napoli'),
(11970, 3900, 3, 'Novara'),
(11971, 3901, 3, 'Nuoro'),
(11972, 3902, 3, 'Ogliastra'),
(11973, 3903, 3, 'Olbia-Tempio'),
(11974, 3904, 3, 'Oristano'),
(11975, 3905, 3, 'Padova'),
(11976, 3906, 3, 'Palermo'),
(11977, 3907, 3, 'Parma'),
(11978, 3908, 3, 'Pavia'),
(11979, 3909, 3, 'Perugia'),
(11980, 3910, 3, 'Pesaro e Urbino'),
(11981, 3911, 3, 'Pescara'),
(11982, 3912, 3, 'Piacenza'),
(11983, 3913, 3, 'Pisa'),
(11984, 3914, 3, 'Pistoia'),
(11985, 3915, 3, 'Pordenone'),
(11986, 3916, 3, 'Potenza'),
(11987, 3917, 3, 'Prato'),
(11988, 3918, 3, 'Ragusa'),
(11989, 3919, 3, 'Ravenna'),
(11990, 3920, 3, 'Reggio Calabria'),
(11991, 3921, 3, 'Reggio Emilia'),
(11992, 3922, 3, 'Rieti'),
(11993, 3923, 3, 'Rimini'),
(11994, 3924, 3, 'Roma'),
(11995, 3925, 3, 'Rovigo'),
(11996, 3926, 3, 'Salerno'),
(11997, 3927, 3, 'Sassari'),
(11998, 3928, 3, 'Savona'),
(11999, 3929, 3, 'Siena'),
(12000, 3930, 3, 'Siracusa'),
(12001, 3931, 3, 'Sondrio'),
(12002, 3932, 3, 'Taranto'),
(12003, 3933, 3, 'Teramo'),
(12004, 3934, 3, 'Terni'),
(12005, 3935, 3, 'Torino'),
(12006, 3936, 3, 'Trapani'),
(12007, 3937, 3, 'Trento'),
(12008, 3938, 3, 'Treviso'),
(12009, 3939, 3, 'Trieste'),
(12010, 3940, 3, 'Udine'),
(12011, 3941, 3, 'Varese'),
(12012, 3942, 3, 'Venezia'),
(12013, 3943, 3, 'Verbano-Cusio-Ossola'),
(12014, 3944, 3, 'Vercelli'),
(12015, 3945, 3, 'Verona'),
(12016, 3946, 3, 'Vibo Valentia'),
(12017, 3947, 3, 'Vicenza'),
(12018, 3948, 3, 'Viterbo'),
(12019, 3949, 3, 'County Antrim'),
(12020, 3950, 3, 'County Armagh'),
(12021, 3951, 3, 'County Down'),
(12022, 3952, 3, 'County Fermanagh'),
(12023, 3953, 3, 'County Londonderry'),
(12024, 3954, 3, 'County Tyrone'),
(12025, 3955, 3, 'Cumbria'),
(12026, 3956, 3, 'Pomurska'),
(12027, 3957, 3, 'Podravska'),
(12028, 3958, 3, 'Koroška'),
(12029, 3959, 3, 'Savinjska'),
(12030, 3960, 3, 'Zasavska'),
(12031, 3961, 3, 'Spodnjeposavska'),
(12032, 3962, 3, 'Jugovzhodna Slovenija'),
(12033, 3963, 3, 'Osrednjeslovenska'),
(12034, 3964, 3, 'Gorenjska'),
(12035, 3965, 3, 'Notranjsko-kraška'),
(12036, 3966, 3, 'Goriška'),
(12037, 3967, 3, 'Obalno-kraška'),
(12038, 3968, 3, 'Ruse'),
(12039, 3969, 3, 'Alborz'),
(12040, 3970, 3, 'Brussels-Capital Region'),
(12041, 3971, 3, 'Aguascalientes'),
(12042, 3973, 3, 'Andrijevica'),
(12043, 3974, 3, 'Bar'),
(12044, 3975, 3, 'Berane'),
(12045, 3976, 3, 'Bijelo Polje'),
(12046, 3977, 3, 'Budva'),
(12047, 3978, 3, 'Cetinje'),
(12048, 3979, 3, 'Danilovgrad'),
(12049, 3980, 3, 'Herceg-Novi'),
(12050, 3981, 3, 'Kolašin'),
(12051, 3982, 3, 'Kotor'),
(12052, 3983, 3, 'Mojkovac'),
(12053, 3984, 3, 'Nikšić'),
(12054, 3985, 3, 'Plav'),
(12055, 3986, 3, 'Pljevlja'),
(12056, 3987, 3, 'Plužine'),
(12057, 3988, 3, 'Podgorica'),
(12058, 3989, 3, 'Rožaje'),
(12059, 3990, 3, 'Šavnik'),
(12060, 3991, 3, 'Tivat'),
(12061, 3992, 3, 'Ulcinj'),
(12062, 3993, 3, 'Žabljak'),
(12063, 3994, 3, 'Belgrade'),
(12064, 3995, 3, 'North Bačka'),
(12065, 3996, 3, 'Central Banat'),
(12066, 3997, 3, 'North Banat'),
(12067, 3998, 3, 'South Banat'),
(12068, 3999, 3, 'West Bačka'),
(12069, 4000, 3, 'South Bačka'),
(12070, 4001, 3, 'Srem'),
(12071, 4002, 3, 'Mačva'),
(12072, 4003, 3, 'Kolubara'),
(12073, 4004, 3, 'Podunavlje'),
(12074, 4005, 3, 'Braničevo'),
(12075, 4006, 3, 'Šumadija'),
(12076, 4007, 3, 'Pomoravlje'),
(12077, 4008, 3, 'Bor'),
(12078, 4009, 3, 'Zaječar'),
(12079, 4010, 3, 'Zlatibor'),
(12080, 4011, 3, 'Moravica'),
(12081, 4012, 3, 'Raška'),
(12082, 4013, 3, 'Rasina'),
(12083, 4014, 3, 'Nišava'),
(12084, 4015, 3, 'Toplica'),
(12085, 4016, 3, 'Pirot'),
(12086, 4017, 3, 'Jablanica'),
(12087, 4018, 3, 'Pčinja'),
(12088, 4020, 3, 'Bonaire'),
(12089, 4021, 3, 'Saba'),
(12090, 4022, 3, 'Sint Eustatius'),
(12091, 4023, 3, 'Central Equatoria'),
(12092, 4024, 3, 'Eastern Equatoria'),
(12093, 4025, 3, 'Jonglei'),
(12094, 4026, 3, 'Lakes'),
(12095, 4027, 3, 'Northern Bahr el-Ghazal'),
(12096, 4028, 3, 'Unity'),
(12097, 4029, 3, 'Upper Nile'),
(12098, 4030, 3, 'Warrap'),
(12099, 4031, 3, 'Western Bahr el-Ghazal'),
(12100, 4032, 3, 'Western Equatoria'),
(12101, 4036, 3, 'Ainaži, Salacgrīvas novads'),
(12102, 4037, 3, 'Aizkraukle, Aizkraukles novads'),
(12103, 4038, 3, 'Aizkraukles novads'),
(12104, 4039, 3, 'Aizpute, Aizputes novads'),
(12105, 4040, 3, 'Aizputes novads'),
(12106, 4041, 3, 'Aknīste, Aknīstes novads'),
(12107, 4042, 3, 'Aknīstes novads'),
(12108, 4043, 3, 'Aloja, Alojas novads'),
(12109, 4044, 3, 'Alojas novads'),
(12110, 4045, 3, 'Alsungas novads'),
(12111, 4046, 3, 'Alūksne, Alūksnes novads'),
(12112, 4047, 3, 'Alūksnes novads'),
(12113, 4048, 3, 'Amatas novads'),
(12114, 4049, 3, 'Ape, Apes novads'),
(12115, 4050, 3, 'Apes novads'),
(12116, 4051, 3, 'Auce, Auces novads'),
(12117, 4052, 3, 'Auces novads'),
(12118, 4053, 3, 'Ādažu novads'),
(12119, 4054, 3, 'Babītes novads'),
(12120, 4055, 3, 'Baldone, Baldones novads'),
(12121, 4056, 3, 'Baldones novads'),
(12122, 4057, 3, 'Baloži, Ķekavas novads'),
(12123, 4058, 3, 'Baltinavas novads'),
(12124, 4059, 3, 'Balvi, Balvu novads'),
(12125, 4060, 3, 'Balvu novads'),
(12126, 4061, 3, 'Bauska, Bauskas novads'),
(12127, 4062, 3, 'Bauskas novads'),
(12128, 4063, 3, 'Beverīnas novads'),
(12129, 4064, 3, 'Brocēni, Brocēnu novads'),
(12130, 4065, 3, 'Brocēnu novads'),
(12131, 4066, 3, 'Burtnieku novads'),
(12132, 4067, 3, 'Carnikavas novads'),
(12133, 4068, 3, 'Cesvaine, Cesvaines novads'),
(12134, 4069, 3, 'Cesvaines novads'),
(12135, 4070, 3, 'Cēsis, Cēsu novads'),
(12136, 4071, 3, 'Cēsu novads'),
(12137, 4072, 3, 'Ciblas novads'),
(12138, 4073, 3, 'Dagda, Dagdas novads'),
(12139, 4074, 3, 'Dagdas novads'),
(12140, 4075, 3, 'Daugavpils'),
(12141, 4076, 3, 'Daugavpils novads'),
(12142, 4077, 3, 'Dobele, Dobeles novads'),
(12143, 4078, 3, 'Dobeles novads'),
(12144, 4079, 3, 'Dundagas novads'),
(12145, 4080, 3, 'Durbe, Durbes novads'),
(12146, 4081, 3, 'Durbes novads'),
(12147, 4082, 3, 'Engures novads'),
(12148, 4083, 3, 'Ērgļu novads'),
(12149, 4084, 3, 'Garkalnes novads'),
(12150, 4085, 3, 'Grobiņa, Grobiņas novads'),
(12151, 4086, 3, 'Grobiņas novads'),
(12152, 4087, 3, 'Gulbene, Gulbenes novads'),
(12153, 4088, 3, 'Gulbenes novads'),
(12154, 4089, 3, 'Iecavas novads'),
(12155, 4090, 3, 'Ikšķile, Ikšķiles novads'),
(12156, 4091, 3, 'Ikšķiles novads'),
(12157, 4092, 3, 'Ilūkste, Ilūkstes novads'),
(12158, 4093, 3, 'Ilūkstes novads'),
(12159, 4094, 3, 'Inčukalna novads'),
(12160, 4095, 3, 'Jaunjelgava, Jaunjelgavas novads'),
(12161, 4096, 3, 'Jaunjelgavas novads'),
(12162, 4097, 3, 'Jaunpiebalgas novads'),
(12163, 4098, 3, 'Jaunpils novads'),
(12164, 4099, 3, 'Jelgava'),
(12165, 4100, 3, 'Jelgavas novads'),
(12166, 4101, 3, 'Jēkabpils'),
(12167, 4102, 3, 'Jēkabpils novads'),
(12168, 4103, 3, 'Jūrmala'),
(12169, 4104, 3, 'Kalnciems, Jelgavas novads'),
(12170, 4105, 3, 'Kandava, Kandavas novads'),
(12171, 4106, 3, 'Kandavas novads'),
(12172, 4107, 3, 'Kārsava, Kārsavas novads'),
(12173, 4108, 3, 'Kārsavas novads'),
(12174, 4109, 3, 'Kocēnu novads ,bij. Valmieras)'),
(12175, 4110, 3, 'Kokneses novads'),
(12176, 4111, 3, 'Krāslava, Krāslavas novads'),
(12177, 4112, 3, 'Krāslavas novads'),
(12178, 4113, 3, 'Krimuldas novads'),
(12179, 4114, 3, 'Krustpils novads'),
(12180, 4115, 3, 'Kuldīga, Kuldīgas novads'),
(12181, 4116, 3, 'Kuldīgas novads'),
(12182, 4117, 3, 'Ķeguma novads'),
(12183, 4118, 3, 'Ķegums, Ķeguma novads'),
(12184, 4119, 3, 'Ķekavas novads'),
(12185, 4120, 3, 'Lielvārde, Lielvārdes novads'),
(12186, 4121, 3, 'Lielvārdes novads'),
(12187, 4122, 3, 'Liepāja'),
(12188, 4123, 3, 'Limbaži, Limbažu novads'),
(12189, 4124, 3, 'Limbažu novads'),
(12190, 4125, 3, 'Līgatne, Līgatnes novads'),
(12191, 4126, 3, 'Līgatnes novads'),
(12192, 4127, 3, 'Līvāni, Līvānu novads'),
(12193, 4128, 3, 'Līvānu novads'),
(12194, 4129, 3, 'Lubāna, Lubānas novads'),
(12195, 4130, 3, 'Lubānas novads'),
(12196, 4131, 3, 'Ludza, Ludzas novads'),
(12197, 4132, 3, 'Ludzas novads'),
(12198, 4133, 3, 'Madona, Madonas novads'),
(12199, 4134, 3, 'Madonas novads'),
(12200, 4135, 3, 'Mazsalaca, Mazsalacas novads'),
(12201, 4136, 3, 'Mazsalacas novads'),
(12202, 4137, 3, 'Mālpils novads'),
(12203, 4138, 3, 'Mārupes novads'),
(12204, 4139, 3, 'Mērsraga novads'),
(12205, 4140, 3, 'Naukšēnu novads'),
(12206, 4141, 3, 'Neretas novads'),
(12207, 4142, 3, 'Nīcas novads'),
(12208, 4143, 3, 'Ogre, Ogres novads'),
(12209, 4144, 3, 'Ogres novads'),
(12210, 4145, 3, 'Olaine, Olaines novads'),
(12211, 4146, 3, 'Olaines novads'),
(12212, 4147, 3, 'Ozolnieku novads'),
(12213, 4148, 3, 'Pārgaujas novads'),
(12214, 4149, 3, 'Pāvilosta, Pāvilostas novads'),
(12215, 4150, 3, 'Pāvilostas novads'),
(12216, 4151, 3, 'Piltene, Ventspils novads'),
(12217, 4152, 3, 'Pļaviņas, Pļaviņu novads'),
(12218, 4153, 3, 'Pļaviņu novads'),
(12219, 4154, 3, 'Preiļi, Preiļu novads'),
(12220, 4155, 3, 'Preiļu novads'),
(12221, 4156, 3, 'Priekule, Priekules novads'),
(12222, 4157, 3, 'Priekules novads'),
(12223, 4158, 3, 'Priekuļu novads'),
(12224, 4159, 3, 'Raunas novads'),
(12225, 4160, 3, 'Rēzekne'),
(12226, 4161, 3, 'Rēzeknes novads'),
(12227, 4162, 3, 'Riebiņu novads'),
(12228, 4163, 3, 'Rīga'),
(12229, 4164, 3, 'Rojas novads'),
(12230, 4165, 3, 'Ropažu novads'),
(12231, 4166, 3, 'Rucavas novads'),
(12232, 4167, 3, 'Rugāju novads'),
(12233, 4168, 3, 'Rundāles novads'),
(12234, 4169, 3, 'Rūjiena, Rūjienas novads'),
(12235, 4170, 3, 'Rūjienas novads'),
(12236, 4171, 3, 'Sabile, Talsu novads'),
(12237, 4172, 3, 'Salacgrīva, Salacgrīvas novads'),
(12238, 4173, 3, 'Salacgrīvas novads'),
(12239, 4174, 3, 'Salas novads'),
(12240, 4175, 3, 'Salaspils novads'),
(12241, 4176, 3, 'Salaspils, Salaspils novads'),
(12242, 4177, 3, 'Saldus novads'),
(12243, 4178, 3, 'Saldus, Saldus novads'),
(12244, 4179, 3, 'Saulkrasti, Saulkrastu novads'),
(12245, 4180, 3, 'Saulkrastu novads'),
(12246, 4181, 3, 'Seda, Strenču novads'),
(12247, 4182, 3, 'Sējas novads'),
(12248, 4183, 3, 'Sigulda, Siguldas novads'),
(12249, 4184, 3, 'Siguldas novads'),
(12250, 4185, 3, 'Skrīveru novads'),
(12251, 4186, 3, 'Skrunda, Skrundas novads'),
(12252, 4187, 3, 'Skrundas novads'),
(12253, 4188, 3, 'Smiltene, Smiltenes novads'),
(12254, 4189, 3, 'Smiltenes novads'),
(12255, 4190, 3, 'Staicele, Alojas novads'),
(12256, 4191, 3, 'Stende, Talsu novads'),
(12257, 4192, 3, 'Stopiņu novads'),
(12258, 4193, 3, 'Strenči, Strenču novads'),
(12259, 4194, 3, 'Strenču novads'),
(12260, 4195, 3, 'Subate, Ilūkstes novads'),
(12261, 4196, 3, 'Talsi, Talsu novads'),
(12262, 4197, 3, 'Talsu novads'),
(12263, 4198, 3, 'Tērvetes novads'),
(12264, 4199, 3, 'Tukuma novads'),
(12265, 4200, 3, 'Tukums, Tukuma novads'),
(12266, 4201, 3, 'Vaiņodes novads'),
(12267, 4202, 3, 'Valdemārpils, Talsu novads'),
(12268, 4203, 3, 'Valka, Valkas novads'),
(12269, 4204, 3, 'Valkas novads'),
(12270, 4205, 3, 'Valmiera'),
(12271, 4206, 3, 'Vangaži, Inčukalna novads'),
(12272, 4207, 3, 'Varakļāni, Varakļānu novads'),
(12273, 4208, 3, 'Varakļānu novads'),
(12274, 4209, 3, 'Vārkavas novads'),
(12275, 4210, 3, 'Vecpiebalgas novads'),
(12276, 4211, 3, 'Vecumnieku novads'),
(12277, 4212, 3, 'Ventspils'),
(12278, 4213, 3, 'Ventspils novads'),
(12279, 4214, 3, 'Viesīte, Viesītes novads'),
(12280, 4215, 3, 'Viesītes novads'),
(12281, 4216, 3, 'Viļaka, Viļakas novads'),
(12282, 4217, 3, 'Viļakas novads'),
(12283, 4218, 3, 'Viļāni, Viļānu novads'),
(12284, 4219, 3, 'Viļānu novads'),
(12285, 4220, 3, 'Zilupe, Zilupes novads'),
(12286, 4221, 3, 'Zilupes novads'),
(12287, 4222, 3, 'Arica y Parinacota'),
(12288, 4223, 3, 'Los Rios'),
(12289, 4224, 3, 'Kharkivs\'ka Oblast\''),
(12290, 4225, 3, 'Beirut'),
(12291, 4226, 3, 'Bekaa'),
(12292, 4227, 3, 'Mount Lebanon'),
(12293, 4228, 3, 'Nabatieh'),
(12294, 4229, 3, 'North'),
(12295, 4230, 3, 'South'),
(12296, 4231, 3, 'Telangana'),
(12297, 4232, 3, 'Проверка'),
(12298, 4233, 3, '3');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  ADD PRIMARY KEY (`affiliate_id`);

--
-- Индексы таблицы `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  ADD PRIMARY KEY (`affiliate_activity_id`);

--
-- Индексы таблицы `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  ADD PRIMARY KEY (`affiliate_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  ADD PRIMARY KEY (`affiliate_transaction_id`);

--
-- Индексы таблицы `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Индексы таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Индексы таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Индексы таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Индексы таблицы `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Индексы таблицы `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Индексы таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Индексы таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Индексы таблицы `oc_banner_image_description`
--
ALTER TABLE `oc_banner_image_description`
  ADD PRIMARY KEY (`banner_image_id`,`language_id`);

--
-- Индексы таблицы `oc_blog`
--
ALTER TABLE `oc_blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Индексы таблицы `oc_blog_category`
--
ALTER TABLE `oc_blog_category`
  ADD PRIMARY KEY (`blog_category_id`);

--
-- Индексы таблицы `oc_blog_category_description`
--
ALTER TABLE `oc_blog_category_description`
  ADD PRIMARY KEY (`blog_category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_blog_category_to_layout`
--
ALTER TABLE `oc_blog_category_to_layout`
  ADD PRIMARY KEY (`blog_category_id`,`store_id`);

--
-- Индексы таблицы `oc_blog_category_to_store`
--
ALTER TABLE `oc_blog_category_to_store`
  ADD PRIMARY KEY (`blog_category_id`,`store_id`);

--
-- Индексы таблицы `oc_blog_comment`
--
ALTER TABLE `oc_blog_comment`
  ADD PRIMARY KEY (`blog_comment_id`);

--
-- Индексы таблицы `oc_blog_to_category`
--
ALTER TABLE `oc_blog_to_category`
  ADD PRIMARY KEY (`blog_id`,`blog_category_id`);

--
-- Индексы таблицы `oc_blog_to_layout`
--
ALTER TABLE `oc_blog_to_layout`
  ADD PRIMARY KEY (`blog_id`,`store_id`);

--
-- Индексы таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Индексы таблицы `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Индексы таблицы `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Индексы таблицы `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Индексы таблицы `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Индексы таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Индексы таблицы `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Индексы таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Индексы таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Индексы таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Индексы таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Индексы таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Индексы таблицы `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Индексы таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Индексы таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Индексы таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Индексы таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Индексы таблицы `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Индексы таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Индексы таблицы `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Индексы таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Индексы таблицы `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Индексы таблицы `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Индексы таблицы `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Индексы таблицы `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Индексы таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Индексы таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Индексы таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Индексы таблицы `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Индексы таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Индексы таблицы `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Индексы таблицы `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Индексы таблицы `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Индексы таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Индексы таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Индексы таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Индексы таблицы `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Индексы таблицы `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Индексы таблицы `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Индексы таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Индексы таблицы `oc_mfilter_url_alias`
--
ALTER TABLE `oc_mfilter_url_alias`
  ADD PRIMARY KEY (`mfilter_url_alias_id`);

--
-- Индексы таблицы `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Индексы таблицы `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Индексы таблицы `oc_newsletter`
--
ALTER TABLE `oc_newsletter`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Индексы таблицы `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Индексы таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Индексы таблицы `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Индексы таблицы `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  ADD PRIMARY KEY (`order_custom_field_id`);

--
-- Индексы таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Индексы таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Индексы таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`);

--
-- Индексы таблицы `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Индексы таблицы `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Индексы таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Индексы таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Индексы таблицы `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Индексы таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Индексы таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`),
  ADD KEY `option_value_id` (`option_value_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Индексы таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Индексы таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_tab`
--
ALTER TABLE `oc_product_tab`
  ADD PRIMARY KEY (`product_id`,`tab_id`,`language_id`);

--
-- Индексы таблицы `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Индексы таблицы `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_question`
--
ALTER TABLE `oc_question`
  ADD PRIMARY KEY (`question_id`);

--
-- Индексы таблицы `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Индексы таблицы `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Индексы таблицы `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Индексы таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Индексы таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Индексы таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Индексы таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Индексы таблицы `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_revslider_attachment_images`
--
ALTER TABLE `oc_revslider_attachment_images`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `oc_revslider_css`
--
ALTER TABLE `oc_revslider_css`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `oc_revslider_layer_animations`
--
ALTER TABLE `oc_revslider_layer_animations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `oc_revslider_settings`
--
ALTER TABLE `oc_revslider_settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `oc_revslider_sliders`
--
ALTER TABLE `oc_revslider_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `oc_revslider_slides`
--
ALTER TABLE `oc_revslider_slides`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `oc_revslider_static_slides`
--
ALTER TABLE `oc_revslider_static_slides`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Индексы таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Индексы таблицы `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Индексы таблицы `oc_tab`
--
ALTER TABLE `oc_tab`
  ADD PRIMARY KEY (`tab_id`);

--
-- Индексы таблицы `oc_tab_description`
--
ALTER TABLE `oc_tab_description`
  ADD PRIMARY KEY (`tab_id`,`language_id`);

--
-- Индексы таблицы `oc_tag_cloud`
--
ALTER TABLE `oc_tag_cloud`
  ADD PRIMARY KEY (`tag`,`language_id`,`store_id`);

--
-- Индексы таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Индексы таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Индексы таблицы `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Индексы таблицы `oc_testimonial`
--
ALTER TABLE `oc_testimonial`
  ADD PRIMARY KEY (`testimonial_id`);

--
-- Индексы таблицы `oc_testimonial_description`
--
ALTER TABLE `oc_testimonial_description`
  ADD PRIMARY KEY (`testimonial_id`,`language_id`);

--
-- Индексы таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Индексы таблицы `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  ADD PRIMARY KEY (`url_alias_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Индексы таблицы `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Индексы таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Индексы таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Индексы таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Индексы таблицы `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Индексы таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Индексы таблицы `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Индексы таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `oc_zone_description`
--
ALTER TABLE `oc_zone_description`
  ADD PRIMARY KEY (`zone_description_id`);

--
-- Индексы таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  MODIFY `affiliate_activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  MODIFY `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT для таблицы `oc_blog`
--
ALTER TABLE `oc_blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `oc_blog_category`
--
ALTER TABLE `oc_blog_category`
  MODIFY `blog_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT для таблицы `oc_blog_comment`
--
ALTER TABLE `oc_blog_comment`
  MODIFY `blog_comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT для таблицы `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT для таблицы `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT для таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1477;
--
-- AUTO_INCREMENT для таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT для таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT для таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_mfilter_url_alias`
--
ALTER TABLE `oc_mfilter_url_alias`
  MODIFY `mfilter_url_alias_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT для таблицы `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT для таблицы `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  MODIFY `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT для таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=465;
--
-- AUTO_INCREMENT для таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2470;
--
-- AUTO_INCREMENT для таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;
--
-- AUTO_INCREMENT для таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT для таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=569;
--
-- AUTO_INCREMENT для таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;
--
-- AUTO_INCREMENT для таблицы `oc_question`
--
ALTER TABLE `oc_question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `oc_revslider_attachment_images`
--
ALTER TABLE `oc_revslider_attachment_images`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_revslider_css`
--
ALTER TABLE `oc_revslider_css`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT для таблицы `oc_revslider_layer_animations`
--
ALTER TABLE `oc_revslider_layer_animations`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_revslider_settings`
--
ALTER TABLE `oc_revslider_settings`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_revslider_sliders`
--
ALTER TABLE `oc_revslider_sliders`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_revslider_slides`
--
ALTER TABLE `oc_revslider_slides`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `oc_revslider_static_slides`
--
ALTER TABLE `oc_revslider_static_slides`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111859;
--
-- AUTO_INCREMENT для таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_tab`
--
ALTER TABLE `oc_tab`
  MODIFY `tab_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT для таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT для таблицы `oc_testimonial`
--
ALTER TABLE `oc_testimonial`
  MODIFY `testimonial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=940;
--
-- AUTO_INCREMENT для таблицы `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4234;
--
-- AUTO_INCREMENT для таблицы `oc_zone_description`
--
ALTER TABLE `oc_zone_description`
  MODIFY `zone_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16383;
--
-- AUTO_INCREMENT для таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

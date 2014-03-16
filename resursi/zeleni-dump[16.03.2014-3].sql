-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2014 at 11:23 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zeleni`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `name`, `alias`, `number`, `lang`, `image`) VALUES
(1, 'Everyday', 'everyday', 1, 'sr', 'greeny-thumb-everyday.jpg'),
(2, 'Jabuka', 'jabuka', 2, 'sr', 'greeny-thumb-jabuka.jpg'),
(3, 'Jagoda', 'jagoda', 3, 'sr', 'greeny-thumb-jagoda.jpg'),
(4, 'Kompanija', 'kompanija', 4, 'sr', 'greeny-thumb-kompanija.jpg'),
(5, 'Pakovanje', 'pakovanje', 5, 'sr', 'greeny-thumb-pakovanje.jpg'),
(6, 'Proizvodnja', 'proizvodnja', 6, 'sr', 'greeny-thumb-proizvodnja.jpg'),
(7, 'Skladištenje', 'skladistenje', 7, 'sr', 'greeny-thumb-skladistenje.jpg'),
(8, 'Sortiranje', 'sortiranje', 8, 'sr', 'greeny-thumb-sortiranje.jpg'),
(9, 'Trešnja', 'tresnja', 9, 'sr', 'greeny-thumb-tresnja.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `number`, `content`, `image`, `lang`, `link`, `color`) VALUES
(1, 1, 'U svom proizvodnom programu firma Greeny d.o.o. proizvodi prednapregnute betonske stubove za protivgradnu zaštitu, vinograde i ograde.', 'greeny-prenapregnuti-stubovi-thumb.png', 'sr', 'betonski-stubovi', ''),
(2, 2, 'Pakovanje našeg EveryDay soka - novo, moderno BAG IN BOX pakovanje, za jednokratnu upotrebu  idealno za čuvanje nekoliko meseci pre otvaranja.', 'greeny-everyday-sok-pakovanje-thumb.png', 'sr', 'everyday-sok', ''),
(3, 3, 'Slatko, sočno i hrskavo, naše voće je uvek zdravo i ukusno.', 'greeny-jabuke-thumb.png', 'sr', 'sveze-voce', ''),
(4, 4, 'Specijalni brendirani frižider za restorane, kafiće i hotele.', 'greeny-brendirani-frizider-thumb.png', 'sr', 'everyday-sok', ''),
(5, 5, 'Savremena hladnjača za čuvanje i sortiranje voća kapaciteta 2.800 tona svežeg voća.', 'greeny-hladnjaca-za-cuvanje-voca-thumb.png', 'sr', 'kvalitet', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `alias` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category_category1_idx` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=43 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `content`, `alias`, `order`, `lang`, `parent_id`, `type`, `color`) VALUES
(9, 'Kontaktirajte nas', '<h1>Kontakt</h1>\r\n', 'kontaktirajte-nas', 1, 'sr', NULL, 'PAGE', '005c34'),
(10, 'Lokacija', '<h1>Lokacija</h1>\r\n', 'lokacija', 2, 'sr', NULL, 'PAGE', '005c34'),
(11, 'Galerija slika', NULL, 'galerija-slika', 3, 'sr', NULL, 'PAGE', NULL),
(12, 'Proizvodi', '', '', 1, 'sr', NULL, 'EXTERNAL', ''),
(13, 'Kvalitet', '<h1>Imenom garantujemo kvalitet</h1>\r\n', 'kvalitet', 2, 'sr', NULL, 'SELF', '005c34'),
(14, 'Isključivo ceđene jabuke', '<h1>Svaki dan zdravlje u ča&scaron;i!</h1>\r\n', 'everyday-sok', 3, 'sr', NULL, 'EXTERNAL', '8dc43f'),
(15, 'Kompanija Greeny', '<h1>Kvalitet po najvi&scaron;im standardima</h1>\r\n', 'o-nama', 4, 'sr', NULL, 'EXTERNAL', '005c34'),
(16, 'Proizvodnja', NULL, 'proizvodnja', 1, 'sr', 13, 'SELF', NULL),
(17, 'Sortiranje', NULL, 'sortiranje', 2, 'sr', 13, 'SELF', NULL),
(18, 'Skladištenje', NULL, 'skladistenje', 3, 'sr', 13, 'SELF', NULL),
(19, 'Distribucija', NULL, 'distribucija', 4, 'sr', 13, 'SELF', NULL),
(20, 'Pakovanje', NULL, 'pakovanje', 5, 'sr', 13, 'SELF', NULL),
(21, 'Sveže voće', '<h1>Slatko, sočno i hrskavo, na&scaron;e voće je uvek zdravo i ukusno.</h1>\r\n', 'sveze-voce', 2, 'sr', 12, 'EXTERNAL', '8dc43f'),
(22, 'Jabuka', '<h1>Jabuka</h1>\r\n\r\n<p>85.000 stabala</p>\r\n', 'jabuka', 1, 'sr', 21, 'EXTERNAL', '005c34'),
(23, 'Trešnje', '<h1>Tre&scaron;nje</h1>\r\n\r\n<p>3 ha (2.400 sadnica)</p>\r\n', 'tresnja', 2, 'sr', 21, 'EXTERNAL', '871b43'),
(24, 'Jagode', '<h1>Jagode</h1>\r\n\r\n<p>1 ha (40.000 bokora)<br />\r\n&nbsp;</p>\r\n', 'jagoda', 3, 'sr', 21, 'EXTERNAL', 'a3142c'),
(25, 'Gala', '<h1>Gala</h1>\r\n\r\n<p>Jabuka</p>\r\n', 'gala', 5, 'sr', 22, 'EXTERNAL', '005c34'),
(26, 'Red Čif', '<h1>Red Čif</h1>\r\n\r\n<p>Jabuka</p>\r\n', 'redcif', 2, 'sr', 22, 'EXTERNAL', '871b43'),
(27, 'Zlatni Delišes', '<h1>Zlatni deli&scaron;es</h1>\r\n\r\n<p>Jabuka</p>\r\n', 'zlatnidelises', 1, 'sr', 22, 'EXTERNAL', '871b43'),
(28, 'Jonagold', '<h1>Jonagold</h1>\r\n\r\n<p>Jabuka</p>\r\n', 'jonagold', 3, 'sr', 22, 'EXTERNAL', '005c34'),
(29, 'Greni Smit', '<h1>Greni smit</h1>\r\n\r\n<p>Jabuka</p>\r\n', 'grenismit', 4, 'sr', 22, 'EXTERNAL', '005c34'),
(30, 'Fudži', '<h1>Fudži</h1>\r\n\r\n<p>Jabuka</p>\r\n', 'fudzi', 6, 'sr', 22, 'EXTERNAL', '8dc43f'),
(31, 'Betonski stubovi za protivgradnu zaštitu', '<h1>Proizvodnja prednapregnutih betonskih stubova za protivgradnu za&scaron;titu, vinograde i ograde</h1>\r\n', 'betonski-stubovi', 7, 'sr', NULL, 'SELF', '8dc43f'),
(32, 'Voćnjak', NULL, 'vocnjak', 8, 'sr', NULL, 'SELF', NULL),
(33, 'Burlat', NULL, 'burlat', 1, 'sr', 23, 'SELF', NULL),
(34, 'Germedovska', NULL, 'germedovska', 2, 'sr', 23, 'SELF', NULL),
(35, 'Sanberst', NULL, 'sanberst', 3, 'sr', 23, 'SELF', NULL),
(36, 'Kleri', NULL, 'kleri', 1, 'sr', 24, 'SELF', NULL),
(37, 'Džoli', NULL, 'dzoli', 2, 'sr', 24, 'SELF', NULL),
(38, 'Sok', '', 'sok', 1, 'sr', 14, 'SELF', ''),
(39, 'Pakovanje', '', 'pakovanje', 2, 'sr', 14, 'SELF', ''),
(40, 'Maloprodajno pakovanje', '', 'maloprodajno-pakovanje', 3, 'sr', 14, 'SELF', ''),
(41, 'Hotelsko pakovanje', '', 'hotelsko-pakovanje', 4, 'sr', 14, 'SELF', ''),
(42, 'Početna', '', 'pocetna', NULL, '', NULL, 'PAGE', '');

-- --------------------------------------------------------

--
-- Table structure for table `category_image`
--

CREATE TABLE IF NOT EXISTS `category_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category_image_category1_idx` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Dumping data for table `category_image`
--

INSERT INTO `category_image` (`id`, `name`, `category_id`) VALUES
(1, 'greeny-betonski-stubovi-1.jpg', 31),
(2, 'greeny-betonski-stubovi-2.jpg', 31),
(3, 'greeny-betonski-stubovi-3.jpg', 31),
(4, 'greeny-betonski-stubovi-4.jpg', 31),
(5, 'greeny-betonski-stubovi-5.jpg', 31),
(6, 'greeny-everyday-sok-moderno-pakovanje.jpg', 14),
(7, 'greeny-everyday-sok-reklamni-frizider.jpg', 14),
(8, 'greeny-jabuke-1.jpg', 22),
(9, 'greeny-jabuke-2.jpg', 22),
(10, 'greeny-jabuke-fudzi.jpg', 30),
(11, 'greeny-jabuke-gala.jpg', 25),
(12, 'greeny-jabuke-greni-smith.jpg', 29),
(13, 'greeny-jabuke-jonagold.jpg', 28),
(14, 'greeny-jabuke-red-chief.jpg', 26),
(15, 'greeny-jabuke-zlatni-delises.jpg', 27),
(16, 'greeny-jagode-kleri.jpg', 24),
(17, 'greeny-jagode-dzoli.jpg', 24),
(18, 'greeny-kontakt-1.jpg', 9),
(19, 'greeny-kontakt-2.jpg', 9),
(20, 'greeny-kvalitet-pakovanje.jpg', 13),
(21, 'greeny-kvalitet-distribucija.jpg', 13),
(22, 'greeny-kvalitet-pakovanje.jpg', 13),
(23, 'greeny-kvalitet-skladistenje.jpg', 13),
(24, 'greeny-lokacija-1.jpg', 10),
(25, 'greeny-lokacija-2.jpg', 10),
(26, 'greeny-o-nama-1.jpg', 15),
(27, 'greeny-o-nama-2.jpg', 15),
(28, 'greeny-o-nama-3.jpg', 15),
(29, 'greeny-sveze-voce-jabuka.jpg', 21),
(30, 'greeny-sveze-voce-jabuka-2.jpg', 21),
(31, 'greeny-sveze-voce-tresnja.jpg', 21),
(32, 'greeny-tresnje-burlat.jpg', 23),
(33, 'greeny-tresnje-sanberst.jpg', 23),
(34, 'greeny-tresnje-germedovska.jpg', 23);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `album_id` int(11) NOT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_image_album1_idx` (`album_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=44 ;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `title`, `link`, `album_id`, `caption`, `number`) VALUES
(1, 'EveryDay apple juice bag-in-box cooler Greeny Arandjelovac-1220.jpg', '', 1, 'EveryDay apple juice bag-in-box cooler Greeny Arandjelovac', 1),
(2, 'EveryDay apple juice bag-in-box Greeny Arandjelovac-1220.jpg', '', 1, 'EveryDay apple juice bag-in-box Greeny Arandjelovac', 2),
(3, 'Fuji apple Greeny Arandjelovac-1220.jpg', '', 2, 'Fuji apple Greeny Arandjelovac', 1),
(4, 'Gala Brookfield apple Greeny Arandjelovac-1220.jpg', '', 2, 'Gala Brookfield apple Greeny Arandjelovac', 2),
(5, 'Golden Delicious apple Greeny Arandjelovac-1220.jpg', '', 2, 'Golden Delicious apple Greeny Arandjelovac', 3),
(6, 'Golden Delicious apple Greeny Arandjelovac-1220.jpg', '', 2, 'Golden Delicious apple Greeny Arandjelovac', 4),
(7, 'Jonagold apple Greeny Arandjelovac-1220.jpg', '', 2, 'Jonagold apple Greeny Arandjelovac', 5),
(8, 'Red Chief apple Greeny Arandjelovac-1220.jpg', '', 2, 'Red Chief apple Greeny Arandjelovac', 6),
(9, 'strawberries Clery Greeny Arandjelovac-1220.jpg', '', 3, 'Strawberries Clery Greeny Arandjelovac', 1),
(10, 'strawberries Greeny Arandjelovac-1220.jpg', '', 3, 'Strawberries Greeny Arandjelovac', 2),
(11, 'strawberry fruit Greeny Arandjelovac-1220.jpg', '', 3, 'Strawberry fruit Greeny Arandjelovac', 3),
(12, 'strawberry plantation Greeny Arandjelovac-1220.jpg', '', 3, 'Strawberry plantation Greeny Arandjelovac', 4),
(13, 'irrigation lake Greeny Arandjelovac-1220.jpg', '', 4, 'Irrigation lake Greeny Arandjelovac', 1),
(14, 'orchard apple plantation cooling plant Greeny Arandjelovac-1220.jpg', '', 4, 'Orchard apple plantation cooling plant Greeny Arandjelovac', 2),
(15, 'orchard apple plantation Greeny Arandjelovac-1220.jpg', '', 4, 'Orchard apple plantation Greeny Arandjelovac', 3),
(16, 'orchard hail protection net Greeny Arandjelovac-1220.jpg', '', 4, 'Orchard hail protection net Greeny Arandjelovac', 4),
(17, 'Gala Brookfield Royal apple fruit box Greeny Arandjelovac-1220.jpg', '', 5, 'Gala Brookfield Royal apple fruit box Greeny Arandjelovac', 1),
(18, 'Golden Delicious apple fruit box Greeny Arandjelovac-1220.jpg', '', 5, 'Golden Delicious apple fruit box Greeny Arandjelovac', 2),
(19, 'Granny Smith apple fruit box Greeny Arandjelovac-1220.jpg', '', 5, 'Granny Smith apple fruit box Greeny Arandjelovac', 3),
(20, 'Granny Smith apple wooden crate Greeny Arandjelovac_1-1220.jpg', '', 5, 'Granny Smith apple wooden crate Greeny Arandjelovac', 4),
(21, 'Granny Smith apple wooden crate Greeny Arandjelovac_2-1220.jpg', '', 5, 'Granny Smith apple wooden crate Greeny Arandjelovac', 5),
(22, 'Red Chief apple fruit box Greeny Arandjelovac_1-1220.jpg', '', 5, 'Red Chief apple fruit box Greeny Arandjelovac', 6),
(23, 'Red Chief apple fruit box Greeny Arandjelovac_2-1220.jpg', '', 5, 'Red Chief apple fruit box Greeny Arandjelovac', 7),
(24, 'Red Chief apple fruit box Greeny Arandjelovac-1220.jpg', '', 5, 'Red Chief apple fruit box Greeny Arandjelovac', 8),
(25, 'apple blossom Greeny Arandjelovac-1220.jpg', '', 6, 'Apple blossom Greeny Arandjelovac', 1),
(26, 'apple harvest Greeny Arandjelovac-1220.jpg', '', 6, 'Apple harvest Greeny Arandjelovac', 2),
(27, 'apple orchard Red Chief Greeny Arandjelovac-1220.jpg', '', 6, 'Apple orchard Red Chief Greeny Arandjelovac', 3),
(28, 'apple plantation blooming Greeny Arandjelovac-1220.jpg', '', 6, 'Apple plantation blooming Greeny Arandjelovac', 4),
(29, 'apple plantation Gala Brookfield Greeny Arandjelovac-1220.jpg', '', 6, 'Apple plantation Gala Brookfield Greeny Arandjelovac', 5),
(30, 'young apple trees plantation Greeny Arandjelovac-1220.jpg', '', 6, 'Young apple trees plantation Greeny Arandjelovac', 6),
(31, 'ULO cooling plant Greeny Arandjelovac _1-1220.jpg', '', 7, 'ULO cooling plant Greeny Arandjelovac', 1),
(32, 'ULO cooling plant Greeny Arandjelovac_2-1220.jpg', '', 7, 'ULO cooling plant Greeny Arandjelovac', 2),
(33, 'ULO cooling plant Greeny Arandjelovac_3-1220.jpg', '', 7, 'ULO cooling plant Greeny Arandjelovac', 3),
(34, 'ULO cooling plant Greeny Arandjelovac_4-1220.jpg', '', 7, 'ULO cooling plant Greeny Arandjelovac', 4),
(35, 'ULO cooling plant Greeny Arandjelovac_5-1220.jpg', '', 7, 'ULO cooling plant Greeny Arandjelovac', 5),
(36, 'ULO cooling plant Greeny Arandjelovac-1220.jpg', '', 7, 'ULO cooling plant Greeny Arandjelovac', 6),
(37, 'apple calibration equipment Greeny Arandjelovac-1220.jpg', '', 8, 'Apple calibration equipment Greeny Arandjelovac', 1),
(38, 'apple calibration line Greeny Arandjelovac-1220.jpg', '', 8, 'Apple calibration line Greeny Arandjelovac', 2),
(39, 'apple calibration system Greeny Arandjelovac-1220.jpg', '', 8, 'Apple calibration system Greeny Arandjelovac', 3),
(40, 'apple sorting packing line Greeny Arandjelovac-1220.jpg', '', 8, 'Apple sorting packing line Greeny Arandjelovac', 4),
(41, 'sweet cherries Greeny Arandjelovac_1-1220.jpg', '', 9, 'Sweet cherries Greeny Arandjelovac', 1),
(42, 'sweet cherries Greeny Arandjelovac-1220.jpg', '', 9, 'Sweet cherries Greeny Arandjelovac', 2),
(43, 'sweet cherry tree Greeny Arandjelovac-1220.jpg', '', 9, 'Sweet cherry tree Greeny Arandjelovac', 3);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(2) DEFAULT NULL,
  `parent_item` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Menu_category1_idx` (`category_id`),
  KEY `fk_Menu_Menu1_idx` (`parent_item`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=45 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `type`, `item`, `category_id`, `lang`, `order`, `parent_item`) VALUES
(1, 'Top', 'Kontaktirajte nas', 9, 'sr', NULL, NULL),
(2, 'Top', 'Lokacija', 10, 'sr', NULL, NULL),
(3, 'Top', 'Galerija slika', 11, 'sr', NULL, NULL),
(4, 'Main', 'Proizvodi', 12, 'sr', 1, NULL),
(5, 'Main', 'Kvalitet', 13, 'sr', 2, NULL),
(6, 'Main', 'Everyday sok', 14, 'sr', 3, NULL),
(7, 'Main', 'O nama', 15, 'sr', 4, NULL),
(8, 'Main', 'Proizvodnja', 16, 'sr', 1, 5),
(9, 'Main', 'Sortiranje', 17, 'sr', 2, 5),
(10, 'Main', 'Skladištenje', 18, 'sr', 3, 5),
(11, 'Main', 'Distribucija', 19, 'sr', 4, 5),
(12, 'Main', 'Pakovanje', 20, 'sr', 5, 5),
(13, 'Sidebar', 'Proizvodi', 12, 'sr', 1, NULL),
(14, 'Sidebar', 'Kvalitet', 13, 'sr', 2, NULL),
(15, 'Sidebar', 'Jabuka', 22, 'sr', 3, NULL),
(16, 'Sidebar', 'Trešnja', 23, 'sr', 4, NULL),
(17, 'Sidebar', 'Jagoda', 24, 'sr', 5, NULL),
(18, 'Sidebar', 'Everyday', 14, 'sr', 1, 13),
(19, 'Sidebar', 'Sveže voće', 21, 'sr', 2, 13),
(20, 'Sidebar', 'Proizvodnja', 16, 'sr', 1, 14),
(21, 'Main', 'Sortiranje', 17, 'sr', 2, 14),
(22, 'Main', 'Skladištenje', 18, 'sr', 3, 14),
(23, 'Main', 'Distribucija', 19, 'sr', 4, 14),
(24, 'Main', 'Pakovanje', 20, 'sr', 5, 14),
(25, 'Sidebar', 'Zlatni Delišes', 27, 'sr', 1, 15),
(26, 'Sidebar', 'Red Čif', 26, 'sr', 2, 15),
(27, 'Sidebar', 'Jonagold', 28, 'sr', 3, 15),
(28, 'Sidebar', 'Greni Smit', 29, 'sr', 4, 15),
(29, 'Sidebar', 'Gala', 25, 'sr', 5, 15),
(30, 'Sidebar', 'Fudži', 30, 'sr', 6, 15),
(31, 'Sidebar', 'Betonski stubovi', 31, 'sr', 6, NULL),
(32, 'Sidebar', 'Voćnjak', 32, 'sr', 7, NULL),
(33, 'Main', 'Jabuka zlatni delišes', 27, 'sr', 1, 4),
(34, 'Main', 'Jabuka red čif', 26, 'sr', 2, 4),
(35, 'Main', 'Jabuka fudži', 30, 'sr', 3, 4),
(36, 'Main', 'Jabuka greni smit', 29, 'sr', 4, 4),
(37, 'Main', 'Jabuka jonagold', 28, 'sr', 5, 4),
(38, 'Main', 'Jabuka gala', 25, 'sr', 6, 4),
(39, 'Main', 'Sok everyday', 14, 'sr', 7, 4),
(40, 'Main', 'Trešnja burlat', 33, 'sr', 7, 4),
(41, 'Main', 'Trešnja germedovska', 34, 'sr', 8, 4),
(42, 'Main', 'Trešnja sanberst', 35, 'sr', 9, 4),
(43, 'Main', 'Jagoda kleri', 36, 'sr', 10, 4),
(44, 'Main', 'Jagoda džoli', 37, 'sr', 11, 4);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `lang` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_text` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_post_category1_idx` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `lang`, `link`, `link_text`, `category_id`, `number`) VALUES
(1, 'Proizvodnja', '<h3>POČETAK</h3>\r\n\r\n<p>Kada posadimo sadnicu, već u drugoj godini beremo plodove s nje. Zbog toga posvećujemo veliku pažnju odabiru sadnog materijala, koji mora biti vrhunskog kvaliteta, zdrav, sertifikovan i otporan na bolesti.</p>\r\n\r\n<h3>VOĆNJAK</h3>\r\n\r\n<p>Mi od na&scaron;e jabuke očekujemo visoke rezultate i u tome joj pomažemo tako &scaron;to koristimo savremene agrotehničke mere koje obuhvataju automatizovano navodnjavanje i prihranu, kao i kori&scaron;ćenje protivgradnih mreža.</p>\r\n\r\n<h3>BERBA</h3>\r\n\r\n<p>Tokom berbe veoma je važno da se jabukom rukuje pažljivo, na&scaron;i berači nežno beru i stavljaju jabuke u korpe, pri tom uvek nose rukavice da ih ne bi o&scaron;tetili. S istom pažnjom ih transportujemo iz voćnjaka, po&scaron;to zbog nepažljive vožnje jabuke mogu pretrpeti udarce i time postati podložne brzom propadanju.</p>\r\n', 'sr', 'galerija-slika/proizvodnja', 'Pogledajte galeriju slika', 16, 1),
(2, 'Skladištenje', '<p>Pored visokih standarda proizvodnje, želimo da obezbedimo i najsavremenije skladi&scaron;tenje, pa smo u te svrhe izgradili modernu hladnjaču koja se nalazi u samom voćnjaku. U njoj se nalazi 14 ULO komora kapaciteta 2800 tona, u kojima čuvamo jabuku u strogo kontrolisanim uslovima i na taj način obezbeđujemo očuvanje njenog kvaliteta i svežine.</p>\r\n', 'sr', 'galerija-slika/skladistenje', 'Pogledajte galeriju slika', 18, 2),
(3, 'Sortiranje', '<p>Kada na&scaron;i kupci poruče jabuke, mi ih stavljamo u liniju za kalibrisanje u kojoj se peru i razvrstavaju po veličini. Na&scaron;a oprema za sortiranje i kalibrisanje koristi najsavremenija naučna dostignuća i time nam omogućava da svojim kupcima isporučimo jabuke koje zadovoljavaju sve njihove zahteve u pogledu veličine. Nakon toga, voće se ručno pakuje u odgovarajuću ambalažu i pri tom se jo&scaron; jedanput kontroli&scaron;e njegov kvalitet.</p>\r\n', 'sr', 'galerija-slika/sortiranje', 'Pogledajte galeriju slika', 17, 3),
(4, 'Pakovanje', '<p>Na&scaron;i kupci pored visokog kvaliteta ambalaže žele i vrhunski dizajn. Kori&scaron;ćenjem savremenog i atraktivnog dizajna u mogućnosti smo da odgovorimo na sve njihove zahteve. U zavisnosti od udaljenosti trži&scaron;ta, njegovih karakteristika i navika krajnjih potro&scaron;ača, svojim kupcima nudimo sledeću ambalažu:</p>\r\n\r\n<ul>\r\n	<li>Kartonsku gajbicu 400x600x100 i 180 mm</li>\r\n	<li>Drvenu gajbicu 300x500x180 i 260 mm</li>\r\n</ul>\r\n', 'sr', 'galerija-slika/pakovanje', 'Pogledajte galeriju slika', 20, 4),
(5, 'Distribucija', '<p>Tokom svog poslovanja stekli smo ugled kompanije koja uzgaja vrhunsko voće, ali i koja stvara i održava dugoročnu saradnju sa svojim poslovnim partnerima. Na&scaron;e proizvode možete kupiti u na&scaron;oj prodavnici u Aranđelovcu, kao i u brojnim marketima &scaron;irom zemlje. Raspitajte se kod svog prodavca da li prodaje Greeny voće i EveryDay sok.</p>\r\n', 'sr', 'galerija-slika', 'Pogledajte galeriju slika', 19, 5),
(6, 'Garancija kvaliteta', '<p>Da bismo postigli vrhunski kvalitet i opravdali poverenje svojih kupaca, po&scaron;tujemo najstrože evropske standarde u gajenju i rukovanju voćem, &scaron;to možemo da potvrdimo i dobijenim sertifikatima koje redovno obnavljamo.</p>\r\n\r\n<ul>\r\n	<li><strong>Sertifikat Greeny Globalgap</strong> <a href="/img/Certificate-Greeny-Globalgap.pdf">pogledajte &gt;</a></li>\r\n	<li><strong>Sertifikat ISO 22000:2005</strong> <a href="/img/ISO-22000-Greeny.pdf">pogledajte &gt;</a></li>\r\n</ul>\r\n\r\n<p>GlobalGap je ustanovio standard koji je ključna referenca za dobru poljoprivrednu praksu na globalnom trži&scaron;tu, prateći zahteve potro&scaron;ača u poljoprivrednoj proizvodnji. GlobalGap je prisutan u vi&scaron;e od 80 zemalja sveta na svim kontinentima. ISO 22000:2005 je prvi međunarodni standard za upravljanje bezbedno&scaron;ću hrane.</p>\r\n', 'sr', '', '', 13, 1),
(7, '', '<p>Preduzeće Greeny d.o.o. sa sedištem Aranđelovcu je porodična kompanija osnovana 2004. godine. Naša osnovna delatnost je gajenje i čuvanje jabuka. Učili smo, ulagali, radili, uspeli da zasadimo i trenutno na 30 ha gajimo ukupno 85.000 stabala jabuke sledećih sorti: zlatni delišes, red čif, jonagold, greni smit, gala i fudži. Godine 2012. proširili smo asortiman svežeg voća u ponudi i sada u našem voćnjaku imamo još i 3 ha trešnje (2.400 stabala) sorti burlat, sanberst i germedovska, kao i 1 ha jagode (40.000 bokora) sa sortama kleri i džoli.</p>\r\n<p>U cilju postizanja i održavanja kvaliteta i nastojanja da usavršimo proces gajenja i čuvanja jabuka izgradili smo savremenu hladnjaču za čuvanje i sortiranje voća.  Kapacitet hladnjače je 2.800 tona svežeg voća koje se čuva u plastičnim boks paletama u 14 ULO komora.</p>\r\n<p>Naša jabuka stiže do kupaca tek pošto prođe liniju za sortiranje jabuka, kapaciteta 4 T/h, koja nam pruža mogućnost sortiranja jabuka po veličini. Naši dosadašnji potrošači, a nadamo se i brojni budući, prepoznaće naš kvalitet i pokloniti nam poverenje.</p>\r\n<h3>Garancija kvaliteta</h3>\r\n<p>Da bismo postigli vrhunski kvalitet i opravdali poverenje svojih kupaca, poštujemo najstrože evropske standarde u gajenju i rukovanju voćem, što možemo da potvrdimo i dobijenim sertifikatima koje redovno obnavljamo.</p> Sertifikat Greeny Globalgap pogledajte> Sertifikat ISO 22000:2005  pogledajte > \r\n<p>GlobalGap  je ustanovio standard koji je ključna referenca za dobru poljoprivrednu praksu na globalnom tržištu, prateći zahteve potrošača u poljoprivrednoj proizvodnji. GlobalGap je prisutan u više od 80 zemalja sveta na svim kontinentima. ISO 22000:2005 je prvi međunarodni standard za upravljanje bezbednošću hrane.</p>\r\n', 'sr', '', '', 15, 4),
(8, '', '<p>Hvala vam što ste odvojili vreme da kontaktirate s nama! Ako na našem sajtu niste našli informacije koje su vam potrebne, molimo vas da popunite kontakt formu i pošaljite e-poruku.  U skladu sa politikom privatnosti kompanije Greeny, vaši lični podaci će se čuvati u tajnosti i koristiti samo za odgovor e-poštom ili radi slanja materijala u digitalnom obliku.<p>\r\nOrašac bb, Aranđelovac, Srbija<br />\r\nT:+381 34 6709-141<br />\r\nF:+381 34 6709-230<br /> \r\ne-mail: greeny@vozd.net<br />\r\nwww.greeny.co.rs<br />\r\n', 'sr', '', '', 9, 1),
(9, '', '<p>Aranđelovac leži u severoistočnom podnožju &scaron;umovite planine Bukulje (696 m.n.v.), na nadmorskoj visini oko 250 m i to izvori&scaron;nom delu reke Kubr&scaron;nice. Op&scaron;tina se prostire na 375,89 km2 i ima 48.000 stanovnika.</p>\r\n\r\n<p>Ora&scaron;ac bb, Aranđelovac,<br />\r\nSrbija T:+381 34 6709-141<br />\r\nF:+381 34 6709-230<br />\r\ne-mail: greeny@vozd.net<br />\r\nwww.greeny.co.rs</p>\r\n', 'sr', '', '', 10, 2),
(10, '', '<p>Zdrava i raznovrsna ishrana je nezamisliva bez voća zbog velike količine vitamina i drugih hranljivih sastojaka koje ono sadrži. Priroda je Srbiji podarila klimu koja je izuzetno povoljna za razne vrste voća, a klikom na linkove iznad dobićete osnovne informacije o sortama koje mi gajimo.</p>\r\n\r\n<h3>Garancija kvaliteta</h3>\r\n\r\n<p>Da bismo postigli vrhunski kvalitet i opravdali poverenje svojih kupaca, po&scaron;tujemo najstrože evropske standarde u gajenju i rukovanju voćem, &scaron;to možemo da potvrdimo i dobijenim sertifikatima koje redovno obnavljamo.</p>\r\n\r\n<p>Sertifikat Greeny Globalgap <a href="/img/Certificate-Greeny-Globalgap.pdf">pogledajte&gt;</a><br />\r\nSertifikat ISO 22000:2005 <a href="/img/ISO-22000-Greeny.pdf">pogledajte &gt;</a></p>\r\n\r\n<p>GlobalGap je ustanovio standard koji je ključna referenca za dobru poljoprivrednu praksu na globalnom trži&scaron;tu, prateći zahteve potro&scaron;ača u poljoprivrednoj proizvodnji. GlobalGap je prisutan u vi&scaron;e od 80 zemalja sveta na svim kontinentima. ISO 22000:2005 je prvi međunarodni standard za upravljanje bezbedno&scaron;ću hrane.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'sr', '', '', 21, 6),
(11, '', '<p>Trenutno gajimo ukupno 85.000 stabala jabuke sledećih sorti: zlatni deli&scaron;es, red čif, jonagold, greni smit, gala i fudži.</p>\r\n\r\n<p>Kvalitet je rezultat &scaron;irokog spektra mera koje omogućavaju bezbednost i kvalitet proizvoda:</p>\r\n\r\n<ul>\r\n	<li>sistem kontrole kvaliteta</li>\r\n	<li>stroge proizvodne i transportne tehnologije</li>\r\n	<li>stalno pobolj&scaron;anje kroz istraživanje i inovacije</li>\r\n	<li>naučne procedure za za&scaron;titu bilja</li>\r\n	<li>profesionalni pristup u za&scaron;titi bilja</li>\r\n	<li>briga za životnu sredinu</li>\r\n</ul>\r\n', 'sr', 'galerija-slika/jabuka', 'Pogledajte galeriju slika', 22, 1),
(12, 'Kleri', '<p>Poreklom iz Italije, umerene rodnosti (600 g/bokoru), rana sorta. Plod je srednje krupan do krupan (oko 16 g), izduženo-konusnog, pravilnog oblika tokom čitave berbe. Pokožica ploda je sjajne svetlocrvene boje, delimično otporna pri berbi i transportu. Visokog je kvaliteta mesa i intenzivne arome.</p>', 'sr', '', '', 36, 1),
(13, 'Džoli', '<p>Srednje rana sorta, poreklom iz Italije, visoke rodnosti (800 g/bokoru). Plodovi su krupni, skraćeno-konusnog oblika, svetlocrvene boje.</p>\r\n', 'sr', 'galerija-slika/jagoda', 'Pogledajte galeriju slika', 37, 2),
(14, 'Burlat', '<p>Francuska sorta trešnje, visoke rodnosti, sazreva krajem maja - krajem druge nedelje zrenja trešnje. Srednje ranog cvetanja, dobro podnosi transport. Plod je čvrst, tamnocrvene boje, srednje veličine ili veliki, veoma sladak i sočan, sa čvrstim mesnatim delom.  Plodovi su srednje krupni (6-8 g), bordo-crvene boje s tvrdom pokožicom.</p>', 'sr', '', '', 33, 1),
(15, 'Germedovska', '<p>Poreklom iz Nemačke, sazreva krajem juna, plodovi su tamnocrvene boje, čvrsti i hrskavi, osetljivi na pucanje. Plod je krupan do vrlo krupan, srcastog oblika. Pokožica je zagasitopurpurne boje. Voćno meso je čvrsto, sočno, slatko-nakiselo i veoma prijatnog ukusa.</p>', 'sr', '', '', 34, 2),
(16, 'Sanberst', '<p>Jedna od najboljih sorti, poreklom iz Velike Britanije, sazreva u drugoj polovini juna, plodovi su izuzetno krupni (12-13 g), loptasti, crveni, sjajni, otporni na pucanje na kiši. Meso čvrsto, slatko, hrskavo, kvalitetno.</p>', 'sr', '', '', 35, 3),
(17, '', '<p>U svom proizvodnom programu firma Greeny d.o.o. proizvodi prednapregnute betonske stubove za protivgradnu za&scaron;titu, vinograde i ograde. Za proizvodnju stubova koriste se sertifikovani materijali:</p>\r\n\r\n<ul>\r\n	<li>dve frakcije agregata (0-4 mm; 4-8 mm)</li>\r\n	<li>čist portland cement CEM I 42.5R (PC 42.5R)</li>\r\n	<li>superplastifikatori</li>\r\n	<li>voda</li>\r\n	<li>čelične žice za adheziono prednaprezanje (3x&Oslash;2.25 mm)</li>\r\n</ul>\r\n\r\n<p>Za izradu stubova koristimo beton C40/50 (MB 50) proizveden na sopstvenoj savremenoj automatskoj fabrici betona prema recepturi na osnovu prethodnih ispitivanja sa upotrebom na&scaron;ih materijala u &bdquo;Institutu za ispitivanje materijala Srbije &ndash; IMS&rdquo; Beograd. Staza za prednaprezanje opremljena je čeličnim kalupima za proizvodnju stubova poprečnog preseka 70x80 mm, visokofrekventnim vibratorima sa frekventnim regulatorom, opremom za utezanje užadi, opremom za vađenje stubova iz kalupa i sečenje stubova.</p>\r\n\r\n<p>U ovom momentu proizvodnim programom obuhvaćeni su sledeći tipovi stubova poprečnog preseka 70x80 mm utegnutih sa po 4 užeta od tri upredene žice &Oslash;2.25 mm:</p>\r\n\r\n<ul>\r\n	<li>1. TG1 &ndash; PBS-70x80x4700 mm</li>\r\n	<li>2. TG2 &ndash; PBS -70x80x4500 mm</li>\r\n	<li>3. TG3 &ndash; PBS -70x80x2700 mm</li>\r\n	<li>4. TG4 &ndash; PBS -70x80x2500 mm</li>\r\n</ul>\r\n\r\n<p>Po zahtevu i dogovoru sa kupcima mogu da se izrađuju i stubovi drugih dužina. Stubovi zadovoljavaju sve uslove propisane prema standardu EN 12839:2001. U pripremi je izrada nove staze koja će omogućiti veću proizvodnju kao i proizvodnju stubova poprečnog preseka 80x120 mm; 90x90 mm i 140x140 mm.</p>\r\n', 'sr', 'galerija-slika', 'Pogledajte galeriju slika', 31, 1),
(18, 'EveryDay sok', '<p>Ima li čega lepšeg od sveže ceđenog soka? Greeny EveryDay  je 100% prirodan mutni voćni sok od jabuka. Pasterizovan, bez dodatih aditiva, konzervanasa, šećera i vode, bez glutena i veštačke boje. Pažljivo ceđen od odabranih jabuka u sezoni, rukom branih, iz aranđelovačkih voćnjaka. Pasterizovan radi zadržavanja svežeg ukusa i svih hranljivih sastojaka. 100% prirodan - savršen dodatak svakom restoranu ili keteringu s klijentima koji imaju visoke standarde.</p>', 'sr', '', '', 38, 1),
(19, 'Novo pakovanje BAG IN BOX', '<p><img alt="" src="/img/articles/everyday-sok-novo-pakovanje.jpg" style="float: left; width: 245px; height: 156px; margin-left: 5px; margin-right: 5px;" />Novo, moderno i superiorno pakovanje BAG IN BOX ne zahteva hlađenje i čuva svežinu proizvoda i nakon otvaranja. Idealno za čuvanje nekoliko meseci pre otvaranja.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n\r\n\r\n\r\n', 'sr', '', '', 39, 2),
(20, 'Maloprodajno pakovanje', '<p>U maloprodaji dostupan u pakovanju od 3 i 5 litara.</p>\r\n', 'sr', 'galerija-slika/everyday', 'Pogledajte galeriju slika', 40, 3),
(21, 'Hotelsko pakovanje', '<p>Za hotele, restorane i kafiće obezbedili smo pakovanje od 10 litara, kao i specijalni brendirani frižider.</p>\r\n', 'sr', 'galerija-slika/everyday', 'Pogledajte galeriju slika', 41, 4),
(23, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>POREKLO:</td>\r\n			<td>SAD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KARAKTERISTIKE PLODA:</td>\r\n			<td>\r\n			Plodovi su srednje krupni do vrlo krupni, konusnog oblika\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BOJA:</td>\r\n			<td>Zeleno-žuta</td>\r\n		</tr>\r\n		<tr>\r\n			<td>UKUS:</td>\r\n			<td>Slatka, sočna i aromatična</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME BERBE:</td>\r\n			<td>Sredina septembra</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME ČUVANJA:</td>\r\n			<td>Od septembra do juna u ULO atmosferi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Plod je srednje krupan do krupan, izduženo-kupast, simetričan. Kožica je tanka, glatka, zeleno-žuta do zlatnožuta, često pokrivena rđastom prevlakom. Meso ploda je čvrsto, bledožuto, sočno, blago nakiselo. Koristi se kao stona jabuka, a u manjoj meri i za industrijsku preradu.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'sr', '', '', 27, 1),
(24, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>POREKLO:</td>\r\n			<td>SAD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KARAKTERISTIKE PLODA:</td>\r\n			<td>Plodovi su krupni do vrlo krupni, loptasto-izduženi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BOJA:</td>\r\n			<td>Zeleno-žuta sa dopunskom narandžasto-crvenom bojom</td>\r\n		</tr>\r\n		<tr>\r\n			<td>UKUS:</td>\r\n			<td>Sočna, slatka i vrlo aromatična</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME BERBE:</td>\r\n			<td>Sredina septembra</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME ČUVANJA:</td>\r\n			<td>Od septembra do aprila u ULO atmosferi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Plod je krupan do vrlo krupan, loptasto-izdužen. Meso ploda je žućkasto, sočno, aromatično, slatko-nakiselo, kvalitetno. Koristi se kao stona jabuka. Medeno sladak ukus zlatnog deli&scaron;esa i živahan kiselkasti ukus jonatana, ovu jabuku čine izvrsnom slatko-kiselkastom desertnom jabukom. Tekstura njenog mesa naročito je hrskava i sočna. Odlična je jabuka za jelo, voćne salate i pečenje!</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'sr', '', '', 28, 2),
(25, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>POREKLO:</td>\r\n			<td>Australija</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KARAKTERISTIKE PLODA:</td>\r\n			<td>Plodovi su krupni do vrlo krupni</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BOJA:</td>\r\n			<td>Pokožica je zelene boje s izraženim belim lenticelama</td>\r\n		</tr>\r\n		<tr>\r\n			<td>UKUS:</td>\r\n			<td>Sočna, kiselkasta, slabo aromatična</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME BERBE:</td>\r\n			<td>Druga polovina oktobra</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME ČUVANJA:</td>\r\n			<td>Od oktobra do aprila u ULO atmosferi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Plod je krupan, loptast do zarubljeno-krunast, velike specifične mase. Kožica je zelena. Ukus je nagla&scaron;eno kiselkast. To je hrskava jabuka, tvrdog mesa i vrlo o&scaron;trog ukusa. Ipak, njeno meso čuvanjem postaje mek&scaron;e, a poslužena malo ohlađena može biti vrlo osvežavajuća. Odlična je za potro&scaron;nju u svežem stanju, u pitama, a isto tako vrlo dobra za voćne salate.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'sr', '', '', 29, 3),
(26, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>POREKLO:</td>\r\n			<td>Japan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KARAKTERISTIKE PLODA:</td>\r\n			<td>Plodovi su srednje krupni</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BOJA:</td>\r\n			<td>Osnovna boja je žuto-zelena, a dopunska ružičasta</td>\r\n		</tr>\r\n		<tr>\r\n			<td>UKUS:</td>\r\n			<td>Sočna, slatka i aromatična</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME BERBE:</td>\r\n			<td>Druga polovina oktobra</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME ČUVANJA:</td>\r\n			<td>Od oktobra do maja u ULO atmosferi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Japanska sorta jabuke, koja je sve vi&scaron;e cenjena i kod evropskih potro&scaron;ača. Glavna karakteristika sorte je plod okruglastog oblika, ne&scaron;to tvrđe, hrskavo meso, izrazito slatki ukus i odličan miris. Plodovi se dugo čuvaju, zadržavajući sočnost. Crvene boje i srednje krupnoće. Bere se u drugoj polovini oktobra.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'sr', '', '', 30, 4),
(27, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>POREKLO:</td>\r\n			<td>SAD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KARAKTERISTIKE PLODA:</td>\r\n			<td>Plodovi su krupni do vrlo krupni</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BOJA:</td>\r\n			<td>Slamasto žuta, pokrivena crvenom bojom do tamnocrvene boje u punoj zrelosti</td>\r\n		</tr>\r\n		<tr>\r\n			<td>UKUS:</td>\r\n			<td>Sočna, slatka i aromatična</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME BERBE:</td>\r\n			<td>Prva polovina septembra</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME ČUVANJA:</td>\r\n			<td>Od septembra do aprila u ULO atmosferi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Karakteristika ploda jabuke red čif je vrlo izdužen plod, jednake pokrivenosti atraktivnom crvenom bojom. Meso ploda je zelenkasto-belo, hrskavo i veoma prijatnog ukusa. Bere se u prvoj polovini septembra.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'sr', '', '', 26, 5),
(28, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>POREKLO:</td>\r\n			<td>Novi Zeland</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KARAKTERISTIKE PLODA:</td>\r\n			<td>Plodovi su srednje krupni</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BOJA:</td>\r\n			<td>Pokožica je svetlozelene boje, a dopunska boja je blago do jarko crvena</td>\r\n		</tr>\r\n		<tr>\r\n			<td>UKUS:</td>\r\n			<td>Slatka i aromatična</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME BERBE:</td>\r\n			<td>Sredina avgusta</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME ČUVANJA:</td>\r\n			<td>Od avgusta do februara u ULO atmosferi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Jabuka gala je izuzetno atraktivna sorta, gala mast je prepoznatljiva po razlivenoj rozikastoj boji, dok je gala brukfild karakteristična po crvenim pramenovima. Jedna je od cenjenih letnjih sorti. Plod je žućkastog mesa, slatkog i sočnog ukusa. Bere se sredinom avgusta.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'sr', '', '', 25, 6),
(29, 'Voćnjak', '<p>Na&scaron; voćnjak se nalazi u selu Kopljari nedaleko od Aranđelovca i oko 50 km jugozapadno od Beograda. Na&scaron;a osnovna delatnost je gajenje i čuvanje jabuka.</p>\r\n', 'sr', '', '', 42, 1),
(30, 'Jabuke Početna', '<p>Trenutno gajimo ukupno 85.000 stabala jabuke sledećih sorti: zlatni deli&scaron;es, red čif, jonagold, greni smit, gala i fudži.</p>\r\n', 'sr', '', '', 42, 2);

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE IF NOT EXISTS `promo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `promo`
--

INSERT INTO `promo` (`id`, `title`, `content`, `link`, `image1`, `image2`, `lang`) VALUES
(1, '', '<p>Greeny EveryDay je 100% prirodan mutni voćni sok od jabuka. Pasterizovan, bez dodatih aditiva, konzervanasa, šećera i vode,bez glutena i veštačke boje. Pažljivo ceđen od odabranih jabuka u sezoni, rukom branih, iz aranđelovačkih voćnjaka. Pasterizovan radi zadržavanja svežeg ukusa i svih hranljivih sastojaka.</p>\r\n<a href="everyday-sok" class="article-link">Detaljnije ></a>', 'everyday-sok', 'greeny-mutni-sok-od-jabuka.png', 'greeny-jabuka-sto-posto.png', 'sr');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `link` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `number`, `link`, `title`, `content`, `image`, `lang`, `color`) VALUES
(1, 1, 'kvalitet', 'Garancija kvaliteta', '<hgroup>\r\n<h1>Jabuka</h1>\r\n<h2>iz aranđelovačkih voćnjaka</h2>\r\n</hgroup>\r\n<p>Greeny oznaka je obećanje našim potrošačima. To je garancija da naši proizvodi ne samo da zadovoljavaju nego daleko prevazilaze najviše međunarodne standarde kvaliteta.</p>\r\n', 'greeny-jabuka-crvena-slide.png', 'sr', '005c34'),
(2, 2, 'everyday', 'Greeny EveryDay', '<img src="/img/slider/greeny-everyday-sok-logo.png"/>\r\n<hgroup>\r\n<h2>100% prirodan sok</h2>\r\n</hgroup>\r\n\r\n', 'greeny-everyday-sok-slide.png', 'sr', '8dc43f'),
(3, 3, 'sveze-voce', 'Sveže voće', '<hgroup>\r\n<h1>Sveže voće</h1>\r\n<h2>iz aranđelovačkih voćnjaka</h2>\r\n</hgroup>\r\n<p>Precizno pratimo temperaturu i vlažnost vazduha u kamionima  i kontejnerima za otpremu radi održavanja kvaliteta i svežine prilikom isporuke.</p>\r\n', 'greeny-sveze-voce-slide.png', 'sr', '8dc43f'),
(4, 4, 'tresnja', 'Trešnja', '<hgroup>\r\n<h1>Trešnja</h1>\r\n<h2>iz aranđelovačkih voćnjaka</h2>\r\n</hgroup>\r\n<p>Proširili smo asortiman svežeg voća u ponudi i sada u našem voćnjaku imamo još i 3 ha trešnje (2.400 stabala) sorti burlat, sanberst i germedovska.</p>\r\n', 'greeny-tresnja-slide.png', 'sr', '871b43'),
(5, 5, 'jagoda', 'Jagoda', '<hgroup>\r\n<h1>Jagoda</h1>\r\n<h2>iz aranđelovačkih voćnjaka</h2>\r\n</hgroup>\r\n<p>Proširili smo asortiman svežeg voća u ponudi i sada u našem voćnjaku imamo još i 1 ha jagode (40.000 bokora) sa sortama kleri i džoli.</p>\r\n', 'greeny-jagoda-slide.png', 'sr', 'a3142c'),
(6, 6, 'jabuka', 'Jabuka', '<hgroup>\r\n<h1>Jabuka</h1>\r\n<h2>iz aranđelovačkih voćnjaka</h2>\r\n</hgroup>\r\n<p>Čuvamo svoje proizvode u kontrolisanim temperaturnim i atmosferskim uslovima radi održavanja kvaliteta i svežine tokom cele godine.</p>\r\n', 'greeny-jabuka-slide.png', 'sr', '005c34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_migration`
--

CREATE TABLE IF NOT EXISTS `tbl_migration` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_migration`
--

INSERT INTO `tbl_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1393098379),
('m140219_193322_create_tables', 1393098386),
('m140222_213254_add_tables_for_galery', 1393104818),
('m140226_214257_add_image_into_category', 1393451135),
('m140307_153821_add_table_menu', 1394207357),
('m140307_155859_add_order_in_menu', 1394208004),
('m140310_205247_add_color_and_content_and_deleted_image_from_category', 1394486658),
('m140310_212321_add_table_category_image', 1394486658),
('m140316_134139_add_image_and_changed_folder_in_alias_in_table_album', 1394977757),
('m140316_141411_change_title_in_table_image', 1394979661);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `username`, `password`) VALUES
(1, 'Golub', '1bed2e6bba53bf08328ab88464771d2c');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `fk_category_category1` FOREIGN KEY (`parent_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `category_image`
--
ALTER TABLE `category_image`
  ADD CONSTRAINT `fk_category_image_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `fk_image_album1` FOREIGN KEY (`album_id`) REFERENCES `album` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `fk_Menu_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Menu_Menu1` FOREIGN KEY (`parent_item`) REFERENCES `menu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `fk_post_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

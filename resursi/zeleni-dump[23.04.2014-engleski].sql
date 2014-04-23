-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: mysql
-- Generation Time: Apr 23, 2014 at 02:37 PM
-- Server version: 5.0.77
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `greenyco_zeleni`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(45) collate utf8_unicode_ci default NULL,
  `alias` varchar(45) collate utf8_unicode_ci default NULL,
  `number` int(11) default NULL,
  `lang` varchar(10) collate utf8_unicode_ci default NULL,
  `image` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

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
(9, 'Trešnja', 'tresnja', 9, 'sr', 'greeny-thumb-tresnja.jpg'),
(10, 'Everyday', 'everyday', 1, 'en', 'greeny-thumb-everyday.jpg'),
(11, 'Apple', 'jabuka', 2, 'en', 'greeny-thumb-jabuka.jpg'),
(12, 'Strawberries', 'jagoda', 3, 'en', 'greeny-thumb-jagoda.jpg'),
(13, 'Company', 'kompanija', 4, 'en', 'greeny-thumb-kompanija.jpg'),
(14, 'Packaging', 'pakovanje', 5, 'en', 'greeny-thumb-pakovanje.jpg'),
(15, 'Production', 'proizvodnja', 6, 'en', 'greeny-thumb-proizvodnja.jpg'),
(16, 'Storage', 'skladistenje', 7, 'en', 'greeny-thumb-skladistenje.jpg'),
(17, 'Sorting', 'sortiranje', 8, 'en', 'greeny-thumb-sortiranje.jpg'),
(18, 'Cherries', 'tresnja', 9, 'en', 'greeny-thumb-tresnja.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL auto_increment,
  `number` int(11) default NULL,
  `content` text collate utf8_unicode_ci,
  `image` varchar(255) collate utf8_unicode_ci default NULL,
  `lang` varchar(10) collate utf8_unicode_ci default NULL,
  `link` varchar(255) collate utf8_unicode_ci default NULL,
  `color` varchar(10) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `number`, `content`, `image`, `lang`, `link`, `color`) VALUES
(1, 1, 'U svom proizvodnom programu firma Greeny d.o.o. proizvodi prednapregnute betonske stubove za protivgradnu zaštitu, vinograde i ograde.', 'greeny-prenapregnuti-stubovi-thumb.png', 'sr', 'betonski-stubovi', ''),
(2, 2, 'Pakovanje našeg EveryDay soka - novo, moderno BAG IN BOX pakovanje, za jednokratnu upotrebu  idealno za čuvanje nekoliko meseci pre otvaranja.', 'greeny-everyday-sok-pakovanje-thumb.png', 'sr', 'everyday-sok', ''),
(4, 4, 'Specijalni brendirani frižider za restorane, kafiće i hotele.', 'greeny-brendirani-frizider-thumb.png', 'sr', 'everyday-sok', ''),
(5, 5, 'Savremena hladnjača za čuvanje i sortiranje voća kapaciteta 2.800 tona svežeg voća.', 'greeny-hladnjaca-za-cuvanje-voca-thumb.png', 'sr', 'kvalitet', ''),
(6, 1, 'In its product range, “Greeny” d.o.o. offers prestressed concrete columns for hail protection structures, vineyards and fences.', 'greeny-prenapregnuti-stubovi-thumb.png', 'en', 'betonski-stubovi', ''),
(7, 2, 'The packaging of our EveryDay juice - new, modern BAG-IN-BOX disposable packaging - makes it ideal for storage for several months before opening.', 'greeny-everyday-sok-pakovanje-thumb.png', 'en', 'everyday-sok', ''),
(8, 4, 'A special branded cooler for restaurants, cafés and hotels.', 'greeny-brendirani-frizider-thumb.png', 'en', 'everyday-sok', ''),
(9, 5, 'A state-of-the-art cooling plant for fruit storage and sorting, with a capacity of 2,800 tonnes of fresh fruit.', 'greeny-hladnjaca-za-cuvanje-voca-thumb.png', 'en', 'kvalitet', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(45) collate utf8_unicode_ci default NULL,
  `content` text collate utf8_unicode_ci,
  `alias` varchar(45) collate utf8_unicode_ci default NULL,
  `order` int(11) default NULL,
  `lang` varchar(10) collate utf8_unicode_ci default NULL,
  `parent_id` int(11) default NULL,
  `type` varchar(10) collate utf8_unicode_ci default NULL,
  `color` varchar(10) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_category_category1_idx` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=77 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `content`, `alias`, `order`, `lang`, `parent_id`, `type`, `color`) VALUES
(9, 'Kontaktirajte nas', '<h1>Kontakt</h1>\r\n', 'kontaktirajte-nas', 1, 'sr', NULL, 'PAGE', '005c34'),
(10, 'Lokacija', '<h1>Lokacija</h1>\r\n', 'lokacija', 2, 'sr', NULL, 'PAGE', '005c34'),
(11, 'Galerija slika', NULL, 'galerija-slika', 3, 'sr', NULL, 'PAGE', NULL),
(12, 'Proizvodi', '', 'proizvodi', 1, 'sr', NULL, 'EXTERNAL', ''),
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
(32, 'Voćnjak', '', '', 8, 'sr', NULL, 'SELF', ''),
(33, 'Burlat', NULL, 'burlat', 1, 'sr', 23, 'SELF', NULL),
(34, 'Germedovska', NULL, 'germedovska', 2, 'sr', 23, 'SELF', NULL),
(35, 'Sanberst', NULL, 'sanberst', 3, 'sr', 23, 'SELF', NULL),
(36, 'Kleri', NULL, 'kleri', 1, 'sr', 24, 'SELF', NULL),
(37, 'Džoli', '', 'dzoli', 2, 'sr', 24, 'SELF', ''),
(38, 'Sok', '', 'sok', 1, 'sr', 14, 'SELF', ''),
(39, 'Pakovanje', '', 'pakovanje', 2, 'sr', 14, 'SELF', ''),
(40, 'Maloprodajno pakovanje', '', 'maloprodajno-pakovanje', 3, 'sr', 14, 'SELF', ''),
(41, 'Hotelsko pakovanje', '', 'hotelsko-pakovanje', 4, 'sr', 14, 'SELF', ''),
(42, 'Početna', '', 'pocetna', NULL, '', NULL, 'PAGE', ''),
(43, 'Contact us', '<h1>Contact</h1>\r\n', 'kontaktirajte-nas', 1, 'en', NULL, 'PAGE', '005c34'),
(45, 'Location', '<h1>Location</h1>\r\n', 'lokacija', 2, 'en', NULL, 'PAGE', '005c34'),
(46, 'Photo gallery', '', 'galerija-slika', 3, 'en', NULL, 'PAGE', ''),
(47, 'Products', '', 'proizvodi', NULL, 'en', NULL, 'EXTERNAL', ''),
(48, 'Quality', '<h1>Imenom garantujemo kvalitet</h1>\r\n', 'kvalitet', 2, 'en', NULL, 'SELF', '005c34'),
(49, 'Pressed apples only', '<h1>A glass of health every day!</h1>\r\n', 'everyday-sok', 3, 'en', NULL, 'EXTERNAL', '8dc43f'),
(50, 'Greeny company', '<h1>Kvalitet po najvi&scaron;im standardima</h1>\r\n', 'o-nama', 4, 'en', NULL, 'EXTERNAL', '005c34'),
(51, 'Production', '', 'proizvodnja', 1, 'en', 48, 'SELF', ''),
(52, 'Sorting', '', 'sortiranje', 2, 'en', 48, 'SELF', ''),
(53, 'Storage', '', 'skladistenje', 3, 'en', 48, 'SELF', ''),
(54, 'Distribution', '', 'distribucija', 4, 'en', 48, 'SELF', ''),
(55, 'Packaging', '', 'pakovanje', 5, 'en', 48, 'SELF', ''),
(56, 'Fresh fruit', '<h1><strong>Sweet, crunchy and juicy, our fruit is always healthy and tasty.</strong></h1>\r\n', 'sveze-voce', NULL, 'en', 47, 'EXTERNAL', '8dc43f'),
(57, 'Apple', '<h1>Apple</h1>\r\n\r\n<p>85.000 apple trees</p>\r\n', 'jabuka', 1, 'en', 56, 'EXTERNAL', '005c34'),
(58, 'Sweet cherries ', '<h1>Sweet cherries</h1>\r\n\r\n<p>3 ha (2.400 sadnica)</p>\r\n', 'tresnja', 2, 'en', 56, 'EXTERNAL', '871b43'),
(59, 'Strawberries', '<h1>Strawberries</h1>\r\n\r\n<p>1 ha (40.000 bokora)<br />\r\n&nbsp;</p>\r\n', 'jagoda', 3, 'en', 56, 'EXTERNAL', 'a3142c'),
(60, 'Gala', '<h1>Gala</h1>\r\n\r\n<p>Apple</p>\r\n', 'gala', 5, 'en', 57, 'EXTERNAL', '005c34'),
(61, 'Red Čif', '<h1>Red Čif</h1>\r\n\r\n<p>Apple</p>\r\n', 'redcif', 2, 'en', 57, 'EXTERNAL', '871b43'),
(62, 'Golden Delicious', '<h1>Golden Delicious</h1>\r\n\r\n<p>Apple</p>\r\n', 'zlatnidelises', 1, 'en', 57, 'EXTERNAL', '871b43'),
(63, 'Jonagold', '<h1>Jonagold</h1>\r\n\r\n<p>Apple</p>\r\n', 'jonagold', 3, 'en', 57, 'EXTERNAL', '005c34'),
(64, 'Granny Smith', '<h1>Granny Smith</h1>\r\n\r\n<p>Apple</p>\r\n', 'grenismit', 4, 'en', 57, 'EXTERNAL', '005c34'),
(65, 'Fuji', '<h1>Fuji</h1>\r\n\r\n<p>Apple</p>\r\n', 'fudzi', 6, 'en', 57, 'EXTERNAL', '8dc43f'),
(66, 'Concrete columns for hail protection structur', '<h1>Proizvodnja prednapregnutih betonskih stubova za protivgradnu za&scaron;titu, vinograde i ograde</h1>\r\n', 'betonski-stubovi', 1, 'en', NULL, 'SELF', '8dc43f'),
(67, 'Orchard', '', '', NULL, 'en', NULL, 'SELF', ''),
(68, 'Burlat', '', 'burlat', NULL, 'en', 58, 'SELF', ''),
(69, 'Germersdorfer', '', 'germedovska', NULL, 'en', 58, 'SELF', ''),
(70, 'Sunburst', '', 'sanberst', NULL, 'en', 58, 'SELF', ''),
(71, 'Clery', '', 'kleri', 1, 'en', 59, 'SELF', ''),
(72, 'Joly', '', 'dzoli', 2, 'en', 59, 'SELF', ''),
(73, 'EveryDay juice', '', 'sok', 1, 'en', 49, 'SELF', ''),
(74, 'New BAG-IN-BOX packaging', '', 'pakovanje', 2, 'en', 49, 'SELF', ''),
(75, 'Retail packaging', '', 'maloprodajno-pakovanje', 3, 'en', 49, 'SELF', ''),
(76, 'Hotel packaging', '', 'hotelsko-pakovanje', 4, 'en', 49, 'SELF', '');

-- --------------------------------------------------------

--
-- Table structure for table `category_image`
--

CREATE TABLE IF NOT EXISTS `category_image` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_category_image_category1_idx` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=81 ;

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
(34, 'greeny-tresnje-germedovska.jpg', 23),
(35, 'greeny-jabuke-gala-brookfield.jpg', 25),
(36, 'greeny-jabuke-zlatni-delises-1.jpg', 27),
(37, 'greeny-jabuke-jonagold-1.jpg', 28),
(38, 'greeny-jabuke-red-chief-1.jpg', 26),
(39, 'greeny-jabuke-greni-smith-1.jpg', 29),
(40, 'greeny-jabuke-fudzi-1.jpg', 30),
(41, 'greeny-betonski-stubovi-1.jpg', 66),
(42, 'greeny-betonski-stubovi-2.jpg', 66),
(43, 'greeny-betonski-stubovi-3.jpg', 66),
(44, 'greeny-betonski-stubovi-4.jpg', 66),
(45, 'greeny-betonski-stubovi-5.jpg', 66),
(46, 'greeny-everyday-sok-moderno-pakovanje.jpg', 49),
(47, 'greeny-everyday-sok-reklamni-frizider.jpg', 49),
(48, 'greeny-jabuke-1.jpg', 57),
(49, 'greeny-jabuke-2.jpg', 57),
(50, 'greeny-jabuke-fudzi.jpg', 65),
(51, 'greeny-jabuke-gala.jpg', 60),
(52, 'greeny-jabuke-greni-smith.jpg', 64),
(53, 'greeny-jabuke-jonagold.jpg', 63),
(54, 'greeny-jabuke-red-chief.jpg', 61),
(55, 'greeny-jabuke-zlatni-delises.jpg', 62),
(56, 'greeny-jagode-kleri.jpg', 59),
(57, 'greeny-jagode-dzoli.jpg', 59),
(58, 'greeny-kontakt-1.jpg', 43),
(59, 'greeny-kontakt-2.jpg', 43),
(60, 'greeny-kvalitet-pakovanje.jpg', 48),
(61, 'greeny-kvalitet-distribucija.jpg', 48),
(62, 'greeny-kvalitet-pakovanje.jpg', 48),
(63, 'greeny-kvalitet-skladistenje.jpg', 48),
(64, 'greeny-lokacija-1.jpg', 45),
(65, 'greeny-lokacija-2.jpg', 45),
(66, 'greeny-o-nama-1.jpg', 50),
(67, 'greeny-o-nama-2.jpg', 50),
(68, 'greeny-o-nama-3.jpg', 50),
(69, 'greeny-sveze-voce-jabuka.jpg', 56),
(70, 'greeny-sveze-voce-jabuka-2.jpg', 56),
(71, 'greeny-sveze-voce-tresnja.jpg', 56),
(72, 'greeny-tresnje-burlat.jpg', 58),
(73, 'greeny-tresnje-sanberst.jpg', 58),
(74, 'greeny-tresnje-germedovska.jpg', 58),
(75, 'greeny-jabuke-gala-brookfield.jpg', 60),
(76, 'greeny-jabuke-zlatni-delises-1.jpg', 62),
(77, 'greeny-jabuke-jonagold-1.jpg', 63),
(78, 'greeny-jabuke-red-chief-1.jpg', 61),
(79, 'greeny-jabuke-greni-smith-1.jpg', 64),
(80, 'greeny-jabuke-fudzi-1.jpg', 65);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `link` varchar(45) collate utf8_unicode_ci default NULL,
  `album_id` int(11) NOT NULL,
  `caption` varchar(255) collate utf8_unicode_ci default NULL,
  `number` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_image_album1_idx` (`album_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=89 ;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `title`, `link`, `album_id`, `caption`, `number`) VALUES
(1, 'EveryDay apple juice bag-in-box cooler Greeny Arandjelovac-1220.jpg', '', 1, 'EveryDay apple juice bag-in-box cooler Greeny Arandjelovac', 1),
(2, 'EveryDay apple juice bag-in-box Greeny Arandjelovac-1220.jpg', '', 1, 'EveryDay apple juice bag-in-box Greeny Arandjelovac', 2),
(3, 'Fuji apple Greeny Arandjelovac-1220.jpg', '', 2, 'Fuji apple Greeny Arandjelovac', 1),
(4, 'Gala Brookfield apple Greeny Arandjelovac-1220.jpg', '', 2, 'Gala Brookfield apple Greeny Arandjelovac', 2),
(5, 'Gala Must apple Greeny Arandjelovac-1220.jpg', '', 2, 'Gala Must apple Greeny Arandjelovac', 3),
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
(43, 'sweet cherry tree Greeny Arandjelovac-1220.jpg', '', 9, 'Sweet cherry tree Greeny Arandjelovac', 3),
(44, 'Granny Smith apple Greeny Arandjelovac-1220.jpg', '', 2, 'Granny Smith apple Greeny Arandjelovac', 4),
(45, 'EveryDay apple juice bag-in-box cooler Greeny Arandjelovac-1220.jpg', '', 10, 'EveryDay apple juice bag-in-box cooler Greeny Arandjelovac', 1),
(46, 'EveryDay apple juice bag-in-box Greeny Arandjelovac-1220.jpg', '', 10, 'EveryDay apple juice bag-in-box Greeny Arandjelovac', 2),
(47, 'Fuji apple Greeny Arandjelovac-1220.jpg', '', 11, 'Fuji apple Greeny Arandjelovac', 1),
(48, 'Gala Brookfield apple Greeny Arandjelovac-1220.jpg', '', 11, 'Gala Brookfield apple Greeny Arandjelovac', 2),
(49, 'Gala Must apple Greeny Arandjelovac-1220.jpg', '', 11, 'Gala Must apple Greeny Arandjelovac', 3),
(50, 'Golden Delicious apple Greeny Arandjelovac-1220.jpg', '', 11, 'Golden Delicious apple Greeny Arandjelovac', 4),
(51, 'Jonagold apple Greeny Arandjelovac-1220.jpg', '', 11, 'Jonagold apple Greeny Arandjelovac', 5),
(52, 'Red Chief apple Greeny Arandjelovac-1220.jpg', '', 11, 'Red Chief apple Greeny Arandjelovac', 6),
(53, 'strawberries Clery Greeny Arandjelovac-1220.jpg', '', 12, 'Strawberries Clery Greeny Arandjelovac', 1),
(54, 'strawberries Greeny Arandjelovac-1220.jpg', '', 12, 'Strawberries Greeny Arandjelovac', 2),
(55, 'strawberry fruit Greeny Arandjelovac-1220.jpg', '', 12, 'Strawberry fruit Greeny Arandjelovac', 3),
(56, 'strawberry plantation Greeny Arandjelovac-1220.jpg', '', 12, 'Strawberry plantation Greeny Arandjelovac', 4),
(57, 'irrigation lake Greeny Arandjelovac-1220.jpg', '', 13, 'Irrigation lake Greeny Arandjelovac', 1),
(58, 'orchard apple plantation cooling plant Greeny Arandjelovac-1220.jpg', '', 13, 'Orchard apple plantation cooling plant Greeny Arandjelovac', 2),
(59, 'orchard apple plantation Greeny Arandjelovac-1220.jpg', '', 13, 'Orchard apple plantation Greeny Arandjelovac', 3),
(60, 'orchard hail protection net Greeny Arandjelovac-1220.jpg', '', 13, 'Orchard hail protection net Greeny Arandjelovac', 4),
(61, 'Gala Brookfield Royal apple fruit box Greeny Arandjelovac-1220.jpg', '', 14, 'Gala Brookfield Royal apple fruit box Greeny Arandjelovac', 1),
(62, 'Golden Delicious apple fruit box Greeny Arandjelovac-1220.jpg', '', 14, 'Golden Delicious apple fruit box Greeny Arandjelovac', 2),
(63, 'Granny Smith apple fruit box Greeny Arandjelovac-1220.jpg', '', 14, 'Granny Smith apple fruit box Greeny Arandjelovac', 3),
(64, 'Granny Smith apple wooden crate Greeny Arandjelovac_1-1220.jpg', '', 14, 'Granny Smith apple wooden crate Greeny Arandjelovac', 4),
(65, 'Granny Smith apple wooden crate Greeny Arandjelovac_2-1220.jpg', '', 14, 'Granny Smith apple wooden crate Greeny Arandjelovac', 5),
(66, 'Red Chief apple fruit box Greeny Arandjelovac_1-1220.jpg', '', 14, 'Red Chief apple fruit box Greeny Arandjelovac', 6),
(67, 'Red Chief apple fruit box Greeny Arandjelovac_2-1220.jpg', '', 14, 'Red Chief apple fruit box Greeny Arandjelovac', 7),
(68, 'Red Chief apple fruit box Greeny Arandjelovac-1220.jpg', '', 14, 'Red Chief apple fruit box Greeny Arandjelovac', 8),
(69, 'apple blossom Greeny Arandjelovac-1220.jpg', '', 15, 'Apple blossom Greeny Arandjelovac', 1),
(70, 'apple harvest Greeny Arandjelovac-1220.jpg', '', 15, 'Apple harvest Greeny Arandjelovac', 2),
(71, 'apple orchard Red Chief Greeny Arandjelovac-1220.jpg', '', 15, 'Apple orchard Red Chief Greeny Arandjelovac', 3),
(72, 'apple plantation blooming Greeny Arandjelovac-1220.jpg', '', 15, 'Apple plantation blooming Greeny Arandjelovac', 4),
(73, 'apple plantation Gala Brookfield Greeny Arandjelovac-1220.jpg', '', 15, 'Apple plantation Gala Brookfield Greeny Arandjelovac', 5),
(74, 'young apple trees plantation Greeny Arandjelovac-1220.jpg', '', 15, 'Young apple trees plantation Greeny Arandjelovac', 6),
(75, 'ULO cooling plant Greeny Arandjelovac _1-1220.jpg', '', 16, 'ULO cooling plant Greeny Arandjelovac', 1),
(76, 'ULO cooling plant Greeny Arandjelovac_2-1220.jpg', '', 16, 'ULO cooling plant Greeny Arandjelovac', 2),
(77, 'ULO cooling plant Greeny Arandjelovac_3-1220.jpg', '', 16, 'ULO cooling plant Greeny Arandjelovac', 3),
(78, 'ULO cooling plant Greeny Arandjelovac_4-1220.jpg', '', 16, 'ULO cooling plant Greeny Arandjelovac', 4),
(79, 'ULO cooling plant Greeny Arandjelovac_5-1220.jpg', '', 16, 'ULO cooling plant Greeny Arandjelovac', 5),
(80, 'ULO cooling plant Greeny Arandjelovac-1220.jpg', '', 16, 'ULO cooling plant Greeny Arandjelovac', 6),
(81, 'apple calibration equipment Greeny Arandjelovac-1220.jpg', '', 17, 'Apple calibration equipment Greeny Arandjelovac', 1),
(82, 'apple calibration line Greeny Arandjelovac-1220.jpg', '', 17, 'Apple calibration line Greeny Arandjelovac', 2),
(83, 'apple calibration system Greeny Arandjelovac-1220.jpg', '', 17, 'Apple calibration system Greeny Arandjelovac', 3),
(84, 'apple sorting packing line Greeny Arandjelovac-1220.jpg', '', 17, 'Apple sorting packing line Greeny Arandjelovac', 4),
(85, 'sweet cherries Greeny Arandjelovac_1-1220.jpg', '', 18, 'Sweet cherries Greeny Arandjelovac', 1),
(86, 'sweet cherries Greeny Arandjelovac-1220.jpg', '', 18, 'Sweet cherries Greeny Arandjelovac', 2),
(87, 'sweet cherry tree Greeny Arandjelovac-1220.jpg', '', 18, 'Sweet cherry tree Greeny Arandjelovac', 3),
(88, 'Granny Smith apple Greeny Arandjelovac-1220.jpg', '', 11, 'Granny Smith apple Greeny Arandjelovac', 4);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(45) collate utf8_unicode_ci default NULL,
  `item` varchar(45) collate utf8_unicode_ci default NULL,
  `category_id` int(11) default NULL,
  `lang` varchar(10) collate utf8_unicode_ci default NULL,
  `order` int(2) default NULL,
  `parent_item` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_Menu_category1_idx` (`category_id`),
  KEY `fk_Menu_Menu1_idx` (`parent_item`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=89 ;

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
(40, 'Main', 'Trešnja burlat', 23, 'sr', 7, 4),
(41, 'Main', 'Trešnja germedovska', 23, 'sr', 8, 4),
(42, 'Main', 'Trešnja sanberst', 23, 'sr', 9, 4),
(43, 'Main', 'Jagoda kleri', 24, 'sr', 10, 4),
(44, 'Main', 'Jagoda džoli', 24, 'sr', 11, 4),
(45, 'Top', 'Contact us', 43, 'en', 1, NULL),
(46, 'Top', 'Location', 45, 'en', 2, NULL),
(47, 'Top', 'Photo gallery', 46, 'en', 3, NULL),
(48, 'Main', 'Products', 47, 'en', 1, NULL),
(49, 'Main', 'Quality', 48, 'en', 2, NULL),
(50, 'Main', 'EveryDay juice', 49, 'en', 3, NULL),
(51, 'Main', 'About us', 50, 'en', 4, NULL),
(52, 'Main', 'Production', 51, 'en', 1, 49),
(53, 'Main', 'Sorting', 52, 'en', 2, 49),
(54, 'Main', 'Storage', 53, 'en', 3, 49),
(55, 'Main', 'Distribution', 54, 'en', 4, 49),
(56, 'Main', 'Packaging', 55, 'en', 5, 49),
(57, 'Sidebar', 'Products', 47, 'en', 1, NULL),
(58, 'Sidebar', 'Quality', 48, 'en', 2, NULL),
(59, 'Sidebar', 'Apple', 57, 'en', 3, NULL),
(60, 'Sidebar', 'Sweet cherries', 58, 'en', 4, NULL),
(61, 'Sidebar', 'Strawberries', 59, 'en', 6, NULL),
(62, 'Sidebar', 'Everyday', 49, 'en', NULL, 57),
(63, 'Sidebar', 'Fresh fruit', 56, 'en', 2, 57),
(64, 'Sidebar', 'Production', 51, 'en', 1, 58),
(65, 'Main', 'Sorting', 52, 'en', 2, 58),
(66, 'Main', 'Storage', 53, 'en', 3, 58),
(67, 'Main', 'Distribution', 54, 'en', 4, 58),
(68, 'Main', 'Packaging', 55, 'en', 5, 58),
(69, 'Sidebar', 'Golden Delicious', 62, 'en', 1, 59),
(70, 'Sidebar', 'Red Čif', 61, 'en', 2, 59),
(71, 'Sidebar', 'Jonagold', 63, 'en', 3, 59),
(72, 'Sidebar', 'Granny Smith', 64, 'en', 4, 59),
(73, 'Sidebar', 'Gala', 60, 'en', 5, 59),
(74, 'Sidebar', 'Fuji', 65, 'en', 6, 59),
(75, 'Sidebar', 'Concrete columns', 66, 'en', 6, NULL),
(76, 'Sidebar', 'Orchard', 67, 'en', 7, NULL),
(77, 'Main', 'Apple golden delicious', 62, 'en', 1, 48),
(78, 'Main', 'Apple red čif', 61, 'en', 2, 48),
(79, 'Main', 'Apple fuji', 65, 'en', 3, 48),
(80, 'Main', 'Apple granny smith', 64, 'en', 4, 48),
(81, 'Main', 'Apple jonagold', 63, 'en', 5, 48),
(82, 'Main', 'Apple gala', 60, 'en', NULL, 48),
(83, 'Main', 'EveryDay juice', 49, 'en', 7, 48),
(84, 'Main', 'Sweet cherries burlat', 58, 'en', 8, 48),
(85, 'Main', 'Sweet cherries germersdorfer', 58, 'en', 9, 48),
(86, 'Main', 'Strawberries sunburst', 59, 'en', 10, 48),
(87, 'Main', 'Strawberries clery', 59, 'en', NULL, 48),
(88, 'Main', 'Strawberries joly', 59, 'en', 12, 48);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `content` text collate utf8_unicode_ci,
  `lang` varchar(45) collate utf8_unicode_ci default NULL,
  `link` varchar(45) collate utf8_unicode_ci default NULL,
  `link_text` varchar(45) collate utf8_unicode_ci default NULL,
  `category_id` int(11) default NULL,
  `number` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_post_category1_idx` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=94 ;

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
(7, '', '<p>Preduzeće Greeny d.o.o. sa sedi&scaron;tem Aranđelovcu je porodična kompanija osnovana 2004. godine. Na&scaron;a osnovna delatnost je gajenje i čuvanje jabuka. Učili smo, ulagali, radili, uspeli da zasadimo i trenutno na 30 ha gajimo ukupno 85.000 stabala jabuke sledećih sorti: zlatni deli&scaron;es, red čif, jonagold, greni smit, gala i fudži. Godine 2012. pro&scaron;irili smo asortiman svežeg voća u ponudi i sada u na&scaron;em voćnjaku imamo jo&scaron; i 3 ha tre&scaron;nje (2.400 stabala) sorti burlat, sanberst i germedovska, kao i 1 ha jagode (40.000 bokora) sa sortama kleri i džoli.</p>\r\n\r\n<p><br />\r\nU cilju postizanja i održavanja kvaliteta i nastojanja da usavr&scaron;imo proces gajenja i čuvanja jabuka izgradili smo savremenu hladnjaču za čuvanje i sortiranje voća. Kapacitet hladnjače je 2.800 tona svežeg voća koje se čuva u plastičnim boks paletama u 14 ULO komora.<br />\r\n&nbsp;</p>\r\n\r\n<p>Na&scaron;a jabuka stiže do kupaca tek po&scaron;to prođe liniju za sortiranje jabuka, kapaciteta 4 T/h, koja nam pruža mogućnost sortiranja jabuka po veličini. Na&scaron;i dosada&scaron;nji potro&scaron;ači, a nadamo se i brojni budući, prepoznaće na&scaron; kvalitet i pokloniti nam poverenje.<br />\r\n<br />\r\n<a href="/galerija-slika">Pogledajte galeriju slika&gt;</a></p>\r\n\r\n<h3>Garancija kvaliteta</h3>\r\n\r\n<p>Da bismo postigli vrhunski kvalitet i opravdali poverenje svojih kupaca, po&scaron;tujemo najstrože evropske standarde u gajenju i rukovanju voćem, &scaron;to možemo da potvrdimo i dobijenim sertifikatima koje redovno obnavljamo.</p>\r\n\r\n<p>Sertifikat Greeny Globalgap <a href="/img/Certificate-Greeny-Globalgap.pdf">pogledajte&gt;</a><br />\r\nSertifikat ISO 22000:2005 <a href="http://ISO-22000-Greeny.pdf">pogledajte &gt;</a></p>\r\n\r\n<p>GlobalGap je ustanovio standard koji je ključna referenca za dobru poljoprivrednu praksu na globalnom trži&scaron;tu, prateći zahteve potro&scaron;ača u poljoprivrednoj proizvodnji. GlobalGap je prisutan u vi&scaron;e od 80 zemalja sveta na svim kontinentima. ISO 22000:2005 je prvi međunarodni standard za upravljanje bezbedno&scaron;ću hrane.</p>\r\n', 'sr', '', '', 15, 4),
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
(19, 'Novo pakovanje BAG IN BOX', '<p><img alt="" src="/img/articles/everyday-sok-novo-pakovanje.jpg" style="float: left; width: 245px; height: 156px; margin-left: 5px; margin-right: 5px;" />Novo, moderno i superiorno pakovanje BAG IN BOX ne zahteva hlađenje i čuva svežinu proizvoda i nakon otvaranja. Idealno za čuvanje nekoliko meseci pre otvaranja.</p>\r\n\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n', 'sr', '', '', 39, 2),
(20, 'Maloprodajno pakovanje', '<p>U maloprodaji dostupan u pakovanju od 3 i 5 litara.</p>\r\n', 'sr', 'galerija-slika/everyday', 'Pogledajte galeriju slika', 40, 3),
(21, 'Hotelsko pakovanje', '<p>Za hotele, restorane i kafiće obezbedili smo pakovanje od 10 litara, kao i specijalni brendirani frižider.</p>\r\n', 'sr', 'galerija-slika/everyday', 'Pogledajte galeriju slika', 41, 4),
(23, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>POREKLO:</td>\r\n			<td>SAD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KARAKTERISTIKE PLODA:</td>\r\n			<td>\r\n			Plodovi su srednje krupni do vrlo krupni, konusnog oblika\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BOJA:</td>\r\n			<td>Zeleno-žuta</td>\r\n		</tr>\r\n		<tr>\r\n			<td>UKUS:</td>\r\n			<td>Slatka, sočna i aromatična</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME BERBE:</td>\r\n			<td>Sredina septembra</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME ČUVANJA:</td>\r\n			<td>Od septembra do juna u ULO atmosferi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Plod je srednje krupan do krupan, izduženo-kupast, simetričan. Kožica je tanka, glatka, zeleno-žuta do zlatnožuta, često pokrivena rđastom prevlakom. Meso ploda je čvrsto, bledožuto, sočno, blago nakiselo. Koristi se kao stona jabuka, a u manjoj meri i za industrijsku preradu.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'sr', '', '', 27, 1),
(24, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>POREKLO:</td>\r\n			<td>SAD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KARAKTERISTIKE PLODA:</td>\r\n			<td>Plodovi su krupni do vrlo krupni, loptasto-izduženi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BOJA:</td>\r\n			<td>Zeleno-žuta sa dopunskom narandžasto-crvenom bojom</td>\r\n		</tr>\r\n		<tr>\r\n			<td>UKUS:</td>\r\n			<td>Sočna, slatka i vrlo aromatična</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME BERBE:</td>\r\n			<td>Sredina septembra</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME ČUVANJA:</td>\r\n			<td>Od septembra do aprila u ULO atmosferi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Plod je krupan do vrlo krupan, loptasto-izdužen. Meso ploda je žućkasto, sočno, aromatično, slatko-nakiselo, kvalitetno. Koristi se kao stona jabuka. Medeno sladak ukus zlatnog deli&scaron;esa i živahan kiselkasti ukus jonatana, ovu jabuku čine izvrsnom slatko-kiselkastom desertnom jabukom. Tekstura njenog mesa naročito je hrskava i sočna. Odlična je jabuka za jelo, voćne salate i pečenje!</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'sr', '', '', 28, 2),
(25, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>POREKLO:</td>\r\n			<td>Australija</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KARAKTERISTIKE PLODA:</td>\r\n			<td>Plodovi su krupni do vrlo krupni</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BOJA:</td>\r\n			<td>Pokožica je zelene boje s izraženim belim lenticelama</td>\r\n		</tr>\r\n		<tr>\r\n			<td>UKUS:</td>\r\n			<td>Sočna, kiselkasta, slabo aromatična</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME BERBE:</td>\r\n			<td>Druga polovina oktobra</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME ČUVANJA:</td>\r\n			<td>Od oktobra do aprila u ULO atmosferi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Plod je krupan, loptast do zarubljeno-krunast, velike specifične mase. Kožica je zelena. Ukus je nagla&scaron;eno kiselkast. To je hrskava jabuka, tvrdog mesa i vrlo o&scaron;trog ukusa. Ipak, njeno meso čuvanjem postaje mek&scaron;e, a poslužena malo ohlađena može biti vrlo osvežavajuća. Odlična je za potro&scaron;nju u svežem stanju, u pitama, a isto tako vrlo dobra za voćne salate.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'sr', '', '', 29, 3),
(26, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>POREKLO:</td>\r\n			<td>Japan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KARAKTERISTIKE PLODA:</td>\r\n			<td>Plodovi su srednje krupni</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BOJA:</td>\r\n			<td>Osnovna boja je žuto-zelena, a dopunska ružičasta</td>\r\n		</tr>\r\n		<tr>\r\n			<td>UKUS:</td>\r\n			<td>Sočna, slatka i aromatična</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME BERBE:</td>\r\n			<td>Druga polovina oktobra</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME ČUVANJA:</td>\r\n			<td>Od oktobra do maja u ULO atmosferi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Japanska sorta jabuke, koja je sve vi&scaron;e cenjena i kod evropskih potro&scaron;ača. Glavna karakteristika sorte je plod okruglastog oblika, ne&scaron;to tvrđe, hrskavo meso, izrazito slatki ukus i odličan miris. Plodovi se dugo čuvaju, zadržavajući sočnost. Crvene boje i srednje krupnoće. Bere se u drugoj polovini oktobra.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'sr', '', '', 30, 4),
(27, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>POREKLO:</td>\r\n			<td>SAD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KARAKTERISTIKE PLODA:</td>\r\n			<td>Plodovi su krupni do vrlo krupni</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BOJA:</td>\r\n			<td>Slamasto žuta, pokrivena crvenom bojom do tamnocrvene boje u punoj zrelosti</td>\r\n		</tr>\r\n		<tr>\r\n			<td>UKUS:</td>\r\n			<td>Sočna, slatka i aromatična</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME BERBE:</td>\r\n			<td>Prva polovina septembra</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME ČUVANJA:</td>\r\n			<td>Od septembra do aprila u ULO atmosferi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Karakteristika ploda jabuke red čif je vrlo izdužen plod, jednake pokrivenosti atraktivnom crvenom bojom. Meso ploda je zelenkasto-belo, hrskavo i veoma prijatnog ukusa. Bere se u prvoj polovini septembra.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'sr', '', '', 26, 5),
(28, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>POREKLO:</td>\r\n			<td>Novi Zeland</td>\r\n		</tr>\r\n		<tr>\r\n			<td>KARAKTERISTIKE PLODA:</td>\r\n			<td>Plodovi su srednje krupni</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BOJA:</td>\r\n			<td>Pokožica je svetlozelene boje, a dopunska boja je blago do jarko crvena</td>\r\n		</tr>\r\n		<tr>\r\n			<td>UKUS:</td>\r\n			<td>Slatka i aromatična</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME BERBE:</td>\r\n			<td>Sredina avgusta</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VREME ČUVANJA:</td>\r\n			<td>Od avgusta do februara u ULO atmosferi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Jabuka gala je izuzetno atraktivna sorta, gala mast je prepoznatljiva po razlivenoj rozikastoj boji, dok je gala brukfild karakteristična po crvenim pramenovima. Jedna je od cenjenih letnjih sorti. Plod je žućkastog mesa, slatkog i sočnog ukusa. Bere se sredinom avgusta.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'sr', '', '', 25, 6),
(29, 'Voćnjak', '<p>Na&scaron; voćnjak se nalazi u selu Kopljari nedaleko od Aranđelovca i oko 50 km jugozapadno od Beograda. Na&scaron;a osnovna delatnost je gajenje i čuvanje jabuka.</p>\r\n', 'sr', '', '', 42, 1),
(30, 'Jabuke Početna', '<p>Trenutno gajimo ukupno 85.000 stabala jabuke sledećih sorti: zlatni deli&scaron;es, red čif, jonagold, greni smit, gala i fudži.</p>\r\n', 'sr', '', '', 42, 2),
(31, 'Nutritivne vrednosti ', '<p><img alt="" src="/img/articles/everyday-table.jpg" /></p>\r\n', 'sr', '', '', 41, 2),
(33, 'Production', '<h3>THE BEGINING</h3>\r\n\r\n<p>When we plant a seedling, we can pick fruit from it as early as its second year of growth. That is why we take good care when we choose the planting material, which must be of prime quality, healthy, certified and resistant to disease.</p>\r\n\r\n<h3>ORCHARD</h3>\r\n\r\n<p>We expect high results from our apples, and we help them achieve that by applying modern agrotechnical measures which include automated irrigation and fertilization, as well as the usage of hail protection nets.</p>\r\n\r\n<h3>HARVEST</h3>\r\n\r\n<p>It is extremely important to handle the apples with care during the harvest, so our pickers pick them gently and place them in field bins carefully, wearing gloves so as not to damage them. We take the same extent of care when we transport them from the orchard, since they can also get bruised due to reckless driving and in that way become susceptible to rapid deterioration. </p>\r\n', 'en', 'galerija-slika/proizvodnja', 'Photo Gallery', 51, 1),
(34, 'Storage', '<p>In addition to high production standards, we want to ensure state-of-the-art storage, so we built a modern cooling plant which is situated in the orchard itself. It contains 14 ULO chambers with a capacity of 2,800 tonnes, in which we keep the apples in strictly controlled conditions, thus ensuring that quality and freshness are maintained.</p>\r\n', 'en', 'galerija-slika/skladistenje', 'Photo Gallery', 53, 2),
(35, 'Sorting', '<p>When our customers order apples, we place them in a calibration line in which they are washed and sorted by size. Our sorting and calibration equipment uses the latest scientific discoveries and in that way it enables us to deliver to our customers apples which meet all their requests in terms of size. After that, we pack the fruit in suitable packaging by hand, and while doing so, we check the quality once again.</p>\r\n', 'en', 'galerija-slika/sortiranje', 'Photo Gallery', 52, 3),
(36, 'Packaging', '<p>In addition to high-quality packaging, our customers demand first-class design as well. By using contemporary and appealing design, we are able to meet all their demands. Depending on the distance of the market, its characteristics and final consumer habits, our consumers can choose from the following types of packaging:</p>\r\n\r\n<ul>\r\n	<li>Cardboard boxes 400x600x100 and 180 mm</li>\r\n	<li>Wooden crates 300x500x180 and 260 mm</li>\r\n</ul>\r\n', 'en', 'galerija-slika/pakovanje', 'Photo Gallery', 55, 4),
(37, 'Distribution', '<p>During our business operations we have become gained respect as a company which grows high-quality fruit, and which also creates and maintains long-term relationships with its business partners. You can buy our products in our shop in Arandjelovac, as well as in numerous shops and supermarkets countrywide. Ask your local retailer if they sell Greeny fruit and EveryDay juice.</p>\r\n', 'en', 'galerija-slika', 'Photo Gallery', 54, 5),
(38, 'Quality guarantee', '<p>In order to achieve the highest quality possible and maintain the confidence of our customers, we apply the strictest European standards in growing and handling fruit, for which we have been awarded certificates that we renew on a regular basis.</p>\r\n\r\n<ul>\r\n	<li><strong>Greeny GlobalGap Certificate </strong> <a href="/img/Certificate-Greeny-Globalgap.pdf">Take a look &gt;</a></li>\r\n	<li><strong>ISO 22000:2005 Certificate </strong> <a href="/img/ISO-22000-Greeny.pdf">Take a look &gt;</a></li>\r\n</ul>\r\n\r\n<p>GlobalGap has established a standard which is a key reference for good agricultural practices on the global marketplace, taking into account the requirements of consumers of agricultural products. GlobalGap is present in more than 80 countries on all continents. ISO 22000:2005 is the first international standard for food safety management systems.</p>\r\n', 'en', '', '', 48, 1),
(39, '', '<p>Greeny d.o.o. company is a family-run business established in Arandjelovac in 2004. Our core business is apple production and storage. We have been learning, investing, working, we have managed to plant and are currently growing 85,000 apple trees of the following varieties: Golden Delicious, Red Chief, Jonagold, Granny Smith, Gala and Fuji. In 2012, we expanded our fresh fruits range and now we have 3 ha of cherry trees (2,400 trees) in our orchard of the Burlat, Sunburst and Germersdorfer variety, as well as 1 ha of strawberries (40,000 plants) of the Clery and Joly variety.</p>\r\n\r\n<p><br />\r\nIn order to achieve and maintain quality and ensure improvement in the process of apple production and storage, we have built a state-of-the-art cold storage facility for fruit storage and sorting. The capacity of the facility is 2,800 tonnes of fresh fruit which is stored in plastic pallet boxes in 14 ULO chambers.</p>\r\n\r\n<p>Our apples reach our customers only after going through an apple sorting line whose capacity is 4 T/h, which enables us to sort the apples by size. Our existing customers recognise the quality of our produce, and hopefully our many future customers will do so, too, and will place their trust in us.<br />\r\n<br />\r\n<a href="/galerija-slika">Photo gallery&gt;</a></p>\r\n\r\n<h3>Quality guarantee</h3>\r\n\r\n<p>In order to achieve the highest quality possible and maintain the confidence of our customers, we apply the strictest European standards in growing and handling fruit, for which we have been awarded certificates that we renew on a regular basis.</p>\r\n\r\n<p>Greeny GlobalGap Certificate <a href="/img/Certificate-Greeny-Globalgap.pdf">take a look&gt;</a><br />\r\nISO 22000:2005 Certificate <a href="http://ISO-22000-Greeny.pdf">take a look&gt;</a></p>\r\n\r\n<p>GlobalGap has established a standard which is a key reference for good agricultural practices on the global marketplace, taking into account the requirements of consumers of agricultural products. GlobalGap is present in more than 80 countries on all continents. ISO 22000:2005 is the first international standard for food safety management systems.</p>\r\n', 'en', '', '', 50, 4),
(40, '', '<p>Thank you for taking the time to contact us! If you have not found the information that you needed on our site, please fill in the contact form and send us an e-mail. In accordance with the privacy policy of the Greeny company, your personal information is confidential and will be used only for the purposes of replying to your e-mail or sending material in digital form.</p>\r\n\r\n<p>Ora&scaron;ac bb, Aranđelovac, Srbija<br />\r\nT:+381 34 6709-141<br />\r\nF:+381 34 6709-230<br />\r\ne-mail: greeny@vozd.net<br />\r\nwww.greeny.co.rs</p>\r\n', 'en', '', '', 43, 1),
(41, '', '<p>Arandjelovac is situated at the foot of a wooded mountain Bukulja (696 m.a.s.l.), in its northeast part, at the altitude of around 250 m, in the part where River Kubr&scaron;nica springs. The municipality area is 375.89 km2 and the population is 48,000.</p>\r\n\r\n<p>Ora&scaron;ac bb, Aranđelovac,<br />\r\nSrbija T:+381 34 6709-141<br />\r\nF:+381 34 6709-230<br />\r\ne-mail: greeny@vozd.net<br />\r\nwww.greeny.co.rs</p>\r\n', 'en', '', '', 45, 2),
(42, '', '<p>Healthy and balanced diet is impossible without fruit because of the large amounts of vitamins and other nutrients it contains. Nature has given Serbia the type of climate which is highly suitable for various fruits, and clicking the links above will give you some basic information on the fruit varieties we grow.</p>\r\n\r\n<h3>Quality guarantee</h3>\r\n\r\n<p>In order to achieve the highest quality possible and maintain the confidence of our customers, we apply the strictest European standards in growing and handling fruit, for which we have been awarded certificates that we renew on a regular basis.</p>\r\n\r\n<ul>\r\n	<li><strong>Greeny GlobalGap Certificate </strong> <a href="/img/Certificate-Greeny-Globalgap.pdf">Take a look &gt;</a></li>\r\n	<li><strong>ISO 22000:2005 Certificate </strong> <a href="/img/ISO-22000-Greeny.pdf">Take a look &gt;</a></li>\r\n</ul>\r\n\r\n<p>GlobalGap has established a standard which is a key reference for good agricultural practices on the global marketplace, taking into account the requirements of consumers of agricultural products. GlobalGap is present in more than 80 countries on all continents. ISO 22000:2005 is the first international standard for food safety management systems.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'en', '', '', 56, 6),
(43, '', '<p>At present, we grow a total of 85,000 apple trees of the following varieties: Golden Delicious, Red Chief, Jonagold, Granny Smith, Gala and Fuji.</p>\r\n\r\n<p>The quality of our apples is the result of a wide range of measures which ensure the safety and quality of the produce:</p>\r\n\r\n<ul>\r\n	<li>quality assurance system</li>\r\n	<li>strict application of production and transport technologies</li>\r\n	<li>continuous improvement through research and innovation</li>\r\n	<li>scientific procedures for plant protection</li>\r\n	<li>professional approach to plant protection</li>\r\n	<li>environmental protection</li>\r\n</ul>\r\n', 'en', 'galerija-slika/jabuka', 'Photo Gallery', 57, 1),
(44, 'Clery', '<p>Of Italian origin, produces moderate yields (600 g/plant), it is an early season variety. Berries are medium to large in size (around 16 g), of regular elongated conical shape during the whole harvest period. The skin is bright, light red, moderately resistant during harvesting and transport.&nbsp; Its meat is of high quality and has an intense aroma.</p>\r\n', 'en', '', '', 71, 1),
(45, 'Joly', '<p>It is a mid-season variety of Italian origin, produces high yields (800 g/plant). The berries are large, light red, of truncated conical shape.</p>\r\n', 'en', 'galerija-slika/jagoda', 'Photo Gallery', 72, 2),
(46, 'Burlat', '<p>This is a French variety, high-yielding, ripens at the end of May - at the end of the second week of sweet cherry ripening time. It blossoms mid-early and exhibits good transportation resilience. The fruit is firm, dark red, medium to large in size, very sweet and juicy, with firm flesh. It is medium-sized (6-8 g), dark red with firm skin.</p>\r\n', 'en', '', '', 68, 1),
(47, 'Germersdorfer', '<p>Originating in Germany, it ripens at the end of June, the fruit is dark red, firm, crunchy and susceptible to splitting. The fruit is heart-shaped, large to very large. The skin is dark purple. The flesh is firm, juicy, sour-sweet and of very appealing taste.</p>\r\n', 'en', '', '', 69, 2),
(48, 'Sunburst', '<p>One of the best varieties, originating in the United Kingdom, it ripens in the second half of June, the fruit is extremely large (12-13 g), spherical, red, shiny and resistant to rain induced splitting. The flesh is firm, sweet, crunchy and of high quality.</p>\r\n', 'en', '', '', 70, 3),
(49, '', '<p>In its product range, “Greeny” d.o.o. offers prestressed concrete columns for hail protection structures, vineyards and fences.The following certified materials are used for the production of columns: </p>\r\n\r\n<ul>\r\n	<li>two aggregate fractions (0-4 mm; 4-8 mm)</li>\r\n	<li>pure grade Portland cement CEM I 42.5R (PC 42.5R)</li>\r\n	<li>superplasticizers</li>\r\n	<li>water</li>\r\n	<li>steel wires for adhesive prestressing (3xØ2.25 mm)</li>\r\n</ul>\r\n\r\n<p>For column production, we use C40/50 (MB 50) concrete produced in our own state-of-the-art automatic concrete plant according to the formulation based on previous tests evaluating the use of our materials at the Serbian Institute for Testing Materials – IMS, Belgrade.\r\nThe prestressing track is equipped with steel moulds for the production of columns with 70x80 mm cross-section, high frequency vibrators with frequency regulators, wire rope tightening equipment, equipment for extracting the columns from the moulds and for cutting the columns.\r\n</p>\r\n\r\n<p>At the moment, our product range includes the following column types with 70x80 mm cross-section, tightened with 4 wire ropes each of which is made of three braided 2.25 mm wires:</p>\r\n\r\n<ul>\r\n	<li>1. TG1 &ndash; PBS-70x80x4700 mm</li>\r\n	<li>2. TG2 &ndash; PBS -70x80x4500 mm</li>\r\n	<li>3. TG3 &ndash; PBS -70x80x2700 mm</li>\r\n	<li>4. TG4 &ndash; PBS -70x80x2500 mm</li>\r\n</ul>\r\n\r\n<p>Columns of other lengths can be made per request or as agreed with the customers. The columns are in compliance with all the requirements of EN 12839:2001. We are preparing to construct a new track which will enable us to have greater production, as well as to produce columns with 80x120 mm, 90x90 mm and 140x140 mm cross-sections.</p>\r\n', 'en', 'galerija-slika', 'Photo Gallery', 66, 1),
(50, 'EveryDay juice', '<p>Is there anything more delicious than freshly pressed juice? Greeny EveryDay is 100% natural cloudy apple juice. It is pasteurized and gluten-free, with no additives, preservatives, sugar, water or artificial colouring. It is made of carefully selected, hand-picked apples from our orchards in Arandjelovac, Serbia. It is pasteurized in order to keep the fresh taste and all the nutrients. 100% natural - the perfect addition to any restaurant or catering company working with clients who demand high standards.</p>\r\n', 'en', '', '', 73, 1),
(51, 'New BAG-IN-BOX packaging', '<p><img alt="" src="/img/articles/everyday-sok-novo-pakovanje.jpg" style="float: left; width: 245px; height: 156px; margin-left: 5px; margin-right: 5px;" />New, modern and superior, the BAG-IN-BOX packaging does not require any cooling and keeps the juice fresh after opening. This makes it ideal for storage as long as several months before opening.</p>\r\n\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n', 'en', '', '', 74, 2),
(52, 'Retail packaging', '<p>Available in 3 and 5 litre boxes in retail trade.</p>\r\n', 'en', 'galerija-slika/everyday', 'Photo Gallery', 75, 3),
(53, 'Hotel packaging', '<p>We offer 10 litre packaging for hotels, restaurants and caf&eacute;s, as well as a special branded cooler.</p>\r\n', 'en', 'galerija-slika/everyday', 'Photo Gallery', 76, 4),
(54, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>ORIGIN:</td>\r\n			<td>USA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>FRUIT CHARACTERISTICS:</td>\r\n			<td>The fruit is medium-sized to very large, of conical shape</td>\r\n		</tr>\r\n		<tr>\r\n			<td>COLOUR:</td>\r\n			<td>Green-yellow</td>\r\n		</tr>\r\n		<tr>\r\n			<td>FLAVOUR:</td>\r\n			<td>Sweet, juicy and aromatic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>HARVEST TIME:</td>\r\n			<td>Mid-September</td>\r\n		</tr>\r\n		<tr>\r\n			<td>STORAGE PERIOD:</td>\r\n			<td>From September to June in ULO atmosphere</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>The fruit is medium to large in size, elongated, conical and symmetrical. Its skin is thin, smooth, green-yellow to golden, often covered by russeting. The flesh is firm, pale yellow, juicy, mildly sour. This variety is used for consumption, and to a lesser degree for industrial processing.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'en', '', '', 62, 1),
(55, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>ORIGIN:</td>\r\n			<td>USA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>FRUIT CHARACTERISTICS:</td>\r\n			<td>The fruit is large to very large, spherically elongated</td>\r\n		</tr>\r\n		<tr>\r\n			<td>COLOUR:</td>\r\n			<td>Green-yellow with secondary orange-red</td>\r\n		</tr>\r\n		<tr>\r\n			<td>FLAVOUR:</td>\r\n			<td>Juicy, sweet and highly aromatic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>HARVEST TIME:</td>\r\n			<td>Mid-September</td>\r\n		</tr>\r\n		<tr>\r\n			<td>STORAGE PERIOD:</td>\r\n			<td>From September to April in ULO atmosphere</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>The fruit is large to very large, spherically elongated. Its flesh is yellowish, juicy, aromatic, sour-sweet and of high quality. It is used for consumption. The sweet taste of Golden Delicious, reminiscent of honey, and the vibrant, slightly sour taste of Jonathan make this variety an excellent sour-sweet dessert apple. The texture of its flesh is particularly crunchy and juicy. It is an excellent apple for consumption, fruit salads and baking!</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'en', '', '', 63, 2),
(56, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>ORIGIN:</td>\r\n			<td>Australia</td>\r\n		</tr>\r\n		<tr>\r\n			<td>FRUIT CHARACTERISTICS:</td>\r\n			<td>The fruit is large to very large</td>\r\n		</tr>\r\n		<tr>\r\n			<td>COLOUR:</td>\r\n			<td>The skin is green with conspicuous white lenticels</td>\r\n		</tr>\r\n		<tr>\r\n			<td>FLAVOUR:</td>\r\n			<td>Juicy, slightly sour, mildly aromatic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>HARVEST TIME:</td>\r\n			<td>The second half of October</td>\r\n		</tr>\r\n		<tr>\r\n			<td>STORAGE PERIOD:</td>\r\n			<td>From October to April in ULO atmosphere</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>The fruit is large, uniformly round to cone-shaped, of large specific gravity.  Its skin is green. The variety has a strong sour taste.  It is a crunchy apple, of firm flesh and very strong taste. However, its flesh becomes softer during storage, and served after being a bit cooled, it can be very refreshing. It is excellent for consumption when fresh or in pies, and it is also very good for fruit salads.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'en', '', '', 64, 3),
(57, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>ORIGIN:</td>\r\n			<td>Japan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>FRUIT CHARACTERISTICS:</td>\r\n			<td>The fruit is medium-sized</td>\r\n		</tr>\r\n		<tr>\r\n			<td>COLOUR:</td>\r\n			<td>The base colour is yellow-green, and the secondary pink</td>\r\n		</tr>\r\n		<tr>\r\n			<td>FLAVOUR:</td>\r\n			<td>Juicy, sweet and aromatic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>HARVEST TIME:</td>\r\n			<td>The second half of October</td>\r\n		</tr>\r\n		<tr>\r\n			<td>STORAGE PERIOD:</td>\r\n			<td>From October to May in ULO atmosphere</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>This is a Japanese variety which is becoming increasingly popular among consumers in Europe. The main characteristic of the fruit is its round shape, somewhat firmer, crunchy flesh, very sweet taste and beautiful scent. The apples can be stored for a long time, without losing any juiciness. They are red and medium-sized. They are harvested in the second half of October.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'en', '', '', 65, 4),
(58, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>ORIGIN:</td>\r\n			<td>USA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>FRUIT CHARACTERISTICS:</td>\r\n			<td>The fruit is large to very large</td>\r\n		</tr>\r\n		<tr>\r\n			<td>COLOUR:</td>\r\n			<td>Straw yellow, with a layer of red to dark red over the yellow when fully ripe</td>\r\n		</tr>\r\n		<tr>\r\n			<td>FLAVOUR:</td>\r\n			<td>Juicy, sweet and aromatic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>HARVEST TIME:</td>\r\n			<td>The first half of September</td>\r\n		</tr>\r\n		<tr>\r\n			<td>STORAGE PERIOD:</td>\r\n			<td>From September to April in ULO atmosphere</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>The Red Chief is characterized by a highly elongated shape, evenly covered by an appealing shade of red. Its flesh is greenish-white, crunchy and of very appealing taste. It is harvested in the first half of September.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'en', '', '', 61, 5),
(59, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>ORIGIN:</td>\r\n			<td>New Zeland</td>\r\n		</tr>\r\n		<tr>\r\n			<td>FRUIT CHARACTERISTICS:</td>\r\n			<td>The fruit is medium-sized</td>\r\n		</tr>\r\n		<tr>\r\n			<td>COLOUR:</td>\r\n			<td>The skin is light green, and the secondary colour is pale to bright red</td>\r\n		</tr>\r\n		<tr>\r\n			<td>FLAVOUR:</td>\r\n			<td>Sweet and aromatic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>HARVEST TIME:</td>\r\n			<td>Mid-August</td>\r\n		</tr>\r\n		<tr>\r\n			<td>STORAGE PERIOD:</td>\r\n			<td>From August to February in ULO atmosphere</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Gala apples are a very appealing variety, Gala Must is known for its pinkish tones, while Gala Brookfield is characterized by its red stripes. It is one of the more popular summer varieties. The fruit''s yellowish flesh is sweet and juicy. It is harvested in the middle of August.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'en', '', '', 60, 6),
(60, 'Orchard', '<p>Our orchard is located in the village of Kopljari, near Arandjelovac, around 50 km southwest of Belgrade. Our core business is apple production and storage.</p>\r\n', 'en', '', '', 42, 1),
(61, 'Apple Početna', '<p>At present, we grow a total of 85,000 apple trees of the following varieties: Golden Delicious, Red Chief, Jonagold, Granny Smith, Gala and Fuji.</p>\r\n', 'en', '', '', 42, 2),
(62, 'Nutritional values', '<p><img alt="" src="/img/articles/everyday-table.jpg" /></p>\r\n', 'en', '', '', 76, 2);

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE IF NOT EXISTS `promo` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(45) collate utf8_unicode_ci default NULL,
  `content` text collate utf8_unicode_ci,
  `link` varchar(255) collate utf8_unicode_ci default NULL,
  `image1` varchar(255) collate utf8_unicode_ci default NULL,
  `image2` varchar(255) collate utf8_unicode_ci default NULL,
  `lang` varchar(10) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `promo`
--

INSERT INTO `promo` (`id`, `title`, `content`, `link`, `image1`, `image2`, `lang`) VALUES
(1, '', '<p>Greeny EveryDay je 100% prirodan mutni voćni sok od jabuka. Pasterizovan, bez dodatih aditiva, konzervanasa, šećera i vode,bez glutena i veštačke boje. Pažljivo ceđen od odabranih jabuka u sezoni, rukom branih, iz aranđelovačkih voćnjaka. Pasterizovan radi zadržavanja svežeg ukusa i svih hranljivih sastojaka.</p>\r\n<a href="everyday-sok" class="article-link">Detaljnije ></a>', 'everyday-sok', 'greeny-mutni-sok-od-jabuka.png', 'greeny-jabuka-sto-posto.png', 'sr'),
(2, '', '<p>Greeny EveryDay is 100% natural cloudy apple juice. It is pasteurized and gluten-free, there are no additives, preservatives, sugar, water or artificial colouring. It is made of carefully selected, hand-picked apples from our orchards in Arandjelovac, Serbia. It is pasteurized in order to keep the fresh taste and all the nutrients.</p>\r\n<a href="everyday-sok" class="article-link">Read more ></a>', 'everyday-sok', 'greeny-mutni-sok-od-jabuka.png', 'greeny-jabuka-sto-posto.png', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL auto_increment,
  `number` int(11) default NULL,
  `link` varchar(45) collate utf8_unicode_ci default NULL,
  `title` varchar(45) collate utf8_unicode_ci default NULL,
  `content` text collate utf8_unicode_ci,
  `image` varchar(255) collate utf8_unicode_ci default NULL,
  `lang` varchar(10) collate utf8_unicode_ci default NULL,
  `color` varchar(10) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `number`, `link`, `title`, `content`, `image`, `lang`, `color`) VALUES
(1, 1, 'kvalitet', 'Garancija kvaliteta', '<hgroup>\r\n<h1>Jabuka</h1>\r\n<h2>iz aranđelovačkih voćnjaka</h2>\r\n</hgroup>\r\n<p>Greeny oznaka je obećanje našim potrošačima. To je garancija da naši proizvodi ne samo da zadovoljavaju nego daleko prevazilaze najviše međunarodne standarde kvaliteta.</p>\r\n', 'greeny-jabuka-crvena-slide.png', 'sr', '005c34'),
(2, 2, 'everyday-sok', 'Greeny EveryDay', '<img src="/img/slider/greeny-everyday-sok-logo.png"/>\n<hgroup>\n<h2>100% prirodan sok</h2>\n</hgroup>\n\n', 'greeny-everyday-sok-slide.png', 'sr', '8dc43f'),
(3, 3, 'sveze-voce', 'Sveže voće', '<hgroup>\r\n<h1>Sveže voće</h1>\r\n<h2>iz aranđelovačkih voćnjaka</h2>\r\n</hgroup>\r\n<p>Precizno pratimo temperaturu i vlažnost vazduha u kamionima  i kontejnerima za otpremu radi održavanja kvaliteta i svežine prilikom isporuke.</p>\r\n', 'greeny-sveze-voce-slide.png', 'sr', '8dc43f'),
(4, 4, 'tresnja', 'Trešnja', '<hgroup>\r\n<h1>Trešnja</h1>\r\n<h2>iz aranđelovačkih voćnjaka</h2>\r\n</hgroup>\r\n<p>Proširili smo asortiman svežeg voća u ponudi i sada u našem voćnjaku imamo još i 3 ha trešnje (2.400 stabala) sorti burlat, sanberst i germedovska.</p>\r\n', 'greeny-tresnja-slide.png', 'sr', '871b43'),
(5, 5, 'jagoda', 'Jagoda', '<hgroup>\r\n<h1>Jagoda</h1>\r\n<h2>iz aranđelovačkih voćnjaka</h2>\r\n</hgroup>\r\n<p>Proširili smo asortiman svežeg voća u ponudi i sada u našem voćnjaku imamo još i 1 ha jagode (40.000 bokora) sa sortama kleri i džoli.</p>\r\n', 'greeny-jagoda-slide.png', 'sr', 'a3142c'),
(6, 6, 'jabuka', 'Jabuka', '<hgroup>\r\n<h1>Jabuka</h1>\r\n<h2>iz aranđelovačkih voćnjaka</h2>\r\n</hgroup>\r\n<p>Čuvamo svoje proizvode u kontrolisanim temperaturnim i atmosferskim uslovima radi održavanja kvaliteta i svežine tokom cele godine.</p>\r\n', 'greeny-jabuka-slide.png', 'sr', '005c34'),
(7, 1, 'kvalitet', 'Quality guarantee', '<hgroup>\r\n<h1>Apples</h1>\r\n<h2>from the orchards of Arandjelovac</h2>\r\n</hgroup>\r\n<p>Greeny label is a promise to our consumers. It is a guarantee that our products not only meet, but also far exceed the highest international quality standards.</p>\r\n', 'greeny-jabuka-crvena-slide.png', 'en', '005c34'),
(8, 2, 'everyday-sok', 'Greeny EveryDay', '<img src="/img/slider/greeny-everyday-sok-logo.png"/>\n<hgroup>\n<h2>100% natural juice</h2>\n</hgroup>\n\n', 'greeny-everyday-sok-slide-eng.jpg', 'en', '8dc43f'),
(9, 3, 'sveze-voce', 'Fresh fruit', '<hgroup>\r\n<h1>Fresh fruit</h1>\r\n<h2>from the orchards of Arandjelovac</h2>\r\n</hgroup>\r\n<p>We monitor the precise temperature and humidity in delivery trucks and containers, in order to maintain quality and freshness during delivery.</p>\r\n', 'greeny-sveze-voce-slide.png', 'en', '8dc43f'),
(10, 4, 'tresnja', 'Cherry', '<hgroup>\r\n<h1>Sweet cherries</h1>\r\n<h2> from the orchards of Arandjelovac</h2>\r\n</hgroup>\r\n<p>We have expanded our range of fresh fruit and now our orchard boasts additional 3 ha of sweet cherries (2,400 trees) of the Burlat, Sunburst and Germersdorfer varieties.</p>\r\n', 'greeny-tresnja-slide.png', 'en', '871b43'),
(11, 5, 'jagoda', 'Strawberries', '<hgroup>\r\n<h1>Strawberries</h1>\r\n<h2>from the orchards of Arandjelovac</h2>\r\n</hgroup>\r\n<p>We have expanded our range of fresh fruit and now our orchard boasts an additional 1 ha of strawberries (40,000 trees) of the Clery and Joly varieties.</p>\r\n', 'greeny-jagoda-slide.png', 'en', 'a3142c'),
(12, 6, 'jabuka', 'Apple', '<hgroup>\r\n<h1>Apples</h1>\r\n<h2>from the orchards of Arandjelovac</h2>\r\n</hgroup>\r\n<p>We store our produce under controlled conditions in terms of temperature and atmosphere, in order to maintain quality and freshness all year round.</p>\r\n', 'greeny-jabuka-slide.png', 'en', '005c34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_migration`
--

CREATE TABLE IF NOT EXISTS `tbl_migration` (
  `version` varchar(255) collate utf8_unicode_ci NOT NULL,
  `apply_time` int(11) default NULL,
  PRIMARY KEY  (`version`)
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
  `iduser` int(11) NOT NULL auto_increment,
  `username` varchar(45) collate utf8_unicode_ci default NULL,
  `password` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`iduser`)
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

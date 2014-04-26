-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: mysql
-- Generation Time: Apr 26, 2014 at 03:29 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

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
(18, 'Cherries', 'tresnja', 9, 'en', 'greeny-thumb-tresnja.jpg'),
(19, 'Everyday', 'everyday', 1, 'ru', 'greeny-thumb-everyday.jpg'),
(20, 'Яблоки', 'jabuka', 2, 'ru', 'greeny-thumb-jabuka.jpg'),
(21, 'Клубника ', 'jagoda', 3, 'ru', 'greeny-thumb-jagoda.jpg'),
(22, 'Компания ', 'kompanija', 4, 'ru', 'greeny-thumb-kompanija.jpg'),
(23, 'Упаковка', 'pakovanje', 5, 'ru', 'greeny-thumb-pakovanje.jpg'),
(24, 'Производство', 'proizvodnja', 6, 'ru', 'greeny-thumb-proizvodnja.jpg'),
(25, 'Складирование', 'skladistenje', 7, 'ru', 'greeny-thumb-skladistenje.jpg'),
(26, 'Сортировка ', 'sortiranje', 8, 'ru', 'greeny-thumb-sortiranje.jpg'),
(27, 'Черешня ', 'tresnja', 9, 'ru', 'greeny-thumb-tresnja.jpg');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

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
(9, 5, 'A state-of-the-art cooling plant for fruit storage and sorting, with a capacity of 2,800 tonnes of fresh fruit.', 'greeny-hladnjaca-za-cuvanje-voca-thumb.png', 'en', 'kvalitet', ''),
(10, 1, 'В своей производственной программе  компания  ООО «Гренни» выпускает  предварительно напряжённые бетонные столбы для противоградовой защиты, для виноградников и для заборов.', 'greeny-prenapregnuti-stubovi-thumb.png', 'ru', 'betonski-stubovi', ''),
(11, 2, 'Упаковка нашего сока «EveryDay» – это новая, современная Bag-in-Box упаковка, для однократного употребления, идеальная для хранения на протяжении несколько месяцев до открытия.', 'greeny-everyday-sok-pakovanje-thumb.png', 'ru', 'everyday-sok', ''),
(12, 4, 'Специальный брендированный холодильник для ресторанов, кафе и отелей.', 'greeny-brendirani-frizider-thumb.png', 'ru', 'everyday-sok', ''),
(13, 5, 'Современный холодильный склад для хранения и сортировки фруктов вместимостью 2.800 тонн свежих фруктов.', 'greeny-hladnjaca-za-cuvanje-voca-thumb.png', 'ru', 'kvalitet', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=110 ;

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
(32, 'Voćnjak', '', 'o-nama', 8, 'sr', NULL, 'SELF', ''),
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
(76, 'Hotel packaging', '', 'hotelsko-pakovanje', 4, 'en', 49, 'SELF', ''),
(77, 'Связаться с нами', '<h1><span class="short_text" id="result_box" lang="ru"><span class="hps alt-edited">Связаться</span></span></h1>\r\n', 'kontaktirajte-nas', NULL, 'ru', NULL, 'PAGE', '005c34'),
(78, 'Местонахождение', '<h1>Местонахождение</h1>\r\n', 'lokacija', 2, 'ru', NULL, 'PAGE', '005c34'),
(79, 'Kартинная галерея', '', 'galerija-slika', 3, 'ru', NULL, 'PAGE', ''),
(80, 'Tовары', '', 'proizvodi', NULL, 'ru', NULL, 'EXTERNAL', ''),
(81, 'Kачество', '<h1>Imenom garantujemo kvalitet</h1>\r\n', 'kvalitet', NULL, 'ru', NULL, 'SELF', '005c34'),
(82, 'Только выжатые яблоки', '<h1><strong>Каждый день здоровье в стакане</strong>!</h1>\r\n', 'everyday-sok', NULL, 'ru', NULL, 'EXTERNAL', '8dc43f'),
(83, 'Компания Гренни', '<h1>Kvalitet po najvi&scaron;im standardima</h1>\r\n', 'o-nama', NULL, 'ru', NULL, 'EXTERNAL', '005c34'),
(84, 'Производство', '', 'proizvodnja', 1, 'ru', 81, 'SELF', ''),
(85, 'Сортировка', '', 'sortiranje', 2, 'ru', 81, 'SELF', ''),
(86, 'Складирование', '', 'skladistenje', NULL, 'ru', 81, 'SELF', ''),
(87, 'Распределение', '', 'distribucija', 5, 'ru', 81, 'SELF', ''),
(88, 'Упаковка', '', 'pakovanje', 6, 'ru', 81, 'SELF', ''),
(89, 'Свежие фрукты', '<h1><strong>Сладкие, сочные и хрустящие, наши фрукты всегда полезные и вкусные</strong>.</h1>\r\n', 'sveze-voce', NULL, 'ru', 80, 'EXTERNAL', '8dc43f'),
(90, 'Яблоки', '<h1>Яблоки</h1>\r\n\r\n<p>85.000 stabala</p>\r\n', 'jabuka', 1, 'ru', 89, 'EXTERNAL', '005c34'),
(91, 'Черешня', '<h1><strong>Черешня</strong></h1>\r\n\r\n<p>3 ha (2.400 sadnica)</p>\r\n', 'tresnja', 2, 'ru', 89, 'EXTERNAL', '871b43'),
(92, 'Клубника', '<h1><strong>Клубника</strong></h1>\r\n\r\n<p>1 ha (40.000 bokora)<br />\r\n&nbsp;</p>\r\n', 'jagoda', 3, 'ru', 89, 'EXTERNAL', 'a3142c'),
(93, 'Гала ', '<h1>Гала</h1>\r\n\r\n<p>Яблоки</p>\r\n', 'gala', NULL, 'ru', 90, 'EXTERNAL', '005c34'),
(94, 'Ред чиф', '<h1>Ред чиф</h1>\r\n\r\n<p>Яблоки</p>\r\n', 'redcif', NULL, 'ru', 90, 'EXTERNAL', '871b43'),
(95, 'Золотой делишес ', '<h1>Золотой делишес</h1>\r\n\r\n<p>Яблоки</p>\r\n', 'zlatnidelises', NULL, 'ru', 90, 'EXTERNAL', '871b43'),
(96, 'Йонаголд', '<h1>Йонаголд</h1>\r\n\r\n<p>Яблоки</p>\r\n', 'jonagold', NULL, 'ru', 90, 'EXTERNAL', '005c34'),
(97, 'Гренни смит ', '<h1>Гренни смит</h1>\r\n\r\n<p>Яблоки</p>\r\n', 'grenismit', NULL, 'ru', 90, 'EXTERNAL', '005c34'),
(98, 'Фуджи', '<h1>Фуджи</h1>\r\n\r\n<p>Яблоки</p>\r\n', 'fudzi', NULL, 'ru', 90, 'EXTERNAL', '8dc43f'),
(99, 'Железобетонные столбы для противоградовой защ', '<h1>Proizvodnja prednapregnutih betonskih stubova za protivgradnu za&scaron;titu, vinograde i ograde</h1>\r\n', 'betonski-stubovi', 5, 'ru', NULL, 'SELF', '8dc43f'),
(100, 'ФРУКТОВЫЙ САД', '', 'o-nama', 6, 'ru', NULL, 'SELF', ''),
(101, 'Бурлат', '', 'burlat', NULL, 'ru', 91, 'SELF', ''),
(102, 'Гермерсдорфская', '', 'germedovska', NULL, 'ru', 91, 'SELF', ''),
(103, 'Санберст', '', 'sanberst', NULL, 'ru', 91, 'SELF', ''),
(104, 'Клери', '', 'kleri', NULL, 'ru', 92, 'SELF', ''),
(105, 'Джоли', '', 'dzoli', NULL, 'ru', 92, 'SELF', ''),
(106, 'Сок EveryDay', '', 'sok', 1, 'ru', 82, 'SELF', ''),
(107, 'Новая упаковка BAG-in-BOX', '', 'pakovanje', NULL, 'ru', 82, 'SELF', ''),
(108, 'Розничная упаковка', '', 'maloprodajno-pakovanje', NULL, 'ru', 82, 'SELF', ''),
(109, 'Гостиничная упаковка', '', 'hotelsko-pakovanje', NULL, 'ru', 82, 'SELF', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=121 ;

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
(80, 'greeny-jabuke-fudzi-1.jpg', 65),
(81, 'greeny-betonski-stubovi-1.jpg', 99),
(82, 'greeny-betonski-stubovi-2.jpg', 99),
(83, 'greeny-betonski-stubovi-3.jpg', 99),
(84, 'greeny-betonski-stubovi-4.jpg', 99),
(85, 'greeny-betonski-stubovi-5.jpg', 99),
(86, 'greeny-everyday-sok-moderno-pakovanje.jpg', 82),
(87, 'greeny-everyday-sok-reklamni-frizider.jpg', 82),
(88, 'greeny-jabuke-1.jpg', 90),
(89, 'greeny-jabuke-2.jpg', 90),
(90, 'greeny-jabuke-fudzi.jpg', 98),
(91, 'greeny-jabuke-gala.jpg', 93),
(92, 'greeny-jabuke-greni-smith.jpg', 97),
(93, 'greeny-jabuke-jonagold.jpg', 96),
(94, 'greeny-jabuke-red-chief.jpg', 94),
(95, 'greeny-jabuke-zlatni-delises.jpg', 95),
(96, 'greeny-jagode-kleri.jpg', 92),
(97, 'greeny-jagode-dzoli.jpg', 92),
(98, 'greeny-kontakt-1.jpg', 77),
(99, 'greeny-kontakt-2.jpg', 77),
(100, 'greeny-kvalitet-pakovanje.jpg', 81),
(101, 'greeny-kvalitet-distribucija.jpg', 81),
(102, 'greeny-kvalitet-pakovanje.jpg', 81),
(103, 'greeny-kvalitet-skladistenje.jpg', 81),
(104, 'greeny-lokacija-1.jpg', 78),
(105, 'greeny-lokacija-2.jpg', 78),
(106, 'greeny-o-nama-1.jpg', 83),
(107, 'greeny-o-nama-2.jpg', 83),
(108, 'greeny-o-nama-3.jpg', 83),
(109, 'greeny-sveze-voce-jabuka.jpg', 89),
(110, 'greeny-sveze-voce-jabuka-2.jpg', 89),
(111, 'greeny-sveze-voce-tresnja.jpg', 89),
(112, 'greeny-tresnje-burlat.jpg', 91),
(113, 'greeny-tresnje-sanberst.jpg', 91),
(114, 'greeny-tresnje-germedovska.jpg', 91),
(115, 'greeny-jabuke-gala-brookfield.jpg', 93),
(116, 'greeny-jabuke-zlatni-delises-1.jpg', 95),
(117, 'greeny-jabuke-jonagold-1.jpg', 96),
(118, 'greeny-jabuke-red-chief-1.jpg', 94),
(119, 'greeny-jabuke-greni-smith-1.jpg', 97),
(120, 'greeny-jabuke-fudzi-1.jpg', 98);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=133 ;

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
(88, 'Granny Smith apple Greeny Arandjelovac-1220.jpg', '', 11, 'Granny Smith apple Greeny Arandjelovac', 4),
(89, 'EveryDay apple juice bag-in-box cooler Greeny Arandjelovac-1220.jpg', '', 19, 'EveryDay apple juice bag-in-box cooler Greeny Arandjelovac', 1),
(90, 'EveryDay apple juice bag-in-box Greeny Arandjelovac-1220.jpg', '', 19, 'EveryDay apple juice bag-in-box Greeny Arandjelovac', 2),
(91, 'Fuji apple Greeny Arandjelovac-1220.jpg', '', 20, 'Fuji apple Greeny Arandjelovac', 1),
(92, 'Gala Brookfield apple Greeny Arandjelovac-1220.jpg', '', 20, 'Gala Brookfield apple Greeny Arandjelovac', 2),
(93, 'Gala Must apple Greeny Arandjelovac-1220.jpg', '', 20, 'Gala Must apple Greeny Arandjelovac', 3),
(94, 'Golden Delicious apple Greeny Arandjelovac-1220.jpg', '', 20, 'Golden Delicious apple Greeny Arandjelovac', 4),
(95, 'Jonagold apple Greeny Arandjelovac-1220.jpg', '', 20, 'Jonagold apple Greeny Arandjelovac', 5),
(96, 'Red Chief apple Greeny Arandjelovac-1220.jpg', '', 20, 'Red Chief apple Greeny Arandjelovac', 6),
(97, 'strawberries Clery Greeny Arandjelovac-1220.jpg', '', 21, 'Strawberries Clery Greeny Arandjelovac', 1),
(98, 'strawberries Greeny Arandjelovac-1220.jpg', '', 21, 'Strawberries Greeny Arandjelovac', 2),
(99, 'strawberry fruit Greeny Arandjelovac-1220.jpg', '', 21, 'Strawberry fruit Greeny Arandjelovac', 3),
(100, 'strawberry plantation Greeny Arandjelovac-1220.jpg', '', 21, 'Strawberry plantation Greeny Arandjelovac', 4),
(101, 'irrigation lake Greeny Arandjelovac-1220.jpg', '', 22, 'Irrigation lake Greeny Arandjelovac', 1),
(102, 'orchard apple plantation cooling plant Greeny Arandjelovac-1220.jpg', '', 22, 'Orchard apple plantation cooling plant Greeny Arandjelovac', 2),
(103, 'orchard apple plantation Greeny Arandjelovac-1220.jpg', '', 22, 'Orchard apple plantation Greeny Arandjelovac', 3),
(104, 'orchard hail protection net Greeny Arandjelovac-1220.jpg', '', 22, 'Orchard hail protection net Greeny Arandjelovac', 4),
(105, 'Gala Brookfield Royal apple fruit box Greeny Arandjelovac-1220.jpg', '', 23, 'Gala Brookfield Royal apple fruit box Greeny Arandjelovac', 1),
(106, 'Golden Delicious apple fruit box Greeny Arandjelovac-1220.jpg', '', 23, 'Golden Delicious apple fruit box Greeny Arandjelovac', 2),
(107, 'Granny Smith apple fruit box Greeny Arandjelovac-1220.jpg', '', 23, 'Granny Smith apple fruit box Greeny Arandjelovac', 3),
(108, 'Granny Smith apple wooden crate Greeny Arandjelovac_1-1220.jpg', '', 23, 'Granny Smith apple wooden crate Greeny Arandjelovac', 4),
(109, 'Granny Smith apple wooden crate Greeny Arandjelovac_2-1220.jpg', '', 23, 'Granny Smith apple wooden crate Greeny Arandjelovac', 5),
(110, 'Red Chief apple fruit box Greeny Arandjelovac_1-1220.jpg', '', 23, 'Red Chief apple fruit box Greeny Arandjelovac', 6),
(111, 'Red Chief apple fruit box Greeny Arandjelovac_2-1220.jpg', '', 23, 'Red Chief apple fruit box Greeny Arandjelovac', 7),
(112, 'Red Chief apple fruit box Greeny Arandjelovac-1220.jpg', '', 23, 'Red Chief apple fruit box Greeny Arandjelovac', 8),
(113, 'apple blossom Greeny Arandjelovac-1220.jpg', '', 24, 'Apple blossom Greeny Arandjelovac', 1),
(114, 'apple harvest Greeny Arandjelovac-1220.jpg', '', 24, 'Apple harvest Greeny Arandjelovac', 2),
(115, 'apple orchard Red Chief Greeny Arandjelovac-1220.jpg', '', 24, 'Apple orchard Red Chief Greeny Arandjelovac', 3),
(116, 'apple plantation blooming Greeny Arandjelovac-1220.jpg', '', 24, 'Apple plantation blooming Greeny Arandjelovac', 4),
(117, 'apple plantation Gala Brookfield Greeny Arandjelovac-1220.jpg', '', 24, 'Apple plantation Gala Brookfield Greeny Arandjelovac', 5),
(118, 'young apple trees plantation Greeny Arandjelovac-1220.jpg', '', 24, 'Young apple trees plantation Greeny Arandjelovac', 6),
(119, 'ULO cooling plant Greeny Arandjelovac _1-1220.jpg', '', 25, 'ULO cooling plant Greeny Arandjelovac', 1),
(120, 'ULO cooling plant Greeny Arandjelovac_2-1220.jpg', '', 25, 'ULO cooling plant Greeny Arandjelovac', 2),
(121, 'ULO cooling plant Greeny Arandjelovac_3-1220.jpg', '', 25, 'ULO cooling plant Greeny Arandjelovac', 3),
(122, 'ULO cooling plant Greeny Arandjelovac_4-1220.jpg', '', 25, 'ULO cooling plant Greeny Arandjelovac', 4),
(123, 'ULO cooling plant Greeny Arandjelovac_5-1220.jpg', '', 25, 'ULO cooling plant Greeny Arandjelovac', 5),
(124, 'ULO cooling plant Greeny Arandjelovac-1220.jpg', '', 25, 'ULO cooling plant Greeny Arandjelovac', 6),
(125, 'apple calibration equipment Greeny Arandjelovac-1220.jpg', '', 26, 'Apple calibration equipment Greeny Arandjelovac', 1),
(126, 'apple calibration line Greeny Arandjelovac-1220.jpg', '', 26, 'Apple calibration line Greeny Arandjelovac', 2),
(127, 'apple calibration system Greeny Arandjelovac-1220.jpg', '', 26, 'Apple calibration system Greeny Arandjelovac', 3),
(128, 'apple sorting packing line Greeny Arandjelovac-1220.jpg', '', 26, 'Apple sorting packing line Greeny Arandjelovac', 4),
(129, 'sweet cherries Greeny Arandjelovac_1-1220.jpg', '', 27, 'Sweet cherries Greeny Arandjelovac', 1),
(130, 'sweet cherries Greeny Arandjelovac-1220.jpg', '', 27, 'Sweet cherries Greeny Arandjelovac', 2),
(131, 'sweet cherry tree Greeny Arandjelovac-1220.jpg', '', 27, 'Sweet cherry tree Greeny Arandjelovac', 3),
(132, 'Granny Smith apple Greeny Arandjelovac-1220.jpg', '', 20, 'Granny Smith apple Greeny Arandjelovac', 4);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=132 ;

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
(33, 'Main', 'Jabuka zlatni delišes', 27, 'sr', 1, 4),
(34, 'Main', 'Jabuka red čif', 26, 'sr', 2, 4),
(35, 'Main', 'Jabuka fudži', 30, 'sr', 3, 4),
(36, 'Main', 'Jabuka greni smit', 29, 'sr', 4, 4),
(37, 'Main', 'Jabuka jonagold', 28, 'sr', 5, 4),
(38, 'Main', 'Jabuka gala', 25, 'sr', 6, 4),
(39, 'Main', 'Sok everyday', 14, 'sr', 7, 4),
(40, 'Main', 'Trešnje', 23, 'sr', 7, 4),
(44, 'Main', 'Jagode', 24, 'sr', 11, 4),
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
(77, 'Main', 'Apple golden delicious', 62, 'en', 1, 48),
(78, 'Main', 'Apple red čif', 61, 'en', 2, 48),
(79, 'Main', 'Apple fuji', 65, 'en', 3, 48),
(80, 'Main', 'Apple granny smith', 64, 'en', 4, 48),
(81, 'Main', 'Apple jonagold', 63, 'en', 5, 48),
(82, 'Main', 'Apple gala', 60, 'en', NULL, 48),
(83, 'Main', 'EveryDay juice', 49, 'en', 7, 48),
(84, 'Main', 'Sweet cherries', 58, 'en', 8, 48),
(86, 'Main', 'Strawberries', 59, 'en', 10, 48),
(89, 'Top', 'Связаться с нами', 77, 'ru', 1, NULL),
(90, 'Top', 'Местонахождение', 78, 'ru', 2, NULL),
(91, 'Top', 'Галерея', 79, 'ru', 3, NULL),
(92, 'Main', 'Tовары', 80, 'ru', 1, NULL),
(93, 'Main', 'Kачество', 81, 'ru', 2, NULL),
(94, 'Main', 'Сок EveryDay', 82, 'ru', 3, NULL),
(95, 'Main', 'О нас', 83, 'ru', 4, NULL),
(96, 'Main', 'Производство', 84, 'ru', NULL, 93),
(97, 'Main', 'Сортировка', 85, 'ru', NULL, 93),
(98, 'Main', 'Складирование', 86, 'ru', NULL, 93),
(99, 'Main', 'Распределение', 87, 'ru', NULL, 93),
(100, 'Main', 'Упаковка', 88, 'ru', NULL, 93),
(101, 'Sidebar', 'Tовары', 80, 'ru', NULL, NULL),
(102, 'Sidebar', 'Kачество', 81, 'ru', NULL, NULL),
(103, 'Sidebar', 'Яблоки', 90, 'ru', NULL, NULL),
(104, 'Sidebar', 'Черешня', 91, 'ru', NULL, NULL),
(105, 'Sidebar', 'Клубника', 92, 'ru', NULL, NULL),
(106, 'Sidebar', 'Everyday', 82, 'ru', NULL, 101),
(107, 'Sidebar', 'Свежие фрукты', 89, 'ru', NULL, 101),
(108, 'Sidebar', 'Производство', 84, 'ru', NULL, 102),
(109, 'Main', 'Сортировка', 85, 'ru', NULL, 102),
(110, 'Main', 'Складирование', 86, 'ru', NULL, 102),
(111, 'Main', 'Распределение', 87, 'ru', NULL, 102),
(112, 'Main', 'Упаковка', 88, 'ru', NULL, 102),
(113, 'Sidebar', 'Золотой делишес ', 95, 'ru', NULL, 103),
(114, 'Sidebar', 'Ред чиф', 94, 'ru', NULL, 103),
(115, 'Sidebar', 'Йонаголд', 96, 'ru', NULL, 103),
(116, 'Sidebar', 'Гренни смит ', 97, 'ru', NULL, 103),
(117, 'Sidebar', 'Гала ', 93, 'ru', NULL, 103),
(118, 'Sidebar', 'Фуджи', 98, 'ru', NULL, 103),
(119, 'Sidebar', 'Железобетонные столбы', 99, 'ru', NULL, NULL),
(121, 'Main', 'Яблоки Золотой делишес', 95, 'ru', NULL, 92),
(122, 'Main', 'Яблоки Ред чиф', 94, 'ru', NULL, 92),
(123, 'Main', 'Яблоки Фуджи', 98, 'ru', NULL, 92),
(124, 'Main', 'Яблоки Гренни смит ', 97, 'ru', NULL, 92),
(125, 'Main', 'Яблоки Йонаголд', 96, 'ru', NULL, 92),
(126, 'Main', 'Яблоки Гала', 93, 'ru', NULL, 92),
(127, 'Main', 'Сок EveryDay', 82, 'ru', NULL, 92),
(128, 'Main', 'Черешня', 91, 'ru', NULL, 92),
(131, 'Main', 'Клубника', 92, 'ru', NULL, 92);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=124 ;

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
(39, '', '<p>Greeny d.o.o. company is a family-run business established in Arandjelovac in 2004. Our core business is apple production and storage. We have been learning, investing, working, we have managed to plant and are currently growing 85,000 apple trees of the following varieties: Golden Delicious, Red Chief, Jonagold, Granny Smith, Gala and Fuji. In 2012, we expanded our fresh fruits range and now we have 3 ha of cherry trees (2,400 trees) in our orchard of the Burlat, Sunburst and Germersdorfer variety, as well as 1 ha of strawberries (40,000 plants) of the Clery and Joly variety.</p>\r\n\r\n<p><br />\r\nIn order to achieve and maintain quality and ensure improvement in the process of apple production and storage, we have built a state-of-the-art cold storage facility for fruit storage and sorting. The capacity of the facility is 2,800 tonnes of fresh fruit which is stored in plastic pallet boxes in 14 ULO chambers.</p>\r\n\r\n<p>Our apples reach our customers only after going through an apple sorting line whose capacity is 4 T/h, which enables us to sort the apples by size. Our existing customers recognise the quality of our produce, and hopefully our many future customers will do so, too, and will place their trust in us.<br />\r\n<br />\r\n<a href="/galerija-slika">Photo gallery&gt;</a></p>\r\n\r\n<h3>Quality guarantee</h3>\r\n\r\n<p>In order to achieve the highest quality possible and maintain the confidence of our customers, we apply the strictest European standards in growing and handling fruit, for which we have been awarded certificates that we renew on a regular basis.</p>\r\n\r\n<p>Greeny GlobalGap Certificate <a href="/img/Certificate-Greeny-Globalgap.pdf">take a look&gt;</a><br />\r\nISO 22000:2005 Certificate <a href="/img/ISO-22000-Greeny.pdf">take a look&gt;</a></p>\r\n\r\n<p>GlobalGap has established a standard which is a key reference for good agricultural practices on the global marketplace, taking into account the requirements of consumers of agricultural products. GlobalGap is present in more than 80 countries on all continents. ISO 22000:2005 is the first international standard for food safety management systems.</p>\r\n', 'en', '', '', 50, 4),
(40, '', '<p>Thank you for taking the time to contact us! If you have not found the information that you needed on our site, please fill in the contact form and send us an e-mail. In accordance with the privacy policy of the Greeny company, your personal information is confidential and will be used only for the purposes of replying to your e-mail or sending material in digital form.</p>\r\n\r\n<p>Ora&scaron;ac bb, Aranđelovac, Srbija<br />\r\nT:+381 34 6709-141<br />\r\nF:+381 34 6709-230<br />\r\ne-mail: greeny@vozd.net<br />\r\nwww.greeny.co.rs</p>\r\n', 'en', '', '', 43, 1),
(41, '', '<p>Arandjelovac is situated at the foot of a wooded mountain Bukulja (696 m.a.s.l.), in its northeast part, at the altitude of around 250 m, in the part where River Kubr&scaron;nica springs. The municipality area is 375.89 km2 and the population is 48,000.</p>\r\n\r\n<p>Ora&scaron;ac bb, Aranđelovac,<br />\r\nSrbija T:+381 34 6709-141<br />\r\nF:+381 34 6709-230<br />\r\ne-mail: greeny@vozd.net<br />\r\nwww.greeny.co.rs</p>\r\n', 'en', '', '', 45, 2),
(42, '', '<p>Healthy and balanced diet is impossible without fruit because of the large amounts of vitamins and other nutrients it contains. Nature has given Serbia the type of climate which is highly suitable for various fruits, and clicking the links above will give you some basic information on the fruit varieties we grow.</p>\r\n\r\n<h3>Quality guarantee</h3>\r\n\r\n<p>In order to achieve the highest quality possible and maintain the confidence of our customers, we apply the strictest European standards in growing and handling fruit, for which we have been awarded certificates that we renew on a regular basis.</p>\r\n\r\n<ul>\r\n	<li><strong>Greeny GlobalGap Certificate </strong> <a href="/img/Certificate-Greeny-Globalgap.pdf">Take a look &gt;</a></li>\r\n	<li><strong>ISO 22000:2005 Certificate </strong> <a href="/img/ISO-22000-Greeny.pdf">Take a look &gt;</a></li>\r\n</ul>\r\n\r\n<p>GlobalGap has established a standard which is a key reference for good agricultural practices on the global marketplace, taking into account the requirements of consumers of agricultural products. GlobalGap is present in more than 80 countries on all continents. ISO 22000:2005 is the first international standard for food safety management systems.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'en', '', '', 56, 6),
(43, '', '<p>At present, we grow a total of 85,000 apple trees of the following varieties: Golden Delicious, Red Chief, Jonagold, Granny Smith, Gala and Fuji.</p>\r\n\r\n<p>The quality of our apples is the result of a wide range of measures which ensure the safety and quality of the produce:</p>\r\n\r\n<ul>\r\n	<li>quality assurance system</li>\r\n	<li>strict application of production and transport technologies</li>\r\n	<li>continuous improvement through research and innovation</li>\r\n	<li>scientific procedures for plant protection</li>\r\n	<li>professional approach to plant protection</li>\r\n	<li>environmental protection</li>\r\n</ul>\r\n', 'en', 'galerija-slika/jabuka', 'Photo Gallery', 57, 1),
(44, 'Clery', '<p>Of Italian origin, produces moderate yields (600 g/plant), it is an early season variety. Berries are medium to large in size (around 16 g), of regular elongated conical shape during the whole harvest period. The skin is bright, light red, moderately resistant during harvesting and transport.&nbsp; Its meat is of high quality and has an intense aroma.</p>\r\n', 'en', '', '', 71, 1),
(45, 'Joly', '<p>It is a mid-season variety of Italian origin, produces high yields (800 g/plant). The berries are large, light red, of truncated conical shape.</p>\r\n', 'en', 'galerija-slika/jagoda', 'Photo Gallery', 72, 2),
(46, 'Burlat', '<p>This is a French variety, high-yielding, ripens at the end of May - at the end of the second week of sweet cherry ripening time. It blossoms mid-early and exhibits good transportation resilience. The fruit is firm, dark red, medium to large in size, very sweet and juicy, with firm flesh. It is medium-sized (6-8 g), dark red with firm skin.</p>\r\n', 'en', '', '', 68, 1),
(47, 'Germersdorfer', '<p>Originating in Germany, it ripens at the end of June, the fruit is dark red, firm, crunchy and susceptible to splitting. The fruit is heart-shaped, large to very large. The skin is dark purple. The flesh is firm, juicy, sour-sweet and of very appealing taste.</p>\r\n', 'en', '', '', 69, 2),
(48, 'Sunburst', '<p>One of the best varieties, originating in the United Kingdom, it ripens in the second half of June, the fruit is extremely large (12-13 g), spherical, red, shiny and resistant to rain induced splitting. The flesh is firm, sweet, crunchy and of high quality.</p>\r\n', 'en', 'galerija-slika/tresnja', 'Photo Gallery', 70, 3),
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
(62, 'Nutritional values', '<p><img alt="" src="/img/articles/everyday-table.jpg" /></p>\r\n', 'en', '', '', 76, 2),
(94, 'Производство', '<h3>НАЧАЛО</h3>\r\n\r\n<p>Уже на второй год после посадки саженцев мы убираем урожай. Поэтому мы уделяем большое внимание подбору посадочного материала, который должен быть высшего качества, без изъянов, сертифицированный и стойкий к болезням.</p>\r\n\r\n<h3>ФРУКТОВЫЙ САД</h3>\r\n\r\n<p>Мы от наших яблонь ожидаем высокие результаты и помогаем им в этом, используя современные агротехнические мероприятия, подразумевающие мелиорацию и подкормку, а также использование противоградовых сеток.</p>\r\n\r\n<h3>УБОРКА УРОЖАЯ</h3>\r\n\r\n<p>При уборке урожая важно аккуратное обращение с яблоней, наши сборщики нежно убирают плоды с дерева, кладут их в корзины, при этом всегда пользуясь перчатками, чтобы не повредить плоды. С таким же вниманием транспортируем яблоки из фруктового сада, потому что при неаккуратной транспортировке яблоки могут побиться и тем самым ускорится процесс порчи.</p>\r\n', 'ru', 'galerija-slika/proizvodnja', 'Перейти к галерее', 84, 1),
(95, 'Складирование', '<p>Помимо высоких стандартов производства, желаем обеспечить и самое современное складирование, для этого мы построили современный холодильный склад, находящийся в самом фруктовом саде. В нем находится 14 камер  с регулируемой газовой средой ULO (Ultra Low Oxygen) вместимостью 2800 тонн, в которых хранятся яблоки в строго контролируемых условиях и таким образом обеспечивается поддержание их качества и свежести.</p>\r\n', 'ru', 'galerija-slika/skladistenje', 'Перейти к галерее', 86, 2),
(96, 'Сортировка', '<p>После заказа яблок нашими покупателями, яблоки поступают на калибровочную линию, где они моются и сортируются по размерам. Наше сортировочно-калибровочное оборудование базируется на передовых научных достижениях и позволяет нам поставлять яблоки, которые по размерам удовлетворяют   требования покупателей. После этого яблоки вручную упаковываются в  соответствующую тару, при упаковке ещё раз проверяется их качество. </p>\r\n', 'ru', 'galerija-slika/sortiranje', 'Перейти к галерее', 85, 3),
(97, 'Упаковка', '<p>Наши покупатели, помимо тары высшего качества, желают и высокий дизайн тары. Используя современный, привлекательный дизайн мы можем удовлетворить все запросы покупателей. В зависимости от удаленности рынка, его характеристик и навыков крайних потребителей, своим покупателям предлагаем следующую тару: </p>\r\n\r\n<ul>\r\n	<li>Картонный ящик 400x600x100 и 180 мм</li>\r\n	<li>Деревянный ящик  300x500x180 и 260 мм</li>\r\n</ul>\r\n', 'ru', 'galerija-slika/pakovanje', 'Перейти к галерее', 88, 4),
(98, 'Распределение ', '<p>В течение своей деятельности мы приобрели репутацию компании, выращивающей высшие сорта фруктов, которая создаёт и поддерживает долгосрочное сотрудничество со своими деловыми партнёрами. Нашу продукцию можете купить в нашем магазине в Аранджеловце, но и в многочисленных маркетах в стране. Спросите у своего продавца, продаёт ли он фрукты Greeny  или сок EveryDay. </p>\r\n', 'ru', 'galerija-slika', 'Перейти к галерее', 87, 5),
(99, 'Гарантия качества', '<p>Чтобы достичь высшего качества и оправдать доверие свох покупателей, мы соблюдаем строжайшие европейские стандарты при выращивании и обращении с фруктами, что можем подтвердить наличием сертификатов, которых постоянно обновляются.</p>\r\n\r\n<ul>\r\n	<li><strong>Сертификат Greeny Globalgap </strong> <a href="/img/Certificate-Greeny-Globalgap.pdf">посмотрите &gt;</a></li>\r\n	<li><strong>Сертификат ISO 22000:2005</strong> <a href="/img/ISO-22000-Greeny.pdf">посмотрите &gt;</a></li>\r\n</ul>\r\n\r\n<p>Globalgap установил стандарт, являющийся ключевой референцией для хорошей сельскохозяйственной практики на глобальном рынке, прислушиваясь к требованиям потребителей в сельскохозяйственном производстве. Globalgap присутствует в свыше 80 стран мира на всех континентах. \r\nISO 22000:2005 - первый международный стандарт для управления безопасностью продуктов питания.\r\n</p>\r\n', 'ru', '', '', 81, 1);
INSERT INTO `post` (`id`, `title`, `content`, `lang`, `link`, `link_text`, `category_id`, `number`) VALUES
(100, '', '<p>Компания ООО &laquo;Гренни&raquo; с местонахождением в г.Аранджеловце является семейной компанией, основанной в 2004 году. Нашей основной деятельностью является выращивание и хранение яблок. Мы на протяжении долгого времени изучали, вкладывали, работали и смогли на сегодняшний день посадить на 30 га и выращивать в общей сумме 85000 яблонь следующих сортов: Золотой делишес, Ред чиф, Йонаголд, Гренни смит, Гала и Фуджи. В 2012 году мы расширили ассортимент свежих фруктов и теперь в нашем фруктовом саду посажено ещё 3 га черешни (2400 деревьев) сортов Бурлат, Санберст и Гермерсдорфская, а также и 1 га клубники (40 000 кустов) сортов Клери и Джоли.</p>\r\n\r\n<p><br />\r\nВ целях достижения и обеспечения качества, а также стремления усовершенствовать процесс выращивания и хранения яблок мы построили современный холодильный склад для хранения и сортировки фруктов вместимостью 2.800 тонн свежих фруктов, которые хранятся на пластмассовых поддонах в 14 камерах с регулируемой газовой средой (ULO).<br />\r\n&nbsp;</p>\r\n\r\n<p>Наши яблоки поставляются для продажи только после того, как пройдут линию сортировки яблок производительностью 4 т/ч., которая позволяет производить сортировку яблок по размерам. Наши старые потребители, а, надеемся, и многочисленные новые, узнают наше качество и подарят нам своё доверие.<br />\r\n<br />\r\n<a href="/galerija-slika">Перейти к галерее&gt;</a></p>\r\n\r\n<h3>Гаранция качества</h3>\r\n\r\n<p>Для обеспечения высшего качества и оправдания доверия наших покупателей мы соблюдаем самые строгие европейские стандарты по выращиванию фруктов и обращению с ними, можем подтвердить сертификатами, которые постоянно обновляем.</p>\r\n\r\n<p>Сертификат Greeny Globalgap <a href="/img/Certificate-Greeny-Globalgap.pdf"> посмотрите&gt;</a><br />\r\nСертификат ISO 22000:2005 <a href="/img/ISO-22000-Greeny.pdf">посмотрите &gt;</a></p>\r\n\r\n<p>Globalgap установил стандарт, являющийся ключевой референцией для хорошей сельскохозяйственной практики на глобальном рынке, прислушиваясь к требованиям потребителей в сельскохозяйственном производстве. Globalgap присутствует в свыше 80 стран мира на всех континентах. ISO 22000:2005 является первым международным стандартом для управления безопасностью продуктов питания.</p>\r\n', 'ru', '', '', 83, 4),
(101, '', '<p>Благодарим Вас за то, что вы нашли время для связи с нами! Если Вы на нашем сайте не нашли интересующую Вас информацию, то просим заполнить анкету для контакта и отправить нам электронное сообщение. \r\nВ соответствии с политикой защиты персональных данных, проводимой фирмой, Ваши персональные данные для нас  конфиденциальны и будут использоваться только для ответа по электронной почте или для отправления материала в цифровой форме.\r\n</p>\r\n\r\n<p>Орашац б/н, Аранджеловац, Республика Сербия <br />\r\nT:+381 34 6709-141<br />\r\nF:+381 34 6709-230<br />\r\ne-mail: greeny@vozd.net<br />\r\nwww.greeny.co.rs</p>\r\n', 'ru', '', '', 77, 1),
(102, '', '<p>Аранджеловац находится с северо-восточной стороны подножья лесистой горы Букуля (696 м над уровнем моря.), на высоте  250 метров над уровнем моря, у истоков реки Кубршница. Община (административный округ) простилается на  375,89 км2 и насчитывает 48.000 жителей.</p>\r\n\r\n<p>Орашац б/н, Аранджеловац, Республика Сербия <br />\r\nSrbija T:+381 34 6709-141<br />\r\nF:+381 34 6709-230<br />\r\ne-mail: greeny@vozd.net<br />\r\nwww.greeny.co.rs</p>\r\n', 'ru', '', '', 78, 2),
(103, '', '<p>Здоровое и разнообразное питание немыслимо без фруктов, из-за большого количества содержащихся в них витаминов и других питательных веществ. Природа Сербии подарила климат, который исключительно  благоприятен для выращивания различных видов фруктов, а кликом на линки наверху вы получите все справки о сортах, которые мы выращиваем.</p>\r\n\r\n<h3>Гаранция качества</h3>\r\n\r\n<p>Чтобы достичь высшего качества и оправдать доверие свох покупателей, мы соблюдаем строжайшие европейские стандарты при выращивании и обращении с фруктами, что можем подтвердить сертификатами, которые постоянно обновляем.</p>\r\n\r\n<p>Сертификат Greeny Globalgap  <a href="/img/Certificate-Greeny-Globalgap.pdf">посмотрите&gt;</a><br />\r\nСертификат ISO 22000:2005 <a href="/img/ISO-22000-Greeny.pdf">посмотрите &gt;</a></p>\r\n\r\n<p>Globalgap установил стандарт, являющийся ключевой референцией для хорошей сельскохозяйственной практики на глобальном рынке, прислушиваясь к требованиям потребителей в сельскохозяйственном производстве. Globalgap присутствует в свыше 80 стран мира на всех континентах. \r\nISO 22000:2005 является первым международным стандартом для управления безопасностью продуктов питания.\r\n</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'ru', '', '', 89, 6),
(104, '', '<p>В настоящее время нами выращивается 85.000 яблонь следующих сортов: Голден делишес, Ред чиф, Йонаголд, Гренни смит, Гала и Фуджи.</p>\r\n\r\n<p>Качество достигнуто в результате проведения широкого спектра мероприятий, обеспечивающих надёжность и качество продукции:</p>\r\n\r\n<ul>\r\n	<li>система контроля качества</li>\r\n	<li>строгие производственные и транспортные технологии</li>\r\n	<li>постоянное усовершенствование, благодаря исследованиям и инновациям.</li>\r\n	<li>научные процедуры для защиты растений </li>\r\n	<li>профессиональное отношение к защите растений </li>\r\n	<li>охрана окружающей среды</li>\r\n</ul>\r\n', 'ru', 'galerija-slika/jabuka', 'Перейти к галерее', 90, 1),
(105, 'Клери', '<p>По происхождению из Италии, средней урожайности (600 грамм по кусту), ранний сорт. Плод  средний до крупного (примерно 16 грамм), удлинённо-конической правильной формы в течение всего сезона. Кожица плода блестящего светло-красного цвета, частично устойчивая при уборке урожая и транспортировке. Мякоть высокого качества, аромат интенсивный. </p>\r\n', 'ru', '', '', 104, 1),
(106, 'Джоли', '<p>Средне-ранний сорт, по происхождению из Италии, высокой урожайности (800 грамм по кусту). Плоды крупные, укороченно-конической формы, светло-красного цвета.</p>\r\n', 'ru', 'galerija-slika/jagoda', 'Перейти к галерее', 105, 2),
(107, 'Бурлат', '<p>Французский сорт черешни, высокой урожайности, созревает в конце мая – в конце второй недели созревания черешни. Средне–раннее цветение, отличается хорошей транспортабельностью. Плод плотный, тёмно-красного цвета, среднего размера до крупного, очень сладкий и сочный, с плотной мякотью. Плоды средне-крупные (6-8 грамм), тёмно-красного цвета с плотной кожицей. </p>\r\n', 'ru', '', '', 101, 1),
(108, 'Гермерсдорфская', '<p>Сорт Гермерсдорфская происходит из Германии, созревает в конце июня, плоды темно-красного цвета, плотные и хрустящие, подвержены к растрескиванию. Плоды крупные до очень крупных, сердцевидной формы. Кожица тёмно-пурпурного цвета. Мякоть плотная, сочная, сладко-кислого и очень приятного вкуса. </p>\r\n', 'ru', '', '', 102, 2),
(109, 'Санберст', '<p>Один из лучших сортов, происхождением из Великобритании, созревает во второй половине июня, плоды очень крупные (12-13 грамм), округлые, красные, блестящие, устойчивые к растрескиванию от дождей. Мякоть плотная, сладкая, хрустящая, высокого вкусового качества.</p>\r\n', 'ru', 'galerija-slika/tresnja', 'Перейти к галерее', 103, 3),
(110, '', '<p>В своей производственной программе  компания Гренни д.о.о. изготовляет предварительно напряжённые бетонные столбы для противоградовой защиты, для виноградников и для заборов. Для изготовления колонн используются сертифицированные материалы: </p>\r\n\r\n<ul>\r\n	<li>две фракции заполнителя (0-4 мм; 4-8 мм) </li>\r\n	<li>чистый портландцемент ЦЕМ I 42.5Р (ПЦ 42.5Р)</li>\r\n	<li>суперпластификаторы</li>\r\n	<li>вода</li>\r\n	<li>стальная проволока для адгезионного предварительного напряжения (3xØ2.25 мм)</li>\r\n</ul>\r\n\r\n<p>Для изготовления столбов используем бетон C40/50 (MБ 50), приготавливаемый в собственном бетонно-смесительном узле (СМУ) по рецептуре, полученной на основании предшествующих испытаний наших материалов. Испытания проведены в Институте по испытанию материалов Сербии – ИМС в Белграде. \r\nЛиния предварительного напряжения укомплектована стальными формами для изготовления столбов поперечного сечения 70х80мм, высокочастотными вибраторами с частотным регулятором, оборудованием для натяжения тросов, оборудованием для извлечения столбов и их резки.\r\n</p>\r\n\r\n<p>В данный момент в нашей производственной программе имеются следующие типы столбов поперечного сечения 70x80мм с натяжением 4-мя тросами каждый столб, каждый торс состоит из три скрученных проволок Ø2.25 мм:</p>\r\n\r\n<ul>\r\n	<li>1. TG1 – PBS-70x80x4700 мм </li>\r\n	<li>2. TG2 – PBS -70x80x4500 мм </li>\r\n	<li>3. TG2 – PBS -70x80x4500 мм </li>\r\n	<li>4. TG4 – PBS -70x80x2500 мм</li>\r\n</ul>\r\n\r\n<p>Согласно требованиям и по договоренности с покупателями мы можем производить и столбы другой длины. Столбы соответствуют требованиям стандарта EN 12839:2001. В процессе подготовки и новая линия, которая повысит производительность, и на которой будут выпускаться столбы поперечного сечения 80 х 120 мм; 90 х 90 мм и 140 х 140 мм.</p>\r\n', 'ru', 'galerija-slika', 'Перейти к галерее', 99, 1),
(111, 'Сок EveryDay', '<p>Есть ли что-либо лучше свежевыжатого сока? Сок EveryDay - 100% натуральный, яблочный сок с мякотью. Пастеризованный, без добавок, консервантов, сахара и воды, без глютена и искусственных красителей. Тщательно выжатый сок из спелых яблок в сезоне, собранных вручную в аранджеловацких садах. Сок пастеризован для поддержания свежего вкуса и всех питательных ингредиентов. 100% натуральный &ndash; идеальный дополнительный напиток в каждом ресторане или кейтеринге для потребителей, имеющих высокие стандарты.</p>\r\n', 'ru', '', '', 106, 1),
(112, 'Новая упаковка BAG-in-BOX', '<p><img alt="" src="/img/articles/everyday-sok-novo-pakovanje.jpg" style="float: left; width: 245px; height: 156px; margin-left: 5px; margin-right: 5px;" />Новая, современная и превосходная упаковка Bag-in-Box не требует охлаждения и хранит свежесть изделия и после открытия. Идеальна для хранения в течение несколько месяцев и до открытия.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'ru', '', '', 107, 2),
(113, 'Розничная упаковка', '<p>В розничной продаже сок можно приобрести в упаковках по 3 и 5 литров.</p>\r\n', 'ru', 'galerija-slika/everyday', 'Перейти к галерее', 108, 3),
(114, 'Гостиничная упаковка', '<p>Для отелей, ресторанов и кафе мы обеспечили упаковки емкостью по 10 литров, и специальный брендированный холодильник.</p>\r\n', 'ru', 'galerija-slika/everyday', 'Перейти к галерее', 109, 4),
(115, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>ПРОИСХОЖДЕНИЕ:</td>\r\n			<td>США</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ХАРАКТЕРИСТИКИ ПЛОДА:</td>\r\n			<td>Плоды крупные до очень крупных, конической формы</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ОКРАСКА:</td>\r\n			<td>Зелёно- жёлтая</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ВКУС:</td>\r\n			<td>Сочный, сладкий и ароматный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>СРОК СОЗРЕВАНИЯ:</td>\r\n			<td>Середина  сентября </td>\r\n		</tr>\r\n		<tr>\r\n			<td>СРОК  ХРАНЕНИЯ:</td>\r\n			<td>От сентября до июня в регулируемой газовой среде (ULO)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Плод средне-крупный до крупного, удлиненно-конический, симметричный. Кожица тонкая, гладкая, зелено-жёлтая до золотисто-жёлтой, часто кожицы оржавлена. Мякоть плода плотная, желтоватая, сочная, кисловатая. Используется как столовый сорт яблок и в незначительной мере для промышленной переработки.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'ru', '', '', 95, 1),
(116, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>ПРОИСХОЖДЕНИЕ:</td>\r\n			<td>США</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ХАРАКТЕРИСТИКИ ПЛОДА:</td>\r\n			<td>Плоды крупные до очень крупных, округло-удлиненной формы</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ОКРАСКА:</td>\r\n			<td>зелёно-жёлтая с размытым оранжево-красным румянцем</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ВКУС:</td>\r\n			<td>Сочный, сладкий и очень ароматный </td>\r\n		</tr>\r\n		<tr>\r\n			<td>СРОК СОЗРЕВАНИЯ:</td>\r\n			<td>Середина  сентября </td>\r\n		</tr>\r\n		<tr>\r\n			<td>СРОК  ХРАНЕНИЯ:</td>\r\n			<td>от сентября до апреля в регулируемой газовой среде (ULO)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Плод средне-крупный до крупного, округло-удлиненный. Мякоть плода  желтоватая, сочная, кисловатая, качественная. Используется как столовый сорт яблок. Медно-сладкий вкус золотого делишеса и приятно кисловатый вкус Йонатана, яблоки этого сорта являются превосходным сладко-кисловатым десертным сортом. Его мякоть очень хрустящая и сочная. Яблоки этого сорта отличны для еды, приготовления фруктовых салатов и горячих блюд!</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'ru', '', '', 96, 2),
(117, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>ПРОИСХОЖДЕНИЕ:</td>\r\n			<td>Австралия</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ХАРАКТЕРИСТИКИ ПЛОДА:</td>\r\n			<td>Плоды крупные до очень крупных </td>\r\n		</tr>\r\n		<tr>\r\n			<td>ОКРАСКА:</td>\r\n			<td>Кожица зелёного цвета с выразительными белыми наростами</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ВКУС:</td>\r\n			<td>Сочный, кисловатый, аромат слабо выраженный </td>\r\n		</tr>\r\n		<tr>\r\n			<td>СРОК СОЗРЕВАНИЯ:</td>\r\n			<td>вторая половина октября </td>\r\n		</tr>\r\n		<tr>\r\n			<td>СРОК  ХРАНЕНИЯ:</td>\r\n			<td>от октября до апреля в регулируемой	 газовой среде (ULO)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Плод крупный, округлой до усеченно-конической формы. Кожица зелёная.  Вкус  плода выражено кисловатый. Это хрустящее яблоко, с плотной мякотью и очень острого вкуса. Всё-таки, его мякоть в процессе хранения становится мягче, а яблоки, сервируемые в чуть охлажденном виде, могут быть весьма освежающими. Этот сорт превосходен для потребления в свежем виде, в кулинарии для приготовления пирогов, а также очень подходит для приготовления фруктовых салатов!</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'ru', '', '', 97, 3),
(118, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>ПРОИСХОЖДЕНИЕ:</td>\r\n			<td>Япония</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ХАРАКТЕРИСТИКИ ПЛОДА:</td>\r\n			<td>Плоды средне-крупные</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ОКРАСКА:</td>\r\n			<td>жёлто-зелёная с розовым румянцем</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ВКУС:</td>\r\n			<td>Сочный, сладкий и  ароматный </td>\r\n		</tr>\r\n		<tr>\r\n			<td>СРОК СОЗРЕВАНИЯ:</td>\r\n			<td>Вторая половина октября</td>\r\n		</tr>\r\n		<tr>\r\n			<td>СРОК ХРАНЕНИЯ:</td>\r\n			<td>От октября до мая в регулируемой газовой среде (ULO)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Японский сорт яблок, всё более распространённый и у европейских потребителей. Главной характеристикой плода является округлая форма, сравнительно плотная хрустящая мякоть, очень сладкий вкус и отличный запах. Плоды долго хранятся и сохраняют сочность. Плод красного цвета, средне-крупный. Уборка урожая во второй половине октября.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'ru', '', '', 98, 4),
(119, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>ПРОИСХОЖДЕНИЕ:</td>\r\n			<td>США </td>\r\n		</tr>\r\n		<tr>\r\n			<td>ХАРАКТЕРИСТИКИ ПЛОДА:</td>\r\n			<td>Плоды крупные до очень крупных</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ОКРАСКА:</td>\r\n			<td>соломенно-жёлтая с красным до темно-красного румянца при полном созревании</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ВКУС:</td>\r\n			<td>Сочный, сладкий и ароматный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>СРОК СОЗРЕВАНИЯ:</td>\r\n			<td>Первая половина сентября</td>\r\n		</tr>\r\n		<tr>\r\n			<td>СРОК ХРАНЕНИЯ:</td>\r\n			<td>От сентября до апреля в  регулируемой газовой среде (ULO)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Характеристикой плода сорта Ред чиф является усеченно-коническая форма, равномерного красного цвета. Мякоть зеленовато-белая, хрустащая и очень приятного вкуса. Уборка производится в первой половине сентября.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'ru', '', '', 94, 5),
(120, '', '<table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">\r\n	<tbody>\r\n		<tr>\r\n			<td>ПРОИСХОЖДЕНИЕ:</td>\r\n			<td>Новая Зенляндия </td>\r\n		</tr>\r\n		<tr>\r\n			<td>ХАРАКТЕРИСТИКИ ПЛОДА:</td>\r\n			<td>Плоды средне-крупные</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ОКРАСКА:</td>\r\n			<td>кожица светло-зелёного цвета, с румянцем от светло- до ярко-красного цвета</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ВКУС:</td>\r\n			<td>Сладкий и ароматный </td>\r\n		</tr>\r\n		<tr>\r\n			<td>СРОК СОЗРЕВАНИЯ:</td>\r\n			<td>середина августа</td>\r\n		</tr>\r\n		<tr>\r\n			<td>СРОК ХРАНЕНИЯ:</td>\r\n			<td>От августа до февраля в  регулируемой газовой среде (ULO)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Яблоки Гала – это очень привлекательный сорт, сорт Гала маст известен по разлитому, розоватому цвету, в то время как Гала брукфилд известен по красному полосатому румянцу. Это один из самых популярных летних сортов, пользующихся большим спросом. Плод с желто-кремовой мякотью, сладкой и сочной. Уборка производителя в середине августа.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'ru', '', '', 93, 6),
(121, 'Voćnjak', '<p>Наш &nbsp;фруктовый сад находится в деревне Копляри, недалеко от города Аранджеловац и в 50-и км на юго-запад от Белграда. Нашей основной деятельностью являются выращивание и хранение яблок.</p>\r\n', 'ru', '', '', 42, 1),
(122, 'Jabuke Početna', '<p>В данный момент нами выращивается всего 85.000 фруктовых деревьев следующих сортов: Голден делишес, Ред чиф, Йонаголд, Гренни смит, Гала и Фуджи.</p>\r\n', 'ru', '', '', 42, 2),
(123, 'Таблица калорийности', '<p><img alt="" src="/img/articles/everyday-table.jpg" /></p>\r\n', 'ru', '', '', 109, 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `promo`
--

INSERT INTO `promo` (`id`, `title`, `content`, `link`, `image1`, `image2`, `lang`) VALUES
(1, '', '<p>Greeny EveryDay je 100% prirodan mutni voćni sok od jabuka. Pasterizovan, bez dodatih aditiva, konzervanasa, šećera i vode,bez glutena i veštačke boje. Pažljivo ceđen od odabranih jabuka u sezoni, rukom branih, iz aranđelovačkih voćnjaka. Pasterizovan radi zadržavanja svežeg ukusa i svih hranljivih sastojaka.</p>\r\n<a href="/everyday-sok" class="article-link">Detaljnije ></a>', 'everyday-sok', 'greeny-mutni-sok-od-jabuka.png', 'greeny-jabuka-sto-posto.png', 'sr'),
(2, '', '<p>Greeny EveryDay is 100% natural cloudy apple juice. It is pasteurized and gluten-free, there are no additives, preservatives, sugar, water or artificial colouring. It is made of carefully selected, hand-picked apples from our orchards in Arandjelovac, Serbia. It is pasteurized in order to keep the fresh taste and all the nutrients.</p>\r\n<a href="/everyday-sok" class="article-link">Read more ></a>', 'everyday-sok', 'greeny-mutni-sok-od-jabuka.png', 'greeny-jabuka-sto-posto.png', 'en'),
(4, '', 'Сок «EveryDay» - 100% натуральный яблочный сок с мякотью. Пастеризованный, без добавок, консервантов, сахара и воды, без глютена и искусственных красителей. Аккуратно выжатый сок из сортированных яблок в сезоне, собираемых вручную в аранджеловацких фруктовых садов. Пастеризован для поддержания свежего вкуса и всех питательных веществ. </p>\r\n<a href="/everyday-sok" class="article-link">Подробнее ></a>', 'everyday-sok', 'greeny-mutni-sok-od-jabuka.png', 'greeny-jabuka-sto-posto.png', 'ru');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

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
(12, 6, 'jabuka', 'Apple', '<hgroup>\r\n<h1>Apples</h1>\r\n<h2>from the orchards of Arandjelovac</h2>\r\n</hgroup>\r\n<p>We store our produce under controlled conditions in terms of temperature and atmosphere, in order to maintain quality and freshness all year round.</p>\r\n', 'greeny-jabuka-slide.png', 'en', '005c34'),
(13, 1, 'kvalitet', 'Гарантия качества', '<hgroup>\r\n<h1>Яблоки</h1>\r\n<h2>из аранджеловацких садов</h2>\r\n</hgroup>\r\n<p>Знак «Гренни» - знак, многообещающий нашим потребителям. Это гарантия того, что наша продукция не только удовлетворяет, но и гораздо превышает самые строгие международные стандарты качества.</p>\r\n', 'greeny-jabuka-crvena-slide.png', 'ru', '005c34'),
(14, 2, 'everyday-sok', 'Сок «EveryDay”', '<img src="/img/slider/greeny-everyday-sok-logo.png"/>\r\n<hgroup>\r\n<h2>100%  натуральный сок</h2>\r\n</hgroup>\r\n\r\n', 'greeny-everyday-sok-slide.png', 'ru', '8dc43f'),
(15, 3, 'sveze-voce', 'Свежие фрукты ', '<hgroup>\r\n<h1>Свежие фрукты</h1>\r\n<h2>из аранджеловацких садов</h2>\r\n</hgroup>\r\n<p>Четко  следим за температурой и влажностью воздуха в грузовых фурах и контейнерах для отгрузки, чтобы поддержать качество и свежесть в течение поставки.</p>\r\n', 'greeny-sveze-voce-slide.png', 'ru', '8dc43f'),
(16, 4, 'tresnja', 'Черешня', '<hgroup>\r\n<h1>Черешня</h1>\r\n<h2>из аранджеловацких садов</h2>\r\n</hgroup>\r\n<p>Мы расширили ассортимент свежих фруктов в предложении и сейчас в нашем фруктовом саду имеется ещё 3 га черешни (2.400 деревьев) сортов Бурлат, Санберст и Гермерсдорфская. </p>\r\n', 'greeny-tresnja-slide.png', 'ru', '871b43'),
(17, 5, 'jagoda', 'Клубника', '<hgroup>\r\n<h1>Клубника</h1>\r\n<h2>из аранджеловацких садов</h2>\r\n</hgroup>\r\n<p>Мы расширили ассортимент свежих фруктов, и сейчас в нашем фруктовом саду имеется ещё и 1 га под клубникой (40.000 кустов)  сортов  Клери и Джоли.</p>\r\n', 'greeny-jagoda-slide.png', 'ru', 'a3142c'),
(18, 6, 'jabuka', 'Яблоки', '<hgroup>\r\n<h1>Яблоки</h1>\r\n<h2>из аранджеловацких садов</h2>\r\n</hgroup>\r\n<p>Храним свою продукцию в условиях контролируемой температуры и в атмосферных условиях для обеспечения качества и свежести в течение круглого года.</p>\r\n', 'greeny-jabuka-slide.png', 'ru', '005c34');

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

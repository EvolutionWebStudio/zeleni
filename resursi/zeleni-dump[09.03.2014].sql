-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2014 at 07:43 PM
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
  `folder` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category_category1_idx` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `alias`, `order`, `lang`, `parent_id`, `type`, `image`) VALUES
(9, 'Kontaktirajte nas', 'kontaktirajte-nas', 1, 'sr', NULL, 'PAGE', 'clanak-placeholder.jpg'),
(10, 'Lokacija', 'lokacija', 2, 'sr', NULL, 'PAGE', 'clanak-placeholder.jpg'),
(11, 'Galerija slika', 'galerija-slika', 3, 'sr', NULL, 'PAGE', 'clanak-placeholder.jpg'),
(12, 'Proizvodi', '/', 1, 'sr', NULL, 'EXTERNAL', 'clanak-placeholder.jpg'),
(13, 'Kvalitet', 'kvalitet', 2, 'sr', NULL, 'SELF', 'clanak-placeholder.jpg'),
(14, 'Everyday sok', 'everyday-sok', 3, 'sr', NULL, 'EXTERNAL', 'clanak-placeholder.jpg'),
(15, 'Kompanija Greeny', 'o-nama', 4, 'sr', NULL, 'EXTERNAL', 'clanak-placeholder.jpg'),
(16, 'Proizvodnja', 'proizvodnja', 1, 'sr', 13, 'SELF', 'clanak-placeholder.jpg'),
(17, 'Sortiranje', 'sortiranje', 2, 'sr', 13, 'SELF', 'clanak-placeholder.jpg'),
(18, 'Skladištenje', 'skladistenje', 3, 'sr', 13, 'SELF', 'clanak-placeholder.jpg'),
(19, 'Distribucija', 'distribucija', 4, 'sr', 13, 'SELF', 'clanak-placeholder.jpg'),
(20, 'Pakovanje', 'pakovanje', 5, 'sr', 13, 'SELF', 'clanak-placeholder.jpg'),
(21, 'Sveže voće', 'sveze-voce', 2, 'sr', 12, 'EXTERNAL', 'clanak-placeholder.jpg'),
(22, 'Jabuka', 'jabuka', 1, 'sr', 21, 'EXTERNAL', 'clanak-placeholder.jpg'),
(23, 'Trešnja', 'tresnja', 2, 'sr', 21, 'EXTERNAL', 'clanak-placeholder.jpg'),
(24, 'Jagoda', 'jagoda', 3, 'sr', 21, 'EXTERNAL', 'clanak-placeholder.jpg'),
(25, 'Gala', 'gala', 5, 'sr', 22, 'EXTERNAL', 'clanak-placeholder.jpg'),
(26, 'Red Čif', 'redcif', 2, 'sr', 22, 'EXTERNAL', 'clanak-placeholder.jpg'),
(27, 'Zlatni Delišes', 'zlatnidelises', 1, 'sr', 22, 'EXTERNAL', 'clanak-placeholder.jpg'),
(28, 'Jonagold', 'jonagold', 3, 'sr', 22, 'EXTERNAL', 'clanak-placeholder.jpg'),
(29, 'Greni Smit', 'grenismit', 4, 'sr', 22, 'EXTERNAL', 'clanak-placeholder.jpg'),
(30, 'Fudži', 'fudzi', 6, 'sr', 22, 'EXTERNAL', 'clanak-placeholder.jpg'),
(31, 'Betonski stubovi za protivgradnu zaštitu', 'betonski-stubovi', 7, 'sr', NULL, 'SELF', 'clanak-placeholder.jpg'),
(32, 'Voćnjak', 'vocnjak', 8, 'sr', NULL, 'SELF', 'clanak-placeholder.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `album_id` int(11) NOT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_image_album1_idx` (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

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
(32, 'Sidebar', 'Voćnjak', 32, 'sr', 7, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `lang`, `link`, `link_text`, `category_id`, `number`) VALUES
(1, 'Proizvodnja', '<h3>POČETAK</h3>\r\n                    <p>Kada posadimo sadnicu, već u drugoj godini beremo plodove s nje. Zbog toga posvećujemo veliku\r\n                        pažnju odabiru sadnog materijala, koji mora biti vrhunskog kvaliteta, zdrav, sertifikovan i otporan na bolesti.</p>\r\n\r\n                    <h3>VOĆNJAK</h3>\r\n                    <p>Mi od naše jabuke očekujemo visoke rezultate i u tome joj pomažemo tako što koristimo savremene\r\n                        agrotehničke mere koje obuhvataju automatizovano navodnjavanje i prihranu, kao i korišćenje protivgradnih mreža.</p>\r\n\r\n                    <h3>BERBA</h3>\r\n                    <p>Tokom berbe veoma je važno da se jabukom rukuje pažljivo, naši berači nežno beru i stavljaju jabuke\r\n                        u korpe, pri tom uvek nose rukavice da ih ne bi oštetili. S istom pažnjom ih transportujemo iz voćnjaka,\r\n                        pošto zbog nepažljive vožnje jabuke mogu pretrpeti udarce i time postati podložne brzom propadanju.</p>', 'sr', 'galerija/proizvodnja', 'Pogledajte galeriju slika', 16, 1),
(2, 'Skladištenje', '<p>Pored visokih standarda proizvodnje, želimo da obezbedimo i najsavremenije skladištenje,\r\n                        pa smo u te svrhe izgradili modernu hladnjaču koja se nalazi u samom voćnjaku. U njoj se nalazi 14\r\n                        ULO komora kapaciteta 2800 tona, u kojima čuvamo jabuku u strogo kontrolisanim uslovima i na taj način\r\n                        obezbeđujemo očuvanje njenog kvaliteta i svežine.</p>', 'sr', 'galerija/kvalitet', 'Pogledajte galeriju slika', 18, 2),
(3, 'Sortiranje', '<p>Kada naši kupci poruče jabuke, mi ih stavljamo u liniju za kalibrisanje u kojoj se peru i\r\n                        razvrstavaju po veličini. Naša oprema za sortiranje i kalibrisanje koristi najsavremenija naučna\r\n                        dostignuća i time nam omogućava da svojim kupcima isporučimo jabuke koje zadovoljavaju sve njihove\r\n                        zahteve u pogledu veličine. Nakon toga, voće se ručno pakuje u odgovarajuću ambalažu i pri tom se još\r\n                        jedanput kontroliše njegov kvalitet.</p>', 'sr', 'galerija/kvalitet', 'Pogledajte galeriju slika', 17, 3),
(4, 'Pakovanje', '<p>Naši kupci pored visokog kvaliteta ambalaže žele i vrhunski dizajn. Korišćenjem savremenog i\r\n                        atraktivnog dizajna u mogućnosti smo da odgovorimo na sve njihove zahteve. U zavisnosti od udaljenosti\r\n                        tržišta, njegovih karakteristika i navika krajnjih potrošača, svojim kupcima nudimo sledeću ambalažu:</p>\r\n                    <ul>\r\n                        <li>Kartonsku gajbicu 400x600x100 i 180 mm</li>\r\n                        <li>Drvenu gajbicu 300x500x180 i 260 mm</li>\r\n                    </ul>', 'sr', 'galerija/kvalitet', 'Pogledajte galeriju slika', 20, 4),
(5, 'Distribucija', '<p>Tokom svog poslovanja stekli smo ugled kompanije koja uzgaja vrhunsko voće, ali i koja stvara i\r\n                        održava dugoročnu saradnju sa svojim poslovnim partnerima. Naše proizvode možete kupiti u našoj\r\n                        prodavnici u Aranđelovcu, kao i u brojnim marketima širom zemlje. Raspitajte se kod svog prodavca\r\n                        da li prodaje Greeny voće i EveryDay sok.</p>', 'sr', 'galerija/kvalitet', 'Pogledajte galeriju slika', 19, 5),
(6, 'Garancija kvaliteta', '<p>Da bismo postigli vrhunski kvalitet i opravdali poverenje svojih kupaca, poštujemo najstrože\r\n                        evropske standarde u gajenju i rukovanju voćem, što možemo da potvrdimo i dobijenim sertifikatima\r\n                        koje redovno obnavljamo.</p>\r\n                    <ul>\r\n                        <li><strong>Sertifikat Greeny Globalgap</strong> <a href="#">pogledajte &gt;</a></li>\r\n                        <li><strong>Sertifikat ISO 22000:2005</strong> <a href="#">pogledajte &gt;</a></li>\r\n                    </ul>\r\n                    <p>GlobalGap je ustanovio standard koji je ključna referenca za dobru poljoprivrednu praksu na\r\n                        globalnom tržištu, prateći zahteve potrošača u poljoprivrednoj proizvodnji. GlobalGap je\r\n                        prisutan u više od 80 zemalja sveta na svim kontinentima. ISO 22000:2005 je prvi međunarodni\r\n                        standard za upravljanje bezbednošću hrane.</p>', 'sr', '', '', 13, 1),
(7, '', '<p>Preduzeće Greeny d.o.o. sa sedištem Aranđelovcu je porodična kompanija osnovana 2004. godine. Naša osnovna delatnost je gajenje i čuvanje jabuka. Učili smo, ulagali, radili, uspeli da zasadimo i trenutno na 30 ha gajimo ukupno 85.000 stabala jabuke sledećih sorti: zlatni delišes, red čif, jonagold, greni smit, gala i fudži. Godine 2012. proširili smo asortiman svežeg voća u ponudi i sada u našem voćnjaku imamo još i 3 ha trešnje (2.400 stabala) sorti burlat, sanberst i germedovska, kao i 1 ha jagode (40.000 bokora) sa sortama kleri i džoli.</p>\r\n<p>U cilju postizanja i održavanja kvaliteta i nastojanja da usavršimo proces gajenja i čuvanja jabuka izgradili smo savremenu hladnjaču za čuvanje i sortiranje voća.  Kapacitet hladnjače je 2.800 tona svežeg voća koje se čuva u plastičnim boks paletama u 14 ULO komora.</p>\r\n<p>Naša jabuka stiže do kupaca tek pošto prođe liniju za sortiranje jabuka, kapaciteta 4 T/h, koja nam pruža mogućnost sortiranja jabuka po veličini. Naši dosadašnji potrošači, a nadamo se i brojni budući, prepoznaće naš kvalitet i pokloniti nam poverenje.</p>\r\n<h3>Garancija kvaliteta</h3>\r\n<p>Da bismo postigli vrhunski kvalitet i opravdali poverenje svojih kupaca, poštujemo najstrože evropske standarde u gajenju i rukovanju voćem, što možemo da potvrdimo i dobijenim sertifikatima koje redovno obnavljamo.</p> Sertifikat Greeny Globalgap pogledajte> Sertifikat ISO 22000:2005  pogledajte > \r\n<p>GlobalGap  je ustanovio standard koji je ključna referenca za dobru poljoprivrednu praksu na globalnom tržištu, prateći zahteve potrošača u poljoprivrednoj proizvodnji. GlobalGap je prisutan u više od 80 zemalja sveta na svim kontinentima. ISO 22000:2005 je prvi međunarodni standard za upravljanje bezbednošću hrane.</p>\r\n', 'sr', '', '', 15, 4),
(8, '', '<p>Hvala vam što ste odvojili vreme da kontaktirate s nama! Ako na našem sajtu niste našli informacije koje su vam potrebne, molimo vas da popunite kontakt formu i pošaljite e-poruku.  U skladu sa politikom privatnosti kompanije Greeny, vaši lični podaci će se čuvati u tajnosti i koristiti samo za odgovor e-poštom ili radi slanja materijala u digitalnom obliku.<p>\r\nOrašac bb, Aranđelovac, Srbija<br />\r\nT:+381 34 6709-141<br />\r\nF:+381 34 6709-230<br /> \r\ne-mail: greeny@vozd.net<br />\r\nwww.greeny.co.rs<br />\r\n', 'sr', '', '', 9, 1),
(9, '', '<p>Aranđelovac leži u severoistočnom podnožju šumovite planine Bukulje (696 m.n.v.), na nadmorskoj visini oko 250 m i to izvorišnom delu reke Kubršnice. Opština se prostire na 375,89 km2 i ima 48.000 stanovnika.</p>\r\nOrašac bb, Aranđelovac,<br />\r\nSrbija T:+381 34 6709-141<br />\r\nF:+381 34 6709-230<br />\r\ne-mail: greeny@vozd.net<br />\r\nwww.greeny.co.rs<br />\r\n', 'sr', '', '', 10, 2);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `number`, `link`, `title`, `content`, `image`, `lang`, `color`) VALUES
(1, 1, 'kvalitet', 'Garancija kvaliteta', '<hgroup>\r\n<h1>Jabuka</h1>\r\n<h2>iz aranđelovačkih voćnjaka</h2>\r\n</hgroup>\r\n<p>Greeny oznaka je obećanje našim potrošačima. To je garancija da naši proizvodi ne samo da zadovoljavaju nego daleko prevazilaze najviše međunarodne standarde kvaliteta.</p>\r\n', 'clanak-placeholder.jpg', 'sr', '00ff00');

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
('m140307_155859_add_order_in_menu', 1394208004);

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

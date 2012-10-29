# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.25)
# Database: hav_test
# Generation Time: 2012-10-29 21:16:02 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table cities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cities`;

CREATE TABLE `cities` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `city_short` varchar(5) DEFAULT NULL,
  `lat` float DEFAULT NULL,
  `lng` float DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;

INSERT INTO `cities` (`id`, `city_short`, `lat`, `lng`, `city`)
VALUES
	(1,'[AVL]',35.43,82.55,'Asheville'),
	(2,'[HAT]',35.27,75.55,'Cape Hattera'),
	(3,'[CLT]',35.22,80.93,'Charlotte'),
	(4,'[NKT]',34.9,76.88,'Cherry Point'),
	(5,'[2DP]',36.13,76.5,'Dare Co Gr'),
	(6,'[44W]',35.25,75.5,'Diamond Sho'),
	(7,'[ECG]',36.27,76.18,'Elizabeth'),
	(8,'[FAY]',35,78.88,'Fayetteville'),
	(9,'[FBG]',35.13,78.93,'Fort Bragg'),
	(10,'[GSO]',36.08,79.95,'Greensboro'),
	(11,'[HKY]',35.75,81.38,'Hickory'),
	(12,'[HSS]',35.9,82.82,'Hot Springs'),
	(13,'[OAJ]',34.82,77.62,'Jacksonville'),
	(14,'[ISO]',35.32,77.63,'Kinston'),
	(15,'[HFF]',35.03,79.5,'Mackall Aaf'),
	(16,'[MQI]',35.92,75.68,'Manteo Arpt'),
	(17,'[EWN]',35.08,77.05,'New Bern'),
	(18,'[NCA]',34.7,77.43,'New River'),
	(19,'[POB]',35.17,79.02,'Pope AFB'),
	(20,'[RDU]',35.87,78.78,'Raleigh-Durh'),
	(21,'[RWI]',35.85,77.88,'Rocky Mt'),
	(22,'[GSB]',35.33,77.97,'Seymour-John'),
	(23,'[SOP]',35.24,79.39,'Southern Pin'),
	(24,'[ILM]',34.27,77.92,'Wilmington'),
	(25,'[INT]',36.13,80.23,'Winston-Salem');

/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

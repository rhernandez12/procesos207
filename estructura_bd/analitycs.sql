/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - analitycs
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`analitycs` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `analitycs`;

/*Table structure for table `xy_nuevo2019` */

DROP TABLE IF EXISTS `xy_nuevo2019`;

CREATE TABLE `xy_nuevo2019` (
  `telefono` varchar(20) NOT NULL DEFAULT '',
  `codservcms` varchar(20) NOT NULL DEFAULT '',
  `codclicms` varchar(20) NOT NULL DEFAULT '',
  `longitud` varchar(35) NOT NULL DEFAULT '',
  `latitud` varchar(35) NOT NULL DEFAULT '',
  `distancia` decimal(10,3) NOT NULL DEFAULT '0.000',
  `empresa` varchar(20) NOT NULL DEFAULT '',
  `grupo` varchar(20) NOT NULL DEFAULT '',
  `codcliserv` varchar(30) NOT NULL DEFAULT '',
  KEY `codclicms` (`codclicms`),
  KEY `codservcms` (`codservcms`),
  KEY `telefono` (`telefono`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

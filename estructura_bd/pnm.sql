/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - pnm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pnm` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pnm`;

/*Table structure for table `etiqueta_puertos` */

DROP TABLE IF EXISTS `etiqueta_puertos`;

CREATE TABLE `etiqueta_puertos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cmts` varchar(100) DEFAULT NULL,
  `puerto` varchar(100) DEFAULT NULL,
  `troba` varchar(100) DEFAULT NULL,
  `llave` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `llave` (`llave`)
) ENGINE=MyISAM AUTO_INCREMENT=22671 DEFAULT CHARSET=latin1;

/*Table structure for table `nclientes` */

DROP TABLE IF EXISTS `nclientes`;

CREATE TABLE `nclientes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idclientecrm` varchar(50) DEFAULT NULL,
  `mac3` varchar(50) DEFAULT NULL,
  `nodotroba` varchar(50) DEFAULT NULL,
  `direccion` text,
  `desdpt` varchar(100) DEFAULT NULL,
  `numcoo_x` varchar(50) DEFAULT NULL,
  `numcoo_y` varchar(50) DEFAULT NULL,
  `f_v` varchar(50) DEFAULT NULL,
  `cmts` varchar(50) DEFAULT NULL,
  `llave_cmts` varchar(100) DEFAULT NULL,
  `llave_cliente` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `llave_cmts` (`llave_cmts`),
  KEY `llave_cliente` (`llave_cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=1028338 DEFAULT CHARSET=latin1;

/*Table structure for table `planta_clarita` */

DROP TABLE IF EXISTS `planta_clarita`;

CREATE TABLE `planta_clarita` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cliente` varchar(50) DEFAULT NULL,
  `desdpt` varchar(100) DEFAULT NULL,
  `desdtt` varchar(100) DEFAULT NULL,
  `cmts` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente` (`cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=957161 DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

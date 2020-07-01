/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - z_ccm1_temporal_prueba
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`z_ccm1_temporal_prueba` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `z_ccm1_temporal_prueba`;

/*Table structure for table `planta_clarita` */

DROP TABLE IF EXISTS `planta_clarita`;

CREATE TABLE `planta_clarita` (
  `cliente` int(10) DEFAULT NULL,
  `codservicio` int(11) NOT NULL,
  `nodo` varchar(4) COLLATE latin1_spanish_ci DEFAULT NULL,
  `troba` varchar(4) COLLATE latin1_spanish_ci DEFAULT NULL,
  `amplificador` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `tap` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `telf1` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `telf2` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `movil` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `direccion` varchar(90) COLLATE latin1_spanish_ci DEFAULT NULL,
  `naked` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `numcoo_x` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `numcoo_y` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `sub_neg` varchar(4) COLLATE latin1_spanish_ci DEFAULT NULL,
  `unico` char(2) COLLATE latin1_spanish_ci DEFAULT NULL,
  `tiptec` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `tipoperu8k` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  UNIQUE KEY `servicio` (`codservicio`),
  KEY `index_cliente` (`cliente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - planta_interna
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`planta_interna` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `planta_interna`;

/*Table structure for table `lista_equipos` */

DROP TABLE IF EXISTS `lista_equipos`;

CREATE TABLE `lista_equipos` (
  `ip` varchar(20) NOT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  `equipo` varchar(60) DEFAULT NULL,
  `descripcion` varchar(60) DEFAULT NULL,
  `conexion` varchar(20) DEFAULT NULL,
  `observaciones` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

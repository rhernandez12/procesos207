/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - historico_nclientes
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`historico_nclientes` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `historico_nclientes`;

/*Table structure for table `Status_cablemodems_historico` */

DROP TABLE IF EXISTS `Status_cablemodems_historico`;

CREATE TABLE `Status_cablemodems_historico` (
  `cmts` varchar(20) DEFAULT NULL,
  `sinippublica` int(11) DEFAULT NULL,
  `bpi_wait` decimal(23,0) DEFAULT NULL,
  `cc_pending` decimal(23,0) DEFAULT NULL,
  `init_o` decimal(23,0) DEFAULT NULL,
  `init_i` decimal(23,0) DEFAULT NULL,
  `init_io` decimal(23,0) DEFAULT NULL,
  `init_dr` decimal(23,0) DEFAULT NULL,
  `init_d` decimal(23,0) DEFAULT NULL,
  `init_r` decimal(23,0) DEFAULT NULL,
  `init_r1` decimal(23,0) DEFAULT NULL,
  `init_r2` decimal(23,0) DEFAULT NULL,
  `init_rc` decimal(23,0) DEFAULT NULL,
  `init_t` decimal(23,0) DEFAULT NULL,
  `reject` decimal(23,0) DEFAULT NULL,
  `p_online` decimal(23,0) DEFAULT NULL,
  `w_expire_pt` decimal(23,0) DEFAULT NULL,
  `wonlineBpiSucc` decimal(23,0) DEFAULT NULL,
  `online_pt` decimal(23,0) DEFAULT NULL,
  `w_online_pt` decimal(23,0) DEFAULT NULL,
  `online_d` decimal(23,0) DEFAULT NULL,
  `online` decimal(23,0) DEFAULT NULL,
  `offline` decimal(23,0) DEFAULT NULL,
  `total` bigint(21) NOT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`fecha_hora`),
  KEY `cmts` (`cmts`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `clientes_alertados_historico` */

DROP TABLE IF EXISTS `clientes_alertados_historico`;

CREATE TABLE `clientes_alertados_historico` (
  `IDCLIENTECRM` double DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `tipo` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mactate` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(4) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `IDCLIENTECRM` (`IDCLIENTECRM`,`MACADDRESS`,`fecha_hora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

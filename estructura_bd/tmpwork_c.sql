/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - tmpwork_c
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tmpwork_c` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tmpwork_c`;

/*Table structure for table `cmts_ip_cols_phy` */

DROP TABLE IF EXISTS `cmts_ip_cols_phy`;

CREATE TABLE `cmts_ip_cols_phy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmts` varchar(50) NOT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `abrev` varchar(4) DEFAULT NULL,
  `marca` varchar(10) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `zonal` varchar(3) DEFAULT NULL,
  `col1` varchar(10) DEFAULT NULL,
  `col2` varchar(10) DEFAULT NULL,
  `col3` varchar(10) DEFAULT NULL,
  `col4` varchar(10) DEFAULT NULL,
  `col5` varchar(10) DEFAULT NULL,
  `col6` varchar(10) DEFAULT NULL,
  `col7` varchar(10) DEFAULT NULL,
  `col8` varchar(10) DEFAULT NULL,
  `col9` varchar(10) DEFAULT NULL,
  `col10` varchar(10) DEFAULT NULL,
  `col11` varchar(10) DEFAULT NULL,
  `col12` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cmts`),
  KEY `idx1` (`cmts`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=462 DEFAULT CHARSET=latin1;

/*Table structure for table `cmts_ip_cols_scm` */

DROP TABLE IF EXISTS `cmts_ip_cols_scm`;

CREATE TABLE `cmts_ip_cols_scm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmts` varchar(50) NOT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `abrev` varchar(4) DEFAULT NULL,
  `marca` varchar(10) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `zonal` varchar(3) DEFAULT NULL,
  `col1` varchar(10) DEFAULT NULL,
  `col2` varchar(10) DEFAULT NULL,
  `col3` varchar(10) DEFAULT NULL,
  `col4` varchar(10) DEFAULT NULL,
  `col5` varchar(10) DEFAULT NULL,
  `col6` varchar(10) DEFAULT NULL,
  `col7` varchar(10) DEFAULT NULL,
  `col8` varchar(10) DEFAULT NULL,
  `col9` varchar(10) DEFAULT NULL,
  `col10` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cmts`),
  KEY `idx1` (`cmts`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=461 DEFAULT CHARSET=latin1;

/*Table structure for table `huawei_scm_sw` */

DROP TABLE IF EXISTS `huawei_scm_sw`;

CREATE TABLE `huawei_scm_sw` (
  `sw` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `huawei_sw` */

DROP TABLE IF EXISTS `huawei_sw`;

CREATE TABLE `huawei_sw` (
  `sw` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `huawei_sw_historial` */

DROP TABLE IF EXISTS `huawei_sw_historial`;

CREATE TABLE `huawei_sw_historial` (
  `scm` varchar(1) DEFAULT NULL,
  `phy` varchar(1) DEFAULT NULL,
  `query` varchar(200) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_t` */

DROP TABLE IF EXISTS `scm_phy_t`;

CREATE TABLE `scm_phy_t` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `Interface` varchar(20) DEFAULT NULL,
  `Sid` varchar(20) DEFAULT NULL,
  `USPwr` varchar(20) DEFAULT NULL,
  `USMER_SNR` varchar(20) DEFAULT NULL,
  `Timing_Offset` varchar(20) DEFAULT NULL,
  `DSPwr` varchar(20) DEFAULT NULL,
  `DSMER_SNR` varchar(20) DEFAULT NULL,
  `Mode_` varchar(20) DEFAULT NULL,
  `DOCSIS_Prov` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `ultimo` varchar(1) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`MACAddress`),
  KEY `NewIndex2` (`Interface`),
  KEY `NewIndex3` (`Sid`),
  KEY `NewIndex4` (`cmts`),
  KEY `NewIndex5` (`ultimo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_total_off` */

DROP TABLE IF EXISTS `scm_total_off`;

CREATE TABLE `scm_total_off` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `Interface` varchar(20) DEFAULT NULL,
  `MACState` varchar(20) DEFAULT NULL,
  `PrimSid` int(11) DEFAULT NULL,
  `RxPwrdBmv` varchar(20) DEFAULT NULL,
  `TimingOFFSET` varchar(20) DEFAULT NULL,
  `NumCPE` varchar(20) DEFAULT NULL,
  `DIP` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `FECHA_HORA` varchar(20) DEFAULT NULL,
  `ultimo` varchar(1) DEFAULT NULL,
  `interface6` varchar(10) DEFAULT NULL,
  UNIQUE KEY `MACAddress` (`MACAddress`),
  KEY `IPAddress` (`IPAddress`),
  KEY `Interface` (`Interface`),
  KEY `MACState` (`MACState`),
  KEY `cmts` (`cmts`),
  KEY `FECHA_HORA` (`FECHA_HORA`),
  KEY `interface6` (`interface6`),
  KEY `PrimSid` (`PrimSid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_total_on` */

DROP TABLE IF EXISTS `scm_total_on`;

CREATE TABLE `scm_total_on` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `Interface` varchar(20) DEFAULT NULL,
  `MACState` varchar(20) DEFAULT NULL,
  `PrimSid` int(11) DEFAULT NULL,
  `RxPwrdBmv` varchar(20) DEFAULT NULL,
  `TimingOFFSET` varchar(20) DEFAULT NULL,
  `NumCPE` varchar(20) DEFAULT NULL,
  `DIP` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `FECHA_HORA` varchar(20) DEFAULT NULL,
  `ultimo` varchar(1) DEFAULT NULL,
  `interface6` varchar(10) DEFAULT NULL,
  UNIQUE KEY `MACAddress` (`MACAddress`),
  KEY `IPAddress` (`IPAddress`),
  KEY `Interface` (`Interface`),
  KEY `MACState` (`MACState`),
  KEY `cmts` (`cmts`),
  KEY `FECHA_HORA` (`FECHA_HORA`),
  KEY `interface6` (`interface6`),
  KEY `PrimSid` (`PrimSid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `trafico_olt` */

DROP TABLE IF EXISTS `trafico_olt`;

CREATE TABLE `trafico_olt` (
  `ifDescr` varchar(20) DEFAULT NULL,
  `ifAlias` varchar(20) DEFAULT NULL,
  `ifHCInOctets` varchar(30) DEFAULT NULL,
  `ifHCOutOctets` varchar(100) DEFAULT NULL,
  `D30DownChannel` varchar(100) DEFAULT NULL,
  `D30UpChannel` varchar(10) DEFAULT NULL,
  `tCmNum` varchar(10) DEFAULT NULL,
  `tOnlineCmNum` varchar(10) DEFAULT NULL,
  `tUnOnlCmNum` varchar(10) DEFAULT NULL,
  `tOfflineCmNum` varchar(10) DEFAULT NULL,
  `tWidebandCmNum` varchar(10) DEFAULT NULL,
  `cmts` varchar(50) DEFAULT NULL,
  `fecha` varchar(50) DEFAULT NULL,
  UNIQUE KEY `ifDescr` (`ifDescr`,`cmts`,`fecha`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `z_olt_sw` */

DROP TABLE IF EXISTS `z_olt_sw`;

CREATE TABLE `z_olt_sw` (
  `cmts` varchar(100) DEFAULT NULL,
  `carga_scm` varchar(100) DEFAULT NULL,
  `carga_phy` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - z_temporal_prueba
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`z_temporal_prueba` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `z_temporal_prueba`;

/*Table structure for table `cmactivosdiario` */

DROP TABLE IF EXISTS `cmactivosdiario`;

CREATE TABLE `cmactivosdiario` (
  `IDCABLEMODEM` int(11) DEFAULT NULL,
  `EMPRESA` varchar(3) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `IDEMPRESACRM` int(11) DEFAULT NULL,
  `IDSERVICIO` double DEFAULT NULL,
  `IDPRODUCTO` double DEFAULT NULL,
  `IDVENTA` double DEFAULT NULL,
  `PRODUCTNAME` varchar(100) DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `CANTPCS` int(11) DEFAULT NULL,
  `FECHAALTA` varchar(20) DEFAULT NULL,
  `FECHAACTIVACION` varchar(20) DEFAULT NULL,
  `HUB` varchar(10) DEFAULT NULL,
  `NODO` varchar(10) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  `MENSAJE` varchar(10) DEFAULT NULL,
  `SCOPESGROUP` varchar(20) DEFAULT NULL,
  `SCOPESGROUPCM` varchar(20) DEFAULT NULL,
  `SCOPESGROUPMTA` varchar(20) DEFAULT NULL,
  `MTAMAC` varchar(20) DEFAULT NULL,
  `IDSERVICIOMTA` varchar(15) DEFAULT NULL,
  `IDPRODUCTOMTA` varchar(15) DEFAULT NULL,
  `IDVENTAMTA` varchar(15) DEFAULT NULL,
  `PROFILENAME` varchar(15) DEFAULT NULL,
  `MTAMODELNAME` varchar(50) DEFAULT NULL,
  `mac2` varchar(20) DEFAULT NULL,
  `mac3` varchar(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`MACADDRESS`),
  KEY `NewIndex2` (`IDCLIENTECRM`),
  KEY `NewIndex3` (`EMPRESA`),
  KEY `NewIndex4` (`mac2`),
  KEY `NewIndex5` (`mac3`),
  KEY `IDPRODUCTO` (`IDPRODUCTO`),
  KEY `IDEMPRESACRM` (`IDEMPRESACRM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `nclientes` */

DROP TABLE IF EXISTS `nclientes`;

CREATE TABLE `nclientes` (
  `MACADDRESS` char(14) DEFAULT NULL,
  `EMPRESA` varchar(3) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `idempresacrm` int(11) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `idventa` double DEFAULT NULL,
  `NAMECLIENT` varchar(100) DEFAULT NULL,
  `NODO` char(2) DEFAULT NULL,
  `TROBA` char(4) DEFAULT NULL,
  `amplificador` varchar(11) DEFAULT NULL,
  `tap` varchar(11) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `regver` varchar(3) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `IDSERVICIOMTA` varchar(15) DEFAULT NULL,
  `IDPRODUCTOMTA` varchar(15) DEFAULT NULL,
  `IDVENTAMTA` varchar(15) DEFAULT NULL,
  `CMTSID` varchar(11) DEFAULT NULL,
  `codserv` int(11) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `naked` varchar(50) DEFAULT NULL,
  UNIQUE KEY `mac` (`MACADDRESS`),
  KEY `nodo` (`NODO`),
  KEY `troba` (`TROBA`),
  KEY `cmts` (`cmts`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `nclientes_c` */

DROP TABLE IF EXISTS `nclientes_c`;

CREATE TABLE `nclientes_c` (
  `EMPRESA` varchar(3) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `idempresacrm` int(11) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `idventa` double DEFAULT NULL,
  `NAMECLIENT` varchar(100) DEFAULT NULL,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `amplificador` varchar(11) DEFAULT NULL,
  `tap` varchar(11) DEFAULT NULL,
  `telf1` varchar(10) DEFAULT NULL,
  `telf2` varchar(10) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `regver` varchar(3) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `CANTPCS` varchar(11) DEFAULT NULL,
  `FECHAALTA` varchar(20) DEFAULT NULL,
  `FECHAACTIVACION` varchar(20) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  `SCOPESGROUP` varchar(15) DEFAULT NULL,
  `SCOPESGROUPCM` varchar(15) DEFAULT NULL,
  `SCOPESGROUPMTA` varchar(15) DEFAULT NULL,
  `MTAMAC` varchar(20) DEFAULT NULL,
  `IDSERVICIOMTA` varchar(15) DEFAULT NULL,
  `IDPRODUCTOMTA` varchar(15) DEFAULT NULL,
  `IDVENTAMTA` varchar(15) DEFAULT NULL,
  `MTAMODELNAME` varchar(50) DEFAULT NULL,
  `CMTSID` varchar(11) DEFAULT NULL,
  `UBICACIONENLARED` varchar(150) DEFAULT NULL,
  `IPCM` varchar(20) DEFAULT NULL,
  `DOCSISVERSION` varchar(11) DEFAULT NULL,
  `movil1` varchar(20) DEFAULT NULL,
  `mac2` varchar(20) DEFAULT NULL,
  `mac3` varchar(20) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `codserv` int(11) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `naked` varchar(50) DEFAULT NULL,
  `numcoo_x` varchar(20) DEFAULT NULL,
  `numcoo_y` varchar(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex3` (`MACADDRESS`),
  KEY `NewIndex1` (`IDCLIENTECRM`),
  KEY `NewIndex2` (`NAMECLIENT`),
  KEY `NewIndex5` (`mac3`),
  KEY `idxestado` (`ESTADO`),
  KEY `idventa` (`idventa`),
  KEY `idxcodserv` (`codserv`),
  KEY `idxfv` (`f_v`),
  KEY `NODO` (`NODO`),
  KEY `TROBA` (`TROBA`),
  KEY `index_mac2` (`mac2`),
  FULLTEXT KEY `cmts` (`cmts`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `nclientes_casa` */

DROP TABLE IF EXISTS `nclientes_casa`;

CREATE TABLE `nclientes_casa` (
  `EMPRESA` varchar(3) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `idempresacrm` int(11) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `idventa` double DEFAULT NULL,
  `NAMECLIENT` varchar(100) DEFAULT NULL,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `amplificador` varchar(11) DEFAULT NULL,
  `tap` varchar(11) DEFAULT NULL,
  `telf1` varchar(10) DEFAULT NULL,
  `telf2` varchar(10) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `regver` varchar(3) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `CANTPCS` varchar(11) DEFAULT NULL,
  `FECHAALTA` varchar(20) DEFAULT NULL,
  `FECHAACTIVACION` varchar(20) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  `SCOPESGROUP` varchar(15) DEFAULT NULL,
  `SCOPESGROUPCM` varchar(15) DEFAULT NULL,
  `SCOPESGROUPMTA` varchar(15) DEFAULT NULL,
  `MTAMAC` varchar(20) DEFAULT NULL,
  `IDSERVICIOMTA` varchar(15) DEFAULT NULL,
  `IDPRODUCTOMTA` varchar(15) DEFAULT NULL,
  `IDVENTAMTA` varchar(15) DEFAULT NULL,
  `MTAMODELNAME` varchar(50) DEFAULT NULL,
  `CMTSID` varchar(11) DEFAULT NULL,
  `UBICACIONENLARED` varchar(150) DEFAULT NULL,
  `IPCM` varchar(20) DEFAULT NULL,
  `DOCSISVERSION` varchar(11) DEFAULT NULL,
  `movil1` varchar(20) DEFAULT NULL,
  `mac2` varchar(20) DEFAULT NULL,
  `mac3` varchar(20) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `codserv` int(11) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `naked` varchar(50) DEFAULT NULL,
  `numcoo_x` varchar(20) DEFAULT NULL,
  `numcoo_y` varchar(20) DEFAULT NULL,
  UNIQUE KEY `macaddress` (`MACADDRESS`),
  KEY `idproducto` (`idproducto`),
  KEY `idcliente` (`IDCLIENTECRM`),
  KEY `empresa` (`EMPRESA`),
  KEY `mac2` (`mac2`),
  KEY `mac3` (`mac3`),
  KEY `servicio` (`codserv`),
  KEY `cmts` (`cmts`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `nclientes_cf` */

DROP TABLE IF EXISTS `nclientes_cf`;

CREATE TABLE `nclientes_cf` (
  `IDCLIENTECRM` int(10) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idproducto` int(11) DEFAULT NULL,
  `idventa` int(11) DEFAULT NULL,
  `NAMECLIENT` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `NODO` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `TROBA` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `amplificador` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `tap` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `telf1` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `telf2` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `f_v` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `MACADDRESS` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `SERVICEPACKAGECRMID` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `CANTPCS` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `FECHAALTA` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `FECHAACTIVACION` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `ESTADO` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `SCOPESGROUP` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `SCOPESGROUPCM` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `SCOPESGROUPMTA` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `MTAMAC` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `IDSERVICIOMTA` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `IDPRODUCTOMTA` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `IDVENTAMTA` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `MTAMODELNAME` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `IPCM` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `movil1` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `mac2` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `mac3` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `direccion` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `codserv` int(11) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `naked` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `numcoo_x` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `numcoo_y` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Table structure for table `nclientes_cisco` */

DROP TABLE IF EXISTS `nclientes_cisco`;

CREATE TABLE `nclientes_cisco` (
  `EMPRESA` varchar(3) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `idempresacrm` int(11) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `idventa` double DEFAULT NULL,
  `NAMECLIENT` varchar(100) DEFAULT NULL,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `amplificador` varchar(11) DEFAULT NULL,
  `tap` varchar(11) DEFAULT NULL,
  `telf1` varchar(10) DEFAULT NULL,
  `telf2` varchar(10) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `regver` varchar(3) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `CANTPCS` varchar(11) DEFAULT NULL,
  `FECHAALTA` varchar(20) DEFAULT NULL,
  `FECHAACTIVACION` varchar(20) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  `SCOPESGROUP` varchar(15) DEFAULT NULL,
  `SCOPESGROUPCM` varchar(15) DEFAULT NULL,
  `SCOPESGROUPMTA` varchar(15) DEFAULT NULL,
  `MTAMAC` varchar(20) DEFAULT NULL,
  `IDSERVICIOMTA` varchar(15) DEFAULT NULL,
  `IDPRODUCTOMTA` varchar(15) DEFAULT NULL,
  `IDVENTAMTA` varchar(15) DEFAULT NULL,
  `MTAMODELNAME` varchar(50) DEFAULT NULL,
  `CMTSID` varchar(11) DEFAULT NULL,
  `UBICACIONENLARED` varchar(150) DEFAULT NULL,
  `IPCM` varchar(20) DEFAULT NULL,
  `DOCSISVERSION` varchar(11) DEFAULT NULL,
  `movil1` varchar(20) DEFAULT NULL,
  `mac2` varchar(20) DEFAULT NULL,
  `mac3` varchar(20) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `codserv` int(11) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `naked` varchar(50) DEFAULT NULL,
  `numcoo_x` varchar(20) DEFAULT NULL,
  `numcoo_y` varchar(20) DEFAULT NULL,
  UNIQUE KEY `macaddress` (`MACADDRESS`),
  KEY `idproducto` (`idproducto`),
  KEY `idclientes` (`IDCLIENTECRM`),
  KEY `mac2` (`mac2`),
  KEY `mac3` (`mac3`),
  KEY `servicio` (`codserv`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `nclientes_huawei` */

DROP TABLE IF EXISTS `nclientes_huawei`;

CREATE TABLE `nclientes_huawei` (
  `EMPRESA` varchar(3) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `idempresacrm` int(11) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `idventa` double DEFAULT NULL,
  `NAMECLIENT` varchar(100) DEFAULT NULL,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `amplificador` varchar(11) DEFAULT NULL,
  `tap` varchar(11) DEFAULT NULL,
  `telf1` varchar(10) DEFAULT NULL,
  `telf2` varchar(10) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `regver` varchar(3) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `CANTPCS` varchar(11) DEFAULT NULL,
  `FECHAALTA` varchar(20) DEFAULT NULL,
  `FECHAACTIVACION` varchar(20) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  `SCOPESGROUP` varchar(15) DEFAULT NULL,
  `SCOPESGROUPCM` varchar(15) DEFAULT NULL,
  `SCOPESGROUPMTA` varchar(15) DEFAULT NULL,
  `MTAMAC` varchar(20) DEFAULT NULL,
  `IDSERVICIOMTA` varchar(15) DEFAULT NULL,
  `IDPRODUCTOMTA` varchar(15) DEFAULT NULL,
  `IDVENTAMTA` varchar(15) DEFAULT NULL,
  `MTAMODELNAME` varchar(50) DEFAULT NULL,
  `CMTSID` varchar(11) DEFAULT NULL,
  `UBICACIONENLARED` varchar(150) DEFAULT NULL,
  `IPCM` varchar(20) DEFAULT NULL,
  `DOCSISVERSION` varchar(11) DEFAULT NULL,
  `movil1` varchar(20) DEFAULT NULL,
  `mac2` varchar(20) DEFAULT NULL,
  `mac3` varchar(20) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `codserv` int(11) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `naked` varchar(50) DEFAULT NULL,
  `numcoo_x` varchar(20) DEFAULT NULL,
  `numcoo_y` varchar(20) DEFAULT NULL,
  UNIQUE KEY `macaddress` (`MACADDRESS`),
  KEY `idproducto` (`idproducto`),
  KEY `idclientes` (`IDCLIENTECRM`),
  KEY `mac2` (`mac2`),
  KEY `mac3` (`mac2`),
  KEY `servicio` (`codserv`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `nclientes_sm` */

DROP TABLE IF EXISTS `nclientes_sm`;

CREATE TABLE `nclientes_sm` (
  `EMPRESA` varchar(3) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `idempresacrm` int(11) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `idventa` double DEFAULT NULL,
  `NAMECLIENT` varchar(100) DEFAULT NULL,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `amplificador` varchar(11) DEFAULT NULL,
  `tap` varchar(11) DEFAULT NULL,
  `telf1` varchar(10) DEFAULT NULL,
  `telf2` varchar(10) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `regver` varchar(3) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `CANTPCS` varchar(11) DEFAULT NULL,
  `FECHAALTA` varchar(20) DEFAULT NULL,
  `FECHAACTIVACION` varchar(20) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  `SCOPESGROUP` varchar(15) DEFAULT NULL,
  `SCOPESGROUPCM` varchar(15) DEFAULT NULL,
  `SCOPESGROUPMTA` varchar(15) DEFAULT NULL,
  `MTAMAC` varchar(20) DEFAULT NULL,
  `IDSERVICIOMTA` varchar(15) DEFAULT NULL,
  `IDPRODUCTOMTA` varchar(15) DEFAULT NULL,
  `IDVENTAMTA` varchar(15) DEFAULT NULL,
  `MTAMODELNAME` varchar(50) DEFAULT NULL,
  `CMTSID` varchar(11) DEFAULT NULL,
  `UBICACIONENLARED` varchar(150) DEFAULT NULL,
  `IPCM` varchar(20) DEFAULT NULL,
  `DOCSISVERSION` varchar(11) DEFAULT NULL,
  `movil1` varchar(20) DEFAULT NULL,
  `mac2` varchar(20) DEFAULT NULL,
  `mac3` varchar(20) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `codserv` int(11) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `naked` varchar(50) DEFAULT NULL,
  `numcoo_x` varchar(20) DEFAULT NULL,
  `numcoo_y` varchar(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex3` (`MACADDRESS`),
  KEY `NewIndex1` (`IDCLIENTECRM`),
  KEY `NewIndex2` (`NAMECLIENT`),
  KEY `NewIndex4` (`mac2`),
  KEY `NewIndex5` (`mac3`),
  KEY `idx7` (`IDSERVICIOMTA`),
  KEY `idxestado` (`ESTADO`),
  KEY `idproducto` (`idproducto`),
  KEY `idventa` (`idventa`),
  KEY `servicio` (`codserv`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `nclientes_t` */

DROP TABLE IF EXISTS `nclientes_t`;

CREATE TABLE `nclientes_t` (
  `IDCLIENTECRM` int(10) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idproducto` int(11) DEFAULT NULL,
  `idventa` int(11) DEFAULT NULL,
  `NAMECLIENT` varchar(100) DEFAULT NULL,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `amplificador` varchar(11) DEFAULT NULL,
  `tap` varchar(11) DEFAULT NULL,
  `telf1` varchar(10) DEFAULT NULL,
  `telf2` varchar(10) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `CANTPCS` varchar(11) DEFAULT NULL,
  `FECHAALTA` varchar(20) DEFAULT NULL,
  `FECHAACTIVACION` varchar(20) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  `SCOPESGROUP` varchar(15) DEFAULT NULL,
  `SCOPESGROUPCM` varchar(15) DEFAULT NULL,
  `SCOPESGROUPMTA` varchar(15) DEFAULT NULL,
  `MTAMAC` varchar(20) DEFAULT NULL,
  `IDSERVICIOMTA` varchar(15) DEFAULT NULL,
  `IDPRODUCTOMTA` varchar(15) DEFAULT NULL,
  `IDVENTAMTA` varchar(15) DEFAULT NULL,
  `MTAMODELNAME` varchar(50) DEFAULT NULL,
  `IPCM` varchar(20) DEFAULT NULL,
  `movil1` varchar(20) DEFAULT NULL,
  `mac2` varchar(20) DEFAULT NULL,
  `mac3` varchar(20) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `codserv` int(11) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `naked` varchar(50) DEFAULT NULL,
  `numcoo_x` varchar(20) DEFAULT NULL,
  `numcoo_y` varchar(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex3` (`MACADDRESS`),
  KEY `NewIndex1` (`IDCLIENTECRM`),
  KEY `idxcodserv` (`codserv`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `nodo_troba` */

DROP TABLE IF EXISTS `nodo_troba`;

CREATE TABLE `nodo_troba` (
  `nodo` char(2) NOT NULL,
  `troba` char(4) NOT NULL,
  KEY `Nodo1` (`nodo`),
  KEY `Troba1` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `portadorasxpuerto_puertos_casa` */

DROP TABLE IF EXISTS `portadorasxpuerto_puertos_casa`;

CREATE TABLE `portadorasxpuerto_puertos_casa` (
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `dsif` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `usif` varchar(20) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*Table structure for table `zcliente` */

DROP TABLE IF EXISTS `zcliente`;

CREATE TABLE `zcliente` (
  `MACADDRESS` char(14) CHARACTER SET latin1 DEFAULT NULL,
  `EMPRESA` varchar(3) CHARACTER SET latin1 DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `idempresacrm` int(11) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `idventa` double DEFAULT NULL,
  `NAMECLIENT` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `NODO` char(2) CHARACTER SET latin1 DEFAULT NULL,
  `TROBA` char(4) CHARACTER SET latin1 DEFAULT NULL,
  `amplificador` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `tap` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `f_v` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `regver` varchar(3) CHARACTER SET latin1 DEFAULT NULL,
  `cmts` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `IDSERVICIOMTA` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `IDPRODUCTOMTA` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `IDVENTAMTA` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `CMTSID` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `codserv` int(11) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `naked` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/* Procedure structure for procedure `actualiza_nodo_troba` */

/*!50003 DROP PROCEDURE IF EXISTS  `actualiza_nodo_troba` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `actualiza_nodo_troba`()
BEGIN
	UPDATE IGNORE multiconsulta.`nclientes` a FORCE INDEX (idproducto) INNER JOIN ccm1_temporal.`cmactivosdiario` b
	ON a.`idproducto`=b.idproducto
	SET
	a.macaddress=b.macaddress,
	a.servicepackage=b.servicepackage,
	a.servicepackagecrmid=b.servicepackagecrmid,
	a.`FECHAACTIVACION`=b.`FECHAACTIVACION`,
	a.`FECHAALTA`=b.`FECHAALTA`,
	a.estado=b.estado,
	a.scopesgroup=b.scopesgroup,
	a.scopesgroupcm=b.scopesgroupcm,
	a.scopesgroupmta=b.scopesgroupmta,
	a.mtamac=b.mtamac,
	a.idserviciomta=b.idserviciomta,
	a.idproductomta=b.idproductomta,
	a.mac2=CONCAT(SUBSTR(b.macaddress,1,2),SUBSTR(b.macaddress,4,2),'.',SUBSTR(b.macaddress,7,2),SUBSTR(b.macaddress,10,2),'.',SUBSTR(b.macaddress,13,2),SUBSTR(b.macaddress,16,2)),
	a.mac3=REPLACE (b.macaddress, ':', '')
	WHERE a.idproducto>0 AND a.estado<>b.estado;
	COMMIT;
	
	
	UPDATE IGNORE multiconsulta.`nclientes` a FORCE INDEX (idproducto) INNER JOIN ccm1_temporal.`cmactivosdiario` b
	ON a.`idventa`=b.idventa
	SET
	a.macaddress=b.macaddress,
	a.servicepackage=b.servicepackage,
	a.servicepackagecrmid=b.servicepackagecrmid,
	a.`FECHAACTIVACION`=b.`FECHAACTIVACION`,
	a.`FECHAALTA`=b.`FECHAALTA`,
	a.estado=b.estado,
	a.scopesgroup=b.scopesgroup,
	a.scopesgroupcm=b.scopesgroupcm,
	a.scopesgroupmta=b.scopesgroupmta,
	a.mtamac=b.mtamac,
	a.idserviciomta=b.idserviciomta,
	a.idproductomta=b.idproductomta,
	a.mac2=CONCAT(SUBSTR(b.macaddress,1,2),SUBSTR(b.macaddress,4,2),'.',SUBSTR(b.macaddress,7,2),SUBSTR(b.macaddress,10,2),'.',SUBSTR(b.macaddress,13,2),SUBSTR(b.macaddress,16,2)),
	a.mac3=REPLACE (b.macaddress, ':', '')
	WHERE a.idventa>0 AND a.estado<>b.estado;
	COMMIT;
	
	
	TRUNCATE TABLE `z_temporal_prueba`.`borrar_idproducto`;
	COMMIT;
	
	INSERT INTO `z_temporal_prueba`.`borrar_idproducto`  SELECT a.idproducto FROM multiconsulta.nclientes a LEFT JOIN ccm1_temporal.`cmactivosdiario` b
	ON a.idproducto=b.`IDPRODUCTO` WHERE b.idproducto IS NULL AND a.idproducto>0;
	COMMIT;
	
	DELETE FROM multiconsulta.nclientes WHERE idproducto IN (SELECT idproducto FROM `z_temporal_prueba`.`borrar_idproducto`);
	COMMIT;
	
	TRUNCATE TABLE `z_temporal_prueba`.`borrar_idventa`;
	COMMIT;
	
	INSERT INTO `z_temporal_prueba`.`borrar_idventa`  SELECT a.idventa FROM multiconsulta.nclientes a LEFT JOIN ccm1_temporal.`cmactivosdiario` b
	ON a.idventa=b.`idventa` WHERE b.idventa IS NULL AND a.idventa>0;
	COMMIT;
	
	DELETE FROM multiconsulta.nclientes WHERE idventa IN (SELECT idventa FROM `z_temporal_prueba`.`borrar_idventa`);
	COMMIT;
		
		
	UPDATE ccm1.nclientes a INNER JOIN ccm1.scm_total c FORCE INDEX (MACAddress)
        ON a.mac2 = c.MACAddress
        SET a.f_v=c.Interface,a.`cmts`=c.`cmts`,a.IPCM=c.IPAddress;
        COMMIT;
        
        
        UPDATE multiconsulta.nclientes a INNER JOIN ccm1.scm_phy_t c FORCE INDEX(NewIndex1)
        ON a.mac2 = c.MACAddress
        SET a.f_v=c.Interface,a.`cmts`=c.`cmts`;
        COMMIT;
        
        
        UPDATE  multiconsulta.nclientes a FORCE INDEX(idxfv,cmts) INNER JOIN catalogos.etiqueta_puertos b
	ON a.cmts=b.cmts AND a.f_v=b.interface
	SET a.nodo=SUBSTR(b.description,1,2),a.troba=SUBSTR(b.description,4,4)
	WHERE  SUBSTR(b.description,1,7)<>CONCAT(a.nodo,' ',a.troba) AND
	       ((LENGTH(TRIM(description))>=7 AND
	         LENGTH(TRIM(description))<=9) OR RIGHT(TRIM(description),1)=')');
	
	COMMIT;
	
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

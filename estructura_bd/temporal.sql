/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - temporal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`temporal` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `temporal`;

/*Table structure for table `alarmas_caidas_historico` */

DROP TABLE IF EXISTS `alarmas_caidas_historico`;

CREATE TABLE `alarmas_caidas_historico` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `aver` bigint(21) DEFAULT '0',
  `llamadas` bigint(21) DEFAULT '0',
  `cant` int(21) DEFAULT NULL,
  `umbral` int(12) DEFAULT NULL,
  `off` int(21) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` time DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`nodo`,`troba`,`fecha_hora`,`fecha_fin`),
  KEY `idxnodo` (`nodo`),
  KEY `idxtroba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `alertas_reporte` */

DROP TABLE IF EXISTS `alertas_reporte`;

CREATE TABLE `alertas_reporte` (
  `jefatura` varchar(30) DEFAULT NULL,
  `nodo` varchar(5) DEFAULT NULL,
  `troba` varchar(5) DEFAULT NULL,
  `tprog` varchar(5) DEFAULT NULL,
  `averias` int(11) DEFAULT NULL,
  `clientes` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `llamadas` int(11) DEFAULT NULL,
  `fechaini` varchar(20) DEFAULT NULL,
  `fechafin` varchar(20) DEFAULT NULL,
  `critica` varchar(10) DEFAULT NULL,
  `tiempo` varchar(10) DEFAULT NULL,
  `ncaidas` int(11) DEFAULT NULL,
  `nbornes` int(11) DEFAULT NULL,
  `estadogest` varchar(40) DEFAULT NULL,
  `alertaestado` varchar(20) DEFAULT NULL,
  `fechagest` varchar(20) DEFAULT NULL,
  `observ` varchar(300) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `tecnico` varchar(100) DEFAULT NULL,
  UNIQUE KEY `nodo` (`nodo`,`troba`,`fechaini`),
  KEY `alertaestado` (`alertaestado`),
  KEY `fechaini` (`fechaini`),
  KEY `fechafin` (`fechafin`),
  KEY `critica` (`critica`),
  KEY `nodo_2` (`nodo`),
  KEY `troba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `averias` */

DROP TABLE IF EXISTS `averias`;

CREATE TABLE `averias` (
  `cod_req` int(11) DEFAULT NULL,
  `cod_liq` varchar(10) DEFAULT NULL,
  `des_liq` varchar(100) DEFAULT NULL,
  `det_liq` varchar(10) DEFAULT NULL,
  `desdet_liq` varchar(100) DEFAULT NULL,
  `observ` varchar(1000) DEFAULT NULL,
  `codctr` int(11) DEFAULT NULL,
  `fecha` varchar(20) DEFAULT NULL,
  `tipoliq` varchar(100) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  KEY `cod_req` (`cod_req`),
  KEY `cod_liq` (`cod_liq`),
  KEY `det_liq` (`det_liq`),
  KEY `tipoliq` (`tipoliq`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `bajas` */

DROP TABLE IF EXISTS `bajas`;

CREATE TABLE `bajas` (
  `cliente` int(20) NOT NULL,
  `macadress` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `clientes` */

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `servicio` int(11) NOT NULL,
  `desdpt` varchar(100) DEFAULT NULL,
  `despvc` varchar(100) DEFAULT NULL,
  `desdtt` varchar(100) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `plano` varchar(3) DEFAULT NULL,
  `CONCATEN` varchar(100) DEFAULT NULL,
  `NMTIPVIA_TDP` varchar(20) DEFAULT NULL,
  `NOM_VIA` varchar(100) DEFAULT NULL,
  `NUM_PUER` varchar(20) DEFAULT NULL,
  `NMTIPINT` varchar(20) DEFAULT NULL,
  `NUM_INT` varchar(20) DEFAULT NULL,
  `NMTIPVIV` varchar(20) DEFAULT NULL,
  `NOM_VIV` varchar(100) DEFAULT NULL,
  `MZ_NORM` varchar(20) DEFAULT NULL,
  `NUM_LOTE` varchar(20) DEFAULT NULL,
  `NMTIPURB_TDP` varchar(20) DEFAULT NULL,
  `URB_CONC` varchar(100) DEFAULT NULL,
  `x` varchar(30) DEFAULT NULL,
  `y` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `clientes_alertados_hist` */

DROP TABLE IF EXISTS `clientes_alertados_hist`;

CREATE TABLE `clientes_alertados_hist` (
  `IDCLIENTECRM` double DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `tipo` varchar(12) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mactate` varchar(10) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(4) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `MACADDRESS_2` (`MACADDRESS`,`nodo`,`troba`,`fecha_hora`),
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`),
  KEY `MACADDRESS` (`MACADDRESS`),
  KEY `tipo` (`tipo`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cms_movistar_uno` */

DROP TABLE IF EXISTS `cms_movistar_uno`;

CREATE TABLE `cms_movistar_uno` (
  `tip_req` varchar(20) DEFAULT NULL,
  `motv_req` varchar(20) DEFAULT NULL,
  `desc_movistar_uno` varchar(200) DEFAULT NULL,
  UNIQUE KEY `idx_unico` (`tip_req`,`motv_req`),
  KEY `idx_motv` (`motv_req`),
  KEY `idx_movistar_uno` (`desc_movistar_uno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cms_tipo_req` */

DROP TABLE IF EXISTS `cms_tipo_req`;

CREATE TABLE `cms_tipo_req` (
  `prefijo_req` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `plazo_ejecucion` varchar(255) DEFAULT NULL,
  `producto` varchar(255) DEFAULT NULL,
  `tdp_eecc` varchar(255) DEFAULT NULL,
  `va_a_gaudi` varchar(255) DEFAULT NULL,
  `alta_rutina` varchar(255) DEFAULT NULL,
  UNIQUE KEY `idx_unico` (`prefijo_req`),
  KEY `NewIndex1` (`alta_rutina`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `concilia_final` */

DROP TABLE IF EXISTS `concilia_final`;

CREATE TABLE `concilia_final` (
  `telefono` int(11) DEFAULT NULL,
  `clientecms` int(11) NOT NULL,
  `cuentacms` int(11) DEFAULT NULL,
  `serviciocms` int(11) NOT NULL,
  `paquetecateg` varchar(50) DEFAULT NULL,
  `velocidad_contrato` int(11) DEFAULT NULL,
  `velocidad_permanente` int(11) DEFAULT NULL,
  `velocidad_promocion` int(11) DEFAULT NULL,
  `paqueterenta` int(11) DEFAULT NULL,
  `publicacion` varchar(20) DEFAULT NULL,
  `velocidad_actual` int(11) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `veloc_comercial` int(10) NOT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `sit` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `docsis` varchar(7) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `cmts` varchar(20) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `concilia` varchar(172) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `concilia_final_new` */

DROP TABLE IF EXISTS `concilia_final_new`;

CREATE TABLE `concilia_final_new` (
  `telefono` int(11) DEFAULT NULL,
  `clientecms` int(11) DEFAULT NULL,
  `cuentacms` int(11) DEFAULT NULL,
  `serviciocms` int(11) NOT NULL,
  `paquetecateg` varchar(50) DEFAULT NULL,
  `velocidad_contrato` int(11) DEFAULT NULL,
  `velocidad_permanente` int(11) DEFAULT NULL,
  `velocidad_promocion` int(11) DEFAULT NULL,
  `paqueterenta` int(11) DEFAULT NULL,
  `publicacion` varchar(20) DEFAULT NULL,
  `velocidad_actual` int(11) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `veloc_comercial` int(10) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `sit` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `docsis` varchar(7) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `cmts` varchar(20) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `concilia` varchar(172) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `concilia_final_ult` */

DROP TABLE IF EXISTS `concilia_final_ult`;

CREATE TABLE `concilia_final_ult` (
  `playa` varchar(10) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `clientecms` int(11) DEFAULT NULL,
  `cuentacms` int(11) DEFAULT NULL,
  `serviciocms` int(11) NOT NULL,
  `paquetecateg` varchar(50) DEFAULT NULL,
  `velocidad_contrato` int(11) DEFAULT NULL,
  `velocidad_permanente` int(11) DEFAULT NULL,
  `velocidad_promocion` int(11) DEFAULT NULL,
  `paqueterenta` int(11) DEFAULT NULL,
  `publicacion` varchar(20) DEFAULT NULL,
  `velocidad_actual` int(11) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `veloc_comercial` int(10) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `sit` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `docsis` varchar(7) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `cmts` varchar(20) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  `SERVICEPACKAGECRMIDNEW` varchar(50) DEFAULT NULL,
  `SERVICEPACKAGENEW` varchar(50) DEFAULT NULL,
  `idproducto` int(11) DEFAULT NULL,
  `concilia` varchar(172) DEFAULT NULL,
  UNIQUE KEY `serviciocms` (`serviciocms`),
  KEY `SERVICEPACKAGECRMID` (`SERVICEPACKAGECRMIDNEW`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `concilia_final_ult_c` */

DROP TABLE IF EXISTS `concilia_final_ult_c`;

CREATE TABLE `concilia_final_ult_c` (
  `playa` varchar(10) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `clientecms` int(11) DEFAULT NULL,
  `cuentacms` int(11) DEFAULT NULL,
  `serviciocms` int(11) NOT NULL,
  `paquetecateg` varchar(50) DEFAULT NULL,
  `velocidad_contrato` int(11) DEFAULT NULL,
  `velocidad_permanente` int(11) DEFAULT NULL,
  `velocidad_promocion` int(11) DEFAULT NULL,
  `paqueterenta` int(11) DEFAULT NULL,
  `publicacion` varchar(20) DEFAULT NULL,
  `velocidad_actual` int(11) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `veloc_comercial` int(10) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `sit` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `docsis` varchar(7) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `cmts` varchar(20) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  `SERVICEPACKAGECRMIDNEW` varchar(50) DEFAULT NULL,
  `SERVICEPACKAGENEW` varchar(50) DEFAULT NULL,
  `idproducto` int(11) DEFAULT NULL,
  `concilia` varchar(172) DEFAULT NULL,
  UNIQUE KEY `serviciocms` (`serviciocms`),
  KEY `SERVICEPACKAGECRMID` (`SERVICEPACKAGECRMIDNEW`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `especial_1` */

DROP TABLE IF EXISTS `especial_1`;

CREATE TABLE `especial_1` (
  `codigoreq` int(11) DEFAULT NULL COMMENT 'Cod. Requerimiento',
  `x1` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x2` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x3` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x4` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x5` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x6` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `x7` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `x8` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x9` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x10` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x11` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x12` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x13` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x14` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x15` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `fecharegistro` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Fecha Registro',
  `fechaasignacion` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Fecha Asignación',
  `fecha_liquidacion` datetime DEFAULT NULL COMMENT 'Fecha Liquidacion',
  `tiempoahorrado` time(6) DEFAULT NULL,
  `contrata` int(11) DEFAULT NULL COMMENT 'Contrata',
  `codigotiporeq` varchar(2) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Tipo Requerimiento'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `especial_2` */

DROP TABLE IF EXISTS `especial_2`;

CREATE TABLE `especial_2` (
  `codigoreq` int(11) DEFAULT NULL COMMENT 'Cod. Requerimiento',
  `x1` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x2` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x3` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x4` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x5` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x6` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `x7` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `x8` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x9` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x10` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x11` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x12` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x13` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x14` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x15` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `fecharegistro` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Fecha Registro',
  `fechaasignacion` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Fecha Asignación',
  `fecha_liquidacion` datetime DEFAULT NULL COMMENT 'Fecha Liquidacion',
  `tiempoahorrado` time(6) DEFAULT NULL,
  `contrata` int(11) DEFAULT NULL COMMENT 'Contrata',
  `codigotiporeq` varchar(2) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Tipo Requerimiento'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `especial_3` */

DROP TABLE IF EXISTS `especial_3`;

CREATE TABLE `especial_3` (
  `codigoreq` int(11) DEFAULT NULL COMMENT 'Cod. Requerimiento',
  `x1` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x2` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x3` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x4` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x5` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x6` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `x7` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `x8` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x9` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x10` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x11` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x12` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x13` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x14` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x15` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `fecharegistro` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Fecha Registro',
  `fechaasignacion` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Fecha Asignación',
  `fecha_liquidacion` datetime DEFAULT NULL COMMENT 'Fecha Liquidacion',
  `tiempoahorrado` time(6) DEFAULT NULL,
  `contrata` int(11) DEFAULT NULL COMMENT 'Contrata',
  `codigotiporeq` varchar(2) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Tipo Requerimiento'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `especial_4` */

DROP TABLE IF EXISTS `especial_4`;

CREATE TABLE `especial_4` (
  `codigoreq` int(11) DEFAULT NULL COMMENT 'Cod. Requerimiento',
  `x1` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x2` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x3` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x4` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x5` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x6` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `x7` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `x8` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x9` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x10` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x11` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x12` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x13` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x14` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x15` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `fecharegistro` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Fecha Registro',
  `fechaasignacion` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Fecha Asignación',
  `fecha_liquidacion` datetime DEFAULT NULL COMMENT 'Fecha Liquidacion',
  `tiempoahorrado` time(6) DEFAULT NULL,
  `contrata` int(11) DEFAULT NULL COMMENT 'Contrata',
  `codigotiporeq` varchar(2) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Tipo Requerimiento'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `especial_5` */

DROP TABLE IF EXISTS `especial_5`;

CREATE TABLE `especial_5` (
  `codigoreq` int(11) DEFAULT NULL COMMENT 'Cod. Requerimiento',
  `x1` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x2` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x3` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x4` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x5` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x6` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `x7` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `x8` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x9` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x10` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x11` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x12` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x13` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x14` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `x15` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `fecharegistro` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Fecha Registro',
  `fechaasignacion` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Fecha Asignación',
  `fecha_liquidacion` datetime DEFAULT NULL COMMENT 'Fecha Liquidacion',
  `tiempoahorrado` time(6) DEFAULT NULL,
  `contrata` int(11) DEFAULT NULL COMMENT 'Contrata',
  `codigotiporeq` varchar(2) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Tipo Requerimiento'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `macoffline_limpia` */

DROP TABLE IF EXISTS `macoffline_limpia`;

CREATE TABLE `macoffline_limpia` (
  `macaddress` varchar(20) NOT NULL,
  PRIMARY KEY (`macaddress`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `multi_consultas` */

DROP TABLE IF EXISTS `multi_consultas`;

CREATE TABLE `multi_consultas` (
  `item` int(18) NOT NULL AUTO_INCREMENT,
  `tipobusqueda` varchar(20) DEFAULT NULL,
  `dato` int(20) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `mensaje` varchar(100) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`item`),
  UNIQUE KEY `NewIndex3` (`tipobusqueda`,`dato`,`fechahora`),
  KEY `NewIndex1` (`tipobusqueda`),
  KEY `NewIndex2` (`fechahora`),
  KEY `NewIndex4` (`dato`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`)
) ENGINE=MyISAM AUTO_INCREMENT=1271431 DEFAULT CHARSET=latin1;

/*Table structure for table `multi_consultas_c` */

DROP TABLE IF EXISTS `multi_consultas_c`;

CREATE TABLE `multi_consultas_c` (
  `item` int(18) NOT NULL AUTO_INCREMENT,
  `tipobusqueda` varchar(20) DEFAULT NULL,
  `dato` int(20) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `mensaje` varchar(100) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(4) DEFAULT NULL,
  `MACState` varchar(20) DEFAULT NULL,
  `RxPwrdBmv` varchar(20) DEFAULT NULL,
  `MACAddress` varchar(20) DEFAULT NULL,
  `USPwr` varchar(20) DEFAULT NULL,
  `USMER_SNR` varchar(20) DEFAULT NULL,
  `DSPwr` varchar(20) DEFAULT NULL,
  `DSMER_SNR` varchar(20) DEFAULT NULL,
  `STATUS` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`item`),
  UNIQUE KEY `NewIndex3` (`tipobusqueda`,`dato`,`fechahora`),
  KEY `NewIndex1` (`tipobusqueda`),
  KEY `NewIndex2` (`fechahora`),
  KEY `NewIndex4` (`dato`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`),
  KEY `mensaje` (`mensaje`),
  KEY `MACState` (`MACState`),
  KEY `MACAddress` (`MACAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  KEY `idxservicepackage` (`SERVICEPACKAGE`),
  KEY `idx3` (`SERVICEPACKAGECRMID`),
  KEY `idxtelef1` (`telf1`),
  KEY `idxtelef2` (`telf2`),
  KEY `idxmovil` (`movil1`),
  KEY `NewIndex4` (`mac2`),
  KEY `NewIndex5` (`mac3`),
  KEY `idx6` (`SCOPESGROUPMTA`),
  KEY `idxmtamac` (`MTAMAC`),
  KEY `idx7` (`IDSERVICIOMTA`),
  KEY `idxestado` (`ESTADO`),
  KEY `idproducto` (`idproducto`),
  KEY `idventa` (`idventa`),
  KEY `idxcodserv` (`codserv`),
  KEY `idxfv` (`f_v`),
  KEY `cmts` (`cmts`),
  KEY `NODO` (`NODO`),
  KEY `TROBA` (`TROBA`),
  KEY `idempresacrm` (`idempresacrm`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `planta_hfc_comercial` */

DROP TABLE IF EXISTS `planta_hfc_comercial`;

CREATE TABLE `planta_hfc_comercial` (
  `telefono` int(11) DEFAULT NULL,
  `clientecms` int(11) DEFAULT NULL,
  `cuentacms` int(11) DEFAULT NULL,
  `serviciocms` int(11) NOT NULL,
  `paquetecateg` varchar(50) DEFAULT NULL,
  `velocidad_contrato` int(11) DEFAULT NULL,
  `velocidad_permanente` int(11) DEFAULT NULL,
  `velocidad_promocion` int(11) DEFAULT NULL,
  `paqueterenta` int(11) DEFAULT NULL,
  `publicacion` varchar(20) DEFAULT NULL,
  `velocidad_actual` int(11) DEFAULT NULL,
  PRIMARY KEY (`serviciocms`),
  KEY `clientecms` (`clientecms`),
  KEY `cuentacms` (`cuentacms`),
  KEY `serviciocms` (`serviciocms`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `planta_hfc_comercial_d` */

DROP TABLE IF EXISTS `planta_hfc_comercial_d`;

CREATE TABLE `planta_hfc_comercial_d` (
  `telefono` int(11) DEFAULT NULL,
  `clientecms` int(11) DEFAULT NULL,
  `cuentacms` int(11) DEFAULT NULL,
  `serviciocms` int(11) NOT NULL,
  `paquetecateg` varchar(50) DEFAULT NULL,
  `velocidad_contrato` int(11) DEFAULT NULL,
  `velocidad_permanente` int(11) DEFAULT NULL,
  `velocidad_promocion` int(11) DEFAULT NULL,
  `paqueterenta` int(11) DEFAULT NULL,
  `publicacion` varchar(20) DEFAULT NULL,
  `velocidad_actual` int(11) DEFAULT NULL,
  PRIMARY KEY (`serviciocms`),
  KEY `clientecms` (`clientecms`),
  KEY `cuentacms` (`cuentacms`),
  KEY `serviciocms` (`serviciocms`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `proceso_los_olivos` */

DROP TABLE IF EXISTS `proceso_los_olivos`;

CREATE TABLE `proceso_los_olivos` (
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
  `codserv` varchar(20) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `link` varchar(153) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `procesos` */

DROP TABLE IF EXISTS `procesos`;

CREATE TABLE `procesos` (
  `ID` bigint(4) NOT NULL DEFAULT '0',
  `USER` varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `HOST` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `DB` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `COMMAND` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `TIME` int(7) NOT NULL DEFAULT '0',
  `STATE` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `INFO` longtext CHARACTER SET utf8,
  `TIME_MS` decimal(22,3) NOT NULL DEFAULT '0.000',
  `STAGE` tinyint(2) NOT NULL DEFAULT '0',
  `MAX_STAGE` tinyint(2) NOT NULL DEFAULT '0',
  `PROGRESS` decimal(7,3) NOT NULL DEFAULT '0.000',
  `MEMORY_USED` bigint(7) NOT NULL DEFAULT '0',
  `EXAMINED_ROWS` int(7) NOT NULL DEFAULT '0',
  `QUERY_ID` bigint(4) NOT NULL DEFAULT '0',
  `FECHA_HORA` varchar(20) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`,`FECHA_HORA`(10)),
  KEY `ID_2` (`ID`),
  KEY `FECHA_HORA` (`FECHA_HORA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `prov_liq_catv_pais` */

DROP TABLE IF EXISTS `prov_liq_catv_pais`;

CREATE TABLE `prov_liq_catv_pais` (
  `codigo_req` int(11) DEFAULT NULL,
  `codigo_del_grupo_req` varchar(2) DEFAULT NULL,
  `codigo_tipo_req` varchar(2) DEFAULT NULL,
  `codigo_motivo_req` varchar(4) DEFAULT NULL,
  `codigo_del_cliente` int(11) DEFAULT NULL,
  `apellido_paterno` varchar(35) DEFAULT NULL,
  `apellido_materno` varchar(35) DEFAULT NULL,
  `nombres` varchar(30) DEFAULT NULL,
  `indicador_vip` varchar(10) DEFAULT NULL,
  `categoria_cliente` varchar(50) DEFAULT NULL,
  `codigo_del_servicio` int(11) DEFAULT NULL,
  `clase_de_servicio` varchar(100) DEFAULT NULL,
  `categoria_de_servicio` varchar(2) DEFAULT NULL,
  `oficina_administrativa` varchar(3) DEFAULT NULL,
  `departamento` varchar(3) DEFAULT NULL,
  `provincia` varchar(3) DEFAULT NULL,
  `distrito` varchar(3) DEFAULT NULL,
  `tipo_de_via` varchar(2) DEFAULT NULL,
  `nombre_de_la_via` varchar(30) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `piso` varchar(2) DEFAULT NULL,
  `interior` varchar(5) DEFAULT NULL,
  `manzana` varchar(5) DEFAULT NULL,
  `lote` varchar(5) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `plano` varchar(4) DEFAULT NULL,
  `sector` varchar(5) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `lex` varchar(4) DEFAULT NULL,
  `tap` varchar(4) DEFAULT NULL,
  `borne` varchar(4) DEFAULT NULL,
  `estacion` varchar(8) DEFAULT NULL,
  `situacion` varchar(4) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `fecha_registro` varchar(20) DEFAULT NULL,
  `usuario_generacion` varchar(12) DEFAULT NULL,
  `ot` int(11) DEFAULT NULL,
  `fecha_asignacion` varchar(20) DEFAULT NULL,
  `estado_ot` varchar(1) DEFAULT NULL,
  `contrata` int(11) DEFAULT NULL,
  `tecnico` varchar(12) DEFAULT NULL,
  `codigo_de_liquidacion` varchar(12) DEFAULT NULL,
  `fecha_liquidacion` datetime DEFAULT NULL,
  `fecha_programacion` datetime DEFAULT NULL,
  `fecha_informacion` datetime DEFAULT NULL,
  `fecha_llegada` datetime DEFAULT NULL,
  `cross_cms` varchar(20) DEFAULT NULL,
  `sit_envio_actu` varchar(50) DEFAULT NULL,
  `ind_paquete` varchar(30) DEFAULT NULL,
  `tipvis_gestel` varchar(30) DEFAULT NULL,
  `tipvis_cms` varchar(30) DEFAULT NULL,
  `cod_sol_pai` varchar(30) DEFAULT NULL,
  `stdo_sol_pai` varchar(30) DEFAULT NULL,
  `fecha_reg_pai` datetime DEFAULT NULL,
  `ind_pos_fraude` varchar(30) DEFAULT NULL,
  `cod_mot_pos_fraude` varchar(10) DEFAULT NULL,
  `desc_mot_pos_fraude` varchar(100) DEFAULT NULL,
  `nro_ooss_gestel` varchar(30) DEFAULT NULL,
  `stdo_ooss_gestel` varchar(20) DEFAULT NULL,
  `desc_stdo_ooss_gestel` varchar(100) DEFAULT NULL,
  `tip_paquete` varchar(30) DEFAULT NULL,
  `cod_cmts` varchar(30) DEFAULT NULL,
  `desc_cmts2` varchar(100) DEFAULT NULL,
  `peticion_atis` varchar(30) DEFAULT NULL,
  `telefono_de_contacto` varchar(10) DEFAULT NULL,
  `celular_de_contacto` varchar(10) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`codigo_req`),
  KEY `NewIndex2` (`codigo_del_cliente`),
  KEY `NewIndex3` (`ot`),
  KEY `idx_servicio` (`codigo_del_servicio`),
  KEY `fecha_registro` (`fecha_registro`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `prov_liq_catv_pais_x` */

DROP TABLE IF EXISTS `prov_liq_catv_pais_x`;

CREATE TABLE `prov_liq_catv_pais_x` (
  `codigo_req` int(11) DEFAULT NULL,
  `codigo_del_grupo_req` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `codigo_tipo_req` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `codigo_motivo_req` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `codigo_del_cliente` int(11) DEFAULT NULL,
  `apellido_paterno` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `apellido_materno` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `nombres` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `indicador_vip` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `categoria_cliente` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `codigo_del_servicio` int(11) DEFAULT NULL,
  `clase_de_servicio` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `categoria_de_servicio` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `oficina_administrativa` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `departamento` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `provincia` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `distrito` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `tipo_de_via` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `nombre_de_la_via` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `piso` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `interior` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `manzana` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `lote` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `nodo` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `plano` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `sector` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `lex` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `tap` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `borne` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `estacion` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `situacion` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `estado` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `fecha_registro` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `usuario_generacion` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `ot` int(11) DEFAULT NULL,
  `fecha_asignacion` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `estado_ot` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `contrata` int(11) DEFAULT NULL,
  `tecnico` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `codigo_de_liquidacion` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `fecha_liquidacion` datetime DEFAULT NULL,
  `fecha_programacion` datetime DEFAULT NULL,
  `fecha_informacion` datetime DEFAULT NULL,
  `fecha_llegada` datetime DEFAULT NULL,
  `cross_cms` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `sit_envio_actu` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ind_paquete` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `tipvis_gestel` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `tipvis_cms` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `cod_sol_pai` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `stdo_sol_pai` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `fecha_reg_pai` datetime DEFAULT NULL,
  `ind_pos_fraude` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `cod_mot_pos_fraude` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `desc_mot_pos_fraude` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `nro_ooss_gestel` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `stdo_ooss_gestel` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `desc_stdo_ooss_gestel` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `tip_paquete` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `cod_cmts` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `desc_cmts2` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `peticion_atis` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `telefono_de_contacto` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `celular_de_contacto` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  KEY `codigo_req` (`codigo_req`),
  KEY `codigo_del_grupo_req` (`codigo_del_grupo_req`),
  KEY `codigo_tipo_req` (`codigo_tipo_req`),
  KEY `codigo_motivo_req` (`codigo_motivo_req`),
  KEY `codigo_del_cliente` (`codigo_del_cliente`),
  KEY `codigo_del_servicio` (`codigo_del_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `query` */

DROP TABLE IF EXISTS `query`;

CREATE TABLE `query` (
  `detalle` varchar(200) DEFAULT NULL,
  `query` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `reclamosUP` */

DROP TABLE IF EXISTS `reclamosUP`;

CREATE TABLE `reclamosUP` (
  `cliente` int(11) NOT NULL,
  `velocidad` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `result_concilia` */

DROP TABLE IF EXISTS `result_concilia`;

CREATE TABLE `result_concilia` (
  `telefono` int(11) DEFAULT NULL,
  `clientecms` int(11) NOT NULL,
  `cuentacms` int(11) DEFAULT NULL,
  `serviciocms` int(11) NOT NULL,
  `paquetecateg` varchar(50) DEFAULT NULL,
  `velocidad_contrato` int(11) DEFAULT NULL,
  `velocidad_permanente` int(11) DEFAULT NULL,
  `velocidad_promocion` int(11) DEFAULT NULL,
  `paqueterenta` int(11) DEFAULT NULL,
  `publicacion` varchar(20) DEFAULT NULL,
  `velocidad_actual` int(11) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `veloc_comercial` int(10) NOT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `sit` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `docsis` varchar(7) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `cmts` varchar(20) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  KEY `clientecms` (`clientecms`),
  KEY `velocidad_actual` (`velocidad_actual`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `result_concilia_hoy` */

DROP TABLE IF EXISTS `result_concilia_hoy`;

CREATE TABLE `result_concilia_hoy` (
  `telefono` int(11) DEFAULT NULL,
  `clientecms` int(11) DEFAULT NULL,
  `cuentacms` int(11) DEFAULT NULL,
  `serviciocms` int(11) NOT NULL,
  `paquetecateg` varchar(50) DEFAULT NULL,
  `velocidad_contrato` int(11) DEFAULT NULL,
  `velocidad_permanente` int(11) DEFAULT NULL,
  `velocidad_promocion` int(11) DEFAULT NULL,
  `paqueterenta` int(11) DEFAULT NULL,
  `publicacion` varchar(20) DEFAULT NULL,
  `velocidad_actual` int(11) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `veloc_comercial` int(10) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `sit` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `docsis` varchar(7) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `cmts` varchar(20) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `result_concilia_new` */

DROP TABLE IF EXISTS `result_concilia_new`;

CREATE TABLE `result_concilia_new` (
  `telefono` int(11) DEFAULT NULL,
  `clientecms` int(11) DEFAULT NULL,
  `cuentacms` int(11) DEFAULT NULL,
  `serviciocms` int(11) NOT NULL,
  `paquetecateg` varchar(50) DEFAULT NULL,
  `velocidad_contrato` int(11) DEFAULT NULL,
  `velocidad_permanente` int(11) DEFAULT NULL,
  `velocidad_promocion` int(11) DEFAULT NULL,
  `paqueterenta` int(11) DEFAULT NULL,
  `publicacion` varchar(20) DEFAULT NULL,
  `velocidad_actual` int(11) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `veloc_comercial` int(10) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `sit` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `docsis` varchar(7) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `cmts` varchar(20) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `result_concilia_ult` */

DROP TABLE IF EXISTS `result_concilia_ult`;

CREATE TABLE `result_concilia_ult` (
  `telefono` int(11) DEFAULT NULL,
  `clientecms` int(11) DEFAULT NULL,
  `cuentacms` int(11) DEFAULT NULL,
  `serviciocms` int(11) NOT NULL,
  `paquetecateg` varchar(50) DEFAULT NULL,
  `velocidad_contrato` int(11) DEFAULT NULL,
  `velocidad_permanente` int(11) DEFAULT NULL,
  `velocidad_promocion` int(11) DEFAULT NULL,
  `paqueterenta` int(11) DEFAULT NULL,
  `publicacion` varchar(20) DEFAULT NULL,
  `velocidad_actual` int(11) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `veloc_comercial` int(10) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `sit` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `docsis` varchar(7) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `cmts` varchar(20) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  KEY `serviciocms` (`serviciocms`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `result_concilia_ult_c` */

DROP TABLE IF EXISTS `result_concilia_ult_c`;

CREATE TABLE `result_concilia_ult_c` (
  `telefono` int(11) DEFAULT NULL,
  `clientecms` int(11) DEFAULT NULL,
  `cuentacms` int(11) DEFAULT NULL,
  `serviciocms` int(11) NOT NULL,
  `paquetecateg` varchar(50) DEFAULT NULL,
  `velocidad_contrato` int(11) DEFAULT NULL,
  `velocidad_permanente` int(11) DEFAULT NULL,
  `velocidad_promocion` int(11) DEFAULT NULL,
  `paqueterenta` int(11) DEFAULT NULL,
  `publicacion` varchar(20) DEFAULT NULL,
  `velocidad_actual` int(11) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `veloc_comercial` int(10) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `sit` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `docsis` varchar(7) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `cmts` varchar(20) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  KEY `serviciocms` (`serviciocms`)
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

/*Table structure for table `tmp_alarmas_interface` */

DROP TABLE IF EXISTS `tmp_alarmas_interface`;

CREATE TABLE `tmp_alarmas_interface` (
  `cmts` varchar(20) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `muestra` bigint(21) NOT NULL DEFAULT '0',
  `prom_usnr` double(18,1) DEFAULT NULL,
  `prom_dsnr` double(18,1) DEFAULT NULL,
  `prom_uspwr` double(18,1) DEFAULT NULL,
  `prom_dspwr` double(18,1) DEFAULT NULL,
  `min_uspwr` double(18,1) DEFAULT NULL,
  `max_uspwr` double(18,1) DEFAULT NULL,
  `min_dspwr` double(18,1) DEFAULT NULL,
  `max_dspwr` double(18,1) DEFAULT NULL,
  `clientes` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `llave` varchar(35) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `description` varchar(35) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `nodotroba` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `trobaOrigen` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `microzona` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `zona` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `fecha` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '',
  KEY `llave` (`llave`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/* Procedure structure for procedure `sp_limpia_excepciones` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_limpia_excepciones` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `sp_limpia_excepciones`()
BEGIN
	TRUNCATE TABLE temporal.elim_codser;
	INSERT INTO temporal.elim_codser SELECT codserv FROM catalogos.`excepciones` a INNER JOIN temporal.`planta_hfc_comercial` b
	ON a.`codserv`=b.`serviciocms`
	INNER  JOIN catalogos.`velocidades` c
	ON a.`SERVICEPACKAGE`=c.`SERVICEPACKAGE`
	WHERE c.`veloc_comercial`<b.`velocidad_actual`;
	DELETE FROM catalogos.`excepciones` WHERE codserv IN (SELECT codserv FROM temporal.elim_codser);
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

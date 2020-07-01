/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - trabajos
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`trabajos` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `trabajos`;

/*Table structure for table `cambios` */

DROP TABLE IF EXISTS `cambios`;

CREATE TABLE `cambios` (
  `codreq` int(11) DEFAULT NULL,
  `codnod` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `codcli` int(11) DEFAULT NULL,
  `codctr` int(11) DEFAULT NULL,
  `fec_registro` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `fec_prog` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `fecprog` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `tiempo` varchar(5) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cliente` */

DROP TABLE IF EXISTS `cliente`;

CREATE TABLE `cliente` (
  `cliente` int(11) DEFAULT NULL,
  KEY `cliente` (`cliente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `dataedif_hfc` */

DROP TABLE IF EXISTS `dataedif_hfc`;

CREATE TABLE `dataedif_hfc` (
  `CLIENTE` int(10) DEFAULT NULL,
  `CUENTA` int(10) DEFAULT NULL,
  `SERVICIO` int(20) DEFAULT NULL,
  `CON_SRV` int(11) DEFAULT NULL,
  `CLASESRV` varchar(2) DEFAULT NULL,
  `TIPOSRV` int(11) DEFAULT NULL,
  `CATEGORIA` varchar(3) DEFAULT NULL,
  `OFI_CLI` varchar(3) DEFAULT NULL,
  `OFI_SRV` varchar(3) DEFAULT NULL,
  `CODDPT` varchar(3) DEFAULT NULL,
  `DESDPT` varchar(15) DEFAULT NULL,
  `CODPVC` varchar(3) DEFAULT NULL,
  `DESPVC` varchar(30) DEFAULT NULL,
  `CODDTT` varchar(3) DEFAULT NULL,
  `DESDTT` varchar(40) DEFAULT NULL,
  `INDFACT` varchar(2) DEFAULT NULL,
  `NODO` varchar(4) DEFAULT NULL,
  `DESNODO` varchar(30) DEFAULT NULL,
  `PLANO` varchar(5) DEFAULT NULL,
  `XIND_VIP` varchar(1) DEFAULT NULL,
  `TIPO_DOCUM` varchar(2) DEFAULT NULL,
  `NUMERORUC` varchar(20) DEFAULT NULL,
  `NUMERODOC` varchar(20) DEFAULT NULL,
  `TELEFCL1` varchar(15) DEFAULT NULL,
  `TELEFCL2` varchar(15) DEFAULT NULL,
  `TELEFCL3` varchar(15) DEFAULT NULL,
  `PETICATIS` varchar(20) DEFAULT NULL,
  `SEGMCLIENT` varchar(10) DEFAULT NULL,
  `ESTADODUNA` varchar(15) DEFAULT NULL,
  `NOMBRE` varchar(50) DEFAULT NULL,
  `APE_PAT` varchar(50) DEFAULT NULL,
  `APE_MAT` varchar(40) DEFAULT NULL,
  `CODNIT` varchar(10) DEFAULT NULL,
  `UBIGEOGIS` varchar(10) DEFAULT NULL,
  `DESUBIGEGI` varchar(40) DEFAULT NULL,
  `CODLEX` varchar(10) DEFAULT NULL,
  `CODTAP` varchar(10) DEFAULT NULL,
  `CODBOR` varchar(10) DEFAULT NULL,
  `DIREC_INST` varchar(90) DEFAULT NULL,
  `IND_DUO` varchar(10) DEFAULT NULL,
  `tipo_linea` varchar(6) DEFAULT NULL,
  `telef_ip` varchar(10) DEFAULT NULL,
  `prom_linea` varchar(47) DEFAULT NULL,
  `des_prom_linea` varchar(60) DEFAULT NULL,
  `nodeid` varchar(10) DEFAULT NULL,
  `veloc_cms` int(10) DEFAULT NULL,
  `tiptec` varchar(50) DEFAULT NULL,
  `localidad` varchar(30) DEFAULT NULL,
  `torre` varchar(6) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `Movistar_Total` varchar(1) DEFAULT NULL,
  `UBIPLAN` varchar(9) DEFAULT NULL,
  `PAIS` varchar(4) DEFAULT NULL,
  `UBIGEO` varchar(6) DEFAULT NULL,
  `ZONAL_ANT` varchar(3) DEFAULT NULL,
  `REGION` varchar(8) DEFAULT NULL,
  `ZONAL_NEW` varchar(10) DEFAULT NULL,
  `IND_DUNA` varchar(10) DEFAULT NULL,
  `AÑO_DUN` varchar(6) DEFAULT NULL,
  `CRUCE` varchar(4) DEFAULT NULL,
  `PAQUETE` varchar(15) DEFAULT NULL,
  `PAQUETE1` varchar(15) DEFAULT NULL,
  `SUB_NEG` varchar(4) DEFAULT NULL,
  `PROVEEDOR` varchar(4) DEFAULT NULL,
  `TECNOLOGIA` varchar(10) DEFAULT NULL,
  `PERU8K` varchar(7) DEFAULT NULL,
  `MARCAA` varchar(3) DEFAULT NULL,
  `CND_SRV_09` int(11) DEFAULT NULL,
  `CND_SRV_10` int(11) DEFAULT NULL,
  `CND_SRV_11` int(11) DEFAULT NULL,
  `EXCLUSANT` varchar(50) DEFAULT NULL,
  `PROV_ANT` varchar(12) DEFAULT NULL,
  `NEGO_ANT` varchar(10) DEFAULT NULL,
  `CSER_ANT` varchar(2) DEFAULT NULL,
  `PAQU_ANT` varchar(15) DEFAULT NULL,
  `PAQU1_ANT` varchar(10) DEFAULT NULL,
  `SEGMENTO` varchar(15) DEFAULT NULL,
  `SEGMENTO0` varchar(15) DEFAULT NULL,
  `EX_CTA` varchar(13) DEFAULT NULL,
  `MARCA_SUS` int(11) DEFAULT NULL,
  `EXCLU_SUS` varchar(32) DEFAULT NULL,
  `EX_BJ_INCO` varchar(50) DEFAULT NULL,
  `IND_EXCLUS` varchar(46) DEFAULT NULL,
  `SEG_CMS` varchar(2) DEFAULT NULL,
  `JEFCOM` varchar(10) DEFAULT NULL,
  `EECC` varchar(8) DEFAULT NULL,
  `REGION_COC` varchar(8) DEFAULT NULL,
  `ZON_REGION` varchar(4) DEFAULT NULL,
  `PREM_MAS` varchar(7) DEFAULT NULL,
  `DET_REGION` varchar(15) DEFAULT NULL,
  `JEF_REGION` varchar(8) DEFAULT NULL,
  `SEG_SLAS` varchar(11) DEFAULT NULL,
  `TOP_NOTOP` varchar(17) DEFAULT NULL,
  `JEFATU_NUE` varchar(4) DEFAULT NULL,
  `CLIEN_SRV` varchar(15) DEFAULT NULL,
  `MICROZONA` varchar(10) DEFAULT NULL,
  `LLAVE_UBIG` varchar(15) DEFAULT NULL,
  `TERRENO` varchar(15) DEFAULT NULL,
  `EXCLUYE` varchar(1) DEFAULT NULL,
  `IND_VIP` varchar(1) DEFAULT NULL,
  `TELEFONO` int(11) DEFAULT NULL,
  `TIPO` varchar(10) DEFAULT NULL,
  `DIRECCION` varchar(75) DEFAULT NULL,
  `IP` varchar(20) DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `CMTS` varchar(20) DEFAULT NULL,
  `TEC` varchar(5) DEFAULT NULL,
  `DIGITALIZA` varchar(2) DEFAULT NULL,
  `PAQUETE_HD` varchar(2) DEFAULT NULL,
  `SERVPACK` varchar(50) DEFAULT NULL,
  `VEL_SERVPA` varchar(10) DEFAULT NULL,
  `TIPO_VIA` varchar(4) DEFAULT NULL,
  `VIA` varchar(39) DEFAULT NULL,
  `NRO` varchar(6) DEFAULT NULL,
  `PISO` varchar(4) DEFAULT NULL,
  `INTERIOR` varchar(7) DEFAULT NULL,
  `MZ` varchar(7) DEFAULT NULL,
  `LT` varchar(7) DEFAULT NULL,
  `tipourbani` varchar(6) DEFAULT NULL,
  `urbanizaci` varchar(32) DEFAULT NULL,
  `TIPOPERU8K` varchar(20) DEFAULT NULL,
  `CLIENCCM1` varchar(2) DEFAULT NULL,
  `VOZIP` varchar(2) DEFAULT NULL,
  `PRODCOMER` varchar(100) DEFAULT NULL,
  `VEL_PRODCO` varchar(50) DEFAULT NULL,
  `DIGITAL2` int(11) DEFAULT NULL,
  `DIG_FECHA` varchar(20) DEFAULT NULL,
  `DIG_ESTADO` varchar(18) DEFAULT NULL,
  `DECO_ACT` int(11) DEFAULT NULL,
  `DECO_SUSP` int(11) DEFAULT NULL,
  `TIPREQ_PED` varchar(10) DEFAULT NULL,
  `proceso` date DEFAULT NULL,
  `FECHA_CARGA` char(10) DEFAULT NULL,
  `UNICO` char(2) CHARACTER SET utf8 DEFAULT NULL,
  `numcoo_x` varchar(30) DEFAULT NULL,
  `numcoo_y` varchar(30) DEFAULT NULL,
  `fuentexy` varchar(30) DEFAULT NULL,
  `nodotroba` varchar(10) DEFAULT NULL,
  `naked` varchar(20) DEFAULT NULL,
  `clicuenser` varchar(40) DEFAULT NULL,
  `grupo_microzona` varchar(15) DEFAULT NULL,
  `mtotal` varchar(2) DEFAULT NULL,
  `identifica` varchar(20) DEFAULT NULL,
  UNIQUE KEY `CLIENTE_2` (`CLIENTE`,`SERVICIO`),
  KEY `CLIENTE` (`CLIENTE`),
  KEY `CLASESRV` (`CLASESRV`),
  KEY `TIPOSRV` (`TIPOSRV`),
  KEY `OFI_CLI` (`OFI_CLI`),
  KEY `DESDPT` (`DESDPT`),
  KEY `CODDPT` (`CODDPT`),
  KEY `CODPVC` (`CODPVC`),
  KEY `DESPVC` (`DESPVC`),
  KEY `CODDTT` (`CODDTT`),
  KEY `DESDTT` (`DESDTT`),
  KEY `NODO` (`NODO`),
  KEY `PLANO` (`PLANO`),
  KEY `TELEFCL1` (`TELEFCL1`),
  KEY `TELEFCL2` (`TELEFCL2`),
  KEY `TELEFCL3` (`TELEFCL3`),
  KEY `UNICO` (`UNICO`),
  KEY `NOMBRE` (`NOMBRE`),
  KEY `CUENTA` (`CUENTA`),
  KEY `APE_MAT` (`APE_MAT`),
  KEY `APE_PAT` (`APE_PAT`),
  KEY `identifica` (`identifica`),
  KEY `clicuenser` (`clicuenser`),
  KEY `grupo_microzona` (`grupo_microzona`),
  KEY `mtotal` (`mtotal`),
  KEY `SERVICIO` (`SERVICIO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `dataedif_hfc_xx` */

DROP TABLE IF EXISTS `dataedif_hfc_xx`;

CREATE TABLE `dataedif_hfc_xx` (
  `CLIENTE` int(10) DEFAULT NULL,
  `CUENTA` int(10) DEFAULT NULL,
  `SERVICIO` int(11) NOT NULL,
  `CON_SRV` int(11) DEFAULT NULL,
  `CLASESRV` varchar(2) DEFAULT NULL,
  `TIPOSRV` int(11) DEFAULT NULL,
  `CATEGORIA` varchar(3) DEFAULT NULL,
  `OFI_CLI` varchar(3) DEFAULT NULL,
  `OFI_SRV` varchar(3) DEFAULT NULL,
  `CODDPT` varchar(3) DEFAULT NULL,
  `DESDPT` varchar(15) DEFAULT NULL,
  `CODPVC` varchar(3) DEFAULT NULL,
  `DESPVC` varchar(30) DEFAULT NULL,
  `CODDTT` varchar(3) DEFAULT NULL,
  `DESDTT` varchar(40) DEFAULT NULL,
  `INDFACT` varchar(2) DEFAULT NULL,
  `NODO` varchar(4) DEFAULT NULL,
  `DESNODO` varchar(30) DEFAULT NULL,
  `PLANO` varchar(5) DEFAULT NULL,
  `XIND_VIP` varchar(1) DEFAULT NULL,
  `TIPO_DOCUM` varchar(2) DEFAULT NULL,
  `NUMERORUC` varchar(12) DEFAULT NULL,
  `NUMERODOC` varchar(10) DEFAULT NULL,
  `TELEFCL1` varchar(15) DEFAULT NULL,
  `TELEFCL2` varchar(15) DEFAULT NULL,
  `TELEFCL3` varchar(15) DEFAULT NULL,
  `PETICATIS` varchar(20) DEFAULT NULL,
  `SEGMCLIENT` varchar(10) DEFAULT NULL,
  `ESTADODUNA` varchar(15) DEFAULT NULL,
  `NOMBRE` varchar(50) DEFAULT NULL,
  `APE_PAT` varchar(50) DEFAULT NULL,
  `APE_MAT` varchar(40) DEFAULT NULL,
  `CODNIT` varchar(10) DEFAULT NULL,
  `UBIGEOGIS` varchar(10) DEFAULT NULL,
  `DESUBIGEGI` varchar(40) DEFAULT NULL,
  `CODLEX` varchar(10) DEFAULT NULL,
  `CODTAP` varchar(10) DEFAULT NULL,
  `CODBOR` varchar(10) DEFAULT NULL,
  `DIREC_INST` varchar(90) DEFAULT NULL,
  `IND_DUO` varchar(10) DEFAULT NULL,
  `tipo_linea` varchar(6) DEFAULT NULL,
  `telef_ip` varchar(10) DEFAULT NULL,
  `prom_linea` varchar(47) DEFAULT NULL,
  `des_prom_linea` varchar(60) DEFAULT NULL,
  `nodeid` varchar(10) DEFAULT NULL,
  `veloc_cms` int(10) DEFAULT NULL,
  `tiptec` varchar(50) DEFAULT NULL,
  `localidad` varchar(30) DEFAULT NULL,
  `torre` varchar(6) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `UBIPLAN` varchar(9) DEFAULT NULL,
  `PAIS` varchar(4) DEFAULT NULL,
  `UBIGEO` varchar(6) DEFAULT NULL,
  `ZONAL_ANT` varchar(3) DEFAULT NULL,
  `REGION` varchar(8) DEFAULT NULL,
  `ZONAL_NEW` varchar(10) DEFAULT NULL,
  `IND_DUNA` varchar(10) DEFAULT NULL,
  `AÃ‘O_DUN` varchar(6) DEFAULT NULL,
  `CRUCE` varchar(4) DEFAULT NULL,
  `PAQUETE` varchar(15) DEFAULT NULL,
  `PAQUETE1` varchar(15) DEFAULT NULL,
  `SUB_NEG` varchar(4) DEFAULT NULL,
  `PROVEEDOR` varchar(4) DEFAULT NULL,
  `TECNOLOGIA` varchar(10) DEFAULT NULL,
  `PERU8K` varchar(7) DEFAULT NULL,
  `MARCAA` varchar(3) DEFAULT NULL,
  `CND_SRV_09` int(11) DEFAULT NULL,
  `CND_SRV_10` int(11) DEFAULT NULL,
  `CND_SRV_11` int(11) DEFAULT NULL,
  `EXCLUSANT` varchar(50) DEFAULT NULL,
  `PROV_ANT` varchar(12) DEFAULT NULL,
  `NEGO_ANT` varchar(10) DEFAULT NULL,
  `CSER_ANT` varchar(2) DEFAULT NULL,
  `PAQU_ANT` varchar(15) DEFAULT NULL,
  `PAQU1_ANT` varchar(10) DEFAULT NULL,
  `SEGMENTO` varchar(15) DEFAULT NULL,
  `SEGMENTO0` varchar(15) DEFAULT NULL,
  `EX_CTA` varchar(13) DEFAULT NULL,
  `MARCA_SUS` int(11) DEFAULT NULL,
  `EXCLU_SUS` varchar(32) DEFAULT NULL,
  `EX_BJ_INCO` varchar(50) DEFAULT NULL,
  `IND_EXCLUS` varchar(46) DEFAULT NULL,
  `SEG_CMS` varchar(2) DEFAULT NULL,
  `JEFCOM` varchar(10) DEFAULT NULL,
  `EECC` varchar(8) DEFAULT NULL,
  `REGION_COC` varchar(8) DEFAULT NULL,
  `ZON_REGION` varchar(4) DEFAULT NULL,
  `PREM_MAS` varchar(7) DEFAULT NULL,
  `DET_REGION` varchar(15) DEFAULT NULL,
  `JEF_REGION` varchar(8) DEFAULT NULL,
  `SEG_SLAS` varchar(11) DEFAULT NULL,
  `TOP_NOTOP` varchar(17) DEFAULT NULL,
  `JEFATU_NUE` varchar(4) DEFAULT NULL,
  `CLIEN_SRV` varchar(15) DEFAULT NULL,
  `MICROZONA` varchar(10) DEFAULT NULL,
  `LLAVE_UBIG` varchar(15) DEFAULT NULL,
  `TERRENO` varchar(15) DEFAULT NULL,
  `EXCLUYE` varchar(1) DEFAULT NULL,
  `IND_VIP` varchar(1) DEFAULT NULL,
  `TELEFONO` int(11) DEFAULT NULL,
  `TIPO` varchar(10) DEFAULT NULL,
  `DIRECCION` varchar(75) DEFAULT NULL,
  `IP` varchar(20) DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `CMTS` varchar(20) DEFAULT NULL,
  `TEC` varchar(5) DEFAULT NULL,
  `DIGITALIZA` varchar(2) DEFAULT NULL,
  `PAQUETE_HD` varchar(2) DEFAULT NULL,
  `SERVPACK` varchar(50) DEFAULT NULL,
  `VEL_SERVPA` varchar(10) DEFAULT NULL,
  `TIPO_VIA` varchar(4) DEFAULT NULL,
  `VIA` varchar(39) DEFAULT NULL,
  `NRO` int(6) DEFAULT NULL,
  `PISO` varchar(4) DEFAULT NULL,
  `INTERIOR` varchar(7) DEFAULT NULL,
  `MZ` varchar(7) DEFAULT NULL,
  `LT` varchar(7) DEFAULT NULL,
  `tipourbani` varchar(6) DEFAULT NULL,
  `urbanizaci` varchar(32) DEFAULT NULL,
  `TIPOPERU8K` varchar(20) DEFAULT NULL,
  `CLIENCCM1` varchar(2) DEFAULT NULL,
  `VOZIP` varchar(2) DEFAULT NULL,
  `PRODCOMER` varchar(100) DEFAULT NULL,
  `VEL_PRODCO` varchar(50) DEFAULT NULL,
  `DIGITAL2` int(11) DEFAULT NULL,
  `DIG_FECHA` varchar(20) DEFAULT NULL,
  `DIG_ESTADO` varchar(18) DEFAULT NULL,
  `DECO_ACT` int(11) DEFAULT NULL,
  `DECO_SUSP` int(11) DEFAULT NULL,
  `TIPREQ_PED` varchar(10) DEFAULT NULL,
  `proceso` date DEFAULT NULL,
  `FECHA_CARGA` char(10) DEFAULT NULL,
  `UNICO` char(2) CHARACTER SET utf8 DEFAULT NULL,
  `numcoo_x` varchar(30) DEFAULT NULL,
  `numcoo_y` varchar(30) DEFAULT NULL,
  `fuentexy` varchar(30) DEFAULT NULL,
  `nodotroba` varchar(10) DEFAULT NULL,
  `naked` varchar(20) DEFAULT NULL,
  UNIQUE KEY `SERVICIO` (`SERVICIO`),
  KEY `CLIENTE` (`CLIENTE`),
  KEY `DESDTT` (`DESDTT`),
  KEY `VIA` (`VIA`),
  KEY `NRO` (`NRO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `dataedif_t1` */

DROP TABLE IF EXISTS `dataedif_t1`;

CREATE TABLE `dataedif_t1` (
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
  `desdtt` varchar(40) DEFAULT NULL,
  `via` varchar(39) DEFAULT NULL,
  `nro` int(6) DEFAULT NULL,
  KEY `mac2` (`mac2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `detallesmasde1modem` */

DROP TABLE IF EXISTS `detallesmasde1modem`;

CREATE TABLE `detallesmasde1modem` (
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
  `MACADDRESS` varchar(25) DEFAULT NULL,
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
  `unico` char(2) CHARACTER SET utf8 DEFAULT NULL,
  UNIQUE KEY `mac3` (`mac3`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `edif_level` */

DROP TABLE IF EXISTS `edif_level`;

CREATE TABLE `edif_level` (
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `EMPRESA` varchar(3) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `idempresacrm` int(11) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `idventa` double DEFAULT NULL,
  `NAMECLIENT` varchar(100) DEFAULT NULL,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `amplificador` varchar(20) DEFAULT NULL,
  `tap` varchar(20) DEFAULT NULL,
  `telf1` varchar(20) DEFAULT NULL,
  `telf2` varchar(20) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `regver` varchar(3) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
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
  `naked` varchar(50) DEFAULT NULL,
  `numcoo_x` varchar(30) DEFAULT NULL,
  `numcoo_y` varchar(30) DEFAULT NULL,
  `desdtt` varchar(40) DEFAULT NULL,
  `via` varchar(39) DEFAULT NULL,
  `nro` int(6) DEFAULT NULL,
  `USPwr` varchar(20) DEFAULT NULL,
  `USMER_SNR` varchar(20) DEFAULT NULL,
  `DSPwr` varchar(20) DEFAULT NULL,
  `DSMER_SNR` varchar(20) DEFAULT NULL,
  `estado_l` varchar(13) CHARACTER SET utf8 DEFAULT NULL,
  UNIQUE KEY `MACADDRESS` (`MACADDRESS`),
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`),
  KEY `cmts` (`cmts`),
  KEY `NODO` (`NODO`),
  KEY `TROBA` (`TROBA`),
  KEY `codserv` (`codserv`),
  KEY `desdtt` (`desdtt`),
  KEY `via` (`via`),
  KEY `nro` (`nro`),
  KEY `mac2` (`mac2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `encuestas_negocio` */

DROP TABLE IF EXISTS `encuestas_negocio`;

CREATE TABLE `encuestas_negocio` (
  `TELEFONO` varchar(20) NOT NULL DEFAULT '',
  `INSCRIPCION` varchar(20) NOT NULL DEFAULT '',
  `RUC_CLIENTE` varchar(20) NOT NULL DEFAULT '',
  `MACROSEGMENTO` varchar(20) NOT NULL DEFAULT '',
  `SEGMENTO` varchar(35) NOT NULL DEFAULT '',
  `TIPO_PC` varchar(20) NOT NULL DEFAULT '',
  `TIPO_LINEA` varchar(20) NOT NULL DEFAULT '',
  `NOTA` decimal(10,0) NOT NULL DEFAULT '0',
  `OBSERVACIONES` varchar(200) NOT NULL DEFAULT '',
  `segest` varchar(10) NOT NULL DEFAULT '',
  `desseg` varchar(20) NOT NULL DEFAULT '',
  `gruposeg` varchar(30) NOT NULL DEFAULT '',
  `dpto` varchar(40) NOT NULL DEFAULT '',
  `prov` varchar(40) NOT NULL DEFAULT '',
  `nom_dist` varchar(60) NOT NULL DEFAULT '',
  `tiposerv` varchar(10) NOT NULL DEFAULT '',
  `tipozona` varchar(10) NOT NULL DEFAULT '',
  `modalidad` varchar(20) NOT NULL DEFAULT '',
  `perfil_actual` varchar(35) NOT NULL DEFAULT '',
  `mpproducto` varchar(30) NOT NULL DEFAULT '',
  `nveloc` decimal(10,0) NOT NULL DEFAULT '0',
  `stability` varchar(10) NOT NULL DEFAULT '',
  `recomendacion` varchar(20) NOT NULL DEFAULT '',
  `tecnologia` varchar(15) NOT NULL DEFAULT '',
  `status_sat` varchar(10) NOT NULL DEFAULT '',
  `nodotroba` varchar(10) NOT NULL DEFAULT '',
  `mdf_cabprim` varchar(15) NOT NULL DEFAULT '',
  `mdf_cab` varchar(10) NOT NULL DEFAULT '',
  `llave_rd_rf` varchar(15) NOT NULL DEFAULT '',
  `codclicms` varchar(15) NOT NULL DEFAULT '',
  `codservcms` varchar(15) NOT NULL DEFAULT '',
  `codcliserv` varchar(25) NOT NULL DEFAULT '',
  `grupo` varchar(35) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `espacios_duplicados` */

DROP TABLE IF EXISTS `espacios_duplicados`;

CREATE TABLE `espacios_duplicados` (
  `id_cliente` double DEFAULT NULL,
  `count(*)` bigint(21) NOT NULL,
  KEY `id_cliente` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `fechacierre` */

DROP TABLE IF EXISTS `fechacierre`;

CREATE TABLE `fechacierre` (
  `nodo` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_inicio` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `fechafin` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `tiempo` varchar(10) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  UNIQUE KEY `codmasiva` (`codmasiva`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_inicio` (`fecha_inicio`),
  KEY `fechafin` (`fechafin`),
  KEY `nodo_2` (`nodo`,`troba`,`fecha_inicio`,`fechafin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `joha` */

DROP TABLE IF EXISTS `joha`;

CREATE TABLE `joha` (
  `telefono` int(11) DEFAULT NULL,
  `doc` bigint(20) DEFAULT NULL,
  `ruc` bigint(20) DEFAULT NULL,
  KEY `telefono` (`telefono`),
  KEY `doc` (`doc`),
  KEY `ruc` (`ruc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `mac_cpe_modem_direccion` */

DROP TABLE IF EXISTS `mac_cpe_modem_direccion`;

CREATE TABLE `mac_cpe_modem_direccion` (
  `macmodem` varchar(25) DEFAULT NULL,
  `maccpe` varchar(20) NOT NULL,
  `ippublica` varchar(20) DEFAULT NULL,
  `ipprivada` varchar(20) DEFAULT NULL,
  `cmts` varchar(30) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `amplificador` varchar(11) DEFAULT NULL,
  `tap` varchar(11) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `codserv` varchar(20) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `nodo_ant` varchar(4) DEFAULT NULL,
  `troba_ant` varchar(5) DEFAULT NULL,
  `CODLEX` varchar(10) DEFAULT NULL,
  `CODTAP` varchar(10) DEFAULT NULL,
  `DESDPT` varchar(15) DEFAULT NULL,
  `DESPVC` varchar(30) DEFAULT NULL,
  `DESDTT` varchar(40) DEFAULT NULL,
  `TIPO_VIA` varchar(4) DEFAULT NULL,
  `VIA` varchar(39) DEFAULT NULL,
  `NRO` varchar(6) DEFAULT NULL,
  `PISO` varchar(4) DEFAULT NULL,
  `INTERIOR` varchar(7) DEFAULT NULL,
  `MZ` varchar(7) DEFAULT NULL,
  `LT` varchar(7) DEFAULT NULL,
  UNIQUE KEY `macmodem` (`macmodem`),
  KEY `DESDTT` (`DESDTT`),
  KEY `VIA` (`VIA`),
  KEY `NRO` (`NRO`),
  KEY `maccpe` (`maccpe`),
  KEY `ippublica` (`ippublica`),
  KEY `ipprivada` (`ipprivada`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `masde1modem` */

DROP TABLE IF EXISTS `masde1modem`;

CREATE TABLE `masde1modem` (
  `idclientecrm` double NOT NULL,
  PRIMARY KEY (`idclientecrm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `nclientes_depurado` */

DROP TABLE IF EXISTS `nclientes_depurado`;

CREATE TABLE `nclientes_depurado` (
  `EMPRESA` varchar(3) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `idempresacrm` varchar(11) DEFAULT NULL,
  `idservicio` varchar(11) DEFAULT NULL,
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
  `fecha_upload` varchar(20) DEFAULT NULL,
  `naked` varchar(50) DEFAULT NULL,
  `numcoo_x` varchar(20) DEFAULT NULL,
  `numcoo_y` varchar(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex3` (`MACADDRESS`),
  KEY `NewIndex1` (`IDCLIENTECRM`),
  KEY `NewIndex2` (`NAMECLIENT`),
  KEY `idxservicepackage` (`SERVICEPACKAGE`),
  KEY `idx3` (`SERVICEPACKAGECRMID`),
  KEY `idxnodo` (`NODO`),
  KEY `idxtroba` (`TROBA`),
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
  KEY `codserv` (`codserv`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `nfraude` */

DROP TABLE IF EXISTS `nfraude`;

CREATE TABLE `nfraude` (
  `ID_Cliente` double DEFAULT NULL,
  `ID_Servicio_CM` int(11) DEFAULT NULL,
  `ID_Producto_CM` double DEFAULT NULL,
  `Service_Package_CRMID` varchar(50) DEFAULT NULL,
  `Fecha_Alta` varchar(20) DEFAULT NULL,
  `macaddress` varchar(20) DEFAULT NULL,
  `mtamac` varchar(20) DEFAULT NULL,
  `idproductomta` varchar(15) DEFAULT NULL,
  `idventamta` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `nfraude_vacio` */

DROP TABLE IF EXISTS `nfraude_vacio`;

CREATE TABLE `nfraude_vacio` (
  `ID_Cliente` double DEFAULT NULL,
  `ID_Servicio_CM` int(11) DEFAULT NULL,
  `ID_Producto_CM` double DEFAULT NULL,
  `Service_Package_CRMID` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `nuevos_truchos` */

DROP TABLE IF EXISTS `nuevos_truchos`;

CREATE TABLE `nuevos_truchos` (
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
  UNIQUE KEY `MACADDRESS` (`MACADDRESS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `procesos_lin` */

DROP TABLE IF EXISTS `procesos_lin`;

CREATE TABLE `procesos_lin` (
  `usuario` varchar(30) DEFAULT NULL,
  `proc` int(11) DEFAULT NULL,
  `id1` int(11) DEFAULT NULL,
  `id2` int(11) DEFAULT NULL,
  `num3` int(11) DEFAULT NULL,
  `num4` int(11) DEFAULT NULL,
  `preg` varchar(3) DEFAULT NULL,
  `tip` varchar(3) DEFAULT NULL,
  `hora1` varchar(5) DEFAULT NULL,
  `hora2` varchar(5) DEFAULT NULL,
  `proceso` varchar(300) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  KEY `proc` (`proc`),
  KEY `proceso` (`proceso`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `procesos_lin_c` */

DROP TABLE IF EXISTS `procesos_lin_c`;

CREATE TABLE `procesos_lin_c` (
  `usuario` varchar(30) DEFAULT NULL,
  `proc` int(11) DEFAULT NULL,
  `id1` int(11) DEFAULT NULL,
  `id2` int(11) DEFAULT NULL,
  `num3` int(11) DEFAULT NULL,
  `num4` int(11) DEFAULT NULL,
  `preg` varchar(3) DEFAULT NULL,
  `tip` varchar(3) DEFAULT NULL,
  `hora1` varchar(5) DEFAULT NULL,
  `hora2` varchar(5) DEFAULT NULL,
  `proceso` varchar(300) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  KEY `proc` (`proc`),
  KEY `proceso` (`proceso`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `resultado` */

DROP TABLE IF EXISTS `resultado`;

CREATE TABLE `resultado` (
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
  `MACADDRESS` varchar(25) DEFAULT NULL,
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
  `unico` char(2) CHARACTER SET utf8 DEFAULT NULL,
  `codcliente` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `desccondcl` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `descconsrv` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `edocompxsr` char(10) DEFAULT NULL
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

/*Table structure for table `scm_total` */

DROP TABLE IF EXISTS `scm_total`;

CREATE TABLE `scm_total` (
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

/*Table structure for table `temp_nodeid` */

DROP TABLE IF EXISTS `temp_nodeid`;

CREATE TABLE `temp_nodeid` (
  `nodeid` int(11) DEFAULT NULL,
  `telpiloto` int(11) NOT NULL,
  `telims` int(11) DEFAULT NULL,
  PRIMARY KEY (`telpiloto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tmpFlash` */

DROP TABLE IF EXISTS `tmpFlash`;

CREATE TABLE `tmpFlash` (
  `COD_UNICO` varchar(20) NOT NULL DEFAULT '',
  `FECHA_REG` varchar(20) NOT NULL DEFAULT '',
  `FECHA_LIQU` varchar(20) NOT NULL DEFAULT '',
  `DD_REG` varchar(10) NOT NULL DEFAULT '',
  `MM_REG` varchar(10) NOT NULL DEFAULT '',
  `DD_LIQ` varchar(10) NOT NULL DEFAULT '',
  `MM_LIQ` varchar(10) NOT NULL DEFAULT '',
  `SEG_SLAS` varchar(20) NOT NULL DEFAULT '',
  `TOP_NOTOP` varchar(30) NOT NULL DEFAULT '',
  `EECC_REG` varchar(20) NOT NULL DEFAULT '',
  `DESDPT` varchar(35) NOT NULL DEFAULT '',
  `LLAVE_CLI` varchar(20) NOT NULL DEFAULT '',
  `TELEFONO` varchar(20) NOT NULL DEFAULT '',
  `SERVICIO1` varchar(15) NOT NULL DEFAULT '',
  `RUBRO_MAQ` varchar(20) NOT NULL DEFAULT '',
  `q01` decimal(10,0) NOT NULL DEFAULT '0',
  `q02` decimal(10,0) NOT NULL DEFAULT '0',
  `q03` decimal(10,0) NOT NULL DEFAULT '0',
  `q04` decimal(10,0) NOT NULL DEFAULT '0',
  `q05` decimal(10,0) NOT NULL DEFAULT '0',
  `last_local_call_time` varchar(20) NOT NULL DEFAULT '',
  `q01_1a10` decimal(10,0) NOT NULL DEFAULT '0',
  `SOLUCION` varchar(10) NOT NULL DEFAULT '',
  `q03_1a10` decimal(10,0) NOT NULL DEFAULT '0',
  `q04_1a10` decimal(10,0) NOT NULL DEFAULT '0',
  `des_liq` varchar(35) NOT NULL DEFAULT '',
  `desdet_liq` varchar(40) NOT NULL DEFAULT '',
  `observ` varchar(100) NOT NULL DEFAULT '',
  `region` varchar(20) NOT NULL DEFAULT '',
  `jef_cmr` varchar(20) NOT NULL DEFAULT '',
  `eecc` varchar(15) NOT NULL DEFAULT '',
  `mz_premium` varchar(15) NOT NULL DEFAULT '',
  `ave_toa` varchar(15) NOT NULL DEFAULT '',
  `tiposerv` varchar(10) NOT NULL DEFAULT '',
  `tipopaq` varchar(10) NOT NULL DEFAULT '',
  `perfil_actual` varchar(35) NOT NULL DEFAULT '',
  `stability` varchar(10) NOT NULL DEFAULT '',
  `nveloc` varchar(10) NOT NULL DEFAULT '',
  `ds_synch_rate` varchar(10) NOT NULL DEFAULT '',
  `rservice_m12` varchar(10) NOT NULL DEFAULT '',
  `recomendacion` varchar(15) NOT NULL DEFAULT '',
  `nodotroba` varchar(15) NOT NULL DEFAULT '',
  `tipozona` varchar(10) NOT NULL DEFAULT '',
  `wifi` varchar(10) NOT NULL DEFAULT '',
  `masiva` varchar(10) NOT NULL DEFAULT '',
  `llave_tel` varchar(20) NOT NULL DEFAULT '',
  `Aver3Meses` decimal(10,0) NOT NULL DEFAULT '0',
  `equipCli` decimal(10,0) NOT NULL DEFAULT '0',
  `inefec` decimal(10,0) NOT NULL DEFAULT '0',
  `redIntCli` decimal(10,0) NOT NULL DEFAULT '0',
  `redExtCli` decimal(10,0) NOT NULL DEFAULT '0',
  `equipPext` decimal(10,0) NOT NULL DEFAULT '0',
  `energia` decimal(10,0) NOT NULL DEFAULT '0',
  `fo` decimal(10,0) NOT NULL DEFAULT '0',
  `transm` decimal(10,0) NOT NULL DEFAULT '0',
  `otrosPext` decimal(10,0) NOT NULL DEFAULT '0',
  `otros` decimal(10,0) NOT NULL DEFAULT '0',
  `situacion` varchar(35) NOT NULL DEFAULT '',
  `fecha` date DEFAULT NULL,
  `semana` varchar(10) NOT NULL DEFAULT '',
  `encuestas` decimal(10,0) NOT NULL DEFAULT '0',
  `noSolucionado` decimal(10,0) NOT NULL DEFAULT '0',
  `fechaProceso` date DEFAULT NULL
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
  `fecha` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/* Procedure structure for procedure `SP_add_edificios` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_add_edificios` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `SP_add_edificios`()
BEGIN
	replace cms.planta_clarita_edificios SELECT NULL,desdtt,via,nro*1 AS nro,'','','','','','','','' FROM cms.planta_clarita WHERE nro IS NOT NULL AND nro*1 >0 GROUP BY 2,3,4 HAVING COUNT(*)>4;
	TRUNCATE TABLE trabajos.dataedif_hfc;
	INSERT IGNORE  trabajos.dataedif_hfc SELECT c.* FROM cms.planta_clarita_edificios a INNER JOIN cms.planta_clarita c ON a.desdtt=c.DESDTT AND a.via=c.VIA AND a.nro=c.NRO WHERE item > 68 and a.nro>0 GROUP BY c.servicio;
	TRUNCATE TABLE trabajos.dataedif_t1;
	INSERT INTO trabajos.dataedif_t1
	SELECT  a.EMPRESA,
	a.IDCLIENTECRM,
	a.idempresacrm,
	a.idservicio,
	a.idproducto,
	a.idventa,
	a.NAMECLIENT,
	a.NODO,
	a.TROBA,
	a.amplificador,
	a.tap,
	a.telf1,
	a.telf2,
	a.f_v,
	a.regver,
	a.cmts,
	a.MACADDRESS,
	a.SERVICEPACKAGECRMID,
	a.SERVICEPACKAGE,
	a.CANTPCS,
	a.FECHAALTA,
	a.FECHAACTIVACION,
	a.ESTADO,
	a.SCOPESGROUP,
	a.SCOPESGROUPCM,
	a.SCOPESGROUPMTA,
	a.MTAMAC,
	a.IDSERVICIOMTA,
	a.IDPRODUCTOMTA,
	a.IDVENTAMTA,
	a.MTAMODELNAME,
	a.CMTSID,
	a.UBICACIONENLARED,
	a.IPCM,
	a.DOCSISVERSION,
	a.movil1,
	a.mac2,
	a.mac3,
	b.direc_inst as direccion,
	a.codserv,
	a.fecha_upload,
	a.naked,
	a.numcoo_x,
	a.numcoo_y,
	b.desdtt,
	b.via,
	b.nro
	FROM trabajos.dataedif_hfc b
	INNER JOIN ccm1_temporal.nclientes a
	ON a.codserv=b.servicio
	GROUP BY b.servicio;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `tempmac` */

/*!50003 DROP PROCEDURE IF EXISTS  `tempmac` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`ccm1_user`@`%` PROCEDURE `tempmac`()
BEGIN
UPDATE dbpext.tempmac SET macaddress=REPLACE(REPLACE(macaddress,'.',''),':','');
TRUNCATE TABLE trabajos.mac_cpe_modem_direccion;
INSERT IGNORE trabajos.mac_cpe_modem_direccion 
SELECT a.* FROM ccm1.mac_cpe_modem_direccion a INNER JOIN dbpext.tempmac b ON b.macaddress=a.maccpe OR b.macaddress=a.macmodem;
TRUNCATE TABLE trabajos.nclientes_depurado;
INSERT IGNORE trabajos.nclientes_depurado SELECT a.* FROM ccm1.nclientes_depurado a INNER JOIN dbpext.tempmac b ON a.mac3=b.macaddress OR a.mac3=b.macaddress;
TRUNCATE TABLE trabajos.scm_phy_t;
INSERT IGNORE trabajos.scm_phy_t SELECT a.* FROM ccm1.scm_phy_t a INNER JOIN dbpext.tempmac b ON REPLACE(a.macaddress,'.','')=b.macaddress OR REPLACE(a.macaddress,'.','')=b.macaddress;
TRUNCATE TABLE trabajos.scm_total;
INSERT IGNORE trabajos.scm_total SELECT a.* FROM ccm1.scm_total a INNER JOIN dbpext.tempmac b ON REPLACE(a.macaddress,'.','')=b.macaddress OR REPLACE(a.macaddress,'.','')=b.macaddress;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

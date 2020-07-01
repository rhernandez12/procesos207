/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - catalogos
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`catalogos` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `catalogos`;

/*Table structure for table `activo_movistar1` */

DROP TABLE IF EXISTS `activo_movistar1`;

CREATE TABLE `activo_movistar1` (
  `codcliente` int(11) DEFAULT NULL,
  `codsrv` int(11) DEFAULT NULL,
  `codoficadm` char(3) DEFAULT NULL,
  `condclite` char(3) DEFAULT NULL,
  `desccondcl` char(10) DEFAULT NULL,
  `condides` char(3) DEFAULT NULL,
  `descconsrv` char(10) DEFAULT NULL,
  `casid` char(20) DEFAULT NULL,
  `serie` char(20) DEFAULT NULL,
  `edocompxsr` char(1) DEFAULT NULL,
  `codelemsrv` char(3) DEFAULT NULL,
  `apepater` char(20) DEFAULT NULL,
  `apemat` char(20) DEFAULT NULL,
  `nombclt` char(20) DEFAULT NULL,
  `ultcodreq` char(10) DEFAULT NULL,
  `tiporeqate` char(3) DEFAULT NULL,
  `tipoadqui` char(1) DEFAULT NULL,
  `codcta` char(2) DEFAULT NULL,
  `codreqsrv` char(10) DEFAULT NULL,
  `tipocobr` char(50) DEFAULT NULL,
  `coddoc` char(10) DEFAULT NULL,
  `tipomontob` char(10) DEFAULT NULL,
  `nrocuota` char(10) DEFAULT NULL,
  `importetot` char(10) DEFAULT NULL,
  `importesal` char(10) DEFAULT NULL,
  `imporpagar` char(10) DEFAULT NULL,
  `codigotari` char(10) DEFAULT NULL,
  `descrtarif` char(10) DEFAULT NULL,
  `importota` char(10) DEFAULT NULL,
  `importtari` char(10) DEFAULT NULL,
  `codigesta` char(10) DEFAULT NULL,
  `codestareq` char(2) DEFAULT NULL,
  `estareqate` char(15) DEFAULT NULL,
  `secuencia` char(5) DEFAULT NULL,
  `claseserv` char(5) DEFAULT NULL,
  `descrclase` char(15) DEFAULT NULL,
  `motivo` char(5) DEFAULT NULL,
  `desmotivo` char(20) DEFAULT NULL,
  `codmat` char(50) DEFAULT NULL,
  `idbb` char(50) DEFAULT NULL,
  `descbb` char(50) DEFAULT NULL,
  `velocmode` char(50) DEFAULT NULL,
  `fecha_ini` char(20) DEFAULT NULL,
  `elementarj` char(5) DEFAULT NULL,
  `serietarj` char(15) DEFAULT NULL,
  `secutarj` char(3) DEFAULT NULL,
  `estatarj` char(2) DEFAULT NULL,
  `des_bk` char(50) DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `fecha_carga` char(10) DEFAULT NULL,
  `fecha_ini_date` date DEFAULT NULL,
  `otro` char(20) DEFAULT NULL,
  KEY `codcliente` (`codcliente`),
  KEY `codsrv` (`codsrv`),
  KEY `serie` (`serie`),
  KEY `idproducto` (`idproducto`),
  KEY `condclite` (`condclite`),
  KEY `condides` (`condides`),
  KEY `edocompxsr` (`edocompxsr`),
  KEY `desccondcl` (`desccondcl`),
  KEY `descconsrv` (`descconsrv`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `activo_movistar1_c` */

DROP TABLE IF EXISTS `activo_movistar1_c`;

CREATE TABLE `activo_movistar1_c` (
  `codcliente` int(11) DEFAULT NULL,
  `codsrv` int(11) DEFAULT NULL,
  `codoficadm` char(3) DEFAULT NULL,
  `condclite` char(3) DEFAULT NULL,
  `desccondcl` char(10) DEFAULT NULL,
  `condides` char(3) DEFAULT NULL,
  `descconsrv` char(10) DEFAULT NULL,
  `casid` char(20) DEFAULT NULL,
  `serie` char(20) DEFAULT NULL,
  `edocompxsr` char(1) DEFAULT NULL,
  `codelemsrv` char(3) DEFAULT NULL,
  `apepater` char(20) DEFAULT NULL,
  `apemat` char(20) DEFAULT NULL,
  `nombclt` char(20) DEFAULT NULL,
  `ultcodreq` char(10) DEFAULT NULL,
  `tiporeqate` char(3) DEFAULT NULL,
  `tipoadqui` char(1) DEFAULT NULL,
  `codcta` char(2) DEFAULT NULL,
  `codreqsrv` char(10) DEFAULT NULL,
  `tipocobr` char(50) DEFAULT NULL,
  `coddoc` char(10) DEFAULT NULL,
  `tipomontob` char(10) DEFAULT NULL,
  `nrocuota` char(10) DEFAULT NULL,
  `importetot` char(10) DEFAULT NULL,
  `importesal` char(10) DEFAULT NULL,
  `imporpagar` char(10) DEFAULT NULL,
  `codigotari` char(10) DEFAULT NULL,
  `descrtarif` char(10) DEFAULT NULL,
  `importota` char(10) DEFAULT NULL,
  `importtari` char(10) DEFAULT NULL,
  `codigesta` char(10) DEFAULT NULL,
  `codestareq` char(2) DEFAULT NULL,
  `estareqate` char(15) DEFAULT NULL,
  `secuencia` char(5) DEFAULT NULL,
  `claseserv` char(5) DEFAULT NULL,
  `descrclase` char(15) DEFAULT NULL,
  `motivo` char(5) DEFAULT NULL,
  `desmotivo` char(20) DEFAULT NULL,
  `codmat` char(50) DEFAULT NULL,
  `idbb` char(50) DEFAULT NULL,
  `descbb` char(50) DEFAULT NULL,
  `velocmode` char(50) DEFAULT NULL,
  `fecha_ini` char(20) DEFAULT NULL,
  `elementarj` char(5) DEFAULT NULL,
  `serietarj` char(15) DEFAULT NULL,
  `secutarj` char(3) DEFAULT NULL,
  `estatarj` char(2) DEFAULT NULL,
  `des_bk` char(50) DEFAULT NULL,
  `idproducto` int(20) DEFAULT NULL,
  `fecha_carga` char(10) DEFAULT NULL,
  `fecha_ini_date` date DEFAULT NULL,
  `otro` char(20) DEFAULT NULL,
  KEY `codcliente` (`codcliente`),
  KEY `codsrv` (`codsrv`),
  KEY `serie` (`serie`),
  KEY `idproducto` (`idproducto`),
  KEY `condclite` (`condclite`),
  KEY `condides` (`condides`),
  KEY `edocompxsr` (`edocompxsr`),
  KEY `desccondcl` (`desccondcl`),
  KEY `descconsrv` (`descconsrv`),
  KEY `index_codelemsrv` (`codelemsrv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `amplifxpuerto` */

DROP TABLE IF EXISTS `amplifxpuerto`;

CREATE TABLE `amplifxpuerto` (
  `cmts` varchar(50) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(3) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`interface`,`nodo`,`troba`,`amplificador`),
  KEY `cmts` (`cmts`),
  KEY `interface` (`interface`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `amplifxpuerto_c` */

DROP TABLE IF EXISTS `amplifxpuerto_c`;

CREATE TABLE `amplifxpuerto_c` (
  `cmts` varchar(50) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(3) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`interface`,`nodo`,`troba`,`amplificador`),
  KEY `cmts` (`cmts`),
  KEY `interface` (`interface`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `amplifxpuerto_g` */

DROP TABLE IF EXISTS `amplifxpuerto_g`;

CREATE TABLE `amplifxpuerto_g` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(3) DEFAULT NULL,
  UNIQUE KEY `nodo` (`nodo`,`troba`),
  KEY `nodo_2` (`nodo`),
  KEY `troba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `archivos_tania` */

DROP TABLE IF EXISTS `archivos_tania`;

CREATE TABLE `archivos_tania` (
  `item` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT NULL,
  `Descripcion` tinyblob,
  `fecha` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `autorizadosCV` */

DROP TABLE IF EXISTS `autorizadosCV`;

CREATE TABLE `autorizadosCV` (
  `macaddress` varchar(20) DEFAULT NULL,
  `velocidad` varchar(30) DEFAULT NULL,
  `fec_ini` varchar(20) DEFAULT NULL,
  `fec_fin` varchar(20) DEFAULT NULL,
  `asignado_a` varchar(100) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  UNIQUE KEY `macaddress` (`macaddress`),
  KEY `asignado_a` (`asignado_a`),
  KEY `area` (`area`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `averias_resum` */

DROP TABLE IF EXISTS `averias_resum`;

CREATE TABLE `averias_resum` (
  `nodo` varchar(10) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `dia` varchar(13) DEFAULT NULL,
  `aver` bigint(21) NOT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `dia` (`dia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `averias_resum_c` */

DROP TABLE IF EXISTS `averias_resum_c`;

CREATE TABLE `averias_resum_c` (
  `nodo` varchar(10) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `dia` varchar(13) DEFAULT NULL,
  `aver` bigint(21) NOT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `dia` (`dia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `bornesxtroba` */

DROP TABLE IF EXISTS `bornesxtroba`;

CREATE TABLE `bornesxtroba` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `numbor` int(11) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  KEY `NewIndex1` (`nodo`),
  KEY `NewIndex2` (`troba`),
  KEY `NewIndex3` (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `cable_modems_activos_cms` */

DROP TABLE IF EXISTS `cable_modems_activos_cms`;

CREATE TABLE `cable_modems_activos_cms` (
  `codcliente` int(11) DEFAULT NULL,
  `codsrv` int(11) DEFAULT NULL,
  `codoficadm` char(3) DEFAULT NULL,
  `condclite` char(3) DEFAULT NULL,
  `desccondcl` char(10) DEFAULT NULL,
  `condides` char(3) DEFAULT NULL,
  `descconsrv` char(10) DEFAULT NULL,
  `casid` char(20) DEFAULT NULL,
  `serie` char(20) DEFAULT NULL,
  `edocompxsr` char(1) DEFAULT NULL,
  `codelemsrv` char(3) DEFAULT NULL,
  `apepater` char(20) DEFAULT NULL,
  `apemat` char(20) DEFAULT NULL,
  `nombclt` char(20) DEFAULT NULL,
  `ultcodreq` char(10) DEFAULT NULL,
  `tiporeqate` char(3) DEFAULT NULL,
  `tipoadqui` char(1) DEFAULT NULL,
  `codcta` char(2) DEFAULT NULL,
  `codreqsrv` char(10) DEFAULT NULL,
  `tipocobr` char(50) DEFAULT NULL,
  `coddoc` char(10) DEFAULT NULL,
  `tipomontob` char(10) DEFAULT NULL,
  `nrocuota` char(10) DEFAULT NULL,
  `importetot` char(10) DEFAULT NULL,
  `importesal` char(10) DEFAULT NULL,
  `imporpagar` char(10) DEFAULT NULL,
  `codigotari` char(10) DEFAULT NULL,
  `descrtarif` char(10) DEFAULT NULL,
  `importota` char(10) DEFAULT NULL,
  `importtari` char(10) DEFAULT NULL,
  `codigesta` char(10) DEFAULT NULL,
  `codestareq` char(2) DEFAULT NULL,
  `estareqate` char(15) DEFAULT NULL,
  `secuencia` char(5) DEFAULT NULL,
  `claseserv` char(5) DEFAULT NULL,
  `descrclase` char(15) DEFAULT NULL,
  `motivo` char(5) DEFAULT NULL,
  `desmotivo` char(20) DEFAULT NULL,
  `codmat` char(50) DEFAULT NULL,
  `idbb` char(50) DEFAULT NULL,
  `descbb` char(50) DEFAULT NULL,
  `velocmode` char(50) DEFAULT NULL,
  `fecha_ini` char(20) DEFAULT NULL,
  `elementarj` char(5) DEFAULT NULL,
  `serietarj` char(15) DEFAULT NULL,
  `secutarj` char(3) DEFAULT NULL,
  `estatarj` char(2) DEFAULT NULL,
  `des_bk` char(50) DEFAULT NULL,
  `idproducto` varchar(20) DEFAULT NULL,
  `fecha_carga` char(10) DEFAULT NULL,
  `fecha_ini_date` date DEFAULT NULL,
  `otro` char(20) DEFAULT NULL,
  KEY `codcliente` (`codcliente`),
  KEY `codsrv` (`codsrv`),
  KEY `serie` (`serie`),
  KEY `idproducto` (`idproducto`),
  KEY `condclite` (`condclite`),
  KEY `condides` (`condides`),
  KEY `edocompxsr` (`edocompxsr`),
  KEY `desccondcl` (`desccondcl`),
  KEY `descconsrv` (`descconsrv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cable_modems_noactivos_cms` */

DROP TABLE IF EXISTS `cable_modems_noactivos_cms`;

CREATE TABLE `cable_modems_noactivos_cms` (
  `codcliente` int(11) DEFAULT NULL,
  `codsrv` int(11) DEFAULT NULL,
  `codoficadm` char(3) DEFAULT NULL,
  `condclite` char(3) DEFAULT NULL,
  `desccondcl` char(10) DEFAULT NULL,
  `condides` char(3) DEFAULT NULL,
  `descconsrv` char(10) DEFAULT NULL,
  `casid` char(20) DEFAULT NULL,
  `serie` char(20) DEFAULT NULL,
  `edocompxsr` char(1) DEFAULT NULL,
  `codelemsrv` char(3) DEFAULT NULL,
  `apepater` char(20) DEFAULT NULL,
  `apemat` char(20) DEFAULT NULL,
  `nombclt` char(20) DEFAULT NULL,
  `ultcodreq` char(10) DEFAULT NULL,
  `tiporeqate` char(3) DEFAULT NULL,
  `tipoadqui` char(1) DEFAULT NULL,
  `codcta` char(2) DEFAULT NULL,
  `codreqsrv` char(10) DEFAULT NULL,
  `tipocobr` char(50) DEFAULT NULL,
  `coddoc` char(10) DEFAULT NULL,
  `tipomontob` char(10) DEFAULT NULL,
  `nrocuota` char(10) DEFAULT NULL,
  `importetot` char(10) DEFAULT NULL,
  `importesal` char(10) DEFAULT NULL,
  `imporpagar` char(10) DEFAULT NULL,
  `codigotari` char(10) DEFAULT NULL,
  `descrtarif` char(10) DEFAULT NULL,
  `importota` char(10) DEFAULT NULL,
  `importtari` char(10) DEFAULT NULL,
  `codigesta` char(10) DEFAULT NULL,
  `codestareq` char(2) DEFAULT NULL,
  `estareqate` char(15) DEFAULT NULL,
  `secuencia` char(5) DEFAULT NULL,
  `claseserv` char(5) DEFAULT NULL,
  `descrclase` char(15) DEFAULT NULL,
  `motivo` char(5) DEFAULT NULL,
  `desmotivo` char(20) DEFAULT NULL,
  `codmat` char(50) DEFAULT NULL,
  `idbb` char(50) DEFAULT NULL,
  `descbb` char(50) DEFAULT NULL,
  `velocmode` char(50) DEFAULT NULL,
  `fecha_ini` char(20) DEFAULT NULL,
  `elementarj` char(5) DEFAULT NULL,
  `serietarj` char(15) DEFAULT NULL,
  `secutarj` char(3) DEFAULT NULL,
  `estatarj` char(2) DEFAULT NULL,
  `des_bk` char(50) DEFAULT NULL,
  `idproducto` varchar(20) DEFAULT NULL,
  `fecha_carga` char(10) DEFAULT NULL,
  `fecha_ini_date` date DEFAULT NULL,
  `otro` char(20) DEFAULT NULL,
  KEY `codcliente` (`codcliente`),
  KEY `codsrv` (`codsrv`),
  KEY `serie` (`serie`),
  KEY `idproducto` (`idproducto`),
  KEY `condclite` (`condclite`),
  KEY `condides` (`condides`),
  KEY `edocompxsr` (`edocompxsr`),
  KEY `desccondcl` (`desccondcl`),
  KEY `descconsrv` (`descconsrv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cablemodem_glciexp054_decos` */

DROP TABLE IF EXISTS `cablemodem_glciexp054_decos`;

CREATE TABLE `cablemodem_glciexp054_decos` (
  `codcliente` int(11) DEFAULT NULL,
  `codsrv` int(11) DEFAULT NULL,
  `codoficadm` char(3) DEFAULT NULL,
  `condclite` char(3) DEFAULT NULL,
  `desccondcl` char(10) DEFAULT NULL,
  `condides` char(3) DEFAULT NULL,
  `descconsrv` char(10) DEFAULT NULL,
  `casid` char(20) DEFAULT NULL,
  `serie` char(20) DEFAULT NULL,
  `edocompxsr` char(1) DEFAULT NULL,
  `codelemsrv` char(3) DEFAULT NULL,
  `apepater` char(20) DEFAULT NULL,
  `apemat` char(20) DEFAULT NULL,
  `nombclt` char(20) DEFAULT NULL,
  `ultcodreq` char(10) DEFAULT NULL,
  `tiporeqate` char(3) DEFAULT NULL,
  `tipoadqui` char(1) DEFAULT NULL,
  `codcta` char(2) DEFAULT NULL,
  `codreqsrv` char(10) DEFAULT NULL,
  `tipocobr` char(50) DEFAULT NULL,
  `coddoc` char(10) DEFAULT NULL,
  `tipomontob` char(10) DEFAULT NULL,
  `nrocuota` char(10) DEFAULT NULL,
  `importetot` char(10) DEFAULT NULL,
  `importesal` char(10) DEFAULT NULL,
  `imporpagar` char(10) DEFAULT NULL,
  `codigotari` char(10) DEFAULT NULL,
  `descrtarif` char(10) DEFAULT NULL,
  `importota` char(10) DEFAULT NULL,
  `importtari` char(10) DEFAULT NULL,
  `codigesta` char(10) DEFAULT NULL,
  `codestareq` char(2) DEFAULT NULL,
  `estareqate` char(15) DEFAULT NULL,
  `secuencia` char(5) DEFAULT NULL,
  `claseserv` char(5) DEFAULT NULL,
  `descrclase` char(15) DEFAULT NULL,
  `motivo` char(5) DEFAULT NULL,
  `desmotivo` char(20) DEFAULT NULL,
  `codmat` char(50) DEFAULT NULL,
  `idbb` char(50) DEFAULT NULL,
  `descbb` char(50) DEFAULT NULL,
  `velocmode` char(50) DEFAULT NULL,
  `fecha_ini` char(20) DEFAULT NULL,
  `elementarj` char(5) DEFAULT NULL,
  `serietarj` char(15) DEFAULT NULL,
  `secutarj` char(3) DEFAULT NULL,
  `estatarj` char(2) DEFAULT NULL,
  `des_bk` char(50) DEFAULT NULL,
  `idproducto` varchar(20) DEFAULT NULL,
  `fecha_carga` char(10) DEFAULT NULL,
  `fecha_ini_date` date DEFAULT NULL,
  `otro` char(20) DEFAULT NULL,
  KEY `codcliente` (`codcliente`),
  KEY `codsrv` (`codsrv`),
  KEY `serie` (`serie`),
  KEY `idproducto` (`idproducto`),
  KEY `edocompxsr` (`edocompxsr`),
  KEY `casid` (`casid`),
  KEY `serietarj` (`serietarj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cablemodem_glciexp054_decos_c` */

DROP TABLE IF EXISTS `cablemodem_glciexp054_decos_c`;

CREATE TABLE `cablemodem_glciexp054_decos_c` (
  `codcliente` int(11) DEFAULT NULL,
  `codsrv` int(11) DEFAULT NULL,
  `codoficadm` char(3) DEFAULT NULL,
  `condclite` char(3) DEFAULT NULL,
  `desccondcl` char(10) DEFAULT NULL,
  `condides` char(3) DEFAULT NULL,
  `descconsrv` char(10) DEFAULT NULL,
  `casid` char(20) DEFAULT NULL,
  `serie` char(20) DEFAULT NULL,
  `edocompxsr` char(1) DEFAULT NULL,
  `codelemsrv` char(3) DEFAULT NULL,
  `apepater` char(20) DEFAULT NULL,
  `apemat` char(20) DEFAULT NULL,
  `nombclt` char(20) DEFAULT NULL,
  `ultcodreq` char(10) DEFAULT NULL,
  `tiporeqate` char(3) DEFAULT NULL,
  `tipoadqui` char(1) DEFAULT NULL,
  `codcta` char(2) DEFAULT NULL,
  `codreqsrv` char(10) DEFAULT NULL,
  `tipocobr` char(50) DEFAULT NULL,
  `coddoc` char(10) DEFAULT NULL,
  `tipomontob` char(10) DEFAULT NULL,
  `nrocuota` char(10) DEFAULT NULL,
  `importetot` char(10) DEFAULT NULL,
  `importesal` char(10) DEFAULT NULL,
  `imporpagar` char(10) DEFAULT NULL,
  `codigotari` char(10) DEFAULT NULL,
  `descrtarif` char(10) DEFAULT NULL,
  `importota` char(10) DEFAULT NULL,
  `importtari` char(10) DEFAULT NULL,
  `codigesta` char(10) DEFAULT NULL,
  `codestareq` char(2) DEFAULT NULL,
  `estareqate` char(15) DEFAULT NULL,
  `secuencia` char(5) DEFAULT NULL,
  `claseserv` char(5) DEFAULT NULL,
  `descrclase` char(15) DEFAULT NULL,
  `motivo` char(5) DEFAULT NULL,
  `desmotivo` char(20) DEFAULT NULL,
  `codmat` char(50) DEFAULT NULL,
  `idbb` char(50) DEFAULT NULL,
  `descbb` char(50) DEFAULT NULL,
  `velocmode` char(50) DEFAULT NULL,
  `fecha_ini` char(20) DEFAULT NULL,
  `elementarj` char(5) DEFAULT NULL,
  `serietarj` char(15) DEFAULT NULL,
  `secutarj` char(3) DEFAULT NULL,
  `estatarj` char(2) DEFAULT NULL,
  `des_bk` char(50) DEFAULT NULL,
  `idproducto` varchar(20) DEFAULT NULL,
  `fecha_carga` char(10) DEFAULT NULL,
  `fecha_ini_date` date DEFAULT NULL,
  `otro` char(20) DEFAULT NULL,
  KEY `codcliente` (`codcliente`),
  KEY `codsrv` (`codsrv`),
  KEY `serie` (`serie`),
  KEY `idproducto` (`idproducto`),
  KEY `edocompxsr` (`edocompxsr`),
  KEY `casid` (`casid`),
  KEY `serietarj` (`serietarj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `casid` */

DROP TABLE IF EXISTS `casid`;

CREATE TABLE `casid` (
  `codcliente` varchar(10) DEFAULT NULL,
  `codsrv` varchar(10) DEFAULT NULL,
  `casid` varchar(20) DEFAULT NULL,
  `descconsrv` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `catalogo_trobas` */

DROP TABLE IF EXISTS `catalogo_trobas`;

CREATE TABLE `catalogo_trobas` (
  `oficina` varchar(100) DEFAULT NULL,
  `nodo` varchar(100) DEFAULT NULL,
  `troba` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `catv_descodliq` */

DROP TABLE IF EXISTS `catv_descodliq`;

CREATE TABLE `catv_descodliq` (
  `codliq` varchar(5) DEFAULT NULL,
  `desliq` varchar(150) DEFAULT NULL,
  `coddet` varchar(5) DEFAULT NULL,
  `desdet` varchar(150) DEFAULT NULL,
  `sumcod` varchar(20) DEFAULT NULL,
  KEY `NewIndex1` (`codliq`),
  KEY `NewIndex2` (`coddet`),
  KEY `NewIndex3` (`sumcod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `causaalert` */

DROP TABLE IF EXISTS `causaalert`;

CREATE TABLE `causaalert` (
  `idcausa` int(11) NOT NULL AUTO_INCREMENT,
  `causa` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idcausa`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=latin1;

/*Table structure for table `cgnat_a_cpe` */

DROP TABLE IF EXISTS `cgnat_a_cpe`;

CREATE TABLE `cgnat_a_cpe` (
  `idclientecrm` int(11) DEFAULT NULL,
  `fecha_cambio` varchar(20) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `porque` varchar(100) DEFAULT NULL,
  UNIQUE KEY `idclientecrm` (`idclientecrm`),
  KEY `fecha_cambio` (`fecha_cambio`),
  KEY `porque` (`porque`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `clientes` */

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `empresa` varchar(3) DEFAULT NULL,
  `clientes` double DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `fechaalta` varchar(20) DEFAULT NULL,
  KEY `NewIndex1` (`clientes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ClientesXY` */

DROP TABLE IF EXISTS `ClientesXY`;

CREATE TABLE `ClientesXY` (
  `cliente` varchar(20) DEFAULT NULL,
  `servicio` varchar(20) DEFAULT NULL,
  `nodotroba` varchar(10) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `latitud` varchar(20) DEFAULT NULL,
  `longitud` varchar(20) DEFAULT NULL,
  `fecregserv` varchar(20) DEFAULT NULL,
  `marca_nodo` varchar(1) DEFAULT NULL,
  `fecha` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `nrodoc` varchar(10) DEFAULT NULL,
  `lat2` varchar(10) DEFAULT NULL,
  `lon2` varchar(10) DEFAULT NULL,
  `lat1` varchar(10) DEFAULT NULL,
  `lon1` varchar(10) DEFAULT NULL,
  KEY `cliente` (`cliente`),
  KEY `latitud` (`latitud`),
  KEY `longitud` (`longitud`),
  KEY `lat2` (`lat2`),
  KEY `lon2` (`lon2`),
  KEY `lat1` (`lat1`),
  KEY `lon1` (`lon1`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `cmts_puertos` */

DROP TABLE IF EXISTS `cmts_puertos`;

CREATE TABLE `cmts_puertos` (
  `interface` varchar(9) NOT NULL DEFAULT '',
  `trobas` varchar(100) DEFAULT NULL,
  `cmts` varchar(20) NOT NULL DEFAULT '',
  `fecha_hora` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`interface`,`cmts`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `codcontrata` */

DROP TABLE IF EXISTS `codcontrata`;

CREATE TABLE `codcontrata` (
  `codctr_rdc` int(11) NOT NULL,
  `codctr_pext` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codctr_rdc`,`codctr_pext`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `codfraude` */

DROP TABLE IF EXISTS `codfraude`;

CREATE TABLE `codfraude` (
  `idproducto` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `contrata` */

DROP TABLE IF EXISTS `contrata`;

CREATE TABLE `contrata` (
  `contrata` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `convergente` */

DROP TABLE IF EXISTS `convergente`;

CREATE TABLE `convergente` (
  `codigo` int(11) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `dataNombres` */

DROP TABLE IF EXISTS `dataNombres`;

CREATE TABLE `dataNombres` (
  `idclientecrm` double NOT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idclientecrm`),
  KEY `nombre` (`nombre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `devices` */

DROP TABLE IF EXISTS `devices`;

CREATE TABLE `devices` (
  `iddevice` int(11) DEFAULT NULL,
  `device` varchar(200) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `interfaces_cacti` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `dias` */

DROP TABLE IF EXISTS `dias`;

CREATE TABLE `dias` (
  `dia` int(11) NOT NULL AUTO_INCREMENT,
  `desdia` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dia`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Table structure for table `enlacexmarca` */

DROP TABLE IF EXISTS `enlacexmarca`;

CREATE TABLE `enlacexmarca` (
  `fabricante` varchar(20) DEFAULT NULL,
  `link` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `enlacexoui` */

DROP TABLE IF EXISTS `enlacexoui`;

CREATE TABLE `enlacexoui` (
  `oui` varchar(8) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `link` varchar(10) CHARACTER SET utf8 NOT NULL,
  `count(*)` bigint(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `enlacexoui_c` */

DROP TABLE IF EXISTS `enlacexoui_c`;

CREATE TABLE `enlacexoui_c` (
  `oui` varchar(8) DEFAULT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `link` varchar(10) CHARACTER SET utf8 NOT NULL,
  UNIQUE KEY `oui` (`oui`,`marca`,`modelo`),
  UNIQUE KEY `oui_2` (`oui`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `error_envio_campo` */

DROP TABLE IF EXISTS `error_envio_campo`;

CREATE TABLE `error_envio_campo` (
  `liquidacion` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`liquidacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `espacios_eliminados` */

DROP TABLE IF EXISTS `espacios_eliminados`;

CREATE TABLE `espacios_eliminados` (
  `ID_Empresa` varchar(5) DEFAULT NULL,
  `Empresa` varchar(5) DEFAULT NULL,
  `ID_Cliente` double DEFAULT NULL,
  `Nombre_Cliente` varchar(150) DEFAULT NULL,
  `ID_Servicio_CM` double DEFAULT NULL,
  `ID_Producto_CM` double DEFAULT NULL,
  `ID_Venta_CM` double DEFAULT NULL,
  `Service_Package_CRMID` varchar(30) DEFAULT NULL,
  `Service_Package_Configurado` varchar(30) DEFAULT NULL,
  `Cantidad_PCs` varchar(11) DEFAULT NULL,
  `Fecha_Alta` varchar(20) DEFAULT NULL,
  `Grupo_Red_CM` varchar(20) DEFAULT NULL,
  `ID_Servicio_MTA` varchar(100) DEFAULT NULL,
  `ID_Producto_MTA` varchar(100) DEFAULT NULL,
  `ID_Venta_MTA` varchar(100) DEFAULT NULL,
  `Grupo_Red_MTA` varchar(100) DEFAULT NULL,
  `Numero_Telefono` varchar(20) DEFAULT NULL,
  `Esp_Fecha_Alta` varchar(8) DEFAULT NULL,
  `Nclientes_Fecha_Alta` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `etiqueta_puertos` */

DROP TABLE IF EXISTS `etiqueta_puertos`;

CREATE TABLE `etiqueta_puertos` (
  `cmts` varchar(20) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`interface`),
  KEY `cmts` (`cmts`),
  KEY `interface` (`interface`),
  KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `etiqueta_puertos_c` */

DROP TABLE IF EXISTS `etiqueta_puertos_c`;

CREATE TABLE `etiqueta_puertos_c` (
  `cmts` varchar(20) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`interface`),
  KEY `cmts` (`cmts`),
  KEY `interface` (`interface`),
  KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `excepciones` */

DROP TABLE IF EXISTS `excepciones`;

CREATE TABLE `excepciones` (
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
  `naked` varchar(2) DEFAULT NULL,
  `numcoo_x` varchar(20) DEFAULT NULL,
  `numcoo_y` varchar(20) DEFAULT NULL,
  `fecha_inic` varchar(20) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `devuelto` varchar(1) DEFAULT NULL,
  `nvel` varchar(20) DEFAULT NULL,
  `subido` varchar(1) DEFAULT NULL,
  UNIQUE KEY `IDCLIENTECRM` (`IDCLIENTECRM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `fechas` */

DROP TABLE IF EXISTS `fechas`;

CREATE TABLE `fechas` (
  `fecha` varchar(10) NOT NULL,
  PRIMARY KEY (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `geo_alarma_tap_colores` */

DROP TABLE IF EXISTS `geo_alarma_tap_colores`;

CREATE TABLE `geo_alarma_tap_colores` (
  `color` varchar(10) DEFAULT NULL,
  `significa` varchar(40) DEFAULT NULL,
  KEY `idxcolor` (`color`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `geo_nodopoligono` */

DROP TABLE IF EXISTS `geo_nodopoligono`;

CREATE TABLE `geo_nodopoligono` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zonal` varchar(4) DEFAULT NULL,
  `nodo` varchar(30) DEFAULT NULL,
  `coord_x` varchar(20) DEFAULT NULL,
  `coord_y` varchar(20) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zonal` (`zonal`),
  KEY `idx_nodo` (`nodo`)
) ENGINE=InnoDB AUTO_INCREMENT=28568 DEFAULT CHARSET=utf8;

/*Table structure for table `geo_troba` */

DROP TABLE IF EXISTS `geo_troba`;

CREATE TABLE `geo_troba` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zonal` varchar(5) DEFAULT NULL,
  `nodo` varchar(10) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `coord_x` varchar(20) DEFAULT NULL,
  `coord_y` varchar(20) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zonal` (`zonal`),
  KEY `idx_nodo` (`nodo`),
  KEY `idx_troba` (`troba`)
) ENGINE=InnoDB AUTO_INCREMENT=151339 DEFAULT CHARSET=utf8;

/*Table structure for table `graficos` */

DROP TABLE IF EXISTS `graficos`;

CREATE TABLE `graficos` (
  `iddevice` int(10) unsigned DEFAULT NULL,
  `idgrafico` int(255) NOT NULL,
  `interfaz` varchar(255) DEFAULT NULL,
  `interfaz2` varchar(255) DEFAULT NULL,
  `c2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idgrafico`),
  KEY `idxdevice` (`iddevice`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `hola` */

DROP TABLE IF EXISTS `hola`;

CREATE TABLE `hola` (
  `c1` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `horas` */

DROP TABLE IF EXISTS `horas`;

CREATE TABLE `horas` (
  `HORAS` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`HORAS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `idproducto_cv` */

DROP TABLE IF EXISTS `idproducto_cv`;

CREATE TABLE `idproducto_cv` (
  `idproducto` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `internostdp_nclientes` */

DROP TABLE IF EXISTS `internostdp_nclientes`;

CREATE TABLE `internostdp_nclientes` (
  `EMPRESA` varchar(3) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `idempresacrm` int(11) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `idventa` double DEFAULT NULL,
  `NAMECLIENT` varchar(100) DEFAULT NULL,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `amplificador` int(11) DEFAULT NULL,
  `tap` int(11) DEFAULT NULL,
  `telf1` varchar(10) DEFAULT NULL,
  `telf2` varchar(10) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `regver` varchar(3) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `CANTPCS` int(11) DEFAULT NULL,
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
  `CMTSID` int(11) DEFAULT NULL,
  `UBICACIONENLARED` varchar(150) DEFAULT NULL,
  `IPCM` varchar(20) DEFAULT NULL,
  `DOCSISVERSION` int(11) DEFAULT NULL,
  `movil1` int(20) DEFAULT NULL,
  `mac2` varchar(20) DEFAULT NULL,
  `mac3` varchar(20) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `codserv` varchar(20) DEFAULT NULL,
  `fecha_upload` varchar(20) DEFAULT NULL,
  `naked` varchar(2) DEFAULT NULL,
  `numcoo_x` varchar(20) DEFAULT NULL,
  `numcoo_y` varchar(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`MACADDRESS`),
  KEY `NewIndex2` (`IDCLIENTECRM`),
  KEY `idproducto` (`idproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `jefaturas` */

DROP TABLE IF EXISTS `jefaturas`;

CREATE TABLE `jefaturas` (
  `dpto` varchar(80) DEFAULT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `distrito` varchar(100) DEFAULT NULL,
  `nodo` varchar(5) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `region` varchar(20) DEFAULT NULL,
  `jef_cmr` varchar(10) DEFAULT NULL,
  `det_region` varchar(20) DEFAULT NULL,
  `sede` varchar(20) DEFAULT NULL,
  `xprem_mas` varchar(20) DEFAULT NULL,
  `eecc` varchar(20) DEFAULT NULL,
  `supervisor` varchar(100) DEFAULT NULL,
  `entrenador` varchar(100) DEFAULT NULL,
  `zona` varchar(20) DEFAULT NULL,
  `zon_region` varchar(20) DEFAULT NULL,
  `playas` int(11) DEFAULT NULL,
  `jefa_nuevo` varchar(10) DEFAULT NULL,
  `jefa_tac` varchar(10) DEFAULT NULL,
  `bono` varchar(10) DEFAULT NULL,
  `terreno` varchar(20) DEFAULT NULL,
  `mplayas` varchar(20) DEFAULT NULL,
  `codctr` varchar(20) DEFAULT NULL,
  `jefatura` varchar(20) DEFAULT NULL,
  `jefatura_torre` varchar(20) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `jefatura_torre` (`jefatura_torre`),
  KEY `jefatura` (`jefatura`),
  KEY `codctr` (`codctr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `llamadas_ivr` */

DROP TABLE IF EXISTS `llamadas_ivr`;

CREATE TABLE `llamadas_ivr` (
  `Media_Server_IXN_ID` varchar(14) DEFAULT NULL,
  `Aplicaciones` varchar(8) DEFAULT NULL,
  `Fecha_Inicio` varchar(16) DEFAULT NULL,
  `De` int(11) DEFAULT NULL,
  `Fecha_Fin` varchar(16) DEFAULT NULL,
  `Hora_Inicio` varchar(16) DEFAULT NULL,
  `Hora_Fin` varchar(16) DEFAULT NULL,
  `Duracion` int(11) DEFAULT NULL,
  `GUID` varchar(100) DEFAULT NULL,
  `Intervalo_Horas` varchar(13) DEFAULT NULL,
  `Intervalo_30_Minutos` varchar(13) DEFAULT NULL,
  `Intervalo_15_Minutos` varchar(13) DEFAULT NULL,
  `Day` varchar(20) DEFAULT NULL,
  `Dia_de_la_Semana` varchar(20) DEFAULT NULL,
  `CDR_GUID` varchar(100) DEFAULT NULL,
  `Evento` varchar(60) DEFAULT NULL,
  `Hora_Evento` varchar(16) DEFAULT NULL,
  `Nro_Evento` int(11) DEFAULT NULL,
  `Session_ID` varchar(17) DEFAULT NULL,
  `Fecha_Evento` varchar(16) DEFAULT NULL,
  KEY `De` (`De`),
  KEY `Fecha_Inicio` (`Fecha_Inicio`),
  KEY `Fecha_Fin` (`Fecha_Fin`),
  KEY `Day` (`Day`),
  KEY `De_2` (`De`),
  KEY `Fecha_Inicio_2` (`Fecha_Inicio`),
  KEY `Fecha_Fin_2` (`Fecha_Fin`),
  KEY `Day_2` (`Day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `llamadasxtroba` */

DROP TABLE IF EXISTS `llamadasxtroba`;

CREATE TABLE `llamadasxtroba` (
  `nodo` varchar(2) DEFAULT NULL,
  `troban` varchar(4) DEFAULT NULL,
  `llamadas` bigint(21) NOT NULL DEFAULT '0',
  KEY `NewIndex1` (`nodo`),
  KEY `NewIndex2` (`troban`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `llamadasxtroba_c` */

DROP TABLE IF EXISTS `llamadasxtroba_c`;

CREATE TABLE `llamadasxtroba_c` (
  `nodo` varchar(2) DEFAULT NULL,
  `troban` varchar(4) DEFAULT NULL,
  `llamadas` bigint(21) NOT NULL DEFAULT '0',
  KEY `NewIndex1` (`nodo`),
  KEY `NewIndex2` (`troban`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `macaddress` */

DROP TABLE IF EXISTS `macaddress`;

CREATE TABLE `macaddress` (
  `macaddress` varchar(20) DEFAULT NULL,
  KEY `macaddress` (`macaddress`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `macstate` */

DROP TABLE IF EXISTS `macstate`;

CREATE TABLE `macstate` (
  `macstate` varchar(20) NOT NULL,
  `estado` varchar(20) CHARACTER SET utf8 NOT NULL,
  UNIQUE KEY `macstate` (`macstate`),
  KEY `estado` (`estado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `map_colores` */

DROP TABLE IF EXISTS `map_colores`;

CREATE TABLE `map_colores` (
  `resultado` int(11) NOT NULL,
  `color` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`resultado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `mes` */

DROP TABLE IF EXISTS `mes`;

CREATE TABLE `mes` (
  `mes` varchar(10) DEFAULT NULL,
  `desmes` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `microzonas` */

DROP TABLE IF EXISTS `microzonas`;

CREATE TABLE `microzonas` (
  `item` int(11) NOT NULL AUTO_INCREMENT,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `microzona` varchar(20) DEFAULT NULL,
  `eecc` char(20) DEFAULT NULL,
  `nodotroba` varchar(50) DEFAULT NULL,
  `flag` int(1) DEFAULT NULL,
  PRIMARY KEY (`item`),
  UNIQUE KEY `nodo_2` (`nodo`,`troba`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `microzona` (`microzona`),
  KEY `eecc` (`eecc`),
  KEY `nodotroba` (`nodotroba`)
) ENGINE=InnoDB AUTO_INCREMENT=443 DEFAULT CHARSET=latin1;

/*Table structure for table `microzonas_c` */

DROP TABLE IF EXISTS `microzonas_c`;

CREATE TABLE `microzonas_c` (
  `item` int(11) NOT NULL AUTO_INCREMENT,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `microzona` varchar(20) DEFAULT NULL,
  `eecc` char(20) DEFAULT NULL,
  `nodotroba` varchar(50) DEFAULT NULL,
  `flag` int(1) DEFAULT NULL,
  PRIMARY KEY (`item`),
  UNIQUE KEY `nodo_2` (`nodo`,`troba`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `microzona` (`microzona`),
  KEY `eecc` (`eecc`),
  KEY `nodotroba` (`nodotroba`)
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=latin1;

/*Table structure for table `migraciones` */

DROP TABLE IF EXISTS `migraciones`;

CREATE TABLE `migraciones` (
  `nodo_hfc` varchar(2) NOT NULL,
  `troba_hfc` varchar(4) NOT NULL,
  `nodo_cms` varchar(4) NOT NULL,
  `troba_cms` varchar(5) NOT NULL,
  `count(*)` bigint(21) NOT NULL,
  PRIMARY KEY (`nodo_hfc`,`troba_hfc`,`nodo_cms`,`troba_cms`),
  KEY `nodo_hfc` (`nodo_hfc`),
  KEY `trobahfc` (`troba_hfc`),
  KEY `nodo_cms` (`nodo_cms`),
  KEY `troba_cms` (`troba_cms`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `movistar_total` */

DROP TABLE IF EXISTS `movistar_total`;

CREATE TABLE `movistar_total` (
  `serviciocms` int(11) DEFAULT NULL,
  `clientecms` int(11) DEFAULT NULL,
  `productoFijo` varchar(150) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `fechaaltaAtis` varchar(20) DEFAULT NULL,
  `documento` int(11) DEFAULT NULL,
  `telf1` int(11) DEFAULT NULL,
  `telf2` int(11) DEFAULT NULL,
  `telf3` int(11) DEFAULT NULL,
  `telf4` int(11) DEFAULT NULL,
  `fechaalta` varchar(20) DEFAULT NULL,
  UNIQUE KEY `serviciocms` (`serviciocms`,`clientecms`),
  KEY `clientecms` (`clientecms`),
  KEY `telefono` (`telefono`),
  KEY `fechaalta` (`fechaalta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `movistar_total_c` */

DROP TABLE IF EXISTS `movistar_total_c`;

CREATE TABLE `movistar_total_c` (
  `serviciocms` int(11) DEFAULT NULL,
  `clientecms` int(11) DEFAULT NULL,
  `productoFijo` varchar(150) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `fechaaltaAtis` varchar(20) DEFAULT NULL,
  `documento` int(11) DEFAULT NULL,
  `telf1` int(11) DEFAULT NULL,
  `telf2` int(11) DEFAULT NULL,
  `telf3` int(11) DEFAULT NULL,
  `telf4` int(11) DEFAULT NULL,
  `fechaalta` varchar(20) DEFAULT NULL,
  UNIQUE KEY `serviciocms` (`serviciocms`,`clientecms`),
  KEY `clientecms` (`clientecms`),
  KEY `telefono` (`telefono`),
  KEY `fechaalta` (`fechaalta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `nclientes_modificar_comercial` */

DROP TABLE IF EXISTS `nclientes_modificar_comercial`;

CREATE TABLE `nclientes_modificar_comercial` (
  `IDCLIENTECRM` double DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idventa` double DEFAULT NULL,
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `veloc_comercial` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `numeros_piloto_ccm1` */

DROP TABLE IF EXISTS `numeros_piloto_ccm1`;

CREATE TABLE `numeros_piloto_ccm1` (
  `TELEFONO` varchar(255) DEFAULT NULL,
  `NODEID` varchar(255) DEFAULT NULL,
  `NOMBRES` varchar(255) DEFAULT NULL,
  `COD_CLIENTE` varchar(255) DEFAULT NULL,
  `MARCA` varchar(255) DEFAULT NULL,
  `MODELO` varchar(255) DEFAULT NULL,
  `MAC_CM` varchar(255) DEFAULT NULL,
  `MAC_MTA` varchar(255) DEFAULT NULL,
  `FECHA_UPDATE` varchar(255) DEFAULT NULL,
  `OBSERVACIONES` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `operador` */

DROP TABLE IF EXISTS `operador`;

CREATE TABLE `operador` (
  `OPERADOR` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `pago_fractalia` */

DROP TABLE IF EXISTS `pago_fractalia`;

CREATE TABLE `pago_fractalia` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `cant` int(21) DEFAULT NULL,
  `off` int(21) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `tiempo` time DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `tipo` varchar(217) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `parametros_rf` */

DROP TABLE IF EXISTS `parametros_rf`;

CREATE TABLE `parametros_rf` (
  `parametro` varchar(15) DEFAULT NULL,
  `vmin` int(10) DEFAULT NULL,
  `vmax` int(10) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `parametros_rf_c` */

DROP TABLE IF EXISTS `parametros_rf_c`;

CREATE TABLE `parametros_rf_c` (
  `parametro` varchar(15) DEFAULT NULL,
  `vmin` int(10) DEFAULT NULL,
  `vmax` int(10) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `pendientes_nodo_troba` */

DROP TABLE IF EXISTS `pendientes_nodo_troba`;

CREATE TABLE `pendientes_nodo_troba` (
  `nodotroba` varchar(6) NOT NULL,
  `mensaje` varchar(200) NOT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `fechahora` varchar(20) NOT NULL,
  UNIQUE KEY `nodo` (`nodotroba`),
  KEY `fechahora` (`fechahora`),
  KEY `nodo_2` (`nodo`),
  KEY `troba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `piloto_edificios` */

DROP TABLE IF EXISTS `piloto_edificios`;

CREATE TABLE `piloto_edificios` (
  `telefono` int(11) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `servicio` int(11) DEFAULT NULL,
  `departamen` varchar(100) DEFAULT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `distrito` varchar(100) DEFAULT NULL,
  `desurb` varchar(100) DEFAULT NULL,
  `desref` varchar(100) DEFAULT NULL,
  `codofeprod` varchar(100) DEFAULT NULL,
  `tipdoc` varchar(100) DEFAULT NULL,
  `numdocidt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `planos` */

DROP TABLE IF EXISTS `planos`;

CREATE TABLE `planos` (
  `clave` varchar(20) NOT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `playas2` */

DROP TABLE IF EXISTS `playas2`;

CREATE TABLE `playas2` (
  `idclientecrm` int(11) DEFAULT NULL,
  `macaddress` varchar(18) DEFAULT NULL,
  KEY `idclientecrm` (`idclientecrm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `premium` */

DROP TABLE IF EXISTS `premium`;

CREATE TABLE `premium` (
  `troba` varchar(6) NOT NULL,
  PRIMARY KEY (`troba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `proveedores` */

DROP TABLE IF EXISTS `proveedores`;

CREATE TABLE `proveedores` (
  `oui` varchar(10) DEFAULT NULL,
  `marca` varchar(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`oui`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `querys` */

DROP TABLE IF EXISTS `querys`;

CREATE TABLE `querys` (
  `Detalle` varchar(300) DEFAULT NULL,
  `query_` longblob,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `redesip_n` */

DROP TABLE IF EXISTS `redesip_n`;

CREATE TABLE `redesip_n` (
  `cmts` varchar(30) DEFAULT NULL,
  `subnet` varchar(20) DEFAULT NULL,
  `netmask` varchar(20) DEFAULT NULL,
  `gateway` varchar(20) DEFAULT NULL,
  `rangefrom` varchar(20) DEFAULT NULL,
  `rangeto` varchar(20) DEFAULT NULL,
  `subnetid` varchar(20) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `used` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `scopesgroup` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts` (`cmts`,`subnet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `reiteradas7dias` */

DROP TABLE IF EXISTS `reiteradas7dias`;

CREATE TABLE `reiteradas7dias` (
  `codcli` int(11) NOT NULL,
  `nodotroba` varchar(10) DEFAULT NULL,
  `fecliq` varchar(20) DEFAULT NULL,
  `s7` int(11) DEFAULT NULL,
  `dmogen` varchar(80) DEFAULT NULL,
  `ti_cdliq` varchar(80) DEFAULT NULL,
  `ti_cdes` varchar(80) DEFAULT NULL,
  `rubro_maq` varchar(80) DEFAULT NULL,
  `re_ddetliq` varchar(80) DEFAULT NULL,
  `re_descliq` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`codcli`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `reiteradas7dias_c` */

DROP TABLE IF EXISTS `reiteradas7dias_c`;

CREATE TABLE `reiteradas7dias_c` (
  `codcli` int(11) NOT NULL,
  `nodotroba` varchar(10) DEFAULT NULL,
  `fecliq` varchar(20) DEFAULT NULL,
  `s7` int(11) DEFAULT NULL,
  `dmogen` varchar(80) DEFAULT NULL,
  `ti_cdliq` varchar(80) DEFAULT NULL,
  `ti_cdes` varchar(80) DEFAULT NULL,
  `rubro_maq` varchar(80) DEFAULT NULL,
  `re_ddetliq` varchar(80) DEFAULT NULL,
  `re_descliq` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`codcli`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `requerimientos_100mb` */

DROP TABLE IF EXISTS `requerimientos_100mb`;

CREATE TABLE `requerimientos_100mb` (
  `tipreq` varchar(2) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `codmotv` varchar(10) DEFAULT NULL,
  `descmov` varchar(100) DEFAULT NULL,
  `tipvisges` varchar(20) DEFAULT NULL,
  `tiplinea` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `Saturados_20150710` */

DROP TABLE IF EXISTS `Saturados_20150710`;

CREATE TABLE `Saturados_20150710` (
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
  `fecha_upload` varchar(20) DEFAULT NULL,
  `servicepackagecrmid_temp` varchar(50) DEFAULT NULL,
  `actual` double DEFAULT NULL,
  `final` varchar(10) DEFAULT NULL,
  `fecha_proc` varchar(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`MACADDRESS`),
  KEY `NewIndex2` (`IDCLIENTECRM`),
  KEY `NewIndex3` (`NODO`),
  KEY `NewIndex4` (`TROBA`),
  KEY `NewIndex5` (`mac2`),
  KEY `NewIndex6` (`mac3`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `scm_sum_view` */

DROP TABLE IF EXISTS `scm_sum_view`;

CREATE TABLE `scm_sum_view` (
  `interface` varchar(20) DEFAULT NULL,
  `cm_tot` int(11) DEFAULT NULL,
  `cm_reg` int(11) DEFAULT NULL,
  `cm_oper` int(11) DEFAULT NULL,
  `cm_unreg` int(11) DEFAULT NULL,
  `cm_offline` int(11) DEFAULT NULL,
  `widband` int(11) DEFAULT NULL,
  `inicrc` int(11) DEFAULT NULL,
  `initd` int(11) DEFAULT NULL,
  `initio` int(11) DEFAULT NULL,
  `init0` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `ultimo` varchar(10) DEFAULT NULL,
  `interface6` varchar(10) DEFAULT NULL,
  `playa` varchar(10) DEFAULT NULL,
  KEY `cmts` (`cmts`),
  KEY `interface` (`interface`),
  KEY `playa` (`playa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `serie_unica` */

DROP TABLE IF EXISTS `serie_unica`;

CREATE TABLE `serie_unica` (
  `codcliente` int(11) DEFAULT NULL,
  `serie` char(20) CHARACTER SET utf8 DEFAULT NULL,
  KEY `serie` (`serie`),
  KEY `codcliente` (`codcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `serie_unica_nc` */

DROP TABLE IF EXISTS `serie_unica_nc`;

CREATE TABLE `serie_unica_nc` (
  `idclientecrm` double DEFAULT NULL,
  `mac3` varchar(20) DEFAULT NULL,
  KEY `idclientecrm` (`idclientecrm`),
  KEY `mac3` (`mac3`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `showfull` */

DROP TABLE IF EXISTS `showfull`;

CREATE TABLE `showfull` (
  `Id` int(11) DEFAULT NULL,
  `User` varchar(20) DEFAULT NULL,
  `Host` varchar(30) DEFAULT NULL,
  `db` varchar(20) DEFAULT NULL,
  `Command` varchar(20) DEFAULT NULL,
  `Time` int(11) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  `Info` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `TB_Contratas` */

DROP TABLE IF EXISTS `TB_Contratas`;

CREATE TABLE `TB_Contratas` (
  `codigo` int(11) NOT NULL,
  `tipo` varchar(30) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Abrev` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tb_trobas_digitalizadas` */

DROP TABLE IF EXISTS `tb_trobas_digitalizadas`;

CREATE TABLE `tb_trobas_digitalizadas` (
  `zonal` varchar(25) NOT NULL DEFAULT '',
  `nodotroba` varchar(20) NOT NULL DEFAULT '',
  `t_digi` varchar(20) NOT NULL DEFAULT '',
  `fecha` date DEFAULT NULL,
  `eecc` varchar(20) NOT NULL DEFAULT '',
  `proyecto` varchar(20) NOT NULL DEFAULT '',
  `fe_ini_reparto` varchar(25) NOT NULL DEFAULT '',
  `estado` varchar(20) NOT NULL DEFAULT '',
  `observacion` varchar(45) NOT NULL DEFAULT '',
  `nodo_p` varchar(10) NOT NULL DEFAULT '',
  `nodo_s` varchar(10) NOT NULL DEFAULT '',
  `capacidad` varchar(10) NOT NULL DEFAULT '',
  `distrito` varchar(70) NOT NULL DEFAULT '',
  `origen` varchar(60) NOT NULL DEFAULT '',
  KEY `nodotroba` (`nodotroba`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `tbctr` */

DROP TABLE IF EXISTS `tbctr`;

CREATE TABLE `tbctr` (
  `codigo` int(11) NOT NULL,
  `tipo` varchar(30) DEFAULT NULL,
  `contrata` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tecnico` */

DROP TABLE IF EXISTS `tecnico`;

CREATE TABLE `tecnico` (
  `TECNICO` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `telefonos_clarita` */

DROP TABLE IF EXISTS `telefonos_clarita`;

CREATE TABLE `telefonos_clarita` (
  `jefaturaregion` varchar(20) DEFAULT NULL,
  `jefatura` varchar(20) DEFAULT NULL,
  `telefono` int(11) NOT NULL DEFAULT '0',
  `codcli` int(11) NOT NULL DEFAULT '0',
  `veloc` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`telefono`,`codcli`),
  KEY `NewIndex1` (`codcli`),
  KEY `NewIndex2` (`telefono`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `telefonos_contacto` */

DROP TABLE IF EXISTS `telefonos_contacto`;

CREATE TABLE `telefonos_contacto` (
  `cliente` varchar(30) DEFAULT NULL,
  `servicio` varchar(30) DEFAULT NULL,
  `categoria` varchar(10) DEFAULT NULL,
  `nodo` varchar(4) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `sub_neg` varchar(15) DEFAULT NULL,
  `tipoperu8k` varchar(40) DEFAULT NULL,
  `tiptec` varchar(40) DEFAULT NULL,
  `telefcl1` varchar(15) DEFAULT NULL,
  `telefcl2` varchar(15) DEFAULT NULL,
  `telefcl3` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `telefonos_m1` */

DROP TABLE IF EXISTS `telefonos_m1`;

CREATE TABLE `telefonos_m1` (
  `telefono` int(20) NOT NULL DEFAULT '0',
  `grupo` varchar(20) DEFAULT NULL,
  `paqueterenta` varchar(20) DEFAULT NULL,
  `tecnologia` varchar(20) DEFAULT NULL,
  `clientecms` int(20) NOT NULL DEFAULT '0',
  `documento` int(20) NOT NULL DEFAULT '0',
  `movil1` int(20) NOT NULL DEFAULT '0',
  `movil2` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`telefono`,`clientecms`,`documento`,`movil1`,`movil2`),
  KEY `NewIndex1` (`clientecms`),
  KEY `NewIndex2` (`documento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `telefonos_m1_bck` */

DROP TABLE IF EXISTS `telefonos_m1_bck`;

CREATE TABLE `telefonos_m1_bck` (
  `telefono` int(20) DEFAULT NULL,
  `grupo` varchar(20) DEFAULT NULL,
  `paqueterenta` varchar(20) DEFAULT NULL,
  `tecnologia` varchar(20) DEFAULT NULL,
  `clientecms` int(20) DEFAULT NULL,
  `documento` int(20) DEFAULT NULL,
  `movil1` int(20) DEFAULT NULL,
  `movil2` int(20) DEFAULT NULL,
  KEY `NewIndex1` (`clientecms`),
  KEY `NewIndex2` (`documento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `telefonoshfc` */

DROP TABLE IF EXISTS `telefonoshfc`;

CREATE TABLE `telefonoshfc` (
  `empresa` varchar(3) DEFAULT NULL,
  `idcliente` double DEFAULT NULL,
  `idcablemodem` int(11) DEFAULT NULL,
  `idseserv` varchar(30) DEFAULT NULL,
  `idprov` varchar(30) DEFAULT NULL,
  `idvent` varchar(30) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `ddn` varchar(14) DEFAULT NULL,
  `telefono` int(14) DEFAULT NULL,
  `producto` varchar(20) DEFAULT NULL,
  `macaddress` varchar(20) DEFAULT NULL,
  `cantidadpcs` varchar(10) DEFAULT NULL,
  `fechaalta` varchar(20) DEFAULT NULL,
  `activacion` varchar(20) DEFAULT NULL,
  `hub` varchar(10) DEFAULT NULL,
  `nodo` varchar(10) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `servicepack` varchar(50) DEFAULT NULL,
  `gropoderedescm` varchar(10) DEFAULT NULL,
  `gropoderedescpe` varchar(10) DEFAULT NULL,
  `gropoderedesmta` varchar(10) DEFAULT NULL,
  `telefonohfc` int(14) DEFAULT NULL,
  KEY `NewIndex2` (`idcliente`),
  KEY `NewIndex3` (`macaddress`),
  KEY `NewIndex1` (`telefonohfc`),
  KEY `NewIndex4` (`ddn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `telefonoshfc_c` */

DROP TABLE IF EXISTS `telefonoshfc_c`;

CREATE TABLE `telefonoshfc_c` (
  `empresa` varchar(3) DEFAULT NULL,
  `idcliente` double DEFAULT NULL,
  `idcablemodem` int(11) DEFAULT NULL,
  `idseserv` varchar(30) DEFAULT NULL,
  `idprov` varchar(30) DEFAULT NULL,
  `idvent` varchar(30) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `ddn` varchar(14) DEFAULT NULL,
  `telefono` int(14) DEFAULT NULL,
  `producto` varchar(20) DEFAULT NULL,
  `macaddress` varchar(20) DEFAULT NULL,
  `cantidadpcs` varchar(10) DEFAULT NULL,
  `fechaalta` varchar(20) DEFAULT NULL,
  `activacion` varchar(20) DEFAULT NULL,
  `hub` varchar(10) DEFAULT NULL,
  `nodo` varchar(10) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `servicepack` varchar(50) DEFAULT NULL,
  `gropoderedescm` varchar(10) DEFAULT NULL,
  `gropoderedescpe` varchar(10) DEFAULT NULL,
  `gropoderedesmta` varchar(10) DEFAULT NULL,
  `telefonohfc` int(14) DEFAULT NULL,
  KEY `NewIndex2` (`idcliente`),
  KEY `NewIndex3` (`macaddress`),
  KEY `NewIndex1` (`telefonohfc`),
  KEY `NewIndex4` (`ddn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `tiempoUpgrade` */

DROP TABLE IF EXISTS `tiempoUpgrade`;

CREATE TABLE `tiempoUpgrade` (
  `tiempo` varchar(20) NOT NULL,
  `dias` int(11) DEFAULT NULL,
  PRIMARY KEY (`tiempo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tipodocsis` */

DROP TABLE IF EXISTS `tipodocsis`;

CREATE TABLE `tipodocsis` (
  `fabricante` varchar(100) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `tipodocsis` varchar(40) DEFAULT NULL,
  KEY `NewIndex1` (`fabricante`),
  KEY `NewIndex2` (`modelo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `trabajo` */

DROP TABLE IF EXISTS `trabajo`;

CREATE TABLE `trabajo` (
  `trabajo` varchar(100) DEFAULT NULL,
  KEY `NewIndex1` (`trabajo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `trabajos_programados` */

DROP TABLE IF EXISTS `trabajos_programados`;

CREATE TABLE `trabajos_programados` (
  `tipodetrabajo` varchar(200) NOT NULL DEFAULT '',
  `tipodetrabajo1` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tipodetrabajo`),
  KEY `NewIndex1` (`tipodetrabajo1`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `trobas_criticas` */

DROP TABLE IF EXISTS `trobas_criticas`;

CREATE TABLE `trobas_criticas` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  UNIQUE KEY `nodo` (`nodo`,`troba`),
  KEY `nodo_2` (`nodo`),
  KEY `troba` (`troba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `trobas_criticas_n` */

DROP TABLE IF EXISTS `trobas_criticas_n`;

CREATE TABLE `trobas_criticas_n` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `critica` int(1) NOT NULL DEFAULT '0',
  `noalerta` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `nodo_2` (`nodo`,`troba`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `critica` (`critica`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `trobas_digitalizadas` */

DROP TABLE IF EXISTS `trobas_digitalizadas`;

CREATE TABLE `trobas_digitalizadas` (
  `item` int(11) NOT NULL AUTO_INCREMENT,
  `zona` varchar(10) NOT NULL,
  `nodo` varchar(10) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `nodotroba` varchar(10) NOT NULL DEFAULT '',
  `amplif` varchar(10) DEFAULT NULL,
  `eecc` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `fechan` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`item`),
  UNIQUE KEY `NewIndex3` (`nodotroba`),
  KEY `idxNodo` (`nodo`),
  KEY `idxTroba` (`troba`)
) ENGINE=InnoDB AUTO_INCREMENT=947632 DEFAULT CHARSET=latin1;

/*Table structure for table `trobas_fuentes` */

DROP TABLE IF EXISTS `trobas_fuentes`;

CREATE TABLE `trobas_fuentes` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `mac` varchar(20) DEFAULT NULL,
  `clave` varchar(6) DEFAULT NULL,
  `mac3` varchar(20) DEFAULT NULL,
  `mac4` varchar(20) DEFAULT NULL,
  `respaldo` varchar(100) DEFAULT NULL,
  `descricion` varchar(100) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`clave`,`mac`),
  KEY `NewIndex2` (`mac3`),
  KEY `NewIndex3` (`nodo`),
  KEY `NewIndex4` (`troba`),
  KEY `NewIndex5` (`mac4`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `trobas_olt` */

DROP TABLE IF EXISTS `trobas_olt`;

CREATE TABLE `trobas_olt` (
  `cmts` varchar(50) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `troba` varchar(11) DEFAULT NULL,
  `descriporig` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts` (`cmts`,`interface`),
  KEY `cmts_2` (`cmts`),
  KEY `interface` (`interface`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `trobascriticas` */

DROP TABLE IF EXISTS `trobascriticas`;

CREATE TABLE `trobascriticas` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`nodo`,`troba`),
  KEY `NewIndex2` (`nodo`),
  KEY `NewIndex3` (`troba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `trobasm1` */

DROP TABLE IF EXISTS `trobasm1`;

CREATE TABLE `trobasm1` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  KEY `NewIndex1` (`nodo`,`troba`),
  KEY `NewIndex2` (`nodo`),
  KEY `NewIndex3` (`troba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `trobaxinterface` */

DROP TABLE IF EXISTS `trobaxinterface`;

CREATE TABLE `trobaxinterface` (
  `cmts` varchar(20) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `can` bigint(21) NOT NULL DEFAULT '0',
  KEY `cmts` (`cmts`),
  KEY `f_v` (`f_v`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `umbral_amplif` */

DROP TABLE IF EXISTS `umbral_amplif`;

CREATE TABLE `umbral_amplif` (
  `nodo` varchar(3) DEFAULT NULL,
  `troba` varchar(6) DEFAULT NULL,
  `amplificador` varchar(2) DEFAULT NULL,
  `unmbral` int(11) DEFAULT NULL,
  UNIQUE KEY `nodo` (`nodo`,`troba`),
  KEY `unmbral` (`unmbral`),
  KEY `nodo_2` (`nodo`),
  KEY `troba` (`troba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `umbral_troba` */

DROP TABLE IF EXISTS `umbral_troba`;

CREATE TABLE `umbral_troba` (
  `nodo` varchar(3) DEFAULT NULL,
  `troba` varchar(6) DEFAULT NULL,
  `unmbral` int(11) DEFAULT NULL,
  `noche` int(11) DEFAULT NULL,
  UNIQUE KEY `nodo` (`nodo`,`troba`),
  KEY `unmbral` (`unmbral`),
  KEY `nodo_2` (`nodo`),
  KEY `troba` (`troba`),
  KEY `noche` (`noche`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `velocidades` */

DROP TABLE IF EXISTS `velocidades`;

CREATE TABLE `velocidades` (
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `velocidad_final` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `conversion` varchar(2) DEFAULT NULL,
  `cgnat` varchar(2) DEFAULT NULL,
  `veloc_comercial` int(10) DEFAULT NULL,
  KEY `idx1` (`SERVICEPACKAGE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `velocidades_cambios` */

DROP TABLE IF EXISTS `velocidades_cambios`;

CREATE TABLE `velocidades_cambios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `velocidad_final` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `conversion` varchar(2) DEFAULT NULL,
  `cgnat` varchar(10) DEFAULT NULL,
  `veloc_comercial` int(10) DEFAULT NULL,
  `flag_cambio_masivo` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx1` (`SERVICEPACKAGE`),
  KEY `NewIndex1` (`veloc_comercial`)
) ENGINE=MyISAM AUTO_INCREMENT=281 DEFAULT CHARSET=latin1;

/*Table structure for table `velocidades_concilia` */

DROP TABLE IF EXISTS `velocidades_concilia`;

CREATE TABLE `velocidades_concilia` (
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `velocidad_final` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `conversion` varchar(2) DEFAULT NULL,
  `cgnat` varchar(10) DEFAULT NULL,
  `veloc_comercial` int(10) DEFAULT NULL,
  KEY `idx1` (`SERVICEPACKAGE`),
  KEY `NewIndex1` (`veloc_comercial`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `velocidades_lc_r006` */

DROP TABLE IF EXISTS `velocidades_lc_r006`;

CREATE TABLE `velocidades_lc_r006` (
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `velocidad_final` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `conversion` varchar(2) DEFAULT NULL,
  `cgnat` varchar(2) DEFAULT NULL,
  `veloc_comercial` varchar(10) DEFAULT NULL,
  KEY `idx1` (`SERVICEPACKAGE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `velocidades_m` */

DROP TABLE IF EXISTS `velocidades_m`;

CREATE TABLE `velocidades_m` (
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `velocidad_final` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `conversion` varchar(2) DEFAULT NULL,
  `cgnat` varchar(10) DEFAULT NULL,
  `veloc_comercial` int(10) DEFAULT NULL,
  `visibleweb` int(11) DEFAULT '1',
  KEY `idx1` (`SERVICEPACKAGE`),
  KEY `NewIndex1` (`veloc_comercial`),
  KEY `velocidad_final` (`velocidad_final`),
  KEY `visibleweb` (`visibleweb`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `velocidades_REGULARIZACION` */

DROP TABLE IF EXISTS `velocidades_REGULARIZACION`;

CREATE TABLE `velocidades_REGULARIZACION` (
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `velocidad_final` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `conversion` varchar(2) DEFAULT NULL,
  `cgnat` varchar(2) DEFAULT NULL,
  `veloc_comercial` varchar(10) DEFAULT NULL,
  KEY `idx1` (`SERVICEPACKAGE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `velocidades_sat` */

DROP TABLE IF EXISTS `velocidades_sat`;

CREATE TABLE `velocidades_sat` (
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `SERVICEPACKAGESAT` varchar(50) DEFAULT NULL,
  `velocidad_final` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `conversion` varchar(2) DEFAULT NULL,
  `cgnat` varchar(15) DEFAULT NULL,
  `veloc_comercial` varchar(10) DEFAULT NULL,
  `SW` varchar(1) DEFAULT NULL,
  KEY `idx1` (`SERVICEPACKAGE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `zonificacion` */

DROP TABLE IF EXISTS `zonificacion`;

CREATE TABLE `zonificacion` (
  `dpto` varchar(50) DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `distrito` varchar(50) DEFAULT NULL,
  `mdf` varchar(10) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `xunion` varchar(50) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `region` varchar(40) DEFAULT NULL,
  `jef_cmr` varchar(50) DEFAULT NULL,
  `xxllavemar` varchar(50) DEFAULT NULL,
  `det_region` varchar(50) DEFAULT NULL,
  `sede` varchar(20) DEFAULT NULL,
  `jefatura` varchar(40) DEFAULT NULL,
  `prem_mas` varchar(40) DEFAULT NULL,
  `xxeecc` varchar(40) DEFAULT NULL,
  `supervisor` varchar(40) DEFAULT NULL,
  `entrenador` varchar(100) DEFAULT NULL,
  `microzona` varchar(40) DEFAULT NULL,
  `zona` varchar(40) DEFAULT NULL,
  `zon_region` varchar(40) DEFAULT NULL,
  `xllavemar2` varchar(40) DEFAULT NULL,
  `playas` varchar(40) DEFAULT NULL,
  `eecc` varchar(40) DEFAULT NULL,
  `mzona_catv` varchar(40) DEFAULT NULL,
  `mzona_dth` varchar(40) DEFAULT NULL,
  `jefa_nuevo` varchar(40) DEFAULT NULL,
  `jefa_tac` varchar(40) DEFAULT NULL,
  `bono` varchar(40) DEFAULT NULL,
  `mzona_tac` varchar(40) DEFAULT NULL,
  `mzona_8k` varchar(40) DEFAULT NULL,
  `terreno` varchar(40) DEFAULT NULL,
  KEY `NewIndex1` (`tipo`),
  KEY `NewIndex2` (`mdf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `zonificacion_c` */

DROP TABLE IF EXISTS `zonificacion_c`;

CREATE TABLE `zonificacion_c` (
  `dpto` varchar(50) DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `distrito` varchar(50) DEFAULT NULL,
  `mdf` varchar(10) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `xunion` varchar(50) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `region` varchar(40) DEFAULT NULL,
  `jef_cmr` varchar(50) DEFAULT NULL,
  `xxllavemar` varchar(50) DEFAULT NULL,
  `det_region` varchar(50) DEFAULT NULL,
  `sede` varchar(20) DEFAULT NULL,
  `jefatura` varchar(40) DEFAULT NULL,
  `prem_mas` varchar(40) DEFAULT NULL,
  `xxeecc` varchar(40) DEFAULT NULL,
  `supervisor` varchar(40) DEFAULT NULL,
  `entrenador` varchar(100) DEFAULT NULL,
  `microzona` varchar(40) DEFAULT NULL,
  `zona` varchar(40) DEFAULT NULL,
  `zon_region` varchar(40) DEFAULT NULL,
  `xllavemar2` varchar(40) DEFAULT NULL,
  `playas` varchar(40) DEFAULT NULL,
  `eecc` varchar(40) DEFAULT NULL,
  `mzona_catv` varchar(40) DEFAULT NULL,
  `mzona_dth` varchar(40) DEFAULT NULL,
  `jefa_nuevo` varchar(40) DEFAULT NULL,
  `jefa_tac` varchar(40) DEFAULT NULL,
  `bono` varchar(40) DEFAULT NULL,
  `mzona_tac` varchar(40) DEFAULT NULL,
  `mzona_8k` varchar(40) DEFAULT NULL,
  `terreno` varchar(40) DEFAULT NULL,
  KEY `NewIndex1` (`tipo`),
  KEY `NewIndex2` (`mdf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/* Procedure structure for procedure `amplifxpuerto` */

/*!50003 DROP PROCEDURE IF EXISTS  `amplifxpuerto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `amplifxpuerto`()
BEGIN
	TRUNCATE TABLE catalogos.amplifxpuerto_c;
	INSERT IGNORE catalogos.amplifxpuerto_c 
	SELECT IF(b.cmts IS NOT NULL,b.cmts,IF(c.cmts IS NOT NULL,c.cmts,'SINDATO')) AS cmts,IF(c.interface IS NOT NULL,c.interface,IF(b.interface IS NOT NULL,b.interface,'SIN DATO')) AS interface,TRIM(nodo),TRIM(troba),amplificador
	FROM ccm1.nclientes a FORCE INDEX (NewIndex4)
	left JOIN ccm1.scm_total b FORCE INDEX (MACAddress)
	ON a.mac2=b.MACAddress
	left JOIN ccm1.scm_phy_t c FORCE INDEX (NewIndex1)
	ON a.mac2=c.MACAddress
	WHERE amplificador <>''
	GROUP BY 1,2,3,4,5
	HAVING(COUNT(*))>=1;
	DELETE FROM catalogos.amplifxpuerto_c WHERE cmts='SINDATO';
	INSERT IGNORE catalogos.amplifxpuerto_g
	SELECT nodo,troba,amplificador FROM catalogos.amplifxpuerto_c GROUP BY 1,2;
	
	
	INSERT IGNORE catalogos.amplifxpuerto_c 
	SELECT 'SINDATO','SINDATO',TRIM(a.nodo),TRIM(a.plano),a.codlex FROM cms.planta_clarita a
	LEFT JOIN catalogos.amplifxpuerto_g b
	ON a.nodo=b.nodo AND a.plano=b.troba 
	WHERE b.troba  IS NULL
	GROUP BY 3,4,5;
	
	RENAME TABLE catalogos.amplifxpuerto TO catalogos.amplifxpuerto_d,
		catalogos.amplifxpuerto_c to catalogos.amplifxpuerto,
		catalogos.amplifxpuerto_d to catalogos.amplifxpuerto_c;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `llamadasxtroba` */

/*!50003 DROP PROCEDURE IF EXISTS  `llamadasxtroba` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `llamadasxtroba`()
BEGIN
		DELETE FROM ccm1_temporal.llamadasxcliente WHERE SUBSTR(NOW(),12,5)<='00:05';
		
		INSERT IGNORE  ccm1_temporal.llamadasxcliente 
		(SELECT a.IDCLIENTECRM AS codcli,a.NODO,a.TROBA AS troban,a.amplificador,a.tap,a.direccion,a.IPCM AS ip,a.MACADDRESS AS macaddress,
		a.NAMECLIENT AS nombre,a.telf1,a.telf2,a.f_v,a.regver,a.cmts,a.SERVICEPACKAGE AS paquete,a.FECHAACTIVACION AS fechaactiv,a.FECHAALTA AS fechaalta,
		0 AS u_d,'' AS PE_Power_UP,0 AS u_s,'' AS PE_Snr_UP,0 AS d_d,'' AS PE_Power_DN,0 AS d_s,'' AS PE_Snr_DN,'' AS PE_Alarmado,a.mac2,a.mac3,'' AS fecha_upload,
		a.codserv,a.movil1,b.*
		 FROM ccm1.nclientes a INNER JOIN ccm1_temporal.llamadas_callm1_bck b 
		ON b.telefono =a.telf1
		WHERE  b.telefono > 0 );
		
		INSERT IGNORE  ccm1_temporal.llamadasxcliente 
		(SELECT a.IDCLIENTECRM AS codcli,a.NODO,a.TROBA AS troban,a.amplificador,a.tap,a.direccion,a.IPCM AS ip,a.MACADDRESS AS macaddress,
		a.NAMECLIENT AS nombre,a.telf1,a.telf2,a.f_v,a.regver,a.cmts,a.SERVICEPACKAGE AS paquete,a.FECHAACTIVACION AS fechaactiv,a.FECHAALTA AS fechaalta,
		0 AS u_d,'' AS PE_Power_UP,0 AS u_s,'' AS PE_Snr_UP,0 AS d_d,'' AS PE_Power_DN,0 AS d_s,'' AS PE_Snr_DN,'' AS PE_Alarmado,a.mac2,a.mac3,'' AS fecha_upload,
		a.codserv,a.movil1,b.*
		 FROM ccm1.nclientes a INNER JOIN ccm1_temporal.llamadas_callm1_bck b  
		ON b.telefono =a.telf2
		WHERE  b.telefono > 0);
		
		INSERT IGNORE  ccm1_temporal.llamadasxcliente 
		(SELECT a.IDCLIENTECRM AS codcli,a.NODO,a.TROBA AS troban,a.amplificador,a.tap,a.direccion,a.IPCM AS ip,a.MACADDRESS AS macaddress,
		a.NAMECLIENT AS nombre,a.telf1,a.telf2,a.f_v,a.regver,a.cmts,a.SERVICEPACKAGE AS paquete,a.FECHAACTIVACION AS fechaactiv,a.FECHAALTA AS fechaalta,
		0 AS u_d,'' AS PE_Power_UP,0 AS u_s,'' AS PE_Snr_UP,0 AS d_d,'' AS PE_Power_DN,0 AS d_s,'' AS PE_Snr_DN,'' AS PE_Alarmado,a.mac2,a.mac3,'' AS fecha_upload,
		a.codserv,a.movil1,b.*
		 FROM ccm1.nclientes a INNER JOIN ccm1_temporal.llamadas_callm1_bck b  
		ON b.telefono =a.movil1
		WHERE  b.telefono > 0 );
		
		INSERT IGNORE ccm1_temporal.llamadasxcliente_hist (SELECT codcli,nodo,troban,amplificador,tab,direccion,ip,macaddress,nombres,telf1,telf2,f_v,regver,cmts,paquete,fechaactiv,fechaalta,u_d,PE_Power_UP,u_s,PE_Snr_UP,d_d,PE_Power_DN,d_s,PE_Snr_DN,PE_Alarmado,mac2,mac3,fecha_upload,codserv,movil1,id,fecha,hora,telefono,fecha_mov FROM ccm1_temporal.llamadasxcliente);
		TRUNCATE TABLE catalogos.llamadasxtroba_c;
		INSERT IGNORE catalogos.llamadasxtroba_c
		SELECT nodo,troban,COUNT(*)llamadas FROM ccm1_temporal.llamadasxcliente GROUP BY 1,2;
		
		#DROP TABLE catalogos.tmp_table3;
		RENAME TABLE 
		catalogos.llamadasxtroba TO catalogos.tmp_table3,
		catalogos.llamadasxtroba_c TO catalogos.llamadasxtroba,
		catalogos.tmp_table3 TO catalogos.llamadasxtroba_c;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_telef_cms` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_telef_cms` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `sp_telef_cms`()
BEGIN
	SELECT cliente,servicio,
	IF(SUBSTR(TELEFCL1,1,2)='1-' AND SUBSTR(TELEFCL1,3,1)=9 ,REPLACE(TELEFCL1,'1-',''),
		IF(SUBSTR(TELEFCL1,1,3)='1-1' AND SUBSTR(TELEFCL1,4,1)<>9,REPLACE(TELEFCL1,'1-1','1'),
		IF(SUBSTR(TELEFCL1,1,2)='1-' AND SUBSTR(TELEFCL1,3,1)<>9,REPLACE(SUBSTR(TELEFCL1,1,9),'-',''),
		IF(SUBSTR(TELEFCL1,3,1)='-' AND LENGTH(TELEFCL1)=9,REPLACE(TELEFCL1,'-',''),
		IF(SUBSTR(TELEFCL1,3,1)='-' AND LENGTH(TELEFCL1)=11,SUBSTR(TELEFCL1,4,8),
		IF(SUBSTR(TELEFCL1,3,1)='-' AND LENGTH(TELEFCL1)=12,SUBSTR(TELEFCL1,4,9)
		,'')))))) TELEFCL1,
	IF(SUBSTR(TELEFCL2,1,2)='1-' AND SUBSTR(TELEFCL2,3,1)=9 ,REPLACE(TELEFCL2,'1-',''),
		IF(SUBSTR(TELEFCL2,1,3)='1-1' AND SUBSTR(TELEFCL2,4,1)<>9,REPLACE(TELEFCL2,'1-1','1'),
		IF(SUBSTR(TELEFCL2,1,2)='1-' AND SUBSTR(TELEFCL2,3,1)<>9,REPLACE(SUBSTR(TELEFCL2,1,9),'-',''),
		IF(SUBSTR(TELEFCL2,3,1)='-' AND LENGTH(TELEFCL2)=9,REPLACE(TELEFCL2,'-',''),
		IF(SUBSTR(TELEFCL2,3,1)='-' AND LENGTH(TELEFCL2)=11,SUBSTR(TELEFCL2,4,8),
		IF(SUBSTR(TELEFCL2,3,1)='-' AND LENGTH(TELEFCL2)=12,SUBSTR(TELEFCL2,4,9)
		,'')))))) TELEFCL2,
	IF(SUBSTR(TELEFCL3,1,2)='1-' AND SUBSTR(TELEFCL3,3,1)=9 ,REPLACE(TELEFCL3,'1-',''),
		IF(SUBSTR(TELEFCL3,1,3)='1-1' AND SUBSTR(TELEFCL3,4,1)<>9,REPLACE(TELEFCL3,'1-1','1'),
		IF(SUBSTR(TELEFCL3,1,2)='1-' AND SUBSTR(TELEFCL3,3,1)<>9,REPLACE(SUBSTR(TELEFCL3,1,9),'-',''),
		IF(SUBSTR(TELEFCL3,3,1)='-' AND LENGTH(TELEFCL3)=9,REPLACE(TELEFCL3,'-',''),
		IF(SUBSTR(TELEFCL3,3,1)='-' AND LENGTH(TELEFCL3)=11,SUBSTR(TELEFCL3,4,8),
		IF(SUBSTR(TELEFCL3,3,1)='-' AND LENGTH(TELEFCL3)=12,SUBSTR(TELEFCL3,4,9)
		,'')))))) TELEFCL3,	
	NUMERODOC,NUMERORUC,a.`NODO`,a.`PLANO`,a.`CODLEX`,if(tiptec not in ('HFC','GPON'),'TV',tiptec) as tiptec FROM cms.`planta_clarita` a
	WHERE TRIM(CONCAT(TELEFCL1,TELEFCL2,TELEFCL3,NUMERODOC,NUMERORUC))<>''
	INTO OUTFILE '/temp/planta_telef_cms.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/*Table structure for table `redesip_n_view` */

DROP TABLE IF EXISTS `redesip_n_view`;

/*!50001 DROP VIEW IF EXISTS `redesip_n_view` */;
/*!50001 DROP TABLE IF EXISTS `redesip_n_view` */;

/*!50001 CREATE TABLE  `redesip_n_view`(
 `cmts` varchar(85) ,
 `scopesgroup` varchar(20) ,
 `total` decimal(32,0) ,
 `used` decimal(32,0) ,
 `available` decimal(32,0) ,
 `porc` decimal(39,4) ,
 `estado` varchar(5) ,
 `cmts_ip` varchar(30) 
)*/;

/*Table structure for table `trobas_con_caidas` */

DROP TABLE IF EXISTS `trobas_con_caidas`;

/*!50001 DROP VIEW IF EXISTS `trobas_con_caidas` */;
/*!50001 DROP TABLE IF EXISTS `trobas_con_caidas` */;

/*!50001 CREATE TABLE  `trobas_con_caidas`(
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `aver` bigint(21) 
)*/;

/*Table structure for table `trobas_digi_view` */

DROP TABLE IF EXISTS `trobas_digi_view`;

/*!50001 DROP VIEW IF EXISTS `trobas_digi_view` */;
/*!50001 DROP TABLE IF EXISTS `trobas_digi_view` */;

/*!50001 CREATE TABLE  `trobas_digi_view`(
 `nodo` varchar(10) ,
 `troba` varchar(10) ,
 `fecha` varchar(10) 
)*/;

/*Table structure for table `zonales_catv_view` */

DROP TABLE IF EXISTS `zonales_catv_view`;

/*!50001 DROP VIEW IF EXISTS `zonales_catv_view` */;
/*!50001 DROP TABLE IF EXISTS `zonales_catv_view` */;

/*!50001 CREATE TABLE  `zonales_catv_view`(
 `nodo` varchar(10) ,
 `jefatura` varchar(40) ,
 `eecc` varchar(40) ,
 `entrenador` varchar(100) 
)*/;

/*View structure for view redesip_n_view */

/*!50001 DROP TABLE IF EXISTS `redesip_n_view` */;
/*!50001 DROP VIEW IF EXISTS `redesip_n_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `redesip_n_view` AS (select concat(`a`.`cmts`,'</br>',`b`.`cmts`) AS `cmts`,`a`.`scopesgroup` AS `scopesgroup`,sum(`a`.`total`) AS `total`,sum(`a`.`used`) AS `used`,sum(`a`.`available`) AS `available`,((sum(`a`.`used`) / sum(`a`.`total`)) * 100) AS `porc`,if(isnull(`b`.`cmts`),'Nuevo','') AS `estado`,`a`.`cmts` AS `cmts_ip` from (`catalogos`.`redesip_n` `a` left join `ccm1`.`cmts_ip` `b` on((`a`.`cmts` = `b`.`realname`))) where ((`a`.`scopesgroup` not in ('CPE-IP-FIJA','GRUPOS')) and (`a`.`cmts` not in ('SG_AREQ7_C100G','CMTS-CASA','CMTS-CISCO-MAQUETA'))) group by `a`.`cmts`,`a`.`scopesgroup` order by sum(`a`.`available`)) */;

/*View structure for view trobas_con_caidas */

/*!50001 DROP TABLE IF EXISTS `trobas_con_caidas` */;
/*!50001 DROP VIEW IF EXISTS `trobas_con_caidas` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `trobas_con_caidas` AS (select `ccm1`.`averias_m1`.`codnod` AS `nodo`,`ccm1`.`averias_m1`.`nroplano` AS `troba`,count(0) AS `aver` from `ccm1`.`averias_m1` group by `ccm1`.`averias_m1`.`codnod`,`ccm1`.`averias_m1`.`nroplano`) */;

/*View structure for view trobas_digi_view */

/*!50001 DROP TABLE IF EXISTS `trobas_digi_view` */;
/*!50001 DROP VIEW IF EXISTS `trobas_digi_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `trobas_digi_view` AS (select `trobas_digitalizadas`.`nodo` AS `nodo`,`trobas_digitalizadas`.`troba` AS `troba`,`trobas_digitalizadas`.`fecha` AS `fecha` from `trobas_digitalizadas` where ((to_days(now()) - to_days(`trobas_digitalizadas`.`fechan`)) <= 30)) */;

/*View structure for view zonales_catv_view */

/*!50001 DROP TABLE IF EXISTS `zonales_catv_view` */;
/*!50001 DROP VIEW IF EXISTS `zonales_catv_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `zonales_catv_view` AS (select `zonificacion`.`mdf` AS `nodo`,`zonificacion`.`jefatura` AS `jefatura`,`zonificacion`.`eecc` AS `eecc`,`zonificacion`.`entrenador` AS `entrenador` from `zonificacion` where ((`zonificacion`.`tipo` = 'NODO/DTH') or (`zonificacion`.`tipo` = 'NODO/CATV'))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - ccm1_temporal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ccm1_temporal` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ccm1_temporal`;

/*Table structure for table `access_temp` */

DROP TABLE IF EXISTS `access_temp`;

CREATE TABLE `access_temp` (
  `parte1` varchar(31) DEFAULT NULL,
  `tamanio` varchar(6) DEFAULT NULL,
  `fecha` varchar(13) DEFAULT NULL,
  `carpeta` varchar(9) DEFAULT NULL,
  `archivo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `access_tempx` */

DROP TABLE IF EXISTS `access_tempx`;

CREATE TABLE `access_tempx` (
  `archivo` varchar(40) DEFAULT NULL,
  `tamanio` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `alarmas_caidas` */

DROP TABLE IF EXISTS `alarmas_caidas`;

CREATE TABLE `alarmas_caidas` (
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
  `codmasiva` int(16) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`nodo`,`troba`),
  KEY `NewIndex2` (`nodo`),
  KEY `NewIndex3` (`troba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

/*Table structure for table `alarmas_ims` */

DROP TABLE IF EXISTS `alarmas_ims`;

CREATE TABLE `alarmas_ims` (
  `macaddress` varchar(12) DEFAULT NULL,
  `fecha_alarma` varchar(20) DEFAULT NULL,
  `fechaupload` varchar(20) DEFAULT NULL,
  `maccmts` varchar(20) DEFAULT NULL,
  KEY `NewIndex1` (`macaddress`),
  KEY `NewIndex2` (`maccmts`),
  KEY `NewIndex3` (`fecha_alarma`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `alertas_signal_historico` */

DROP TABLE IF EXISTS `alertas_signal_historico`;

CREATE TABLE `alertas_signal_historico` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `aver` bigint(21) DEFAULT '0',
  `llamadas` bigint(21) DEFAULT '0',
  `codmasiva` int(11) DEFAULT NULL,
  `cant` int(21) DEFAULT NULL,
  `umbral` int(12) DEFAULT NULL,
  `off` int(21) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` time DEFAULT NULL,
  `fecha_fin` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `RxPwrdBmv` double(19,2) DEFAULT NULL,
  `snr_up` double(19,2) DEFAULT NULL,
  `pwr_up` double(19,2) DEFAULT NULL,
  `snr_dn` double(19,2) DEFAULT NULL,
  `pwr_dn` double(19,2) DEFAULT NULL,
  `can` bigint(21) DEFAULT '0',
  UNIQUE KEY `NewIndex1` (`nodo`,`troba`,`fecha_hora`,`fecha_fin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `averias_catv_new_7` */

DROP TABLE IF EXISTS `averias_catv_new_7`;

CREATE TABLE `averias_catv_new_7` (
  `codofcadm` varchar(3) DEFAULT NULL,
  `codreq` int(16) DEFAULT NULL,
  `codclasrv` int(16) DEFAULT NULL,
  `tipreqini` varchar(2) DEFAULT NULL,
  `destipreqini` varchar(100) DEFAULT NULL,
  `fec_mov` varchar(20) DEFAULT NULL,
  `estado` varchar(80) DEFAULT NULL,
  `codestado` int(20) DEFAULT NULL,
  `codcli` int(20) DEFAULT NULL,
  `codnod` varchar(10) DEFAULT NULL,
  `nroplano` varchar(10) DEFAULT NULL,
  `fecha_proc` varchar(20) DEFAULT NULL,
  `fecha_file` varchar(50) DEFAULT NULL,
  `id2` varchar(50) DEFAULT NULL,
  `id` int(20) DEFAULT NULL,
  `dia_mov` varchar(20) DEFAULT NULL,
  `hora_mov` int(20) DEFAULT NULL,
  `codmotv` varchar(50) DEFAULT NULL,
  `desmotv` varchar(50) DEFAULT NULL,
  `tipreqfin` varchar(50) DEFAULT NULL,
  `destipreqfin` varchar(50) DEFAULT NULL,
  `tipave` varchar(50) DEFAULT NULL,
  `des_cod_liq` varchar(50) DEFAULT NULL,
  `codprbave` varchar(50) DEFAULT NULL,
  `desc_cod_det` varchar(50) DEFAULT NULL,
  `codmotvot` varchar(50) DEFAULT NULL,
  `desmotv2` varchar(50) DEFAULT NULL,
  `codtecliq` varchar(50) DEFAULT NULL,
  `nomtec` varchar(50) DEFAULT NULL,
  `desobsordtrab` varchar(50) DEFAULT NULL,
  `desobsordtrab_2` varchar(50) DEFAULT NULL,
  `canttroba` int(11) DEFAULT NULL,
  `tipodeingreso` varchar(100) DEFAULT NULL,
  `tipodeliquidacion` varchar(100) DEFAULT NULL,
  `codctr` int(11) DEFAULT NULL,
  UNIQUE KEY `codreq` (`codreq`),
  KEY `tipreqini` (`tipreqini`),
  KEY `fec_mov` (`fec_mov`),
  KEY `estado` (`estado`),
  KEY `codcli` (`codcli`),
  KEY `estado_2` (`estado`),
  KEY `codnod` (`codnod`),
  KEY `nroplano` (`nroplano`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `averxtrob` */

DROP TABLE IF EXISTS `averxtrob`;

CREATE TABLE `averxtrob` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `fec_mov` varchar(20) DEFAULT NULL,
  `aver` bigint(21) NOT NULL DEFAULT '0',
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `aver` (`fec_mov`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `casa_down_util` */

DROP TABLE IF EXISTS `casa_down_util`;

CREATE TABLE `casa_down_util` (
  `downstream` varchar(10) DEFAULT NULL,
  `frecuencia` varchar(20) DEFAULT NULL,
  `hz` varchar(4) DEFAULT NULL,
  `totalwb` int(11) DEFAULT NULL,
  `utilization` int(11) DEFAULT NULL,
  `modemsonline` int(11) DEFAULT NULL,
  `secondarymodems` int(11) DEFAULT NULL,
  `channeldesc` varchar(50) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `downstream` (`downstream`,`cmts`),
  KEY `downstream_2` (`downstream`),
  KEY `cmts` (`cmts`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `casa_down_util_c` */

DROP TABLE IF EXISTS `casa_down_util_c`;

CREATE TABLE `casa_down_util_c` (
  `downstream` varchar(10) DEFAULT NULL,
  `frecuencia` varchar(20) DEFAULT NULL,
  `hz` varchar(4) DEFAULT NULL,
  `totalwb` int(11) DEFAULT NULL,
  `utilization` int(11) DEFAULT NULL,
  `modemsonline` int(11) DEFAULT NULL,
  `secondarymodems` int(11) DEFAULT NULL,
  `channeldesc` varchar(50) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `downstream` (`downstream`,`cmts`),
  KEY `downstream_2` (`downstream`),
  KEY `cmts` (`cmts`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `casa_down_util_trab` */

DROP TABLE IF EXISTS `casa_down_util_trab`;

CREATE TABLE `casa_down_util_trab` (
  `cmts` varchar(20) DEFAULT NULL,
  `down` varchar(4) DEFAULT NULL,
  `can` bigint(21) NOT NULL DEFAULT '0',
  `clientes` decimal(32,0) DEFAULT NULL,
  KEY `down` (`down`),
  KEY `cmts` (`cmts`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cm_a_diario_new` */

DROP TABLE IF EXISTS `cm_a_diario_new`;

CREATE TABLE `cm_a_diario_new` (
  `texto` varchar(1200) DEFAULT NULL,
  KEY `texto` (`texto`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Table structure for table `cm_a_diario_old` */

DROP TABLE IF EXISTS `cm_a_diario_old`;

CREATE TABLE `cm_a_diario_old` (
  `texto` varchar(1200) DEFAULT NULL,
  KEY `texto` (`texto`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

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
  UNIQUE KEY `idcablemodem` (`IDCABLEMODEM`),
  KEY `NewIndex2` (`IDCLIENTECRM`),
  KEY `NewIndex3` (`EMPRESA`),
  KEY `NewIndex4` (`mac2`),
  KEY `NewIndex5` (`mac3`),
  KEY `IDPRODUCTO` (`IDPRODUCTO`),
  KEY `IDEMPRESACRM` (`IDEMPRESACRM`),
  KEY `idventa` (`IDVENTA`),
  KEY `SERVICEPACKAGECRMID` (`SERVICEPACKAGE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cmactivosdiario_c` */

DROP TABLE IF EXISTS `cmactivosdiario_c`;

CREATE TABLE `cmactivosdiario_c` (
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
  UNIQUE KEY `idcablemodem` (`IDCABLEMODEM`),
  KEY `NewIndex2` (`IDCLIENTECRM`),
  KEY `NewIndex3` (`EMPRESA`),
  KEY `NewIndex4` (`mac2`),
  KEY `NewIndex5` (`mac3`),
  KEY `IDPRODUCTO` (`IDPRODUCTO`),
  KEY `IDEMPRESACRM` (`IDEMPRESACRM`),
  KEY `idventa` (`IDVENTA`),
  KEY `SERVICEPACKAGECRMID` (`SERVICEPACKAGE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cmactivosdiario_del` */

DROP TABLE IF EXISTS `cmactivosdiario_del`;

CREATE TABLE `cmactivosdiario_del` (
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
  UNIQUE KEY `idcablemodem` (`IDCABLEMODEM`),
  KEY `NewIndex2` (`IDCLIENTECRM`),
  KEY `NewIndex3` (`EMPRESA`),
  KEY `NewIndex4` (`mac2`),
  KEY `NewIndex5` (`mac3`),
  KEY `IDPRODUCTO` (`IDPRODUCTO`),
  KEY `IDEMPRESACRM` (`IDEMPRESACRM`),
  KEY `idventa` (`IDVENTA`),
  KEY `SERVICEPACKAGECRMID` (`SERVICEPACKAGE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cmactivosdiario_ins` */

DROP TABLE IF EXISTS `cmactivosdiario_ins`;

CREATE TABLE `cmactivosdiario_ins` (
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
  UNIQUE KEY `idcablemodem` (`IDCABLEMODEM`),
  KEY `NewIndex2` (`IDCLIENTECRM`),
  KEY `NewIndex3` (`EMPRESA`),
  KEY `NewIndex4` (`mac2`),
  KEY `NewIndex5` (`mac3`),
  KEY `IDPRODUCTO` (`IDPRODUCTO`),
  KEY `IDEMPRESACRM` (`IDEMPRESACRM`),
  KEY `idventa` (`IDVENTA`),
  KEY `SERVICEPACKAGECRMID` (`SERVICEPACKAGE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cmactivosdiario_tmp` */

DROP TABLE IF EXISTS `cmactivosdiario_tmp`;

CREATE TABLE `cmactivosdiario_tmp` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PAGE_CHECKSUM=1;

/*Table structure for table `cmfuerarangodiario` */

DROP TABLE IF EXISTS `cmfuerarangodiario`;

CREATE TABLE `cmfuerarangodiario` (
  `IDCLIENTECRM` double DEFAULT NULL,
  `CMTSID` int(11) DEFAULT NULL,
  `UBICACIONENLARED` varchar(150) DEFAULT NULL,
  `HUB` varchar(10) DEFAULT NULL,
  `NODO` varchar(10) DEFAULT NULL,
  `IPCM` varchar(20) DEFAULT NULL,
  `IDCABLEMODEM` int(25) DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `DOCSISVERSION` int(25) DEFAULT NULL,
  `CMTSCMSTATUS` varchar(25) DEFAULT NULL,
  `DSSNRSTATUS` varchar(25) DEFAULT NULL,
  `USSNRSTATUS` varchar(25) DEFAULT NULL,
  `CMRXPOWERSTATUS` varchar(25) DEFAULT NULL,
  `CMTXPOWERSTATUS` varchar(25) DEFAULT NULL,
  `DSSNR` varchar(25) DEFAULT NULL,
  `USSNR` varchar(25) DEFAULT NULL,
  `CMRXPOWER` varchar(25) DEFAULT NULL,
  `CMTSRXPOWER` varchar(25) DEFAULT NULL,
  `CMTXPOWER` varchar(25) DEFAULT NULL,
  `GOODCW` varchar(25) DEFAULT NULL,
  `CORRECTABLECW` varchar(25) DEFAULT NULL,
  `UNCORRECTABLECW` varchar(25) DEFAULT NULL,
  `UPTIME` varchar(25) DEFAULT NULL,
  `DEVICETYPE` varchar(5) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`MACADDRESS`),
  KEY `NewIndex2` (`IDCLIENTECRM`),
  KEY `IDCABLEMODEM` (`IDCABLEMODEM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cmts_casa_access` */

DROP TABLE IF EXISTS `cmts_casa_access`;

CREATE TABLE `cmts_casa_access` (
  `CPEIPAddress` varchar(20) DEFAULT NULL,
  `Method` varchar(5) DEFAULT NULL,
  `CPEMACAddress` varchar(20) DEFAULT NULL,
  `CMIPAddress` varchar(20) DEFAULT NULL,
  `CMMACAddress` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cmts_casa_down_util_sw` */

DROP TABLE IF EXISTS `cmts_casa_down_util_sw`;

CREATE TABLE `cmts_casa_down_util_sw` (
  `sw` int(1) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `cmts_casa_sum` */

DROP TABLE IF EXISTS `cmts_casa_sum`;

CREATE TABLE `cmts_casa_sum` (
  `UpstreamInterfaceUSIF` varchar(10) DEFAULT NULL,
  `TotalModems` int(11) DEFAULT NULL,
  `ActiveModems` int(11) DEFAULT NULL,
  `RegisteredModems` int(11) DEFAULT NULL,
  `SecondaryModems` int(11) DEFAULT NULL,
  `OfflineModems` int(11) DEFAULT NULL,
  `ChannelDescripcion` varchar(80) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `consulta_cpe_casa` */

DROP TABLE IF EXISTS `consulta_cpe_casa`;

CREATE TABLE `consulta_cpe_casa` (
  `CPEIPAddress` varchar(16) DEFAULT NULL,
  `Method` varchar(6) DEFAULT NULL,
  `CPEMACAddress` varchar(14) DEFAULT NULL,
  `CMIPAddress` varchar(16) DEFAULT NULL,
  `CMMACAddress` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `consulta_cpe_cisco` */

DROP TABLE IF EXISTS `consulta_cpe_cisco`;

CREATE TABLE `consulta_cpe_cisco` (
  `IPAddress` varchar(16) DEFAULT NULL,
  `MACAddress` varchar(14) DEFAULT NULL,
  `DuaIP` varchar(1) DEFAULT NULL,
  `DeviceClass` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `consulta_phy_casa` */

DROP TABLE IF EXISTS `consulta_phy_casa`;

CREATE TABLE `consulta_phy_casa` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `Sid` varchar(5) DEFAULT NULL,
  `PwrUP` varchar(6) DEFAULT NULL,
  `RxPwr` varchar(6) DEFAULT NULL,
  `USSNR` varchar(5) DEFAULT NULL,
  `TXTime_Offset` varchar(5) DEFAULT NULL,
  `MicroReflec` varchar(4) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSSNR` varchar(6) DEFAULT NULL,
  `Modex` varchar(6) DEFAULT NULL,
  KEY `Modex` (`Modex`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `consulta_phy_cisco` */

DROP TABLE IF EXISTS `consulta_phy_cisco`;

CREATE TABLE `consulta_phy_cisco` (
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
  KEY `NewIndex1` (`MACAddress`),
  KEY `NewIndex2` (`Interface`),
  KEY `NewIndex3` (`Sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `consulta_scm_casa` */

DROP TABLE IF EXISTS `consulta_scm_casa`;

CREATE TABLE `consulta_scm_casa` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `USIF` varchar(10) DEFAULT NULL,
  `DSIF` varchar(10) DEFAULT NULL,
  `MACStatus` varchar(12) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RxPwr` varchar(5) DEFAULT NULL,
  `Timing_Offset` varchar(5) DEFAULT NULL,
  `NumCpe` varchar(3) DEFAULT NULL,
  `BPI` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `consulta_scm_cisco` */

DROP TABLE IF EXISTS `consulta_scm_cisco`;

CREATE TABLE `consulta_scm_cisco` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IPAddress` varchar(20) DEFAULT NULL,
  `Interface` varchar(20) DEFAULT NULL,
  `MACState` varchar(20) DEFAULT NULL,
  `PrimSid` varchar(20) DEFAULT NULL,
  `RxPwrdBmv` varchar(20) DEFAULT NULL,
  `TimingOFFSET` varchar(20) DEFAULT NULL,
  `NumCPE` varchar(20) DEFAULT NULL,
  `DIP` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `FECHA_HORA` varchar(20) DEFAULT NULL,
  `ultimo` varchar(40) DEFAULT NULL,
  `interface6` varchar(10) DEFAULT NULL,
  KEY `macaddress` (`MACAddress`),
  KEY `interface` (`Interface`),
  KEY `fecha_hora` (`FECHA_HORA`),
  KEY `cmts` (`cmts`),
  KEY `macstate` (`MACState`),
  KEY `ultimo` (`ultimo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `consulta_verbose` */

DROP TABLE IF EXISTS `consulta_verbose`;

CREATE TABLE `consulta_verbose` (
  `item` varchar(50) DEFAULT NULL,
  `detalle` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `consultasr` */

DROP TABLE IF EXISTS `consultasr`;

CREATE TABLE `consultasr` (
  `nodo` varchar(4) DEFAULT NULL,
  `troban` varchar(5) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `cant` decimal(42,0) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troban`),
  KEY `fecha` (`fechahora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `consultasr_amplif` */

DROP TABLE IF EXISTS `consultasr_amplif`;

CREATE TABLE `consultasr_amplif` (
  `nodo` varchar(2) DEFAULT NULL,
  `troban` varchar(4) DEFAULT NULL,
  `amplificador` varchar(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `cant` decimal(42,0) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troban`),
  KEY `amplif` (`amplificador`),
  KEY `fechahora` (`fechahora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `consultasr_catv` */

DROP TABLE IF EXISTS `consultasr_catv`;

CREATE TABLE `consultasr_catv` (
  `nodo` varchar(4) DEFAULT NULL,
  `troba` varchar(5) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `cant` decimal(42,0) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha` (`fechahora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `consultasr_catv_c` */

DROP TABLE IF EXISTS `consultasr_catv_c`;

CREATE TABLE `consultasr_catv_c` (
  `nodo` varchar(4) DEFAULT NULL,
  `troba` varchar(5) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `cant` decimal(42,0) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha` (`fechahora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `consultasr_d_c` */

DROP TABLE IF EXISTS `consultasr_d_c`;

CREATE TABLE `consultasr_d_c` (
  `dato` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `cant` bigint(21) NOT NULL DEFAULT '0',
  KEY `dato` (`dato`),
  KEY `fechahora` (`fechahora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `consultasr_n` */

DROP TABLE IF EXISTS `consultasr_n`;

CREATE TABLE `consultasr_n` (
  `nodo` varchar(2) DEFAULT NULL,
  `troban` varchar(4) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `cant` bigint(21) NOT NULL DEFAULT '0',
  KEY `nodo` (`nodo`),
  KEY `troba` (`troban`),
  KEY `fechahora` (`fechahora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cortesyreconex_hfc` */

DROP TABLE IF EXISTS `cortesyreconex_hfc`;

CREATE TABLE `cortesyreconex_hfc` (
  `codigo_req` int(11) DEFAULT NULL,
  `codigo_del_grupo_req` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `fecha_registro` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `tipotram` int(1) NOT NULL DEFAULT '0',
  `codigo_del_servicio` int(11) DEFAULT NULL,
  `macaddress` varchar(20) DEFAULT NULL,
  `codserv` double DEFAULT NULL,
  `codcli` double DEFAULT NULL,
  `proceso` int(1) DEFAULT NULL,
  `fecha_proceso` varchar(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`codigo_req`),
  KEY `macaddress` (`macaddress`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cortesyreconexiones` */

DROP TABLE IF EXISTS `cortesyreconexiones`;

CREATE TABLE `cortesyreconexiones` (
  `codigo_req` int(11) DEFAULT NULL,
  `codigo_del_cliente` int(11) DEFAULT NULL,
  `codigo_del_servicio` int(11) DEFAULT NULL,
  `codigo_del_grupo_req` varchar(2) DEFAULT NULL,
  `fecha_registro` varchar(20) DEFAULT NULL,
  `tipotram` int(1) NOT NULL DEFAULT '0',
  `flag` varchar(1) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`codigo_req`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `counter_temp` */

DROP TABLE IF EXISTS `counter_temp`;

CREATE TABLE `counter_temp` (
  `parte1` varchar(31) DEFAULT NULL,
  `tamanio` varchar(6) DEFAULT NULL,
  `fecha` varchar(13) DEFAULT NULL,
  `carpeta` varchar(9) DEFAULT NULL,
  `archivo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `cpe_temp` */

DROP TABLE IF EXISTS `cpe_temp`;

CREATE TABLE `cpe_temp` (
  `macaddress` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `diferencias` */

DROP TABLE IF EXISTS `diferencias`;

CREATE TABLE `diferencias` (
  `new` varchar(750) DEFAULT NULL,
  `old` varchar(750) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `diferencias_new` */

DROP TABLE IF EXISTS `diferencias_new`;

CREATE TABLE `diferencias_new` (
  `new` varchar(750) NOT NULL,
  PRIMARY KEY (`new`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `diferencias_old` */

DROP TABLE IF EXISTS `diferencias_old`;

CREATE TABLE `diferencias_old` (
  `old` varchar(750) NOT NULL,
  PRIMARY KEY (`old`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `ediftemp` */

DROP TABLE IF EXISTS `ediftemp`;

CREATE TABLE `ediftemp` (
  `macaddress` varchar(20) DEFAULT NULL,
  `cmts` varchar(50) DEFAULT NULL,
  KEY `macaddress` (`macaddress`),
  KEY `cmts` (`cmts`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `espacios_cgnat` */

DROP TABLE IF EXISTS `espacios_cgnat`;

CREATE TABLE `espacios_cgnat` (
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
  UNIQUE KEY `ID_Producto_CM` (`ID_Producto_CM`,`ID_Venta_CM`),
  KEY `idx_sp` (`Service_Package_CRMID`),
  KEY `ID_Cliente` (`ID_Cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ftemp` */

DROP TABLE IF EXISTS `ftemp`;

CREATE TABLE `ftemp` (
  `archivo` varchar(60) DEFAULT NULL,
  `cmts` varchar(60) DEFAULT NULL,
  `sw` int(1) DEFAULT '0',
  KEY `cmts` (`cmts`),
  KEY `sw` (`sw`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `interfaces_lb` */

DROP TABLE IF EXISTS `interfaces_lb`;

CREATE TABLE `interfaces_lb` (
  `interbus` varchar(40) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  KEY `interbus` (`interbus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `load_temp` */

DROP TABLE IF EXISTS `load_temp`;

CREATE TABLE `load_temp` (
  `parte1` varchar(31) DEFAULT NULL,
  `tamanio` varchar(6) DEFAULT NULL,
  `fecha` varchar(13) DEFAULT NULL,
  `carpeta` varchar(9) DEFAULT NULL,
  `archivo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `load_tempx` */

DROP TABLE IF EXISTS `load_tempx`;

CREATE TABLE `load_tempx` (
  `archivo` varchar(40) DEFAULT NULL,
  `tamanio` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `marca_modelo` */

DROP TABLE IF EXISTS `marca_modelo`;

CREATE TABLE `marca_modelo` (
  `NroCliente` double DEFAULT NULL,
  `Nombre` varchar(200) DEFAULT NULL,
  `MACAddress` varchar(20) DEFAULT NULL,
  `Fechadealta` varchar(20) DEFAULT NULL,
  `Fechadeactivacion` varchar(20) DEFAULT NULL,
  `Fabricante` varchar(20) DEFAULT NULL,
  `Modelo` varchar(100) DEFAULT NULL,
  `Versioon` varchar(100) DEFAULT NULL,
  `Tipodedispositivo` varchar(100) DEFAULT NULL,
  `IPCablemodem` varchar(20) DEFAULT NULL,
  `CMTS` varchar(20) DEFAULT NULL,
  `temp` varchar(20) DEFAULT NULL,
  `fecha_upload` varchar(20) DEFAULT NULL,
  KEY `NewIndex1` (`NroCliente`),
  KEY `NewIndex3` (`CMTS`),
  KEY `NewIndex4` (`Fabricante`),
  KEY `NewIndex2` (`MACAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `masivas_temp` */

DROP TABLE IF EXISTS `masivas_temp`;

CREATE TABLE `masivas_temp` (
  `check` int(11) NOT NULL AUTO_INCREMENT,
  `numfrecave` int(11) NOT NULL,
  `tipfrecave` varchar(2) DEFAULT NULL,
  `fecreg` varchar(20) DEFAULT NULL,
  `codofcadm` varchar(3) DEFAULT NULL,
  `codcmts` varchar(1) DEFAULT NULL,
  `codnod` varchar(2) NOT NULL,
  `nroplano` varchar(4) NOT NULL,
  `codtrtrn` varchar(4) DEFAULT NULL,
  `edofrecave` varchar(1) DEFAULT NULL,
  `cantreq` int(11) DEFAULT NULL,
  `nrocant` int(11) DEFAULT NULL,
  `fecultact` varchar(20) DEFAULT NULL,
  `coddpt` varchar(3) DEFAULT NULL,
  `codpvc` varchar(3) DEFAULT NULL,
  `codreqmnt` int(11) NOT NULL,
  `codctr` int(11) DEFAULT NULL,
  `codedo` varchar(1) DEFAULT NULL,
  `fecliq` varchar(20) DEFAULT NULL,
  `indorigreq` varchar(1) DEFAULT NULL,
  `cantreqliq` int(11) DEFAULT NULL,
  `codareahbl` varchar(10) DEFAULT NULL,
  `indactuacion` varchar(10) DEFAULT NULL,
  `indseginc` int(11) DEFAULT NULL,
  `indinc` int(11) DEFAULT NULL,
  `codinc` varchar(10) DEFAULT NULL,
  `fecha_upload` varchar(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex4` (`codnod`,`nroplano`),
  KEY `NewIndex1` (`codnod`),
  KEY `NewIndex2` (`nroplano`),
  KEY `NewIndex3` (`fecreg`),
  KEY `check` (`check`)
) ENGINE=InnoDB AUTO_INCREMENT=8922133 DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM AUTO_INCREMENT=33758145 DEFAULT CHARSET=latin1;

/*Table structure for table `multi_consultas_48horas` */

DROP TABLE IF EXISTS `multi_consultas_48horas`;

CREATE TABLE `multi_consultas_48horas` (
  `item` int(18) NOT NULL DEFAULT '0',
  `tipobusqueda` varchar(20) DEFAULT NULL,
  `dato` bigint(21) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `mensaje` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `multi_consultas_backup` */

DROP TABLE IF EXISTS `multi_consultas_backup`;

CREATE TABLE `multi_consultas_backup` (
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
) ENGINE=InnoDB AUTO_INCREMENT=34341428 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=33915570 DEFAULT CHARSET=latin1;

/*Table structure for table `ncgnat` */

DROP TABLE IF EXISTS `ncgnat`;

CREATE TABLE `ncgnat` (
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
  UNIQUE KEY `MACADDRESS` (`MACADDRESS`),
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`),
  KEY `idservicio` (`idservicio`),
  KEY `idproducto` (`idproducto`),
  KEY `idventa` (`idventa`),
  KEY `cmts` (`cmts`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `nclientes` */

DROP TABLE IF EXISTS `nclientes`;

CREATE TABLE `nclientes` (
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
  KEY `TROBA` (`TROBA`)
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
  KEY `TROBA` (`TROBA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `nclientes_t` */

DROP TABLE IF EXISTS `nclientes_t`;

CREATE TABLE `nclientes_t` (
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
  KEY `TROBA` (`TROBA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `phy_temp` */

DROP TABLE IF EXISTS `phy_temp`;

CREATE TABLE `phy_temp` (
  `parte1` varchar(31) DEFAULT NULL,
  `tamanio` varchar(6) DEFAULT NULL,
  `fecha` varchar(13) DEFAULT NULL,
  `carpeta` varchar(9) DEFAULT NULL,
  `archivo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `phy_tempx` */

DROP TABLE IF EXISTS `phy_tempx`;

CREATE TABLE `phy_tempx` (
  `archivo` varchar(40) DEFAULT NULL,
  `tamanio` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `respuesta` */

DROP TABLE IF EXISTS `respuesta`;

CREATE TABLE `respuesta` (
  `respuesta` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `scm_calls` */

DROP TABLE IF EXISTS `scm_calls`;

CREATE TABLE `scm_calls` (
  `macaddress` varchar(20) NOT NULL,
  `cmts` varchar(40) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`macaddress`),
  KEY `cmts` (`cmts`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `scm_cpe_huawei` */

DROP TABLE IF EXISTS `scm_cpe_huawei`;

CREATE TABLE `scm_cpe_huawei` (
  `indice` int(6) DEFAULT NULL,
  `cmmac` varchar(14) DEFAULT NULL,
  `cmip` varchar(20) DEFAULT NULL,
  `cpemac` varchar(14) NOT NULL,
  `cpeip` varchar(20) DEFAULT NULL,
  `devicedesc` varchar(8) DEFAULT NULL,
  `olt` varchar(30) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `cpemac` (`cpemac`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_f` */

DROP TABLE IF EXISTS `scm_phy_f`;

CREATE TABLE `scm_phy_f` (
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
  KEY `NewIndex5` (`ultimo`),
  KEY `USPwr` (`USPwr`),
  KEY `USMER_SNR` (`USMER_SNR`),
  KEY `DSPwr` (`DSPwr`),
  KEY `DSMER_SNR` (`DSMER_SNR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  KEY `NewIndex5` (`ultimo`),
  KEY `USPwr` (`USPwr`),
  KEY `USMER_SNR` (`USMER_SNR`),
  KEY `DSPwr` (`DSPwr`),
  KEY `DSMER_SNR` (`DSMER_SNR`),
  KEY `FECHA` (`fecha_hora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_temp` */

DROP TABLE IF EXISTS `scm_temp`;

CREATE TABLE `scm_temp` (
  `parte1` varchar(31) DEFAULT NULL,
  `tamanio` varchar(6) DEFAULT NULL,
  `fecha` varchar(13) DEFAULT NULL,
  `carpeta` varchar(9) DEFAULT NULL,
  `archivo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `scm_temp_counter_1` */

DROP TABLE IF EXISTS `scm_temp_counter_1`;

CREATE TABLE `scm_temp_counter_1` (
  `archivo` varchar(40) DEFAULT NULL,
  `tamanio` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_tempx` */

DROP TABLE IF EXISTS `scm_tempx`;

CREATE TABLE `scm_tempx` (
  `archivo` varchar(40) DEFAULT NULL,
  `tamanio` varchar(6) DEFAULT NULL
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

/*Table structure for table `scm_total_f` */

DROP TABLE IF EXISTS `scm_total_f`;

CREATE TABLE `scm_total_f` (
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

/*Table structure for table `scmconectivity` */

DROP TABLE IF EXISTS `scmconectivity`;

CREATE TABLE `scmconectivity` (
  `primssid` int(11) DEFAULT NULL,
  `FechaInicio` varchar(20) DEFAULT NULL,
  `TimesOnline` varchar(20) DEFAULT NULL,
  `PorcOnline` varchar(20) DEFAULT NULL,
  `OnlineMin` varchar(20) DEFAULT NULL,
  `OnlineAvg` varchar(20) DEFAULT NULL,
  `OnlineMax` varchar(20) DEFAULT NULL,
  `OfflineMin` varchar(20) DEFAULT NULL,
  `OfflineAvg` varchar(20) DEFAULT NULL,
  `OfflineMax` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `ultimo` varchar(1) DEFAULT NULL,
  KEY `NewIndex1` (`primssid`),
  KEY `NewIndex2` (`cmts`),
  KEY `NewIndex3` (`fecha_hora`),
  KEY `NewIndex4` (`ultimo`),
  KEY `PorcOnline` (`PorcOnline`),
  KEY `OnlineAvg` (`OnlineAvg`),
  KEY `OfflineAvg` (`OfflineAvg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `scmdocsisversion` */

DROP TABLE IF EXISTS `scmdocsisversion`;

CREATE TABLE `scmdocsisversion` (
  `MACAddress` varchar(16) DEFAULT NULL,
  `Interface` varchar(10) DEFAULT NULL,
  `MACStatus` varchar(10) DEFAULT NULL,
  `PrimSid` varchar(5) DEFAULT NULL,
  `RegVer` varchar(4) DEFAULT NULL,
  `QoSProv` varchar(4) DEFAULT NULL,
  `USPhyModel` varchar(6) DEFAULT NULL,
  `DSChlMode` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `ultimo` varchar(1) DEFAULT NULL,
  KEY `NewIndex1` (`MACAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `show_cable_flaps` */

DROP TABLE IF EXISTS `show_cable_flaps`;

CREATE TABLE `show_cable_flaps` (
  `MACAddress` varchar(14) NOT NULL,
  `IF_` varchar(10) DEFAULT NULL,
  `Ins` int(4) DEFAULT NULL,
  `Hit` int(7) DEFAULT NULL,
  `Miss` int(4) DEFAULT NULL,
  `CRC` int(3) DEFAULT NULL,
  `P_Adj` varchar(6) DEFAULT NULL,
  `Flap` int(5) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `CMTS` varchar(20) DEFAULT NULL,
  `fecha_upload` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MACAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `sum_temp` */

DROP TABLE IF EXISTS `sum_temp`;

CREATE TABLE `sum_temp` (
  `parte1` varchar(31) DEFAULT NULL,
  `tamanio` varchar(6) DEFAULT NULL,
  `fecha` varchar(13) DEFAULT NULL,
  `carpeta` varchar(9) DEFAULT NULL,
  `archivo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `sum_tempx` */

DROP TABLE IF EXISTS `sum_tempx`;

CREATE TABLE `sum_tempx` (
  `archivo` varchar(40) DEFAULT NULL,
  `tamanio` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `trabajos_programados` */

DROP TABLE IF EXISTS `trabajos_programados`;

CREATE TABLE `trabajos_programados` (
  `ITEM` int(11) NOT NULL AUTO_INCREMENT,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `AMP` varchar(80) DEFAULT NULL,
  `TIPODETRABAJO` varchar(200) DEFAULT NULL,
  `SUPERVISOR` varchar(150) DEFAULT NULL,
  `FINICIO` varchar(20) DEFAULT NULL,
  `HINICIO` varchar(10) DEFAULT NULL,
  `HTERMINO` varchar(10) DEFAULT NULL,
  `HORARIO` varchar(10) DEFAULT NULL,
  `CORTESN` varchar(10) DEFAULT NULL,
  `OPERADOR` varchar(100) DEFAULT NULL,
  `FECHA` varchar(20) DEFAULT NULL,
  `HORA` varchar(10) DEFAULT NULL,
  `TRABAJO` varchar(100) DEFAULT NULL,
  `REMEDY` varchar(10) DEFAULT NULL,
  `TECNICO` varchar(100) DEFAULT NULL,
  `RPM` varchar(10) DEFAULT NULL,
  `CONTRATA` varchar(50) DEFAULT NULL,
  `HORACIERRE` varchar(10) DEFAULT NULL,
  `OBSERVACIONES` varchar(500) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  `fecha_registro` varchar(20) DEFAULT NULL,
  `fecha_apertura` varchar(20) DEFAULT NULL,
  `fecha_cierre` varchar(20) DEFAULT NULL,
  `fecha_cancela` varchar(20) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `usuario_apertura` varchar(20) DEFAULT NULL,
  `usuario_cierre` varchar(20) DEFAULT NULL,
  `usuario_cancela` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ITEM`),
  KEY `NewIndex1` (`NODO`),
  KEY `NewIndex2` (`TROBA`),
  KEY `NewIndex3` (`FINICIO`),
  KEY `ESTADO` (`ESTADO`)
) ENGINE=MyISAM AUTO_INCREMENT=43752 DEFAULT CHARSET=latin1;

/*Table structure for table `trafico_iw_now` */

DROP TABLE IF EXISTS `trafico_iw_now`;

CREATE TABLE `trafico_iw_now` (
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `IDCLIENTCRM` double DEFAULT NULL,
  `TRAFFICDOWN_MB` int(11) DEFAULT NULL,
  `TRAFFICUP_MB` int(11) DEFAULT NULL,
  `BRAND` varchar(20) DEFAULT NULL,
  `MODEL` varchar(20) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(100) DEFAULT NULL,
  `DOCSISVERSION` int(11) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `NewIndex1` (`MACADDRESS`),
  KEY `NewIndex2` (`IDCLIENTCRM`),
  KEY `NewIndex3` (`fecha_hora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `trobasconcaidas_sms` */

DROP TABLE IF EXISTS `trobasconcaidas_sms`;

CREATE TABLE `trobasconcaidas_sms` (
  `nodo` varchar(10) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `fecha_hora` datetime DEFAULT NULL,
  `sms_enviado` tinyint(3) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `idxunico` (`nodo`,`troba`,`fecha_hora`),
  KEY `idxnodo` (`nodo`),
  KEY `idxtroba` (`troba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `validatxt_x` */

DROP TABLE IF EXISTS `validatxt_x`;

CREATE TABLE `validatxt_x` (
  `acceso` varchar(10) DEFAULT NULL,
  `num` varchar(2) DEFAULT NULL,
  `usuario1` varchar(10) DEFAULT NULL,
  `usuario2` varchar(10) DEFAULT NULL,
  `peso` varchar(6) DEFAULT NULL,
  `mes` varchar(13) DEFAULT NULL,
  `dia` varchar(10) DEFAULT NULL,
  `hora` varchar(10) DEFAULT NULL,
  `fecha` varchar(20) DEFAULT NULL,
  `validacion` varchar(10) DEFAULT NULL,
  `carpeta` varchar(9) DEFAULT NULL,
  `archivo` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/* Procedure structure for procedure `sp_actualiza_nclientes_parte0` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_actualiza_nclientes_parte0` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `sp_actualiza_nclientes_parte0`()
BEGIN
		RENAME TABLE `cm_a_diario_old` TO `cm_a_diario_c` , 
		`cm_a_diario_new` TO `cm_a_diario_old`,
		`cm_a_diario_c` TO `cm_a_diario_new`;
		TRUNCATE TABLE ccm1_temporal.cm_a_diario_new;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_actualiza_nclientes_parte1` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_actualiza_nclientes_parte1` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `sp_actualiza_nclientes_parte1`()
BEGIN
		
		SELECT a.* FROM `cm_a_diario_new` a  FORCE INDEX (texto) 
		LEFT JOIN `cm_a_diario_old` b FORCE INDEX (texto)
		ON a.texto=b.texto
		WHERE b.texto IS NULL
		INTO OUTFILE '/temp/ReporteCMActivosDiarioNew.csv';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_actualiza_add_nclientes` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_actualiza_add_nclientes` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `sp_actualiza_add_nclientes`()
BEGIN
	TRUNCATE TABLE  ccm1_temporal.cmactivosdiario_c;
	INSERT INTO ccm1_temporal.cmactivosdiario_c       
	SELECT a.* FROM ccm1_temporal.cmactivosdiario a FORCE INDEX(NewIndex1) LEFT JOIN ccm1.nclientes_c b FORCE INDEX (NewIndex3) ON a.macaddress=b.macaddress WHERE b.idclientecrm IS NULL;       
	UPDATE ccm1_temporal.cmactivosdiario_c SET mac3=REPLACE(macaddress,':','');
	UPDATE ccm1_temporal.cmactivosdiario_c SET mac2=CONCAT(SUBSTR(mac3,1,4),'.',SUBSTR(mac3,5,4),'.',SUBSTR(mac3,9,4));
	UPDATE ccm1_temporal.cmactivosdiario_c SET FECHAALTA=CONCAT(SUBSTR(FECHAALTA,7,4),'-',SUBSTR(FECHAALTA,4,2),'-',SUBSTR(FECHAALTA,1,2),' ',SUBSTR(FECHAALTA,12,5)),FECHAACTIVACION=CONCAT(SUBSTR(FECHAACTIVACION,7,4),'-',SUBSTR(FECHAACTIVACION,4,2),'-',SUBSTR(FECHAACTIVACION,1,2),' ',SUBSTR(FECHAACTIVACION,12,5));
	
	TRUNCATE TABLE  ccm1_temporal.nclientes_t;
	INSERT IGNORE  ccm1_temporal.nclientes_t
	SELECT
	a.EMPRESA,
	a.IDCLIENTECRM,
	a.IDEMPRESACRM,
	a.IDSERVICIO,
	a.IDPRODUCTO,
	a.IDVENTA,
	e.Nombre AS NAMECLIENT,
	'' AS NODO,
	'' AS TROBA,
	'' AS amplificador,
	'' tap,
	'' AS telf1,
	'' AS telf2,
	'' AS f_v,
	'0' AS regver,
	'' AS cmts,
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
	'' AS CMTSID,
	'' AS UBICACIONENLARED,
	e.IPCablemodem AS IPCM,
	'' AS DOCSISVERSION,
	'' AS movil1,
	mac2,
	mac3,
	'' AS direccion,
	'' AS codserv,
	NOW() AS fecha_upload,
	'' AS naked,
	'' AS numcoo_x,
	'' AS numcoo_y
	FROM ccm1_temporal.cmactivosdiario_c a
	FORCE INDEX(NewIndex1,IDEMPRESACRM,NewIndex2)
	LEFT JOIN ccm1_data.marca_modelo_docsis_total e FORCE INDEX(idxmac)
	ON a.MACADDRESS=e.MACAddress
	WHERE a.IDEMPRESACRM=127 AND a.idclientecrm>0;
	
	
	UPDATE ccm1_temporal.nclientes_t a FORCE INDEX (NewIndex1,NewIndex2)
	INNER JOIN ccm1.scm_total b FORCE INDEX (MACAddress) ON a.mac2=b.MACAddress
	SET a.cmts=b.cmts,a.f_v=b.interface,a.ipcm=b.`IPAddress`;
	UPDATE ccm1_temporal.nclientes_t a FORCE INDEX (NewIndex1,NewIndex2)
	LEFT JOIN ccm1.scm_phy_t b FORCE INDEX (NewIndex1) ON a.mac2=b.MACAddress
	SET a.cmts=b.cmts,a.f_v=b.interface;
	UPDATE ccm1_temporal.nclientes_t a  FORCE INDEX (NewIndex3)
	INNER JOIN ccm1_data.`marca_modelo_docsis_total_final` b FORCE INDEX (idxmac)
	ON a.`MACADDRESS`=b.MACAddress
	SET nameclient=b.Nombre,cmtsid=b.cmts;
	UPDATE ccm1_temporal.nclientes_t a FORCE INDEX(NewIndex1)
	INNER JOIN cms.planta_clarita b FORCE INDEX (CLIENTE) 
	ON a.idclientecrm=b.cliente AND b.unico='SI'
	SET a.nodo=b.NODO,a.troba=b.PLANO,a.amplificador=b.CODLEX,a.tap=b.CODTAP,
	a.direccion=b.DIREC_INST,a.`telf1`=b.`TELEFCL1`,a.`telf2`=b.`TELEFCL2`,a.`movil1`=b.`TELEFCL3`,a.`naked`=b.naked,a.codserv=b.servicio,
	a.`numcoo_x`=b.numcoo_x,a.`numcoo_y`=b.numcoo_y;
	UPDATE  ccm1_temporal.nclientes_t a FORCE INDEX(cmts,idxfv)
	INNER JOIN catalogos.etiqueta_puertos b FORCE INDEX(cmts,interface)
	ON a.cmts=b.cmts AND a.f_v=b.interface AND b.description<>'VACIO' 
	SET a.nodo=SUBSTR(b.description,1,2),a.troba=SUBSTR(b.description,4,4)
	WHERE  SUBSTR(b.description,1,7)<>CONCAT(a.nodo,' ',a.troba) 
	OR (a.nodo=''  OR nodo IS NULL) AND description NOT IN ('VACIO','');
	UPDATE ccm1_temporal.nclientes_t a FORCE INDEX(NewIndex3)
	INNER JOIN catalogos.telefonoshfc b FORCE INDEX (NewIndex3) 
	ON a.macaddress=b.macaddress 
	SET a.telf1=b.telefonohfc,a.`SCOPESGROUPMTA`=b.`gropoderedesmta`,
	a.`MTAMAC`=b.`macaddress`,a.`IDSERVICIOMTA`=b.idseserv,a.`IDPRODUCTOMTA`=b.idprov,
	a.`idventa`=idvent;
	RENAME TABLE ccm1.nclientes TO ccm1.nclientes_d,
	ccm1.nclientes_c TO ccm1.nclientes,
	ccm1.nclientes_d TO ccm1.nclientes_c;
       	
	INSERT INTO ccm1.nclientes_c SELECT * FROM ccm1_temporal.`nclientes_c`;
	TRUNCATE TABLE  ccm1_temporal.macaddress;
	INSERT INTO ccm1_temporal.macaddress
	SELECT a.macaddress FROM ccm1.nclientes_c  a FORCE INDEX(NewIndex3) 
	LEFT JOIN ccm1_temporal.cmactivosdiario b FORCE INDEX (NewIndex1) 
	ON a.macaddress=b.macaddress WHERE b.idclientecrm IS NULL;       
	UPDATE   ccm1_temporal.`macaddress` a FORCE INDEX (macaddress) INNER JOIN ccm1.`nclientes_c` b  FORCE INDEX(NewIndex3)  
	SET b.empresa='xxx' WHERE a.macaddress =b.macaddress;
	DELETE FROM ccm1.nclientes_c WHERE empresa='xxx';
	
	RENAME TABLE ccm1.nclientes TO ccm1.nclientes_d,
	ccm1.nclientes_c TO ccm1.nclientes,
	ccm1.nclientes_d TO ccm1.nclientes_c;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_consultasCatv` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_consultasCatv` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `sp_consultasCatv`(IN file_name char(64))
BEGIN
set @myvar = concat("SELECT 
'cliente','nodo','plano','amplificador','fechahora','mensaje','usuario','codreq','codmotv','tipreqini','fecreg_aver' 
union SELECT a.dato as 
cliente,a.nodo,a.troba as plano,amplificador,a.fechahora,a.mensaje,a.usuario ,b.codreq,b.codmotv,b.tipreqini,b.fec_mov 
FROM multiconsulta.multi_consultas a left 
join ccm1_temporal.averias_catv_new_7 b on a.dato=b.codcli and timediff(b.fec_mov,a.fechahora)>='00:00:00' and datediff(b.fec_mov,a.fechahora)<=0 WHERE 
datediff(NOW(),fechahora)<=1 AND a.dato>0 GROUP BY a.dato,a.fechahora 
INTO OUTFILE '",file_name,"' FIELDS TERMINATED BY ',' lines terminated by '\r\n'");
PREPARE stmt1 FROM @myvar; 
EXECUTE stmt1; 
Deallocate prepare stmt1; 
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_actualiza_nclientes_new` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_actualiza_nclientes_new` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `sp_actualiza_nclientes_new`()
BEGIN	
	DELETE FROM ccm1_temporal.cmactivosdiario_ins WHERE idempresacrm=138;
	DELETE FROM ccm1_temporal.cmactivosdiario_del WHERE idempresacrm=138;
	
	TRUNCATE  ccm1_temporal.nclientes_t;
	INSERT IGNORE  ccm1_temporal.nclientes_t
	SELECT
	a.EMPRESA,
	a.IDCLIENTECRM,
	a.IDEMPRESACRM,
	a.IDSERVICIO,
	a.IDPRODUCTO,
	a.IDVENTA,
	e.Nombre AS NAMECLIENT,
	'' AS NODO,
	'' AS TROBA,
	'' AS amplificador,
	'' tap,
	'' AS telf1,
	'' AS telf2,
	'' AS f_v,
	'0' AS regver,
	'' AS cmts,
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
	'' AS CMTSID,
	'' AS UBICACIONENLARED,
	e.IPCablemodem AS IPCM,
	'' AS DOCSISVERSION,
	'' AS movil1,
	CONCAT(SUBSTR(a.macaddress,1,2),SUBSTR(a.macaddress,4,2),'.',SUBSTR(a.macaddress,7,2),SUBSTR(a.macaddress,10,2),'.',SUBSTR(a.macaddress,13,2),
	SUBSTR(a.macaddress,16,2)) AS mac2,
	REPLACE (a.macaddress,':', '') AS mac3,
	'' AS direccion,
	'' AS codserv,
	NOW() AS fecha_upload,'' AS naked,'' AS numcoo_x,'' AS numcoo_y
	FROM ccm1_temporal.cmactivosdiario_ins a
	FORCE INDEX(NewIndex1,IDEMPRESACRM,NewIndex2)
	LEFT JOIN ccm1_data.marca_modelo_docsis_total e FORCE INDEX(idxmac)
	ON a.MACADDRESS=e.MACAddress
	WHERE a.IDEMPRESACRM=127 AND a.idclientecrm>0;
	UPDATE ccm1_temporal.cmactivosdiario_ins SET mac3=REPLACE(macaddress,':','');
	
	UPDATE ccm1_temporal.cmactivosdiario_ins SET mac2=CONCAT(SUBSTR(mac3,1,4),'.',SUBSTR(mac3,5,4),'.',SUBSTR(mac3,9,4));
	
	UPDATE ccm1_temporal.cmactivosdiario_ins SET FECHAALTA=CONCAT(SUBSTR(FECHAALTA,7,4),'-',SUBSTR(FECHAALTA,4,2),'-',SUBSTR(FECHAALTA,1,2),' ',SUBSTR(FECHAALTA,12,5)),FECHAACTIVACION=CONCAT(SUBSTR(FECHAACTIVACION,7,4),'-',SUBSTR(FECHAACTIVACION,4,2),'-',SUBSTR(FECHAACTIVACION,1,2),' ',SUBSTR(FECHAACTIVACION,12,5));
	
	UPDATE ccm1_temporal.nclientes_t a FORCE INDEX (NewIndex4)  INNER JOIN ccm1_temporal.scm_total c
	FORCE INDEX (MACAddress) ON a.mac2 = c.MACAddress SET a.f_v=c.Interface,a.cmts=c.cmts,a.ipcm=c.ipaddress;
	UPDATE ccm1_temporal.nclientes_t a FORCE INDEX (NewIndex4)
	INNER JOIN ccm1_temporal.scm_phy_t c FORCE INDEX (NewIndex1)  
	ON a.mac2 = c.MACAddress  
	SET a.f_v=c.Interface,a.cmts=c.cmts WHERE a.f_v<>c.Interface;
	
	UPDATE ccm1_temporal.nclientes_t a FORCE INDEX(idproducto)
	INNER JOIN catalogos.activo_movistar1 b FORCE INDEX(idproducto)
	ON a.idproducto=b.idproducto SET a.codserv=b.codsrv  WHERE a.idproducto=0 and codelemsrv='MSP';
	   
	UPDATE ccm1_temporal.nclientes_t a FORCE INDEX(idxcodserv)
	INNER JOIN cms.planta_clarita b FORCE INDEX(SERVICIO)
	ON a.codserv=b.SERVICIO
	SET
	a.direccion=b.DIREC_INST,
	a.nodo=b.NODO,
	a.troba=b.plano,
	a.amplificador=b.CODLEX,
	a.tap=b.codtap,
	a.numcoo_x=b.numcoo_x,
	a.numcoo_y=b.numcoo_y,
	a.telf1=b.TELEFCL1,
	a.telf2=b.TELEFCL2,
	a.movil1=b.TELEFCL3,
	a.naked=b.naked;
	
	UPDATE  ccm1_temporal.nclientes_t a FORCE INDEX(cmts,idxfv)
	INNER JOIN catalogos.etiqueta_puertos b FORCE INDEX(cmts,interface) ON a.cmts=b.cmts 
	AND a.f_v=b.interface AND description<>'VACIO'
	SET a.nodo=SUBSTR(b.description,1,2),a.troba=SUBSTR(b.description,4,4)
	WHERE  SUBSTR(b.description,1,7)<>CONCAT(a.nodo,' ',a.troba) 
	AND ((LENGTH(TRIM(description))>=7 AND LENGTH(TRIM(description))<=9)
	OR RIGHT(TRIM(description),1)=')');
	UPDATE ccm1.nclientes_c a force index(idproducto) 
	INNER JOIN ccm1_temporal.cmactivosdiario_del b force index(IDPRODUCTO)
	ON a.idproducto=b.idproducto SET a.idempresacrm =999 where a.idproducto>0;
	
	UPDATE ccm1.nclientes_c a FORCE INDEX(idventa) 
	INNER JOIN ccm1_temporal.cmactivosdiario_del b FORCE INDEX(idventa)
	ON a.idventa=b.idventa SET a.idempresacrm =999 WHERE a.idventa>0;
	
	/*
	UPDATE ccm1_temporal.nclientes_t a INNER JOIN `analitycs`.`xy_nuevo2019` b 
	ON a.idclientecrm=b.`codclicms`
	SET a.numcoo_x=b.`longitud`,a.`numcoo_y`=b.`latitud`;
	UPDATE ccm1_temporal.nclientes_t a INNER JOIN `analitycs`.`xy_nuevo2019` b 
	ON a.codserv=b.`codservcms`
	SET a.numcoo_x=b.`longitud`,a.`numcoo_y`=b.`latitud`;
	*/
	
	DELETE FROM ccm1.nclientes_c WHERE idempresacrm =999;
	
	INSERT IGNORE ccm1.nclientes_c  SELECT * FROM ccm1_temporal.nclientes_t;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_data_alarm` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_data_alarm` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `sp_data_alarm`()
BEGIN
IF (HOUR(NOW())>=4 AND HOUR(NOW())<=5) THEN
REPLACE cantroba
(SELECT nodo,troba,COUNT(*) AS cant , CONCAT(nodo,troba) AS clave FROM ccm1.nclientes
WHERE nodo IS NOT NULL
  GROUP BY 1,2);
END IF;
	#CALL catalogos.llamadasxtroba;	
		
#Inserta alertas por parametros, cada una con un color distinto	
###M1 
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED ;
TRUNCATE TABLE ccm1_temporal.consultasr;
INSERT INTO ccm1_temporal.consultasr
SELECT nodo,troba AS troban,SUBSTR(fechahora,1,16) AS fechahora,COUNT(*) AS cant FROM ccm1_temporal.multi_consultas 
WHERE macaddress<>''
GROUP BY 1,2;
TRUNCATE TABLE ccm1_temporal.consultasr_d_c;
INSERT IGNORE ccm1_temporal.consultasr_d_c
SELECT  dato,MAX(fechahora) AS fechahora,1 AS cant  FROM ccm1_temporal.multi_consultas
WHERE fechahora>=(SELECT CONCAT(SUBSTR(MIN(fecreg),7,4),'-',SUBSTR(MIN(fecreg),4,2),'-',SUBSTR(MIN(fecreg),1,2),' ',SUBSTR(MIN(fecreg),12,8)) 
FROM ccm1_temporal.masivas_temp)
GROUP BY 1;
TRUNCATE TABLE ccm1_temporal.`consultasr_n`;
INSERT INTO ccm1_temporal.`consultasr_n`
SELECT a.nodo,a.troba AS troban,b.fechahora,COUNT(*) AS cant FROM ccm1.nclientes a INNER JOIN
(SELECT SUBSTR(fechahora,1,13) AS fechahora,dato FROM ccm1_temporal.consultasr_d_c GROUP BY 1,2) b
ON a.idclientecrm=b.dato 
WHERE a.nodo IS NOT NULL
GROUP BY 1,2,3;
#####Amplif
TRUNCATE TABLE ccm1_temporal.`consultasr_amplif`;
INSERT INTO ccm1_temporal.`consultasr_amplif`
SELECT a.nodo,a.troba AS troban,a.amplificador,b.fechahora,COUNT(*) AS cant FROM ccm1.nclientes a INNER JOIN
ccm1_temporal.consultasr_d_c b
ON a.idclientecrm=b.dato 
WHERE a.nodo IS NOT NULL
GROUP BY 1,2,3,4;	
####CATV
TRUNCATE TABLE ccm1_temporal.`consultasr_catv_c`;
INSERT INTO ccm1_temporal.`consultasr_catv_c`
SELECT nodo,troba,SUBSTR(fechahora,1,16) AS fechahora,COUNT(*) AS cant FROM ccm1_temporal.multi_consultas 
GROUP BY 1,2,3;
RENAME TABLE ccm1_temporal.consultasr_catv TO ccm1_temporal.consultasr_catv_temp,
	     ccm1_temporal.consultasr_catv_c TO ccm1_temporal.consultasr_catv,
             ccm1_temporal.consultasr_catv_temp TO ccm1_temporal.consultasr_catv_c;
             
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_multi_consultas_48horas` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_multi_consultas_48horas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `sp_multi_consultas_48horas`()
BEGIN
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED ;
TRUNCATE TABLE ccm1_temporal.`multi_consultas_48horas`;
INSERT INTO ccm1_temporal.`multi_consultas_48horas`
SELECT item, tipobusqueda, dato*1 AS dato, fechahora, mensaje FROM ccm1_temporal.`multi_consultas` 
WHERE (TIME_TO_SEC(TIMEDIFF(NOW(), `fechahora` )) / 3600) <= 48;
DROP TABLE IF EXISTS ccm1_temporal.`multi_consultas_48horas_sinaverias`;
CREATE TABLE ccm1_temporal.`multi_consultas_48horas_sinaverias`
SELECT a.dato, COUNT(*) as total_llamadas FROM ccm1_temporal.`multi_consultas_48horas` a
LEFT JOIN ccm1_temporal.`averias_criticos_tmp_averias` b
ON a.`dato`=b.inscripcion 
WHERE b.inscripcion IS NULL GROUP BY 1 
-- HAVING COUNT(*)>3
ORDER BY 2 DESC;
commit;
    END */$$
DELIMITER ;

/*Table structure for table `cant_caidas` */

DROP TABLE IF EXISTS `cant_caidas`;

/*!50001 DROP VIEW IF EXISTS `cant_caidas` */;
/*!50001 DROP TABLE IF EXISTS `cant_caidas` */;

/*!50001 CREATE TABLE  `cant_caidas`(
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `caidas` bigint(21) ,
 `off` decimal(21,0) ,
 `cantcli` decimal(21,0) 
)*/;

/*View structure for view cant_caidas */

/*!50001 DROP TABLE IF EXISTS `cant_caidas` */;
/*!50001 DROP VIEW IF EXISTS `cant_caidas` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `cant_caidas` AS (select `alarmas_caidas_historico`.`nodo` AS `nodo`,`alarmas_caidas_historico`.`troba` AS `troba`,count(0) AS `caidas`,round(avg(`alarmas_caidas_historico`.`off`),0) AS `off`,round(avg(`alarmas_caidas_historico`.`cant`),0) AS `cantcli` from `alarmas_caidas_historico` where ((to_days(now()) - to_days(`alarmas_caidas_historico`.`fecha_hora`)) <= 7) group by `alarmas_caidas_historico`.`nodo`,`alarmas_caidas_historico`.`troba`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

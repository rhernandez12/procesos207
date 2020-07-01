/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - ccm1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ccm1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ccm1`;

/*Table structure for table `accessgroup` */

DROP TABLE IF EXISTS `accessgroup`;

CREATE TABLE `accessgroup` (
  `macaddress` varchar(20) DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `macaddress_2` (`macaddress`,`ipaddress`),
  KEY `macaddress` (`macaddress`),
  KEY `ipaddress` (`ipaddress`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `cmts` (`cmts`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `accessgroup_casa` */

DROP TABLE IF EXISTS `accessgroup_casa`;

CREATE TABLE `accessgroup_casa` (
  `ipcpe` varchar(20) DEFAULT NULL,
  `dhcp` varchar(4) DEFAULT NULL,
  `maccpe` varchar(20) DEFAULT NULL,
  `ipmodem` varchar(20) DEFAULT NULL,
  `macmodem` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `ultimo` varchar(1) DEFAULT NULL,
  KEY `NewIndex1` (`maccpe`),
  KEY `NewIndex2` (`macmodem`),
  KEY `NewIndex3` (`cmts`),
  KEY `NewIndex4` (`ipcpe`)
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

/*Table structure for table `anovo_repotenciacion` */

DROP TABLE IF EXISTS `anovo_repotenciacion`;

CREATE TABLE `anovo_repotenciacion` (
  `idventa` double DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `cm` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `averias_catv` */

DROP TABLE IF EXISTS `averias_catv`;

CREATE TABLE `averias_catv` (
  `codofcadm` varchar(3) DEFAULT NULL,
  `codreq` int(16) DEFAULT NULL,
  `codclasrv` int(16) DEFAULT NULL,
  `tipreqini` varchar(2) DEFAULT NULL,
  `destipreqini` varchar(100) DEFAULT NULL,
  `fec_mov` varchar(20) DEFAULT NULL,
  `estado` varchar(80) DEFAULT NULL,
  `codestado` int(20) DEFAULT NULL,
  `codcli` int(20) DEFAULT NULL,
  `codnod` varchar(2) DEFAULT NULL,
  `nroplano` varchar(4) DEFAULT NULL,
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
  `codctr` int(11) DEFAULT NULL,
  UNIQUE KEY `NewIndex4` (`codreq`),
  KEY `NewIndex1` (`codcli`),
  KEY `NewIndex2` (`codnod`),
  KEY `NewIndex3` (`nroplano`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `averias_catv_c` */

DROP TABLE IF EXISTS `averias_catv_c`;

CREATE TABLE `averias_catv_c` (
  `codofcadm` varchar(3) DEFAULT NULL,
  `codreq` int(16) DEFAULT NULL,
  `codclasrv` int(16) DEFAULT NULL,
  `tipreqini` varchar(2) DEFAULT NULL,
  `destipreqini` varchar(100) DEFAULT NULL,
  `fec_mov` varchar(20) DEFAULT NULL,
  `estado` varchar(80) DEFAULT NULL,
  `codestado` int(20) DEFAULT NULL,
  `codcli` int(20) DEFAULT NULL,
  `codnod` varchar(2) DEFAULT NULL,
  `nroplano` varchar(4) DEFAULT NULL,
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
  `codctr` int(11) DEFAULT NULL,
  UNIQUE KEY `NewIndex4` (`codreq`),
  KEY `NewIndex1` (`codcli`),
  KEY `NewIndex2` (`codnod`),
  KEY `NewIndex3` (`nroplano`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `averias_catv_new` */

DROP TABLE IF EXISTS `averias_catv_new`;

CREATE TABLE `averias_catv_new` (
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

/*Table structure for table `averias_m1` */

DROP TABLE IF EXISTS `averias_m1`;

CREATE TABLE `averias_m1` (
  `codofcadm` varchar(3) DEFAULT NULL,
  `codreq` int(16) DEFAULT NULL,
  `codclasrv` int(16) DEFAULT NULL,
  `tipreqini` varchar(2) DEFAULT NULL,
  `destipreqini` varchar(100) DEFAULT NULL,
  `fec_mov` varchar(20) DEFAULT NULL,
  `estado` varchar(80) DEFAULT NULL,
  `codestado` int(20) DEFAULT NULL,
  `codcli` int(20) DEFAULT NULL,
  `codnod` varchar(2) DEFAULT NULL,
  `nroplano` varchar(4) DEFAULT NULL,
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
  `codctr` int(11) DEFAULT NULL,
  UNIQUE KEY `NewIndex5` (`codreq`,`codcli`),
  KEY `NewIndex1` (`codcli`),
  KEY `NewIndex2` (`codnod`),
  KEY `NewIndex3` (`nroplano`),
  KEY `NewIndex4` (`codreq`),
  KEY `idxestado` (`estado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `averias_m1_new` */

DROP TABLE IF EXISTS `averias_m1_new`;

CREATE TABLE `averias_m1_new` (
  `codofcadm` varchar(3) DEFAULT NULL,
  `codreq` int(16) DEFAULT NULL,
  `codclasrv` int(16) DEFAULT NULL,
  `tipreqini` varchar(2) DEFAULT NULL,
  `destipreqini` varchar(100) DEFAULT NULL,
  `fec_mov` varchar(20) DEFAULT NULL,
  `estado` varchar(80) DEFAULT NULL,
  `codestado` int(20) DEFAULT NULL,
  `codcli` int(20) DEFAULT NULL,
  `codnod` varchar(2) DEFAULT NULL,
  `nroplano` varchar(4) DEFAULT NULL,
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
  `tipodeingreso` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `tipodeliquidacion` varchar(100) DEFAULT NULL,
  `codctr` int(11) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`codreq`),
  KEY `NewIndex2` (`tipodeliquidacion`),
  KEY `NewIndex3` (`tipodeingreso`),
  KEY `NewIndex4` (`tipodeliquidacion`),
  KEY `NewIndex5` (`codnod`,`nroplano`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `averias_m1_new_c` */

DROP TABLE IF EXISTS `averias_m1_new_c`;

CREATE TABLE `averias_m1_new_c` (
  `codofcadm` varchar(3) DEFAULT NULL,
  `codreq` int(16) DEFAULT NULL,
  `codclasrv` int(16) DEFAULT NULL,
  `tipreqini` varchar(2) DEFAULT NULL,
  `destipreqini` varchar(100) DEFAULT NULL,
  `fec_mov` varchar(20) DEFAULT NULL,
  `estado` varchar(80) DEFAULT NULL,
  `codestado` int(20) DEFAULT NULL,
  `codcli` int(20) DEFAULT NULL,
  `codnod` varchar(2) DEFAULT NULL,
  `nroplano` varchar(4) DEFAULT NULL,
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
  `tipodeingreso` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `tipodeliquidacion` varchar(100) DEFAULT NULL,
  `codctr` int(11) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`codreq`),
  KEY `NewIndex2` (`tipodeliquidacion`),
  KEY `NewIndex3` (`tipodeingreso`),
  KEY `NewIndex4` (`tipodeliquidacion`),
  KEY `NewIndex5` (`codnod`,`nroplano`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `averias_m1_new_d` */

DROP TABLE IF EXISTS `averias_m1_new_d`;

CREATE TABLE `averias_m1_new_d` (
  `codofcadm` varchar(3) DEFAULT NULL,
  `codreq` int(16) DEFAULT NULL,
  `codclasrv` int(16) DEFAULT NULL,
  `tipreqini` varchar(2) DEFAULT NULL,
  `destipreqini` varchar(100) DEFAULT NULL,
  `fec_mov` varchar(20) DEFAULT NULL,
  `estado` varchar(80) DEFAULT NULL,
  `codestado` int(20) DEFAULT NULL,
  `codcli` int(20) DEFAULT NULL,
  `codnod` varchar(2) DEFAULT NULL,
  `nroplano` varchar(4) DEFAULT NULL,
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
  `tipodeingreso` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `tipodeliquidacion` varchar(100) DEFAULT NULL,
  `codctr` int(11) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`codreq`),
  KEY `NewIndex2` (`tipodeliquidacion`),
  KEY `NewIndex3` (`tipodeingreso`),
  KEY `NewIndex4` (`tipodeliquidacion`),
  KEY `NewIndex5` (`codnod`,`nroplano`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `base_jefatura_regiones` */

DROP TABLE IF EXISTS `base_jefatura_regiones`;

CREATE TABLE `base_jefatura_regiones` (
  `DPTO` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `PROVINCIA` varchar(24) CHARACTER SET utf8 DEFAULT NULL,
  `DISTRITO` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `MDF` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `NOMBRE` varchar(29) CHARACTER SET utf8 DEFAULT NULL,
  `UNIONN` varchar(49) CHARACTER SET utf8 DEFAULT NULL,
  `TIPO` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `REGION` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `JEF_CMR` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `LLAVEMARCA` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `DET_REGION` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `SEDE` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `JEFATURA` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PREM_MAS` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `XXEECC` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `SUPERVISOR` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `ENTRENADOR` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `MICROZONA` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `ZONA` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `ZON_REGION` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `LLAVEMAR2` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `PLAYAS` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `EECC` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `MZONA_CATV` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `MZONA_DTH` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `JEFATURA_NUEVO` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `JEFATURA_TAC` varchar(3) CHARACTER SET utf8 DEFAULT '',
  `BONO` varchar(6) CHARACTER SET utf8 DEFAULT '',
  `MZONA_TAC` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `MZONA_8k` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `terreno` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `coddpt` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `codpvc` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `coddtt` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `ubigeo` varchar(9) CHARACTER SET utf8 DEFAULT NULL,
  `JEF_CMR2` varchar(20) DEFAULT NULL,
  KEY `MDF` (`MDF`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `cantroba` */

DROP TABLE IF EXISTS `cantroba`;

CREATE TABLE `cantroba` (
  `nodo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `troba` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `cant` bigint(21) NOT NULL DEFAULT '0',
  `clave` varchar(10) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex3` (`clave`),
  KEY `NewIndex1` (`nodo`),
  KEY `NewIndex2` (`troba`),
  KEY `fechahora` (`fechahora`),
  KEY `cant` (`cant`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cantroba_amplif` */

DROP TABLE IF EXISTS `cantroba_amplif`;

CREATE TABLE `cantroba_amplif` (
  `nodo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `troba` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `amplificador` varchar(20) DEFAULT NULL,
  `cant` bigint(21) NOT NULL DEFAULT '0',
  `clave` varchar(10) DEFAULT NULL,
  UNIQUE KEY `NewIndex3` (`clave`),
  KEY `NewIndex1` (`nodo`),
  KEY `NewIndex2` (`troba`),
  KEY `amplificador` (`amplificador`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `clientes_alertados` */

DROP TABLE IF EXISTS `clientes_alertados`;

CREATE TABLE `clientes_alertados` (
  `IDCLIENTECRM` double DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `tipo` varchar(12) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `cmts_ip` */

DROP TABLE IF EXISTS `cmts_ip`;

CREATE TABLE `cmts_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmts` varchar(50) NOT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `abrev` varchar(4) DEFAULT NULL,
  `marca` varchar(10) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `comunidad` varchar(30) DEFAULT NULL,
  `flag` varchar(1) DEFAULT NULL,
  `tacacs` varchar(1) DEFAULT NULL,
  `grupo` varchar(1) DEFAULT NULL,
  `zonal` varchar(3) DEFAULT NULL,
  `realname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cmts`),
  KEY `idx1` (`cmts`),
  KEY `flag` (`flag`),
  KEY `grupo` (`grupo`),
  KEY `id` (`id`),
  KEY `realname` (`realname`),
  KEY `marca` (`marca`)
) ENGINE=MyISAM AUTO_INCREMENT=481 DEFAULT CHARSET=latin1;

/*Table structure for table `cnr_monitor` */

DROP TABLE IF EXISTS `cnr_monitor`;

CREATE TABLE `cnr_monitor` (
  `fecha_hora` varchar(20) DEFAULT NULL,
  `intervalo` varchar(20) DEFAULT NULL,
  `discover` varchar(20) DEFAULT NULL,
  `offer` varchar(20) DEFAULT NULL,
  `renew` varchar(20) DEFAULT NULL,
  `request` varchar(20) DEFAULT NULL,
  `ack` varchar(20) DEFAULT NULL,
  `dropped` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `cnr_monitor_alerta` */

DROP TABLE IF EXISTS `cnr_monitor_alerta`;

CREATE TABLE `cnr_monitor_alerta` (
  `fecha_hora` varchar(20) DEFAULT NULL,
  `intervalo` varchar(20) DEFAULT NULL,
  `discover` varchar(20) DEFAULT NULL,
  `offer` varchar(20) DEFAULT NULL,
  `renew` varchar(20) DEFAULT NULL,
  `request` varchar(20) DEFAULT NULL,
  `ack` varchar(20) DEFAULT NULL,
  `dropped` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `cnr_monitor_h` */

DROP TABLE IF EXISTS `cnr_monitor_h`;

CREATE TABLE `cnr_monitor_h` (
  `fecha_hora` varchar(20) DEFAULT NULL,
  `intervalo` varchar(20) DEFAULT NULL,
  `discover` varchar(20) DEFAULT NULL,
  `offer` varchar(20) DEFAULT NULL,
  `renew` varchar(20) DEFAULT NULL,
  `request` varchar(20) DEFAULT NULL,
  `ack` varchar(20) DEFAULT NULL,
  `dropped` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `control_calidad` */

DROP TABLE IF EXISTS `control_calidad`;

CREATE TABLE `control_calidad` (
  `idventa` double DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `cm` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `cust_addr` */

DROP TABLE IF EXISTS `cust_addr`;

CREATE TABLE `cust_addr` (
  `ACTION` char(0) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `macaddress` varchar(20) DEFAULT NULL,
  `address1` varchar(90) DEFAULT NULL,
  `address2` longtext CHARACTER SET utf8,
  `administrativearealevel1` char(0) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `administrativearealevel2` char(0) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `locality` varchar(4) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `postalcode` char(0) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `country` varchar(4) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `lat` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `lon` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `fibernode` varchar(9) DEFAULT NULL,
  `topologylinkid` varchar(29) DEFAULT NULL,
  `customerid` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `diag_edif` */

DROP TABLE IF EXISTS `diag_edif`;

CREATE TABLE `diag_edif` (
  `cliente` int(10) DEFAULT NULL,
  `servicio` int(10) DEFAULT NULL,
  `nodo` varchar(4) DEFAULT NULL,
  `plano` varchar(5) DEFAULT NULL,
  `codlex` varchar(10) DEFAULT NULL,
  `codtap` varchar(10) DEFAULT NULL,
  `codbor` varchar(10) DEFAULT NULL,
  `Macstate` varchar(20) DEFAULT NULL,
  `DIREC_INST` varchar(90) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `USPwr` varchar(20) DEFAULT NULL,
  `USMER_SNR` varchar(20) DEFAULT NULL,
  `DSPwr` varchar(20) DEFAULT NULL,
  `DSMER_SNR` varchar(20) DEFAULT NULL,
  `STATUS` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `edificio` varchar(6) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `fuentesdepoder` */

DROP TABLE IF EXISTS `fuentesdepoder`;

CREATE TABLE `fuentesdepoder` (
  `ITEM` int(4) NOT NULL AUTO_INCREMENT,
  `CODNOD` varchar(100) DEFAULT NULL,
  `NODO` varchar(2) DEFAULT NULL,
  `PLANO` varchar(4) DEFAULT NULL,
  `DISTRITO` varchar(100) DEFAULT NULL,
  `DIRECCION` varchar(150) DEFAULT NULL,
  `TROBA` varchar(10) DEFAULT NULL,
  `TIPODEPROYECTO` varchar(30) DEFAULT NULL,
  `LONGITUD_X` varchar(20) DEFAULT NULL,
  `LATITUD_Y` varchar(20) DEFAULT NULL,
  `XM3` varchar(4) DEFAULT NULL,
  `MAC` varchar(18) DEFAULT NULL,
  `SERIE` varchar(20) DEFAULT NULL,
  `FECHADETERMINO` varchar(20) DEFAULT NULL,
  `NUMERODEACTA` varchar(4) DEFAULT NULL,
  UNIQUE KEY `MAC` (`MAC`),
  KEY `CODNOD` (`CODNOD`),
  KEY `PLANO` (`PLANO`),
  KEY `ITEM` (`ITEM`),
  KEY `SERIE` (`SERIE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `geo_tap` */

DROP TABLE IF EXISTS `geo_tap`;

CREATE TABLE `geo_tap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zonal` varchar(4) DEFAULT NULL,
  `nodo` varchar(10) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `amplificador` varchar(10) DEFAULT NULL,
  `tap` varchar(10) DEFAULT NULL,
  `coord_x` varchar(20) DEFAULT NULL,
  `coord_y` varchar(20) DEFAULT NULL,
  `direccion` text,
  `clave` varchar(30) DEFAULT NULL,
  `clave_trob` varchar(20) DEFAULT NULL,
  `clave_ampli` varchar(30) DEFAULT NULL,
  `clave_tap` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zonal` (`zonal`),
  KEY `idx_nodo` (`nodo`),
  KEY `idx_troba` (`troba`),
  KEY `idx_amplificador` (`amplificador`),
  KEY `idx_tap` (`tap`),
  KEY `NewIndex1` (`clave`),
  KEY `clave_trob` (`clave_trob`),
  KEY `clave_ampli` (`clave_ampli`),
  KEY `clave_tap` (`clave_tap`)
) ENGINE=InnoDB AUTO_INCREMENT=143303 DEFAULT CHARSET=utf8;

/*Table structure for table `historico_ccm1` */

DROP TABLE IF EXISTS `historico_ccm1`;

CREATE TABLE `historico_ccm1` (
  `macaddress` varchar(20) DEFAULT NULL,
  `servicepackagecrmid` varchar(100) DEFAULT NULL,
  `servicepackage` varchar(100) DEFAULT NULL,
  `idusuario` varchar(10) DEFAULT NULL,
  `fecha` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `historico_probl_ips` */

DROP TABLE IF EXISTS `historico_probl_ips`;

CREATE TABLE `historico_probl_ips` (
  `cmts` varchar(30) DEFAULT NULL,
  `scopesgroup` varchar(20) DEFAULT NULL,
  `total` decimal(32,0) DEFAULT NULL,
  `used` decimal(32,0) DEFAULT NULL,
  `available` decimal(32,0) DEFAULT NULL,
  `porc` decimal(39,4) DEFAULT NULL,
  `color` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`scopesgroup`,`fecha_hora`(13)),
  KEY `cmts` (`cmts`),
  KEY `scopesgroup` (`scopesgroup`),
  KEY `fecha_hora` (`fecha_hora`(13))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `historico_refresh` */

DROP TABLE IF EXISTS `historico_refresh`;

CREATE TABLE `historico_refresh` (
  `codcli` int(11) DEFAULT NULL,
  `codsrv` int(11) DEFAULT NULL,
  `numser` varchar(50) DEFAULT NULL,
  `codmat` varchar(50) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `codcli` (`codcli`),
  KEY `codsrv` (`codsrv`),
  KEY `numser` (`numser`),
  KEY `codmat` (`codmat`),
  KEY `usuario` (`usuario`),
  KEY `fecha_hora` (`fecha_hora`)
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

/*Table structure for table `level_troba_hist` */

DROP TABLE IF EXISTS `level_troba_hist`;

CREATE TABLE `level_troba_hist` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `Min_USPwr` double(19,2) DEFAULT NULL,
  `Pro_USPwr` double(19,2) DEFAULT NULL,
  `Max_USPwr` double(19,2) DEFAULT NULL,
  `USSnr` double(19,2) DEFAULT NULL,
  `Min_DSPwr` double(19,2) DEFAULT NULL,
  `Pro_DSPwr` double(19,2) DEFAULT NULL,
  `Max_DSPwr` double(19,2) DEFAULT NULL,
  `DSSnr` double(19,2) DEFAULT NULL,
  `Cant_CM` bigint(21) NOT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `Interface` varchar(20) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  `microzona` varchar(20) DEFAULT NULL,
  `fecha_hora` datetime NOT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `cmts` (`cmts`),
  KEY `Interface` (`Interface`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `level_troba_hist_sw` */

DROP TABLE IF EXISTS `level_troba_hist_sw`;

CREATE TABLE `level_troba_hist_sw` (
  `sw` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `logs_cm_reinicios` */

DROP TABLE IF EXISTS `logs_cm_reinicios`;

CREATE TABLE `logs_cm_reinicios` (
  `mac_mta` varchar(50) NOT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `fecha_proceso` datetime DEFAULT NULL,
  `fecha_proceso2` date DEFAULT NULL,
  `hora_proceso` time DEFAULT NULL,
  `turno` varchar(25) DEFAULT NULL,
  `mac_mta2` varchar(50) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  UNIQUE KEY `idxunico` (`mac_mta`,`fecha_proceso`),
  KEY `idxmac` (`mac_mta`),
  KEY `idxestado` (`estado`),
  KEY `idxturno` (`turno`),
  KEY `idxmac2` (`mac_mta2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `logs_cm_reinicios_marcamodelo` */

DROP TABLE IF EXISTS `logs_cm_reinicios_marcamodelo`;

CREATE TABLE `logs_cm_reinicios_marcamodelo` (
  `mac_mta` varchar(50) NOT NULL,
  `mac_cm` varchar(50) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `fecha_proceso` datetime DEFAULT NULL,
  `fecha_proceso2` date DEFAULT NULL,
  `hora_proceso` time DEFAULT NULL,
  `turno` varchar(25) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  UNIQUE KEY `idxunico` (`mac_mta`,`fecha_proceso`),
  KEY `idxmac` (`mac_mta`),
  KEY `idxestado` (`estado`),
  KEY `idxturno` (`turno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `mac_cpe_modem` */

DROP TABLE IF EXISTS `mac_cpe_modem`;

CREATE TABLE `mac_cpe_modem` (
  `macmodem` varchar(20) DEFAULT NULL,
  `maccpe` varchar(20) NOT NULL,
  `ippublica` varchar(20) DEFAULT NULL,
  `ipprivada` varchar(20) DEFAULT NULL,
  `cmts` varchar(30) DEFAULT NULL,
  UNIQUE KEY `maccpe` (`maccpe`),
  UNIQUE KEY `ipprivada` (`ipprivada`),
  UNIQUE KEY `maccpe_2` (`maccpe`,`ipprivada`),
  KEY `idxmacmodem` (`macmodem`),
  KEY `idxcmts` (`cmts`),
  KEY `ippublica` (`ippublica`)
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

/*Table structure for table `marca_modelo` */

DROP TABLE IF EXISTS `marca_modelo`;

CREATE TABLE `marca_modelo` (
  `Empresa` varchar(3) DEFAULT NULL,
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
  KEY `NewIndex2` (`MACAddress`),
  KEY `idx3` (`Empresa`)
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `me_data_enlaces` */

DROP TABLE IF EXISTS `me_data_enlaces`;

CREATE TABLE `me_data_enlaces` (
  `dataenlaces` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `me_data_enlaces_c` */

DROP TABLE IF EXISTS `me_data_enlaces_c`;

CREATE TABLE `me_data_enlaces_c` (
  `dataenlaces` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `me_data_enlaces_hi` */

DROP TABLE IF EXISTS `me_data_enlaces_hi`;

CREATE TABLE `me_data_enlaces_hi` (
  `dataenlaces` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `me_monitor_enlaces` */

DROP TABLE IF EXISTS `me_monitor_enlaces`;

CREATE TABLE `me_monitor_enlaces` (
  `ip` varchar(20) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL,
  `succesrate` varchar(3) DEFAULT NULL,
  `percent` varchar(10) DEFAULT NULL,
  `min` varchar(5) DEFAULT NULL,
  `avg` varchar(5) DEFAULT NULL,
  `max` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `Alertado` varchar(20) DEFAULT NULL,
  KEY `NewIndex1` (`ip`),
  KEY `NewIndex2` (`fecha_hora`),
  KEY `NewIndex3` (`Alertado`),
  KEY `NewIndex4` (`cmts`),
  KEY `NewIndex5` (`source`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `me_monitor_enlaces_alerta` */

DROP TABLE IF EXISTS `me_monitor_enlaces_alerta`;

CREATE TABLE `me_monitor_enlaces_alerta` (
  `ip` varchar(20) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL,
  `succesrate` varchar(3) DEFAULT NULL,
  `percent` varchar(10) DEFAULT NULL,
  `min` varchar(5) DEFAULT NULL,
  `avg` varchar(5) DEFAULT NULL,
  `max` varchar(5) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `Alertado` varchar(20) DEFAULT NULL,
  KEY `NewIndex1` (`ip`),
  KEY `NewIndex2` (`fecha_hora`),
  KEY `NewIndex3` (`Alertado`),
  KEY `NewIndex4` (`cmts`),
  KEY `NewIndex5` (`source`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `me_monitoreo_servers` */

DROP TABLE IF EXISTS `me_monitoreo_servers`;

CREATE TABLE `me_monitoreo_servers` (
  `ip` varchar(20) DEFAULT NULL,
  `servidor` varchar(40) DEFAULT NULL,
  KEY `NewIndex1` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `me_monitoreo_servers_c` */

DROP TABLE IF EXISTS `me_monitoreo_servers_c`;

CREATE TABLE `me_monitoreo_servers_c` (
  `ip` varchar(20) DEFAULT NULL,
  `servidor` varchar(40) DEFAULT NULL,
  KEY `NewIndex1` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `mensajes` */

DROP TABLE IF EXISTS `mensajes`;

CREATE TABLE `mensajes` (
  `mensaje` varchar(160) NOT NULL DEFAULT '',
  `fech_hor` varchar(20) NOT NULL DEFAULT '',
  `troba` varchar(200) NOT NULL DEFAULT '',
  `enviado` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`fech_hor`,`troba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `mensajes_celular` */

DROP TABLE IF EXISTS `mensajes_celular`;

CREATE TABLE `mensajes_celular` (
  `celular` varchar(12) DEFAULT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `empresa` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `mes` */

DROP TABLE IF EXISTS `mes`;

CREATE TABLE `mes` (
  `mes` varchar(10) DEFAULT NULL,
  `desmes` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `multiconsulta_velocidad` */

DROP TABLE IF EXISTS `multiconsulta_velocidad`;

CREATE TABLE `multiconsulta_velocidad` (
  `velocidad_mb` int(10) unsigned NOT NULL,
  `cmts_mbSize` double unsigned DEFAULT NULL,
  `cmts_repeat` bigint(8) unsigned NOT NULL,
  PRIMARY KEY (`velocidad_mb`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `nclientes` */

DROP TABLE IF EXISTS `nclientes`;

CREATE TABLE `nclientes` (
  `EMPRESA` varchar(3) DEFAULT NULL COMMENT 'Id de empresa (TDP o SGC)',
  `IDCLIENTECRM` double DEFAULT NULL COMMENT 'Codido de cliente CMS',
  `idempresacrm` int(11) DEFAULT NULL COMMENT 'Codigo de empresa (TDP[127] SGC[138])',
  `idservicio` int(11) DEFAULT NULL COMMENT 'Id de tipo de trama [1]Manual [2] CMS',
  `idproducto` double DEFAULT NULL COMMENT 'Codido de espacio Intraway (Generado por Trama)',
  `idventa` double DEFAULT NULL COMMENT 'Codido de espacio Intraway (Generado Manualmente)',
  `NAMECLIENT` varchar(100) DEFAULT NULL COMMENT 'Nombre del cliente',
  `NODO` varchar(2) DEFAULT NULL COMMENT 'Nodo',
  `TROBA` varchar(4) DEFAULT NULL COMMENT 'Troba',
  `amplificador` varchar(11) DEFAULT NULL COMMENT 'Amplificador',
  `tap` varchar(11) DEFAULT NULL COMMENT 'Tap',
  `telf1` varchar(10) DEFAULT NULL COMMENT 'Telefono1',
  `telf2` varchar(10) DEFAULT NULL COMMENT 'Telefono2',
  `f_v` varchar(20) DEFAULT NULL COMMENT 'Interface del CMTS',
  `regver` varchar(3) DEFAULT NULL COMMENT 'version Docsis',
  `cmts` varchar(20) DEFAULT NULL COMMENT 'CMTS',
  `MACADDRESS` varchar(20) DEFAULT NULL COMMENT 'Macaddress del cable modem',
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL COMMENT 'Id de la Velocidad asignada',
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL COMMENT 'Id de la Velocidad asignada',
  `CANTPCS` varchar(11) DEFAULT NULL COMMENT 'Numero de IPS en el equipo',
  `FECHAALTA` varchar(20) DEFAULT NULL COMMENT 'Fecha de alta',
  `FECHAACTIVACION` varchar(20) DEFAULT NULL COMMENT 'Fecha de activacion',
  `ESTADO` varchar(10) DEFAULT NULL COMMENT 'Estado del servicio en Intraway (Activo o Inactivo)',
  `SCOPESGROUP` varchar(15) DEFAULT NULL COMMENT 'Tipo de IP del modem (CPE Publica, CGNAT Nat3)',
  `SCOPESGROUPCM` varchar(15) DEFAULT NULL COMMENT 'Tipo de Ip de gestion',
  `SCOPESGROUPMTA` varchar(15) DEFAULT NULL COMMENT 'Tipo de ip de MTA(Voz)',
  `MTAMAC` varchar(20) DEFAULT NULL COMMENT 'Macaddress del MTA (Voz)',
  `IDSERVICIOMTA` varchar(15) DEFAULT NULL COMMENT 'Tipo de trama de cracion del MTA',
  `IDPRODUCTOMTA` varchar(15) DEFAULT NULL COMMENT 'Id del espacio del MTA (creado por Trama)',
  `IDVENTAMTA` varchar(15) DEFAULT NULL COMMENT 'Id del espacio del MTA (creado Manualmente)',
  `MTAMODELNAME` varchar(50) DEFAULT NULL COMMENT 'modelo de MTA',
  `CMTSID` varchar(11) DEFAULT NULL COMMENT 'ID del CMTS',
  `UBICACIONENLARED` varchar(150) DEFAULT NULL COMMENT 'Ubicación en la red del modem',
  `IPCM` varchar(20) DEFAULT NULL COMMENT 'Ip de gestion del modem',
  `DOCSISVERSION` varchar(11) DEFAULT NULL COMMENT 'Version Docsis',
  `movil1` varchar(20) DEFAULT NULL COMMENT 'Telefono3',
  `mac2` varchar(20) DEFAULT NULL COMMENT 'Macaddress del modem',
  `mac3` varchar(20) DEFAULT NULL COMMENT 'Macaddress del modem',
  `direccion` varchar(150) DEFAULT NULL COMMENT 'Direccion del cliente',
  `codserv` int(11) DEFAULT NULL COMMENT 'codigo de servicio (CMS)',
  `fecha_upload` datetime DEFAULT NULL COMMENT 'fecha de actualización de registro',
  `naked` varchar(50) DEFAULT NULL COMMENT 'identificacion servicios NAKED',
  `numcoo_x` varchar(20) DEFAULT NULL COMMENT 'Coordinada X',
  `numcoo_y` varchar(20) DEFAULT NULL COMMENT 'Coordenada Y',
  UNIQUE KEY `NewIndex3` (`MACADDRESS`),
  UNIQUE KEY `NewIndex4` (`mac2`),
  KEY `NewIndex1` (`IDCLIENTECRM`),
  KEY `NewIndex2` (`NAMECLIENT`),
  KEY `idxservicepackage` (`SERVICEPACKAGE`),
  KEY `idx3` (`SERVICEPACKAGECRMID`),
  KEY `idxtelef1` (`telf1`),
  KEY `idxtelef2` (`telf2`),
  KEY `idxmovil` (`movil1`),
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
  KEY `MACADDRESS` (`MACADDRESS`),
  KEY `EMPRESA` (`EMPRESA`),
  KEY `idempresacrm` (`idempresacrm`)
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
  `mac2` varchar(20) NOT NULL,
  `mac3` varchar(20) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `codserv` int(11) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `naked` varchar(50) DEFAULT NULL,
  `numcoo_x` varchar(20) DEFAULT NULL,
  `numcoo_y` varchar(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex4` (`mac2`),
  UNIQUE KEY `NewIndex3` (`MACADDRESS`),
  KEY `NewIndex1` (`IDCLIENTECRM`),
  KEY `NewIndex2` (`NAMECLIENT`),
  KEY `idxservicepackage` (`SERVICEPACKAGE`),
  KEY `idx3` (`SERVICEPACKAGECRMID`),
  KEY `idxtelef1` (`telf1`),
  KEY `idxtelef2` (`telf2`),
  KEY `idxmovil` (`movil1`),
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
  KEY `MACADDRESS` (`MACADDRESS`),
  KEY `EMPRESA` (`EMPRESA`),
  KEY `idempresacrm` (`idempresacrm`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `nclientes_depurado` */

DROP TABLE IF EXISTS `nclientes_depurado`;

CREATE TABLE `nclientes_depurado` (
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
  KEY `codserv` (`codserv`),
  KEY `IDPRODUCTOMTA` (`IDPRODUCTOMTA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `nclientes_iw` */

DROP TABLE IF EXISTS `nclientes_iw`;

CREATE TABLE `nclientes_iw` (
  `EMPRESA` varchar(255) DEFAULT NULL,
  `IDCLIENTECRM` varchar(255) DEFAULT NULL,
  `IDEMPRESACRM` varchar(255) DEFAULT NULL,
  `IDSERVICIO` varchar(255) DEFAULT NULL,
  `IDPRODUCTO` varchar(255) DEFAULT NULL,
  `IDVENTA` varchar(255) DEFAULT NULL,
  `PRODUCTNAME` varchar(255) DEFAULT NULL,
  `MACADDRESS` varchar(255) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(255) DEFAULT NULL,
  `SERVICEPACKAGECRMID` varchar(255) DEFAULT NULL,
  `CANTPCS` varchar(255) DEFAULT NULL,
  `FECHAALTA` varchar(255) DEFAULT NULL,
  `FECHAACTIVACION` varchar(255) DEFAULT NULL,
  `HUB` varchar(255) DEFAULT NULL,
  `NODO` varchar(255) DEFAULT NULL,
  `ESTADO` varchar(255) DEFAULT NULL,
  `MENSAJE` varchar(255) DEFAULT NULL,
  `SCOPESGROUP` varchar(255) DEFAULT NULL,
  `SCOPESGROUPCM` varchar(255) DEFAULT NULL,
  `SCOPESGROUPMTA` varchar(255) DEFAULT NULL,
  `MTAMAC` varchar(255) DEFAULT NULL,
  `IDSERVICIOMTA` varchar(255) DEFAULT NULL,
  `IDPRODUCTOMTA` varchar(255) DEFAULT NULL,
  `IDVENTAMTA` varchar(255) DEFAULT NULL,
  `PROFILENAME` varchar(255) DEFAULT NULL,
  `MTAMODELNAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `nclientessgc` */

DROP TABLE IF EXISTS `nclientessgc`;

CREATE TABLE `nclientessgc` (
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
  KEY `NewIndex5` (`mac3`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `niveles` */

DROP TABLE IF EXISTS `niveles`;

CREATE TABLE `niveles` (
  `MACAddress` varchar(15) DEFAULT NULL,
  `IF_` varchar(14) DEFAULT NULL,
  `Sid` varchar(6) DEFAULT NULL,
  `USPwr` varchar(6) DEFAULT NULL,
  `USMER` varchar(7) DEFAULT NULL,
  `Timing` varchar(6) DEFAULT NULL,
  `DSPwr` varchar(7) DEFAULT NULL,
  `DSMER` varchar(7) DEFAULT NULL,
  `Mode_` varchar(6) DEFAULT NULL,
  `DOCSIS` varchar(10) DEFAULT NULL,
  `maciw` varchar(26) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `niveles_tmp` */

DROP TABLE IF EXISTS `niveles_tmp`;

CREATE TABLE `niveles_tmp` (
  `llave` varchar(6) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troban` varchar(4) DEFAULT NULL,
  `RxPwrdBmv` varchar(10) DEFAULT NULL,
  `SNR_DN` varchar(15) DEFAULT NULL,
  `PWR_DN` varchar(10) DEFAULT NULL,
  `SNR_UP` varchar(10) DEFAULT NULL,
  `PWR_UP` varchar(10) DEFAULT NULL,
  `cant` bigint(21) NOT NULL DEFAULT '0',
  `fecha_hora` varchar(20) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `tiempo` varchar(20) DEFAULT NULL,
  `caida` varchar(10) DEFAULT NULL,
  `codreqmnt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `numsession` */

DROP TABLE IF EXISTS `numsession`;

CREATE TABLE `numsession` (
  `idusuario` int(11) DEFAULT NULL,
  `numsesion` int(11) DEFAULT NULL,
  KEY `idusuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `partial_service` */

DROP TABLE IF EXISTS `partial_service`;

CREATE TABLE `partial_service` (
  `macaddress` varchar(20) NOT NULL DEFAULT '',
  `interface` varchar(20) DEFAULT NULL,
  `bonding` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `sw` varchar(1) DEFAULT NULL,
  UNIQUE KEY `macaddress` (`macaddress`),
  KEY `cmts` (`cmts`),
  KEY `bonding` (`bonding`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `puertos_clear` */

DROP TABLE IF EXISTS `puertos_clear`;

CREATE TABLE `puertos_clear` (
  `cmts_origen` varchar(20) DEFAULT NULL,
  `interface_origen` varchar(20) DEFAULT NULL,
  KEY `cmts_origen` (`cmts_origen`),
  KEY `interface_origen` (`interface_origen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `reporte_voip` */

DROP TABLE IF EXISTS `reporte_voip`;

CREATE TABLE `reporte_voip` (
  `empresa` varchar(3) NOT NULL,
  `id_cliente` varchar(10) DEFAULT NULL,
  `id_serv` int(4) DEFAULT NULL,
  `id_prod` int(4) DEFAULT NULL,
  `id_vent` varchar(10) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `ddn` varchar(4) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `producto` varchar(20) DEFAULT NULL,
  `macaddress` varchar(30) DEFAULT NULL,
  `cant_pc` int(4) DEFAULT NULL,
  `fech_alt` datetime DEFAULT NULL,
  `activacion` varchar(10) DEFAULT NULL,
  `hub` int(4) DEFAULT NULL,
  `nodo` varchar(10) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `mensajes` int(4) DEFAULT NULL,
  `serv_pack` varchar(30) DEFAULT NULL,
  `gr_red_cm` varchar(3) DEFAULT NULL,
  `gr_red_cpe` varchar(3) DEFAULT NULL,
  `gr_red_mta` varchar(3) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `tap` int(11) DEFAULT NULL,
  `amplificador` int(11) DEFAULT NULL,
  `dd_liq` varchar(2) DEFAULT NULL,
  `mm_liq` varchar(2) DEFAULT NULL,
  `yy_liq` varchar(4) DEFAULT NULL,
  `doc` varchar(45) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `ape_pat` varchar(50) DEFAULT NULL,
  `ape_mat` varchar(50) DEFAULT NULL,
  `nombre_intraway` varchar(50) DEFAULT NULL,
  `pendientes` varchar(10) DEFAULT NULL,
  `telefono_int` int(10) DEFAULT NULL,
  `llam_hr` double(10,2) DEFAULT NULL,
  `llam_min` double(10,2) DEFAULT NULL,
  KEY `idx` (`id_cliente`),
  KEY `NewIndex1` (`macaddress`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `reset_cablemodems` */

DROP TABLE IF EXISTS `reset_cablemodems`;

CREATE TABLE `reset_cablemodems` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idventa` double DEFAULT NULL,
  `procesado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `reset_cablemodems_tdp` */

DROP TABLE IF EXISTS `reset_cablemodems_tdp`;

CREATE TABLE `reset_cablemodems_tdp` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `IDCLIENTECRM` double DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idventa` double DEFAULT NULL,
  `procesado` int(1) NOT NULL,
  KEY `MACAddress` (`MACAddress`),
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`),
  KEY `idproducto` (`idproducto`),
  KEY `idservicio` (`idservicio`),
  KEY `idventa` (`idventa`),
  KEY `procesado` (`procesado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `resumen_nivelesxtroba` */

DROP TABLE IF EXISTS `resumen_nivelesxtroba`;

CREATE TABLE `resumen_nivelesxtroba` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `RxPwrdBmv` double(19,2) DEFAULT NULL,
  `SNR_DN` double(19,2) DEFAULT NULL,
  `PWR_DN` double(19,2) DEFAULT NULL,
  `SNR_UP` double(19,2) DEFAULT NULL,
  `PWR_UP` double(19,2) DEFAULT NULL,
  `cant` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `resumen_nivelesxtroba_c` */

DROP TABLE IF EXISTS `resumen_nivelesxtroba_c`;

CREATE TABLE `resumen_nivelesxtroba_c` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `RxPwrdBmv` double(19,2) DEFAULT NULL,
  `SNR_DN` double(19,2) DEFAULT NULL,
  `PWR_DN` double(19,2) DEFAULT NULL,
  `SNR_UP` double(19,2) DEFAULT NULL,
  `PWR_UP` double(19,2) DEFAULT NULL,
  `cant` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `scm_counter` */

DROP TABLE IF EXISTS `scm_counter`;

CREATE TABLE `scm_counter` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USPackets` varchar(20) DEFAULT NULL,
  `USBytes` varchar(20) DEFAULT NULL,
  `DSPackets` varchar(20) DEFAULT NULL,
  `DSBytes` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `ultimo` varchar(1) DEFAULT NULL,
  KEY `NewIndex1` (`MACAddress`),
  KEY `NewIndex2` (`cmts`),
  KEY `NewIndex3` (`fecha_hora`),
  KEY `NewIndex4` (`ultimo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `scm_partial_service_casa` */

DROP TABLE IF EXISTS `scm_partial_service_casa`;

CREATE TABLE `scm_partial_service_casa` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `macid` varchar(10) DEFAULT NULL,
  `usintf` varchar(20) DEFAULT NULL,
  `dsintf` varchar(20) DEFAULT NULL,
  `usset` varchar(20) DEFAULT NULL,
  `dsset` varchar(20) DEFAULT NULL,
  `bonding` varchar(20) DEFAULT NULL,
  `us_ds_ch_excl` varchar(500) DEFAULT NULL,
  `cmts` varchar(100) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `MACAddress` (`MACAddress`),
  KEY `usintf` (`usintf`),
  KEY `dsintf` (`dsintf`),
  KEY `cmts` (`cmts`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `scm_partial_service_cisco` */

DROP TABLE IF EXISTS `scm_partial_service_cisco`;

CREATE TABLE `scm_partial_service_cisco` (
  `macaddress` varchar(20) NOT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `macstate` varchar(20) DEFAULT NULL,
  `dsxusstate` varchar(20) DEFAULT NULL,
  `impairedds` varchar(20) DEFAULT NULL,
  `impairedus` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`macaddress`),
  KEY `cmts` (`cmts`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

/*Table structure for table `scm_phy_hist` */

DROP TABLE IF EXISTS `scm_phy_hist`;

CREATE TABLE `scm_phy_hist` (
  `cmts` varchar(20) DEFAULT NULL,
  `Interface` varchar(20) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `powerup_max` varchar(10) DEFAULT NULL,
  `powerup_prom` varchar(10) DEFAULT NULL,
  `powerup_min` varchar(10) DEFAULT NULL,
  `powerds_max` varchar(10) DEFAULT NULL,
  `powerds_prom` varchar(10) DEFAULT NULL,
  `powerds_min` varchar(10) DEFAULT NULL,
  `snr_avg` varchar(10) DEFAULT NULL,
  `snr_down` varchar(10) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `fecha_hora_f` varchar(20) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`cmts`,`Interface`,`fecha_hora`(13)),
  KEY `NewIndex3` (`Interface`),
  KEY `NewIndex7` (`fecha_hora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_r` */

DROP TABLE IF EXISTS `scm_phy_r`;

CREATE TABLE `scm_phy_r` (
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
  KEY `DSMER_SNR` (`DSMER_SNR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_batch_sw` */

DROP TABLE IF EXISTS `scm_scm_batch_sw`;

CREATE TABLE `scm_scm_batch_sw` (
  `sw` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `scm_sum` */

DROP TABLE IF EXISTS `scm_sum`;

CREATE TABLE `scm_sum` (
  `interface` varchar(9) DEFAULT NULL,
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
  `Interface6` varchar(10) DEFAULT NULL,
  KEY `idxInterface` (`interface`),
  KEY `idxCmts` (`cmts`),
  KEY `idxDescrip` (`description`),
  KEY `idxInterface6` (`Interface6`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `scm_sum_alerta` */

DROP TABLE IF EXISTS `scm_sum_alerta`;

CREATE TABLE `scm_sum_alerta` (
  `can` int(5) DEFAULT NULL,
  `interface` varchar(9) DEFAULT NULL,
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
  `fecha_hora_f` varchar(20) DEFAULT NULL,
  KEY `interface` (`interface`),
  KEY `cmts` (`cmts`,`interface`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `fecha_hora_f` (`fecha_hora_f`),
  KEY `cmts_2` (`cmts`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_sum_alerta_backup` */

DROP TABLE IF EXISTS `scm_sum_alerta_backup`;

CREATE TABLE `scm_sum_alerta_backup` (
  `can` int(5) DEFAULT NULL,
  `interface` varchar(9) DEFAULT NULL,
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
  `fecha_hora_f` varchar(20) DEFAULT NULL,
  KEY `interface` (`interface`),
  KEY `cmts` (`cmts`,`interface`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `fecha_hora_f` (`fecha_hora_f`),
  KEY `cmts_2` (`cmts`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_sum_alerta_c` */

DROP TABLE IF EXISTS `scm_sum_alerta_c`;

CREATE TABLE `scm_sum_alerta_c` (
  `can` int(5) DEFAULT NULL,
  `interface` varchar(9) DEFAULT NULL,
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
  `fecha_hora_f` varchar(20) DEFAULT NULL,
  KEY `interface` (`interface`),
  KEY `cmts` (`cmts`,`interface`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `fecha_hora_f` (`fecha_hora_f`),
  KEY `cmts_2` (`cmts`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_sum_alerta_temp` */

DROP TABLE IF EXISTS `scm_sum_alerta_temp`;

CREATE TABLE `scm_sum_alerta_temp` (
  `can` int(5) DEFAULT NULL,
  `interface` varchar(9) DEFAULT NULL,
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
  `ultimo` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_sum_final` */

DROP TABLE IF EXISTS `scm_sum_final`;

CREATE TABLE `scm_sum_final` (
  `cmts` varchar(20) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `sincroniz` decimal(23,0) DEFAULT NULL,
  `cm_offline` decimal(23,0) DEFAULT NULL,
  `total` decimal(24,0) DEFAULT NULL
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
  KEY `PrimSid` (`PrimSid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_total_r` */

DROP TABLE IF EXISTS `scm_total_r`;

CREATE TABLE `scm_total_r` (
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
  KEY `NewIndex4` (`ultimo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `scmconectivity_new` */

DROP TABLE IF EXISTS `scmconectivity_new`;

CREATE TABLE `scmconectivity_new` (
  `idclientecrm` double DEFAULT NULL,
  `NAMECLIENT` varchar(100) DEFAULT NULL,
  `MACAddress` varchar(20) NOT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(11) DEFAULT NULL,
  `primssid` int(11) NOT NULL,
  `FechaInicio` varchar(20) NOT NULL,
  `TimesOnline` varchar(20) DEFAULT NULL,
  `PorcOnline` varchar(20) DEFAULT NULL,
  `OnlineMin` varchar(20) DEFAULT NULL,
  `OnlineAvg` varchar(20) DEFAULT NULL,
  `OnlineMax` varchar(20) DEFAULT NULL,
  `OfflineMin` varchar(20) DEFAULT NULL,
  `OfflineAvg` varchar(20) DEFAULT NULL,
  `OfflineMax` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) NOT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `ultimo` varchar(1) DEFAULT NULL,
  `PwrUP` double DEFAULT NULL,
  `SnrUP` double DEFAULT NULL,
  `PwrDN` double DEFAULT NULL,
  `SnrDN` double DEFAULT NULL,
  `TipoProb` varchar(11) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `fecini` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`primssid`,`FechaInicio`,`cmts`,`MACAddress`),
  KEY `idclientecrm` (`idclientecrm`),
  KEY `MACAddress` (`MACAddress`),
  KEY `interface` (`interface`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`),
  KEY `primssid` (`primssid`),
  KEY `FechaInicio` (`FechaInicio`),
  KEY `cmts` (`cmts`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scmcounter_temp` */

DROP TABLE IF EXISTS `scmcounter_temp`;

CREATE TABLE `scmcounter_temp` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USPackets` varchar(20) DEFAULT NULL,
  `USBytes` varchar(20) DEFAULT NULL,
  `DSPackets` varchar(20) DEFAULT NULL,
  `DSBytes` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `ultimo` varchar(1) DEFAULT NULL,
  UNIQUE KEY `MACAddress` (`MACAddress`,`cmts`,`fecha_hora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `scmcounter_temp_d` */

DROP TABLE IF EXISTS `scmcounter_temp_d`;

CREATE TABLE `scmcounter_temp_d` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `USPackets` varchar(20) DEFAULT NULL,
  `USBytes` varchar(20) DEFAULT NULL,
  `DSPackets` varchar(20) DEFAULT NULL,
  `DSBytes` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `ultimo` varchar(1) DEFAULT NULL,
  KEY `NewIndex1` (`MACAddress`),
  KEY `NewIndex2` (`cmts`),
  KEY `NewIndex3` (`fecha_hora`),
  KEY `NewIndex4` (`ultimo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `scmcounter_ultimo` */

DROP TABLE IF EXISTS `scmcounter_ultimo`;

CREATE TABLE `scmcounter_ultimo` (
  `MACAddress` varchar(20) DEFAULT NULL,
  `traficoup_Mbps` double(20,3) DEFAULT NULL,
  `traficodn_Mbps` double(20,3) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `NewIndex1` (`MACAddress`),
  KEY `MACAddress` (`MACAddress`,`fecha_hora`,`cmts`),
  KEY `cmts` (`cmts`),
  KEY `fecha_hora` (`fecha_hora`)
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

/*Table structure for table `servassurance` */

DROP TABLE IF EXISTS `servassurance`;

CREATE TABLE `servassurance` (
  `ACCOUNT_NUMBER` double DEFAULT NULL,
  `ACCOUNT_STATUS` int(1) NOT NULL DEFAULT '0',
  `ACCOUNT_PREFIX-1` int(1) NOT NULL DEFAULT '0',
  `ACCOUNT_PREFIX-2` int(1) NOT NULL DEFAULT '0',
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `MIDDLE_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(40) DEFAULT NULL,
  `PHONE` varchar(10) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(5) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `ADDRESS_LINE_1` varchar(90) DEFAULT NULL,
  `ADDRESS_LINE_2` varchar(40) DEFAULT NULL,
  `CITY` varchar(3) DEFAULT NULL,
  `STATE` varchar(40) DEFAULT NULL,
  `POSTAL_CODE` varchar(50) NOT NULL DEFAULT '',
  `LATITUDE` varchar(50) NOT NULL DEFAULT '',
  `LONGITUDE` varchar(50) NOT NULL DEFAULT '',
  `COUNTRY` varchar(4) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `SYSTEM` varchar(1) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `HUB` varchar(2) DEFAULT NULL,
  `TRANSPORT_ELEMENT_1` varchar(10) DEFAULT NULL,
  `TRANSPORT_ELEMENT_2` varchar(10) DEFAULT NULL,
  `TRANSPORT_ELEMENT_3` varchar(10) DEFAULT NULL,
  `TRANSPORT_ELEMENT_4` varchar(10) DEFAULT NULL,
  `EQUIPMENT_SERIAL` varchar(100) NOT NULL DEFAULT '',
  `EQUIPMENT_MAC` varchar(20) DEFAULT NULL,
  `EQUIPMENT_MODEL` varchar(100) NOT NULL DEFAULT '',
  `EQUIPMENT_IP` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `DIGITAL_PHONE_NUMBER` varchar(50) NOT NULL DEFAULT '',
  `ISP_CODE` varchar(50) NOT NULL DEFAULT '',
  `CUSTOM_FIELD_1` varchar(50) NOT NULL DEFAULT '',
  `CUSTOM_FIELD_2` varchar(50) NOT NULL DEFAULT '',
  KEY `NewIndex1` (`ACCOUNT_NUMBER`),
  KEY `NewIndex2` (`EQUIPMENT_MAC`)
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
  `P_Adj` varchar(10) DEFAULT NULL,
  `Flap` int(5) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `CMTS` varchar(20) DEFAULT NULL,
  `fecha_upload` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MACAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `show_cable_flaps_dia` */

DROP TABLE IF EXISTS `show_cable_flaps_dia`;

CREATE TABLE `show_cable_flaps_dia` (
  `MACAddress` varchar(14) NOT NULL,
  `IF_` varchar(10) DEFAULT NULL,
  `Ins` int(4) DEFAULT NULL,
  `Hit` int(7) DEFAULT NULL,
  `Miss` int(4) DEFAULT NULL,
  `CRC` int(3) DEFAULT NULL,
  `P_Adj` varchar(10) DEFAULT NULL,
  `Flap` int(5) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `CMTS` varchar(20) DEFAULT NULL,
  `fecha_upload` varchar(20) DEFAULT NULL,
  UNIQUE KEY `MACAddress_2` (`MACAddress`,`fecha_upload`),
  KEY `MACAddress` (`MACAddress`),
  KEY `fecha_upload` (`fecha_upload`),
  KEY `CMTS` (`CMTS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `show_cable_load_load` */

DROP TABLE IF EXISTS `show_cable_load_load`;

CREATE TABLE `show_cable_load_load` (
  `interface` varchar(10) DEFAULT NULL,
  `frecuencia` varchar(7) DEFAULT NULL,
  `STATUS` varchar(7) DEFAULT NULL,
  `groupindex` varchar(4) DEFAULT NULL,
  `utilizacion` varchar(4) DEFAULT NULL,
  `rsvd` varchar(4) DEFAULT NULL,
  `modems` varchar(5) DEFAULT NULL,
  `flows` varchar(6) DEFAULT NULL,
  `weight` varchar(5) DEFAULT NULL,
  `cmts` varchar(100) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `interface_2` (`interface`,`frecuencia`,`cmts`,`fecha_hora`),
  KEY `interface` (`interface`),
  KEY `frecuencia` (`frecuencia`),
  KEY `STATUS` (`STATUS`),
  KEY `groupindex` (`groupindex`),
  KEY `utilizacion` (`utilizacion`),
  KEY `cmts` (`cmts`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `show_cable_load_load_c` */

DROP TABLE IF EXISTS `show_cable_load_load_c`;

CREATE TABLE `show_cable_load_load_c` (
  `interface` varchar(10) DEFAULT NULL,
  `frecuencia` varchar(7) DEFAULT NULL,
  `STATUS` varchar(7) DEFAULT NULL,
  `groupindex` varchar(4) DEFAULT NULL,
  `utilizacion` varchar(4) DEFAULT NULL,
  `rsvd` varchar(4) DEFAULT NULL,
  `modems` varchar(5) DEFAULT NULL,
  `flows` varchar(6) DEFAULT NULL,
  `weight` varchar(5) DEFAULT NULL,
  `cmts` varchar(100) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `interface_2` (`interface`,`frecuencia`,`cmts`,`fecha_hora`),
  KEY `interface` (`interface`),
  KEY `frecuencia` (`frecuencia`),
  KEY `STATUS` (`STATUS`),
  KEY `groupindex` (`groupindex`),
  KEY `utilizacion` (`utilizacion`),
  KEY `cmts` (`cmts`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `show_primary` */

DROP TABLE IF EXISTS `show_primary`;

CREATE TABLE `show_primary` (
  `mac_address` varchar(20) DEFAULT NULL,
  `ip_address` varchar(30) DEFAULT NULL,
  `host_interface` varchar(30) DEFAULT NULL,
  `mac_state` varchar(30) DEFAULT NULL,
  `prim_sid` varchar(10) DEFAULT NULL,
  `num_cpe` varchar(10) DEFAULT NULL,
  `primary_down` varchar(30) DEFAULT NULL,
  `ds_rfid` varchar(10) DEFAULT NULL,
  `cmts` varchar(100) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  KEY `idx1` (`mac_address`),
  KEY `idx2` (`ip_address`),
  KEY `idx3` (`host_interface`),
  KEY `idx4` (`mac_state`),
  KEY `idx5` (`primary_down`),
  KEY `idx6` (`cmts`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `show_primary_cuenta` */

DROP TABLE IF EXISTS `show_primary_cuenta`;

CREATE TABLE `show_primary_cuenta` (
  `cmts` varchar(100) DEFAULT NULL,
  `host_interface` varchar(30) DEFAULT NULL,
  `primary_down` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `show_primary_resumen` */

DROP TABLE IF EXISTS `show_primary_resumen`;

CREATE TABLE `show_primary_resumen` (
  `cmts` varchar(100) DEFAULT NULL,
  `host_interface` varchar(30) DEFAULT NULL,
  `can_port` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `status_cablemodem_sw` */

DROP TABLE IF EXISTS `status_cablemodem_sw`;

CREATE TABLE `status_cablemodem_sw` (
  `sw` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `Status_cablemodems` */

DROP TABLE IF EXISTS `Status_cablemodems`;

CREATE TABLE `Status_cablemodems` (
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
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `Status_cablemodems_c` */

DROP TABLE IF EXISTS `Status_cablemodems_c`;

CREATE TABLE `Status_cablemodems_c` (
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
  `fecha_hora` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tab_seguimiento` */

DROP TABLE IF EXISTS `tab_seguimiento`;

CREATE TABLE `tab_seguimiento` (
  `item` varchar(30) DEFAULT NULL,
  `fecha_envio` varchar(30) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `area` varchar(30) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `nombres` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `taps` */

DROP TABLE IF EXISTS `taps`;

CREATE TABLE `taps` (
  `oficina` varchar(100) DEFAULT NULL,
  `nodo` varchar(100) DEFAULT NULL,
  `troba` varchar(100) DEFAULT NULL,
  `linext` varchar(100) DEFAULT NULL,
  `tap` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `telefonos` */

DROP TABLE IF EXISTS `telefonos`;

CREATE TABLE `telefonos` (
  `cliente` int(10) DEFAULT NULL,
  `ofi_cli` varchar(3) DEFAULT NULL,
  `nodo` varchar(5) DEFAULT NULL,
  `plano` varchar(5) DEFAULT NULL,
  `codlex` varchar(5) DEFAULT NULL,
  `codtap` varchar(5) DEFAULT NULL,
  `codbor` varchar(5) DEFAULT NULL,
  `telf1` varchar(10) DEFAULT NULL,
  `telf2` varchar(10) DEFAULT NULL,
  `telf3` varchar(10) DEFAULT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `apepat` varchar(40) DEFAULT NULL,
  `apemat` varchar(40) DEFAULT NULL,
  KEY `NewIndex1` (`cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `trafico_iw` */

DROP TABLE IF EXISTS `trafico_iw`;

CREATE TABLE `trafico_iw` (
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `IDCLIENTCRM` varchar(20) DEFAULT NULL,
  `TRAFFICDOWN_MB` int(11) DEFAULT NULL,
  `TRAFFICUP_MB` int(11) DEFAULT NULL,
  `BRAND` varchar(20) DEFAULT NULL,
  `MODEL` varchar(20) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(100) DEFAULT NULL,
  `DOCSISVERSION` int(11) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `yy` int(5) DEFAULT NULL,
  `mm` int(5) DEFAULT NULL,
  `dd` int(5) DEFAULT NULL,
  `hh` int(5) DEFAULT NULL,
  `TRAFFICDOWN_GB` double(30,3) DEFAULT NULL,
  `TRAFFICUP_GB` double(30,3) DEFAULT NULL,
  `marca` varchar(10) DEFAULT NULL,
  `vel_servpack` varchar(10) DEFAULT NULL,
  `fecliq` date DEFAULT NULL,
  `gb_desc` double(30,3) DEFAULT NULL,
  KEY `NewIndex1` (`SERVICEPACKAGE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `trafico_iw_dia` */

DROP TABLE IF EXISTS `trafico_iw_dia`;

CREATE TABLE `trafico_iw_dia` (
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `IDCLIENTCRM` varchar(20) DEFAULT NULL,
  `TRAFFICDOWN_MB` int(11) DEFAULT NULL,
  `TRAFFICUP_MB` int(11) DEFAULT NULL,
  `BRAND` varchar(20) DEFAULT NULL,
  `MODEL` varchar(20) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(100) DEFAULT NULL,
  `DOCSISVERSION` int(11) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `yy` int(5) DEFAULT NULL,
  `mm` int(5) DEFAULT NULL,
  `dd` int(5) DEFAULT NULL,
  `hh` int(5) DEFAULT NULL,
  `TRAFFICDOWN_GB` double(30,3) DEFAULT NULL,
  `TRAFFICUP_GB` double(30,3) DEFAULT NULL,
  `marca` varchar(10) DEFAULT NULL,
  `vel_servpack` varchar(10) DEFAULT NULL,
  `fecliq` date DEFAULT NULL,
  `gb_desc` double(30,3) DEFAULT NULL,
  KEY `NewIndex1` (`SERVICEPACKAGE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `trafico_iw_resumen` */

DROP TABLE IF EXISTS `trafico_iw_resumen`;

CREATE TABLE `trafico_iw_resumen` (
  `idclientcrm` double DEFAULT NULL,
  `macaddress` varchar(20) DEFAULT NULL,
  `servicepackage` varchar(100) DEFAULT NULL,
  `cant` bigint(21) NOT NULL DEFAULT '0',
  `trafficdown_gb` double(20,3) DEFAULT NULL,
  `trafficup_gb` double(20,3) DEFAULT NULL,
  `mes` varchar(4) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `docsis` varchar(15) NOT NULL DEFAULT '',
  `veloc` varchar(10) DEFAULT NULL,
  `docsis_2` varchar(15) DEFAULT NULL,
  KEY `NewIndex1` (`idclientcrm`),
  KEY `NewIndex2` (`macaddress`),
  KEY `NewIndex3` (`servicepackage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `trafico_iw_temporal` */

DROP TABLE IF EXISTS `trafico_iw_temporal`;

CREATE TABLE `trafico_iw_temporal` (
  `idclientecrm` double DEFAULT NULL,
  `nameclient` varchar(100) DEFAULT NULL,
  KEY `NewIndex1` (`idclientecrm`),
  KEY `idx2` (`nameclient`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `trobas` */

DROP TABLE IF EXISTS `trobas`;

CREATE TABLE `trobas` (
  `cod_zona` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `nodo` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `troba` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `nom_zona` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `trobas_alertadas` */

DROP TABLE IF EXISTS `trobas_alertadas`;

CREATE TABLE `trobas_alertadas` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `off` bigint(21) NOT NULL DEFAULT '0',
  `cant` bigint(21) DEFAULT '0',
  `color` varchar(10) DEFAULT NULL,
  `opacidad` varchar(5) DEFAULT NULL,
  `blink` int(1) DEFAULT NULL,
  `clave` varchar(10) DEFAULT NULL,
  UNIQUE KEY `NewIndex3` (`nodo`,`troba`),
  KEY `NewIndex1` (`nodo`),
  KEY `NewIndex2` (`troba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `trobas_alertadas_bck` */

DROP TABLE IF EXISTS `trobas_alertadas_bck`;

CREATE TABLE `trobas_alertadas_bck` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `off` bigint(21) NOT NULL DEFAULT '0',
  `cant` bigint(21) DEFAULT '0',
  `color` varchar(10) DEFAULT NULL,
  `opacidad` varchar(5) DEFAULT NULL,
  `blink` int(1) DEFAULT NULL,
  `clave` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `umbral` */

DROP TABLE IF EXISTS `umbral`;

CREATE TABLE `umbral` (
  `reg` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`reg`),
  KEY `NewIndex2` (`umbral`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `umbral_m` */

DROP TABLE IF EXISTS `umbral_m`;

CREATE TABLE `umbral_m` (
  `reg` int(11) DEFAULT NULL,
  `porc` decimal(12,0) DEFAULT NULL,
  `hora` varchar(10) DEFAULT NULL,
  `noche` decimal(12,0) DEFAULT NULL,
  `dia1` decimal(12,0) DEFAULT NULL,
  `noche1` decimal(12,0) DEFAULT NULL,
  UNIQUE KEY `NewIndex1` (`reg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `umbral_n` */

DROP TABLE IF EXISTS `umbral_n`;

CREATE TABLE `umbral_n` (
  `reg` int(11) DEFAULT NULL,
  `porc` decimal(12,0) DEFAULT NULL,
  `hora` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `user_modulos` */

DROP TABLE IF EXISTS `user_modulos`;

CREATE TABLE `user_modulos` (
  `idmodulo` int(11) NOT NULL AUTO_INCREMENT,
  `enlace` varchar(200) DEFAULT NULL,
  `detalle` varchar(200) DEFAULT NULL,
  `carpeta` varchar(50) DEFAULT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CALLx` int(1) DEFAULT NULL,
  `CCM1` int(1) DEFAULT NULL,
  `CGM1` int(1) DEFAULT NULL,
  `INGENIERIA` int(1) DEFAULT NULL,
  `PEXT` int(1) DEFAULT NULL,
  `CORE` int(1) DEFAULT NULL,
  `CRITICOS` int(1) DEFAULT NULL,
  `EECC` int(1) DEFAULT NULL,
  `CDC` int(1) DEFAULT NULL,
  `EXTRA` int(1) DEFAULT NULL,
  `PINT` int(1) DEFAULT NULL,
  `COM` int(1) DEFAULT NULL,
  `CALL101` int(1) DEFAULT NULL,
  `NOC` int(1) DEFAULT NULL,
  `SEGU` int(1) DEFAULT NULL,
  `ATTDIF` int(1) DEFAULT NULL,
  UNIQUE KEY `idmodulo` (`idmodulo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `vel_servpack` */

DROP TABLE IF EXISTS `vel_servpack`;

CREATE TABLE `vel_servpack` (
  `servicepackage` varchar(50) DEFAULT NULL,
  `vel_servpack` varchar(10) DEFAULT NULL,
  KEY `servicepackage` (`servicepackage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `velocidades` */

DROP TABLE IF EXISTS `velocidades`;

CREATE TABLE `velocidades` (
  `SERVICEPACKAGECRMID` varchar(50) NOT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `velocidad_final` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `conversion` varchar(2) DEFAULT NULL,
  `cgnat` varchar(2) DEFAULT NULL,
  `veloc_comercial` varchar(10) DEFAULT NULL,
  UNIQUE KEY `SERVICEPACKAGECRMID` (`SERVICEPACKAGECRMID`),
  UNIQUE KEY `SERVICEPACKAGE` (`SERVICEPACKAGE`),
  KEY `veloc_comercial` (`veloc_comercial`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ws_sessions` */

DROP TABLE IF EXISTS `ws_sessions`;

CREATE TABLE `ws_sessions` (
  `session_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `session_data` text,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `zonales` */

DROP TABLE IF EXISTS `zonales`;

CREATE TABLE `zonales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zonal` varchar(4) NOT NULL,
  `descripcion` varchar(60) NOT NULL,
  `activo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idxzonal` (`zonal`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Table structure for table `zonales_cmts` */

DROP TABLE IF EXISTS `zonales_cmts`;

CREATE TABLE `zonales_cmts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zonal` varchar(4) DEFAULT NULL,
  `cmts` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idxunico` (`zonal`,`cmts`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

/*Table structure for table `zonales_nodos_eecc` */

DROP TABLE IF EXISTS `zonales_nodos_eecc`;

CREATE TABLE `zonales_nodos_eecc` (
  `nodo` varchar(2) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `jefatura` varchar(3) DEFAULT NULL,
  `eecc` varchar(30) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `distrito` varchar(100) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `serviciosbasico` varchar(50) DEFAULT NULL,
  `servicioseconomico` varchar(50) DEFAULT NULL,
  `nodotroba` varchar(20) DEFAULT NULL,
  `totaldeservicios` int(11) DEFAULT NULL,
  `amplificadores` int(11) DEFAULT NULL,
  `taps` int(11) DEFAULT NULL,
  `sede` varchar(10) DEFAULT NULL,
  `zonal` varchar(3) DEFAULT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `jefatura` (`jefatura`),
  KEY `sede` (`sede`),
  KEY `zonal` (`zonal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/* Procedure structure for procedure `spCreaMacCpeModemDireccion2` */

/*!50003 DROP PROCEDURE IF EXISTS  `spCreaMacCpeModemDireccion2` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `spCreaMacCpeModemDireccion2`()
BEGIN
TRUNCATE TABLE `mac_cpe_modem_direccion2`;
INSERT IGNORE INTO `mac_cpe_modem_direccion2` SELECT * FROM `mac_cpe_modem_direccion`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_offline_rf` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_offline_rf` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `sp_offline_rf`()
BEGIN
TRUNCATE TABLE  ccm1.scm_total_r;
INSERT INTO ccm1.scm_total_r
SELECT * FROM ccm1.scm_total WHERE macstate NOT LIKE "%on%line%";
    END */$$
DELIMITER ;

/* Procedure structure for procedure `alerta_edif` */

/*!50003 DROP PROCEDURE IF EXISTS  `alerta_edif` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `alerta_edif`()
BEGIN
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED ;
	DELETE FROM  ccm1.diag_edif;
	INSERT IGNORE ccm1.diag_edif
	SELECT a.idclientecrm,a.servicio,a.nodo,a.plano,a.codlex,a.codtap,a.codbor,IF(c.macstate IS NULL,'Sin Servicio',c.macstate) AS Macstate,a.DIREC_INST,c.cmts,d.interface,
	d.USPwr,d.USMER_SNR,REPLACE(d.DSPwr,' ','') AS DSPwr,d.DSMER_SNR,
	IF(d.USPwr <35 OR d.USPwr >57 ,'NO OK',IF(d.USMER_SNR <25,'NO OK',IF(REPLACE(d.DSPwr,' ','')<-10 OR REPLACE(d.DSPwr,' ','') >12 ,'NO OK',IF(d.DSMER_SNR <27 ,'NO OK',IF(c.MACState ='Offline' ,'Offline - NO OK',IF(c.macstate IS NULL,'Sin Servicio','OK')))))) AS STATUS,a.edificio
	FROM cms.edificios a INNER JOIN ccm1_temporal.nclientes b
	ON a.cliente=b.codcli 
	LEFT JOIN ccm1.scm_total c
	ON b.mac2=c.macaddress
	LEFT JOIN ccm1.scm_phy_t d
	ON b.mac2=d.macaddress
	WHERE a.nodo=b.nodo AND a.plano=b.troban ;
commit;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `mensajes` */

/*!50003 DROP PROCEDURE IF EXISTS  `mensajes` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `mensajes`()
BEGIN
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED ;
INSERT INTO ccm1.mensajes
SELECT 
CONCAT(
'TOT:',cm_tot,
' OFF:',cm_offline,
' FEC_HOR:',fecha_hora,
' CMTS_PTO_UP:',cmts,'_',interface,
' TROBA[S]:',REPLACE(REPLACE(TRIM(description),',',' '),'
','')
) AS mensaje,fecha_hora,CONCAT(' TROBA[S]:',REPLACE(TRIM(description),',',' ')) AS troba,'N'
FROM ccm1.scm_sum_alerta 
WHERE DATEDIFF(NOW(),fecha_hora_f)<=0 
AND TIMEDIFF(NOW(),fecha_hora_f)<='00:01:01'
ORDER BY fecha_hora_f DESC
ON DUPLICATE KEY UPDATE fech_hor=fecha_hora;
SELECT 'e:'
UNION
SELECT CONCAT('cd E:','\\','GnuWin32','\\','bin') FROM mensajes_celular 
#LIMIT 1
UNION
SELECT CONCAT('wget ','"' ,'http://190.233.113.45:8019/noc/sms.php?celular=',TRIM(a.celular),CHAR(38),TRIM('mensaje='),b.mensaje,'"') FROM mensajes_celular a,mensajes b
WHERE b.enviado='N' 
INTO OUTFILE '/temp/mensaje_caidas.sh' FIELDS ESCAPED BY "'"  LINES TERMINATED BY '\r\n';
UPDATE ccm1.mensajes SET enviado='S' WHERE enviado='N';
COMMIT;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `nclientes_csv` */

/*!50003 DROP PROCEDURE IF EXISTS  `nclientes_csv` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `nclientes_csv`()
BEGIN
select 'EMPRESA','IDCLIENTECRM','idempresacrm','idservicio','idproducto','idventa','NAMECLIENT','NODO','TROBA','amplificador','tap','telf1','telf2','f_v','regver','cmts','MACADDRESS','SERVICEPACKAGECRMID','SERVICEPACKAGE','CANTPCS','FECHAALTA','FECHAACTIVACION','ESTADO','SCOPESGROUP','SCOPESGROUPCM','SCOPESGROUPMTA','MTAMAC','IDSERVICIOMTA','IDPRODUCTOMTA','IDVENTAMTA','MTAMODELNAME','CMTSID','UBICACIONENLARED','IPCM','DOCSISVERSION','movil1','mac2','mac3','direccion','codserv','fecha_upload','naked','numcoo_x','numcoo_y'
union
SELECT 
EMPRESA,
IDCLIENTECRM,
idempresacrm,
idservicio,
idproducto,
idventa,
REPLACE(NAMECLIENT,',',' ') AS NAMECLIENT,
NODO,
TROBA,
amplificador,
tap,
telf1,
telf2,
f_v,
regver,
cmts,
MACADDRESS,
SERVICEPACKAGECRMID,
SERVICEPACKAGE,
CANTPCS,
FECHAALTA,
FECHAACTIVACION,
ESTADO,
SCOPESGROUP,
SCOPESGROUPCM,
SCOPESGROUPMTA,
MTAMAC,
IDSERVICIOMTA,
IDPRODUCTOMTA,
IDVENTAMTA,
'' as MTAMODELNAME,
CMTSID,
UBICACIONENLARED,
IPCM,
DOCSISVERSION,
movil1,
mac2,
mac3,
REPLACE(direccion,',',' ') AS direccion,
codserv,
fecha_upload,
naked,
numcoo_x,
numcoo_y
FROM ccm1.nclientes_c
INTO OUTFILE '/temp/nclientes_tmp.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
rename table ccm1.nclientes to ccm1.nclientes_d,ccm1.nclientes_c to ccm1.nclientes,ccm1.nclientes_d to ccm1.nclientes_c;
END */$$
DELIMITER ;

/* Procedure structure for procedure `Satus_cablemodems` */

/*!50003 DROP PROCEDURE IF EXISTS  `Satus_cablemodems` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `Satus_cablemodems`()
BEGIN
INSERT IGNORE `historico_nclientes`.`Status_cablemodems_historico` SELECT * FROM ccm1.`Status_cablemodems`;
SELECT `a`.`cmts` AS `cmts`, 
SUM(IF((`a`.`MACState` IN ('online','wonline', 'w-online') AND NumCPE*1<=0),1,0)) AS `sinippublica`,
 SUM(IF((`a`.`MACState` = 'bpi(wait)'),1,0)) AS `bpi_wait`, 
 SUM(IF((`a`.`MACState` = 'cc-pending'),1,0)) AS `cc_pending`, 
 SUM(IF((`a`.`MACState` = 'init(o)'),1,0)) AS `init_o`, 
 SUM(IF((`a`.`MACState` = 'init(i)'),1,0)) AS `init_i`,
  SUM(IF((`a`.`MACState` = 'init(io)'),1,0)) AS `init_io`, 
  SUM(IF((`a`.`MACState` = 'init(dr)'),1,0)) AS `init_dr`, 
  SUM(IF((`a`.`MACState` IN ('init(d)','DHCP')),1,0)) AS `init_d`, 
  SUM(IF((`a`.`MACState` = 'init(r)'),1,0)) AS `init_r`, SUM(IF((`a`.`MACState` = 'init(r1)'),1,0)) AS `init_r1`, SUM(IF((`a`.`MACState` = 'init(r2)'),1,0)) AS `init_r2`, SUM(IF((`a`.`MACState` = 'init(rc)'),1,0)) AS `init_rc`, SUM(IF((`a`.`MACState` = 'init(t)'),1,0)) AS `init_t`, SUM(IF((`a`.`MACState` LIKE 'reje'),1,0)) AS `reject`, SUM(IF((`a`.`MACState` = 'p-online'),1,0)) AS `p_online`, SUM(IF((`a`.`MACState` = 'w-expire(pt)'),1,0)) AS `w_expire_pt`, SUM(IF((`a`.`MACState` = 'wonlineBpiSucc'),1,0)) AS `wonlineBpiSucc`, SUM(IF((`a`.`MACState` = 'online(pt)'),1,0)) AS `online_pt`, SUM(IF((`a`.`MACState` = 'w-online(pt)'),1,0)) AS `w_online_pt`, SUM(IF((`a`.`MACState` = 'online(d)'),1,0)) AS `online_d`, SUM(IF((`a`.`MACState` IN ('online','w-online','wonline')),1,0)) AS `online`, SUM(IF((`a`.`MACState` = 'offline'),1,0)) AS `offline`, COUNT(0) AS `total`,NOW() AS fecha_hora FROM `ccm1_temporal`.`scm_total_f` `a` 
  FORCE INDEX(MACAddress)  INNER JOIN `ccm1_temporal`.`nclientes_c` `b` FORCE INDEX (NewIndex1,NewIndex4,idxestado) ON `a`.`MACAddress` = `b`.`mac2` 
WHERE b.estado='Activo' 	AND b.idclientecrm NOT IN (969625,19082016, 100000011, 123454321, 1000000007, 1000000257, 9988776655, 10000000100, 100000000006, 100000000008, 100000000009, 100000000080, 100000000084, 100000000085, 100000000087, 100000000099, 1000000000010, 1000000000017, 1000000000081, 1000000000083, 1000000000084, 1000000000110, 100000000000123, 100000000000130, 100000000009998) GROUP BY a.cmts
into outfile '/temp/status_cablemodem.csv' fields terminated by ',' lines terminated by '\r\n';
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_data_alarm` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_data_alarm` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `sp_data_alarm`()
BEGIN
##Monitoreo de masivas de CATV
TRUNCATE TABLE alertasx.masivas_catv_c;
INSERT INTO alertasx.masivas_catv_c
SELECT
  a.codofcadm AS zonal,
  a.codnod    AS nodo,
  a.nroplano  AS troba,
  COUNT(*)        AS cant,
  b.codreqmnt AS codmasiva,
  NOW()           AS fecha_hora,tp.trabprog,tp.tipodetrabajo AS tipotrab,tp.estado
FROM ccm1.averias_catv a FORCE INDEX (NewIndex1,NewIndex2)
   LEFT JOIN dbpext.masivas_temp b
     ON a.codnod = b.codnod AND a.nroplano = b.nroplano
   LEFT JOIN  dbpext.`trabprog2dias_view` tp
        ON  a.codnod=tp.nodo AND a.nroplano=tp.troba
GROUP BY 1,2,3
HAVING (COUNT(0) >= 2)
ORDER BY COUNT(0)DESC; 
RENAME TABLE alertasx.masivas_catv TO alertasx.masivas_catv_t,
	     alertasx.masivas_catv_c TO alertasx.masivas_catv,
	     alertasx.masivas_catv_t TO alertasx.masivas_catv_c;     
	     
	     
	     END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_malos_rf` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_malos_rf` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `sp_malos_rf`()
BEGIN
TRUNCATE TABLE  ccm1.scm_phy_r;
INSERT INTO ccm1.`scm_phy_r`
SELECT c.* FROM ccm1.scm_phy_t c WHERE 
c.USMER_SNR<>'-' 
AND c.DSPwr<>'-' 
AND USMER_SNR NOT IN ('-----' ,'-')
AND DSMER_SNR<>'-----'
AND (c.USMER_SNR * 1 < 27 
OR (c.USMER_SNR * 1 < 27 AND c.USPwr * 1<36)
OR c.USPwr * 1 < 36
OR (c.USPwr * 1 > 55 AND c.DSPwr > - 5 AND c.DSPwr < 10)
OR (c.DSPwr * 1 > 10 AND c.USPwr * 1 < 36)
OR (c.USPwr * 1 < 35 AND c.USPwr * 1 > 0 )
OR (c.USPwr * 1 < 35 AND c.DSPwr * 1 > 10 )
OR (c.DSPwr * 1 > 15 )
OR (c.USPwr * 1 > 55 AND c.DSPwr > 10 )
OR (c.USMER_SNR * 1 < 30 AND c.DSPwr * 1 > 10 )
OR (c.DSPwr < - 5 AND c.USPwr > 55)
OR (c.DSPwr < - 5 OR c.DSPwr > 10)
OR (c.DSPwr < - 5 AND c.DSMER_SNR < 30 )
);
    END */$$
DELIMITER ;

/*Table structure for table `Conectar_cmts` */

DROP TABLE IF EXISTS `Conectar_cmts`;

/*!50001 DROP VIEW IF EXISTS `Conectar_cmts` */;
/*!50001 DROP TABLE IF EXISTS `Conectar_cmts` */;

/*!50001 CREATE TABLE  `Conectar_cmts`(
 `tipo` varchar(10) ,
 `id` int(11) ,
 `cmts` varchar(50) ,
 `realname` varchar(30) ,
 `comando` varchar(70) ,
 `connect` varchar(20) 
)*/;

/*Table structure for table `alarmas_ims_view` */

DROP TABLE IF EXISTS `alarmas_ims_view`;

/*!50001 DROP VIEW IF EXISTS `alarmas_ims_view` */;
/*!50001 DROP TABLE IF EXISTS `alarmas_ims_view` */;

/*!50001 CREATE TABLE  `alarmas_ims_view`(
 `EMPRESA` varchar(3) ,
 `IDCLIENTECRM` double ,
 `idempresacrm` int(11) ,
 `idservicio` int(11) ,
 `idproducto` double ,
 `idventa` double ,
 `NAMECLIENT` varchar(100) ,
 `NODO` varchar(2) ,
 `TROBA` varchar(4) ,
 `amplificador` varchar(11) ,
 `tap` varchar(11) ,
 `telf1` varchar(10) ,
 `telf2` varchar(10) ,
 `f_v` varchar(20) ,
 `regver` varchar(3) ,
 `cmts` varchar(20) ,
 `MACADDRESS` varchar(20) ,
 `SERVICEPACKAGECRMID` varchar(50) ,
 `SERVICEPACKAGE` varchar(50) ,
 `CANTPCS` varchar(11) ,
 `FECHAALTA` varchar(20) ,
 `FECHAACTIVACION` varchar(20) ,
 `ESTADO` varchar(10) ,
 `SCOPESGROUP` varchar(15) ,
 `SCOPESGROUPCM` varchar(15) ,
 `SCOPESGROUPMTA` varchar(15) ,
 `MTAMAC` varchar(20) ,
 `IDSERVICIOMTA` varchar(15) ,
 `IDPRODUCTOMTA` varchar(15) ,
 `IDVENTAMTA` varchar(15) ,
 `MTAMODELNAME` varchar(50) ,
 `CMTSID` varchar(11) ,
 `UBICACIONENLARED` varchar(150) ,
 `IPCM` varchar(20) ,
 `DOCSISVERSION` varchar(11) ,
 `movil1` varchar(20) ,
 `mac2` varchar(20) ,
 `mac3` varchar(20) ,
 `fecha_alarma` varchar(20) ,
 `TIMEDIFF(NOW(),b.fecha_alarma)` time(6) 
)*/;

/*Table structure for table `averias_liq_view` */

DROP TABLE IF EXISTS `averias_liq_view`;

/*!50001 DROP VIEW IF EXISTS `averias_liq_view` */;
/*!50001 DROP TABLE IF EXISTS `averias_liq_view` */;

/*!50001 CREATE TABLE  `averias_liq_view`(
 `mes` varchar(7) ,
 `tipodeingreso` varchar(100) ,
 `tipodeliquidacion` varchar(100) ,
 `01` decimal(23,0) ,
 `02` decimal(23,0) ,
 `03` decimal(23,0) ,
 `04` decimal(23,0) ,
 `05` decimal(23,0) ,
 `06` decimal(23,0) ,
 `07` decimal(23,0) ,
 `08` decimal(23,0) ,
 `09` decimal(23,0) ,
 `10` decimal(23,0) ,
 `11` decimal(23,0) ,
 `12` decimal(23,0) ,
 `13` decimal(23,0) ,
 `14` decimal(23,0) ,
 `15` decimal(23,0) ,
 `16` decimal(23,0) ,
 `17` decimal(23,0) ,
 `18` decimal(23,0) ,
 `19` decimal(23,0) ,
 `20` decimal(23,0) ,
 `21` decimal(23,0) ,
 `22` decimal(23,0) ,
 `23` decimal(23,0) ,
 `24` decimal(23,0) ,
 `25` decimal(23,0) ,
 `26` decimal(23,0) ,
 `27` decimal(23,0) ,
 `28` decimal(23,0) ,
 `29` decimal(23,0) ,
 `30` decimal(23,0) ,
 `31` decimal(23,0) ,
 `total` bigint(21) 
)*/;

/*Table structure for table `averias_pen_view` */

DROP TABLE IF EXISTS `averias_pen_view`;

/*!50001 DROP VIEW IF EXISTS `averias_pen_view` */;
/*!50001 DROP TABLE IF EXISTS `averias_pen_view` */;

/*!50001 CREATE TABLE  `averias_pen_view`(
 `mes` varchar(7) ,
 `tipodeingreso` varchar(100) ,
 `tipodeliquidacion` varchar(9) ,
 `01` decimal(23,0) ,
 `02` decimal(23,0) ,
 `03` decimal(23,0) ,
 `04` decimal(23,0) ,
 `05` decimal(23,0) ,
 `06` decimal(23,0) ,
 `07` decimal(23,0) ,
 `08` decimal(23,0) ,
 `09` decimal(23,0) ,
 `10` decimal(23,0) ,
 `11` decimal(23,0) ,
 `12` decimal(23,0) ,
 `13` decimal(23,0) ,
 `14` decimal(23,0) ,
 `15` decimal(23,0) ,
 `16` decimal(23,0) ,
 `17` decimal(23,0) ,
 `18` decimal(23,0) ,
 `19` decimal(23,0) ,
 `20` decimal(23,0) ,
 `21` decimal(23,0) ,
 `22` decimal(23,0) ,
 `23` decimal(23,0) ,
 `24` decimal(23,0) ,
 `25` decimal(23,0) ,
 `26` decimal(23,0) ,
 `27` decimal(23,0) ,
 `28` decimal(23,0) ,
 `29` decimal(23,0) ,
 `30` decimal(23,0) ,
 `31` decimal(23,0) ,
 `total` bigint(21) 
)*/;

/*Table structure for table `caidas_view` */

DROP TABLE IF EXISTS `caidas_view`;

/*!50001 DROP VIEW IF EXISTS `caidas_view` */;
/*!50001 DROP TABLE IF EXISTS `caidas_view` */;

/*!50001 CREATE TABLE  `caidas_view`(
 `cmts_interface` varchar(30) ,
 `cm_tot` int(11) ,
 `cm_offline` int(11) ,
 `description` varchar(100) ,
 `fecha_hora` varchar(20) ,
 `fecha_hora_f` varchar(20) ,
 `tiempo_offline` time(6) ,
 `vigencia` varchar(2) ,
 `tiempo_durac` time(6) ,
 `cmts` varchar(20) ,
 `interface` varchar(9) ,
 `abrev` varchar(4) ,
 `ultimo` varchar(10) 
)*/;

/*Table structure for table `casa_interface_view` */

DROP TABLE IF EXISTS `casa_interface_view`;

/*!50001 DROP VIEW IF EXISTS `casa_interface_view` */;
/*!50001 DROP TABLE IF EXISTS `casa_interface_view` */;

/*!50001 CREATE TABLE  `casa_interface_view`(
 `cmts` varchar(20) ,
 `Interface` varchar(20) ,
 `sincroniz` bigint(21) 
)*/;

/*Table structure for table `casa_interface_view_offline` */

DROP TABLE IF EXISTS `casa_interface_view_offline`;

/*!50001 DROP VIEW IF EXISTS `casa_interface_view_offline` */;
/*!50001 DROP TABLE IF EXISTS `casa_interface_view_offline` */;

/*!50001 CREATE TABLE  `casa_interface_view_offline`(
 `cmts` varchar(20) ,
 `Interface` varchar(20) ,
 `offline` bigint(21) 
)*/;

/*Table structure for table `cisco_interface_view` */

DROP TABLE IF EXISTS `cisco_interface_view`;

/*!50001 DROP VIEW IF EXISTS `cisco_interface_view` */;
/*!50001 DROP TABLE IF EXISTS `cisco_interface_view` */;

/*!50001 CREATE TABLE  `cisco_interface_view`(
 `cmts` varchar(20) ,
 `interface` varchar(20) ,
 `sincroniz` bigint(21) 
)*/;

/*Table structure for table `cisco_interface_view_offline` */

DROP TABLE IF EXISTS `cisco_interface_view_offline`;

/*!50001 DROP VIEW IF EXISTS `cisco_interface_view_offline` */;
/*!50001 DROP TABLE IF EXISTS `cisco_interface_view_offline` */;

/*!50001 CREATE TABLE  `cisco_interface_view_offline`(
 `cmts` varchar(20) ,
 `interface` varchar(20) ,
 `offline` bigint(21) 
)*/;

/*Table structure for table `error_envio_campo` */

DROP TABLE IF EXISTS `error_envio_campo`;

/*!50001 DROP VIEW IF EXISTS `error_envio_campo` */;
/*!50001 DROP TABLE IF EXISTS `error_envio_campo` */;

/*!50001 CREATE TABLE  `error_envio_campo`(
 `mes` varchar(7) ,
 `tipodeingreso` varchar(100) ,
 `tipodeliquidacion` varchar(100) ,
 `01` decimal(23,0) ,
 `02` decimal(23,0) ,
 `03` decimal(23,0) ,
 `04` decimal(23,0) ,
 `05` decimal(23,0) ,
 `06` decimal(23,0) ,
 `07` decimal(23,0) ,
 `08` decimal(23,0) ,
 `09` decimal(23,0) ,
 `10` decimal(23,0) ,
 `11` decimal(23,0) ,
 `12` decimal(23,0) ,
 `13` decimal(23,0) ,
 `14` decimal(23,0) ,
 `15` decimal(23,0) ,
 `16` decimal(23,0) ,
 `17` decimal(23,0) ,
 `18` decimal(23,0) ,
 `19` decimal(23,0) ,
 `20` decimal(23,0) ,
 `21` decimal(23,0) ,
 `22` decimal(23,0) ,
 `23` decimal(23,0) ,
 `24` decimal(23,0) ,
 `25` decimal(23,0) ,
 `26` decimal(23,0) ,
 `27` decimal(23,0) ,
 `28` decimal(23,0) ,
 `29` decimal(23,0) ,
 `30` decimal(23,0) ,
 `31` decimal(23,0) ,
 `total` bigint(21) 
)*/;

/*Table structure for table `microzonas_view` */

DROP TABLE IF EXISTS `microzonas_view`;

/*!50001 DROP VIEW IF EXISTS `microzonas_view` */;
/*!50001 DROP TABLE IF EXISTS `microzonas_view` */;

/*!50001 CREATE TABLE  `microzonas_view`(
 `jefatura` varchar(20) ,
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `cant` bigint(21) 
)*/;

/*Table structure for table `niveles_view` */

DROP TABLE IF EXISTS `niveles_view`;

/*!50001 DROP VIEW IF EXISTS `niveles_view` */;
/*!50001 DROP TABLE IF EXISTS `niveles_view` */;

/*!50001 CREATE TABLE  `niveles_view`(
 `cmts` varchar(20) ,
 `Interface` varchar(20) ,
 `powerup_max` double(19,2) ,
 `powerup_prom` double(19,2) ,
 `powerup_min` double(19,2) ,
 `powerds_max` double(19,2) ,
 `powerds_prom` double(19,2) ,
 `powerds_min` double(19,2) ,
 `snr_avg` double(19,2) ,
 `snr_down` double(19,2) ,
 `fecha_hora` varchar(20) ,
 `clientes` bigint(21) 
)*/;

/*Table structure for table `partial_service_total_view` */

DROP TABLE IF EXISTS `partial_service_total_view`;

/*!50001 DROP VIEW IF EXISTS `partial_service_total_view` */;
/*!50001 DROP TABLE IF EXISTS `partial_service_total_view` */;

/*!50001 CREATE TABLE  `partial_service_total_view`(
 `cmts` varchar(5) ,
 `B1x1` decimal(23,0) ,
 `B1x2` decimal(23,0) ,
 `B1x3` decimal(23,0) ,
 `B1x4` decimal(23,0) ,
 `B1x5` decimal(23,0) ,
 `B1x6` decimal(23,0) ,
 `B1x7` decimal(23,0) ,
 `B1x8` decimal(23,0) ,
 `B2x1` decimal(23,0) ,
 `B2x2` decimal(23,0) ,
 `B2x3` decimal(23,0) ,
 `B2x4` decimal(23,0) ,
 `B2x5` decimal(23,0) ,
 `B2x6` decimal(23,0) ,
 `B2x7` decimal(23,0) ,
 `B3x1` decimal(23,0) ,
 `B3x2` decimal(23,0) ,
 `B4x1` decimal(23,0) ,
 `B4x2` decimal(23,0) ,
 `B5x1` decimal(23,0) ,
 `B5x2` decimal(23,0) ,
 `B6x1` decimal(23,0) ,
 `B6x2` decimal(23,0) ,
 `B7x1` decimal(23,0) ,
 `B8x1` decimal(23,0) ,
 `total` bigint(21) 
)*/;

/*Table structure for table `partial_service_view` */

DROP TABLE IF EXISTS `partial_service_view`;

/*!50001 DROP VIEW IF EXISTS `partial_service_view` */;
/*!50001 DROP TABLE IF EXISTS `partial_service_view` */;

/*!50001 CREATE TABLE  `partial_service_view`(
 `cmts` varchar(20) ,
 `B1x1` decimal(23,0) ,
 `B1x2` decimal(23,0) ,
 `B1x3` decimal(23,0) ,
 `B1x4` decimal(23,0) ,
 `B1x5` decimal(23,0) ,
 `B1x6` decimal(23,0) ,
 `B1x7` decimal(23,0) ,
 `B1x8` decimal(23,0) ,
 `B2x1` decimal(23,0) ,
 `B2x2` decimal(23,0) ,
 `B2x3` decimal(23,0) ,
 `B2x4` decimal(23,0) ,
 `B2x5` decimal(23,0) ,
 `B2x6` decimal(23,0) ,
 `B2x7` decimal(23,0) ,
 `B3x1` decimal(23,0) ,
 `B3x2` decimal(23,0) ,
 `B4x1` decimal(23,0) ,
 `B4x2` decimal(23,0) ,
 `B5x1` decimal(23,0) ,
 `B5x2` decimal(23,0) ,
 `B6x1` decimal(23,0) ,
 `B6x2` decimal(23,0) ,
 `B7x1` decimal(23,0) ,
 `B8x1` decimal(23,0) ,
 `total` bigint(21) 
)*/;

/*Table structure for table `resumen_aver_view` */

DROP TABLE IF EXISTS `resumen_aver_view`;

/*!50001 DROP VIEW IF EXISTS `resumen_aver_view` */;
/*!50001 DROP TABLE IF EXISTS `resumen_aver_view` */;

/*!50001 CREATE TABLE  `resumen_aver_view`(
 `codnod` varchar(2) ,
 `nroplano` varchar(4) ,
 `tipodeingreso` varchar(100) ,
 `tipodeliquidacion` varchar(100) ,
 `masiva` varchar(10) ,
 `cant` bigint(21) 
)*/;

/*Table structure for table `resumen_aver_view_1` */

DROP TABLE IF EXISTS `resumen_aver_view_1`;

/*!50001 DROP VIEW IF EXISTS `resumen_aver_view_1` */;
/*!50001 DROP TABLE IF EXISTS `resumen_aver_view_1` */;

/*!50001 CREATE TABLE  `resumen_aver_view_1`(
 `tipodeingreso` varchar(100) ,
 `Individual` decimal(42,0) ,
 `Caida` decimal(42,0) ,
 `Senal` decimal(42,0) ,
 `total` decimal(42,0) 
)*/;

/*Table structure for table `resumen_cm_view_casa` */

DROP TABLE IF EXISTS `resumen_cm_view_casa`;

/*!50001 DROP VIEW IF EXISTS `resumen_cm_view_casa` */;
/*!50001 DROP TABLE IF EXISTS `resumen_cm_view_casa` */;

/*!50001 CREATE TABLE  `resumen_cm_view_casa`(
 `cmts` varchar(20) ,
 `interface` varchar(20) ,
 `description` varchar(100) ,
 `sincroniz` bigint(21) ,
 `offline` bigint(21) ,
 `total` bigint(21) 
)*/;

/*Table structure for table `resumen_cm_view_cisco` */

DROP TABLE IF EXISTS `resumen_cm_view_cisco`;

/*!50001 DROP VIEW IF EXISTS `resumen_cm_view_cisco` */;
/*!50001 DROP TABLE IF EXISTS `resumen_cm_view_cisco` */;

/*!50001 CREATE TABLE  `resumen_cm_view_cisco`(
 `cmts` varchar(20) ,
 `interface` varchar(20) ,
 `description` varchar(100) ,
 `sincroniz` bigint(21) ,
 `offline` bigint(21) ,
 `total` bigint(22) 
)*/;

/*Table structure for table `resumen_cm_view_huawei` */

DROP TABLE IF EXISTS `resumen_cm_view_huawei`;

/*!50001 DROP VIEW IF EXISTS `resumen_cm_view_huawei` */;
/*!50001 DROP TABLE IF EXISTS `resumen_cm_view_huawei` */;

/*!50001 CREATE TABLE  `resumen_cm_view_huawei`(
 `cmts` varchar(20) ,
 `interface` varchar(20) ,
 `description` varchar(100) ,
 `sincroniz` decimal(23,0) ,
 `cm_offline` decimal(23,0) ,
 `total` bigint(21) 
)*/;

/*View structure for view Conectar_cmts */

/*!50001 DROP TABLE IF EXISTS `Conectar_cmts` */;
/*!50001 DROP VIEW IF EXISTS `Conectar_cmts` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `Conectar_cmts` AS (select `cmts_ip`.`tipo` AS `tipo`,`cmts_ip`.`id` AS `id`,`cmts_ip`.`cmts` AS `cmts`,`cmts_ip`.`realname` AS `realname`,concat('ssh ',`cmts_ip`.`user`,'@',`cmts_ip`.`ip`) AS `comando`,`cmts_ip`.`pass` AS `connect` from `cmts_ip` where (`cmts_ip`.`pass` is not null) order by `cmts_ip`.`tipo` desc,`cmts_ip`.`id`) */;

/*View structure for view alarmas_ims_view */

/*!50001 DROP TABLE IF EXISTS `alarmas_ims_view` */;
/*!50001 DROP VIEW IF EXISTS `alarmas_ims_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `alarmas_ims_view` AS select `a`.`EMPRESA` AS `EMPRESA`,`a`.`IDCLIENTECRM` AS `IDCLIENTECRM`,`a`.`idempresacrm` AS `idempresacrm`,`a`.`idservicio` AS `idservicio`,`a`.`idproducto` AS `idproducto`,`a`.`idventa` AS `idventa`,`a`.`NAMECLIENT` AS `NAMECLIENT`,`a`.`NODO` AS `NODO`,`a`.`TROBA` AS `TROBA`,`a`.`amplificador` AS `amplificador`,`a`.`tap` AS `tap`,`a`.`telf1` AS `telf1`,`a`.`telf2` AS `telf2`,`a`.`f_v` AS `f_v`,`a`.`regver` AS `regver`,`a`.`cmts` AS `cmts`,`a`.`MACADDRESS` AS `MACADDRESS`,`a`.`SERVICEPACKAGECRMID` AS `SERVICEPACKAGECRMID`,`a`.`SERVICEPACKAGE` AS `SERVICEPACKAGE`,`a`.`CANTPCS` AS `CANTPCS`,`a`.`FECHAALTA` AS `FECHAALTA`,`a`.`FECHAACTIVACION` AS `FECHAACTIVACION`,`a`.`ESTADO` AS `ESTADO`,`a`.`SCOPESGROUP` AS `SCOPESGROUP`,`a`.`SCOPESGROUPCM` AS `SCOPESGROUPCM`,`a`.`SCOPESGROUPMTA` AS `SCOPESGROUPMTA`,`a`.`MTAMAC` AS `MTAMAC`,`a`.`IDSERVICIOMTA` AS `IDSERVICIOMTA`,`a`.`IDPRODUCTOMTA` AS `IDPRODUCTOMTA`,`a`.`IDVENTAMTA` AS `IDVENTAMTA`,`a`.`MTAMODELNAME` AS `MTAMODELNAME`,`a`.`CMTSID` AS `CMTSID`,`a`.`UBICACIONENLARED` AS `UBICACIONENLARED`,`a`.`IPCM` AS `IPCM`,`a`.`DOCSISVERSION` AS `DOCSISVERSION`,`a`.`movil1` AS `movil1`,`a`.`mac2` AS `mac2`,`a`.`mac3` AS `mac3`,`b`.`fecha_alarma` AS `fecha_alarma`,timediff(now(),`b`.`fecha_alarma`) AS `TIMEDIFF(NOW(),b.fecha_alarma)` from (`ccm1`.`nclientes` `a` join `ccm1_temporal`.`alarmas_ims` `b` on((`a`.`MTAMAC` = `b`.`macaddress`))) where (timediff(now(),`b`.`fecha_alarma`) <= '01:10') */;

/*View structure for view averias_liq_view */

/*!50001 DROP TABLE IF EXISTS `averias_liq_view` */;
/*!50001 DROP VIEW IF EXISTS `averias_liq_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `averias_liq_view` AS (select substr(`averias_m1_new`.`dia_mov`,1,7) AS `mes`,`averias_m1_new`.`tipodeingreso` AS `tipodeingreso`,if((`averias_m1_new`.`tipodeliquidacion` = ''),'P E N D I E N T E',`averias_m1_new`.`tipodeliquidacion`) AS `tipodeliquidacion`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '01'),1,0)) AS `01`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '02'),1,0)) AS `02`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '03'),1,0)) AS `03`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '04'),1,0)) AS `04`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '05'),1,0)) AS `05`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '06'),1,0)) AS `06`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '07'),1,0)) AS `07`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '08'),1,0)) AS `08`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '09'),1,0)) AS `09`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '10'),1,0)) AS `10`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '11'),1,0)) AS `11`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '12'),1,0)) AS `12`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '13'),1,0)) AS `13`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '14'),1,0)) AS `14`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '15'),1,0)) AS `15`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '16'),1,0)) AS `16`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '17'),1,0)) AS `17`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '18'),1,0)) AS `18`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '19'),1,0)) AS `19`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '20'),1,0)) AS `20`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '21'),1,0)) AS `21`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '22'),1,0)) AS `22`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '23'),1,0)) AS `23`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '24'),1,0)) AS `24`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '25'),1,0)) AS `25`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '26'),1,0)) AS `26`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '27'),1,0)) AS `27`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '28'),1,0)) AS `28`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '29'),1,0)) AS `29`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '30'),1,0)) AS `30`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '31'),1,0)) AS `31`,count(0) AS `total` from `averias_m1_new` group by substr(`averias_m1_new`.`dia_mov`,1,7),`averias_m1_new`.`tipodeingreso`,if((`averias_m1_new`.`tipodeliquidacion` = ''),'P E N D I E N T E',`averias_m1_new`.`tipodeliquidacion`)) */;

/*View structure for view averias_pen_view */

/*!50001 DROP TABLE IF EXISTS `averias_pen_view` */;
/*!50001 DROP VIEW IF EXISTS `averias_pen_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `averias_pen_view` AS (select substr(`averias_m1_new`.`dia_mov`,1,7) AS `mes`,`averias_m1_new`.`tipodeingreso` AS `tipodeingreso`,'Pendiente' AS `tipodeliquidacion`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '01'),1,0)) AS `01`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '02'),1,0)) AS `02`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '03'),1,0)) AS `03`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '04'),1,0)) AS `04`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '05'),1,0)) AS `05`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '06'),1,0)) AS `06`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '07'),1,0)) AS `07`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '08'),1,0)) AS `08`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '09'),1,0)) AS `09`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '10'),1,0)) AS `10`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '11'),1,0)) AS `11`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '12'),1,0)) AS `12`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '13'),1,0)) AS `13`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '14'),1,0)) AS `14`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '15'),1,0)) AS `15`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '16'),1,0)) AS `16`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '17'),1,0)) AS `17`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '18'),1,0)) AS `18`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '19'),1,0)) AS `19`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '20'),1,0)) AS `20`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '21'),1,0)) AS `21`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '22'),1,0)) AS `22`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '23'),1,0)) AS `23`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '24'),1,0)) AS `24`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '25'),1,0)) AS `25`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '26'),1,0)) AS `26`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '27'),1,0)) AS `27`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '28'),1,0)) AS `28`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '29'),1,0)) AS `29`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '30'),1,0)) AS `30`,sum(if((right(`averias_m1_new`.`dia_mov`,2) = '31'),1,0)) AS `31`,count(0) AS `total` from `averias_m1_new` where (`averias_m1_new`.`tipodeliquidacion` = '') group by substr(`averias_m1_new`.`dia_mov`,1,7),`averias_m1_new`.`tipodeingreso`,'Pendiente') */;

/*View structure for view caidas_view */

/*!50001 DROP TABLE IF EXISTS `caidas_view` */;
/*!50001 DROP VIEW IF EXISTS `caidas_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `caidas_view` AS (select concat(`a`.`cmts`,'-',`a`.`interface`) AS `cmts_interface`,`a`.`cm_tot` AS `cm_tot`,`a`.`cm_offline` AS `cm_offline`,`a`.`description` AS `description`,`a`.`fecha_hora` AS `fecha_hora`,`a`.`fecha_hora_f` AS `fecha_hora_f`,timediff(now(),`a`.`fecha_hora`) AS `tiempo_offline`,if(((`a`.`ultimo` = 0) and (timediff(now(),`a`.`fecha_hora`) < '00:05')),'SI','NO') AS `vigencia`,timediff(`a`.`fecha_hora_f`,`a`.`fecha_hora`) AS `tiempo_durac`,`a`.`cmts` AS `cmts`,`a`.`interface` AS `interface`,`b`.`abrev` AS `abrev`,`a`.`ultimo` AS `ultimo` from (`scm_sum_alerta` `a` left join `cmts_ip` `b` on((`a`.`cmts` = `b`.`cmts`))) where ((to_days(now()) - to_days(`a`.`fecha_hora_f`)) <= '0') order by `a`.`fecha_hora_f` desc) */;

/*View structure for view casa_interface_view */

/*!50001 DROP TABLE IF EXISTS `casa_interface_view` */;
/*!50001 DROP VIEW IF EXISTS `casa_interface_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `casa_interface_view` AS (select `a`.`cmts` AS `cmts`,replace(replace(`a`.`Interface`,'*',''),'#','') AS `Interface`,count(0) AS `sincroniz` from (`ccm1_temporal`.`scm_total` `a` join `ccm1`.`cmts_ip` `b` on((`a`.`cmts` = `b`.`cmts`))) where ((`a`.`MACState` in ('online','online(d)','online(pt)','online-d','online-pt','p-online','w-online','w-online(pt)','wonline')) and (`b`.`marca` = 'CASA')) group by `a`.`cmts`,replace(replace(`a`.`Interface`,'*',''),'#','')) */;

/*View structure for view casa_interface_view_offline */

/*!50001 DROP TABLE IF EXISTS `casa_interface_view_offline` */;
/*!50001 DROP VIEW IF EXISTS `casa_interface_view_offline` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `casa_interface_view_offline` AS (select `a`.`cmts` AS `cmts`,`a`.`Interface` AS `Interface`,count(0) AS `offline` from (`ccm1_temporal`.`scm_total` `a` join `ccm1`.`cmts_ip` `b` on((`a`.`cmts` = `b`.`cmts`))) where ((`a`.`MACState` = 'offline') and (`b`.`marca` = 'CASA')) group by `a`.`cmts`,`a`.`Interface`) */;

/*View structure for view cisco_interface_view */

/*!50001 DROP TABLE IF EXISTS `cisco_interface_view` */;
/*!50001 DROP VIEW IF EXISTS `cisco_interface_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `cisco_interface_view` AS (select `a`.`cmts` AS `cmts`,`a`.`Interface` AS `interface`,count(0) AS `sincroniz` from (`scm_phy_t` `a` join `cmts_ip` `b` on((`a`.`cmts` = `b`.`cmts`))) where (`b`.`marca` = 'CISCO') group by `a`.`cmts`,`a`.`Interface`) */;

/*View structure for view cisco_interface_view_offline */

/*!50001 DROP TABLE IF EXISTS `cisco_interface_view_offline` */;
/*!50001 DROP VIEW IF EXISTS `cisco_interface_view_offline` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `cisco_interface_view_offline` AS (select `a`.`cmts` AS `cmts`,`a`.`Interface` AS `interface`,count(0) AS `offline` from (`scm_total` `a` join `cmts_ip` `b` on((`a`.`cmts` = `b`.`cmts`))) where ((`a`.`MACState` = 'offline') and (`b`.`marca` = 'CISCO')) group by `a`.`cmts`,`a`.`Interface`) */;

/*View structure for view error_envio_campo */

/*!50001 DROP TABLE IF EXISTS `error_envio_campo` */;
/*!50001 DROP VIEW IF EXISTS `error_envio_campo` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `error_envio_campo` AS (select `a`.`mes` AS `mes`,`a`.`tipodeingreso` AS `tipodeingreso`,`a`.`tipodeliquidacion` AS `tipodeliquidacion`,`a`.`01` AS `01`,`a`.`02` AS `02`,`a`.`03` AS `03`,`a`.`04` AS `04`,`a`.`05` AS `05`,`a`.`06` AS `06`,`a`.`07` AS `07`,`a`.`08` AS `08`,`a`.`09` AS `09`,`a`.`10` AS `10`,`a`.`11` AS `11`,`a`.`12` AS `12`,`a`.`13` AS `13`,`a`.`14` AS `14`,`a`.`15` AS `15`,`a`.`16` AS `16`,`a`.`17` AS `17`,`a`.`18` AS `18`,`a`.`19` AS `19`,`a`.`20` AS `20`,`a`.`21` AS `21`,`a`.`22` AS `22`,`a`.`23` AS `23`,`a`.`24` AS `24`,`a`.`25` AS `25`,`a`.`26` AS `26`,`a`.`27` AS `27`,`a`.`28` AS `28`,`a`.`29` AS `29`,`a`.`30` AS `30`,`a`.`31` AS `31`,`a`.`total` AS `total` from (`ccm1`.`averias_liq_view` `a` join `catalogos`.`error_envio_campo` `b`) where (`a`.`tipodeliquidacion` = `b`.`liquidacion`)) */;

/*View structure for view microzonas_view */

/*!50001 DROP TABLE IF EXISTS `microzonas_view` */;
/*!50001 DROP VIEW IF EXISTS `microzonas_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `microzonas_view` AS (select `mz`.`microzona` AS `jefatura`,`d`.`NODO` AS `nodo`,`d`.`TROBA` AS `troba`,count(0) AS `cant` from ((((`ccm1_temporal`.`multi_consultas` `a` join `ccm1`.`nclientes_depurado` `d` on((`a`.`dato` = `d`.`IDCLIENTECRM`))) left join `ccm1`.`scm_total` `e` on((`d`.`mac2` = `e`.`MACAddress`))) left join `ccm1`.`scm_phy_t` `f` on((`d`.`mac2` = `f`.`MACAddress`))) join `catalogos`.`microzonas` `mz` on(((`d`.`NODO` = `mz`.`nodo`) and (`d`.`TROBA` = `mz`.`troba`)))) where (((to_days(now()) - to_days(`a`.`fechahora`)) = 0) and (`mz`.`flag` = 1)) group by `mz`.`microzona`,`d`.`NODO`,`d`.`TROBA`) */;

/*View structure for view niveles_view */

/*!50001 DROP TABLE IF EXISTS `niveles_view` */;
/*!50001 DROP VIEW IF EXISTS `niveles_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `niveles_view` AS (select `a`.`cmts` AS `cmts`,`a`.`Interface` AS `Interface`,round(max(`a`.`USPwr`),2) AS `powerup_max`,round(avg(`a`.`USPwr`),2) AS `powerup_prom`,round(min(`a`.`USPwr`),2) AS `powerup_min`,round(max(`a`.`DSPwr`),2) AS `powerds_max`,round(avg(`a`.`DSPwr`),2) AS `powerds_prom`,round(min(replace(`a`.`DSPwr`,' ','')),2) AS `powerds_min`,round(avg(`a`.`USMER_SNR`),2) AS `snr_avg`,round(avg(`a`.`DSMER_SNR`),2) AS `snr_down`,`a`.`fecha_hora` AS `fecha_hora`,count(0) AS `clientes` from `scm_phy_t` `a` where ((`a`.`USPwr` > 0) and (`a`.`DSMER_SNR` <> '-----') and (`a`.`DSMER_SNR` <> '-')) group by `a`.`cmts`,`a`.`Interface` order by count(0) desc) */;

/*View structure for view partial_service_total_view */

/*!50001 DROP TABLE IF EXISTS `partial_service_total_view` */;
/*!50001 DROP VIEW IF EXISTS `partial_service_total_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `partial_service_total_view` AS (select 'TOTAL' AS `cmts`,sum(if((`partial_service`.`bonding` = '1x1'),1,0)) AS `B1x1`,sum(if((`partial_service`.`bonding` = '1x2'),1,0)) AS `B1x2`,sum(if((`partial_service`.`bonding` = '1x3'),1,0)) AS `B1x3`,sum(if((`partial_service`.`bonding` = '1x4'),1,0)) AS `B1x4`,sum(if((`partial_service`.`bonding` = '1x5'),1,0)) AS `B1x5`,sum(if((`partial_service`.`bonding` = '1x6'),1,0)) AS `B1x6`,sum(if((`partial_service`.`bonding` = '1x7'),1,0)) AS `B1x7`,sum(if((`partial_service`.`bonding` = '1x8'),1,0)) AS `B1x8`,sum(if((`partial_service`.`bonding` = '2x1'),1,0)) AS `B2x1`,sum(if((`partial_service`.`bonding` = '2x2'),1,0)) AS `B2x2`,sum(if((`partial_service`.`bonding` = '2x3'),1,0)) AS `B2x3`,sum(if((`partial_service`.`bonding` = '2x4'),1,0)) AS `B2x4`,sum(if((`partial_service`.`bonding` = '2x5'),1,0)) AS `B2x5`,sum(if((`partial_service`.`bonding` = '2x6'),1,0)) AS `B2x6`,sum(if((`partial_service`.`bonding` = '2x7'),1,0)) AS `B2x7`,sum(if((`partial_service`.`bonding` = '3x1'),1,0)) AS `B3x1`,sum(if((`partial_service`.`bonding` = '3x2'),1,0)) AS `B3x2`,sum(if((`partial_service`.`bonding` = '4x1'),1,0)) AS `B4x1`,sum(if((`partial_service`.`bonding` = '4x2'),1,0)) AS `B4x2`,sum(if((`partial_service`.`bonding` = '5x1'),1,0)) AS `B5x1`,sum(if((`partial_service`.`bonding` = '5x2'),1,0)) AS `B5x2`,sum(if((`partial_service`.`bonding` = '6x1'),1,0)) AS `B6x1`,sum(if((`partial_service`.`bonding` = '6x2'),1,0)) AS `B6x2`,sum(if((`partial_service`.`bonding` = '7x1'),1,0)) AS `B7x1`,sum(if((`partial_service`.`bonding` = '8x1'),1,0)) AS `B8x1`,count(0) AS `total` from `partial_service`) */;

/*View structure for view partial_service_view */

/*!50001 DROP TABLE IF EXISTS `partial_service_view` */;
/*!50001 DROP VIEW IF EXISTS `partial_service_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `partial_service_view` AS (select `partial_service`.`cmts` AS `cmts`,sum(if((`partial_service`.`bonding` = '1x1'),1,0)) AS `B1x1`,sum(if((`partial_service`.`bonding` = '1x2'),1,0)) AS `B1x2`,sum(if((`partial_service`.`bonding` = '1x3'),1,0)) AS `B1x3`,sum(if((`partial_service`.`bonding` = '1x4'),1,0)) AS `B1x4`,sum(if((`partial_service`.`bonding` = '1x5'),1,0)) AS `B1x5`,sum(if((`partial_service`.`bonding` = '1x6'),1,0)) AS `B1x6`,sum(if((`partial_service`.`bonding` = '1x7'),1,0)) AS `B1x7`,sum(if((`partial_service`.`bonding` = '1x8'),1,0)) AS `B1x8`,sum(if((`partial_service`.`bonding` = '2x1'),1,0)) AS `B2x1`,sum(if((`partial_service`.`bonding` = '2x2'),1,0)) AS `B2x2`,sum(if((`partial_service`.`bonding` = '2x3'),1,0)) AS `B2x3`,sum(if((`partial_service`.`bonding` = '2x4'),1,0)) AS `B2x4`,sum(if((`partial_service`.`bonding` = '2x5'),1,0)) AS `B2x5`,sum(if((`partial_service`.`bonding` = '2x6'),1,0)) AS `B2x6`,sum(if((`partial_service`.`bonding` = '2x7'),1,0)) AS `B2x7`,sum(if((`partial_service`.`bonding` = '3x1'),1,0)) AS `B3x1`,sum(if((`partial_service`.`bonding` = '3x2'),1,0)) AS `B3x2`,sum(if((`partial_service`.`bonding` = '4x1'),1,0)) AS `B4x1`,sum(if((`partial_service`.`bonding` = '4x2'),1,0)) AS `B4x2`,sum(if((`partial_service`.`bonding` = '5x1'),1,0)) AS `B5x1`,sum(if((`partial_service`.`bonding` = '5x2'),1,0)) AS `B5x2`,sum(if((`partial_service`.`bonding` = '6x1'),1,0)) AS `B6x1`,sum(if((`partial_service`.`bonding` = '6x2'),1,0)) AS `B6x2`,sum(if((`partial_service`.`bonding` = '7x1'),1,0)) AS `B7x1`,sum(if((`partial_service`.`bonding` = '8x1'),1,0)) AS `B8x1`,count(0) AS `total` from `partial_service` group by `partial_service`.`cmts`) */;

/*View structure for view resumen_aver_view */

/*!50001 DROP TABLE IF EXISTS `resumen_aver_view` */;
/*!50001 DROP VIEW IF EXISTS `resumen_aver_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `resumen_aver_view` AS (select `a`.`codnod` AS `codnod`,`a`.`nroplano` AS `nroplano`,`a`.`tipodeingreso` AS `tipodeingreso`,`a`.`tipodeliquidacion` AS `tipodeliquidacion`,if((`b`.`offline` is not null),'Caida',if((`c`.`cant` is not null),'Señal','Individual')) AS `masiva`,count(0) AS `cant` from ((`ccm1`.`averias_m1_new` `a` left join `alertasx`.`caidas_t` `b` on(((convert(`a`.`codnod` using utf8) = convert(`b`.`nodo` using utf8)) and (convert(`a`.`nroplano` using utf8) = convert(`b`.`troba` using utf8)) and ((to_days(now()) - to_days(`b`.`fecha_hora`)) = 0)))) left join `alertasx`.`nivelestemp` `c` on(((convert(`a`.`codnod` using utf8) = convert(`c`.`nodo` using utf8)) and (convert(`a`.`nroplano` using utf8) = convert(`c`.`troba` using utf8)) and ((to_days(now()) - to_days(`c`.`fecha_hora`)) = 0)))) where ((to_days(now()) - to_days(`a`.`dia_mov`)) = 0) group by '','','','') */;

/*View structure for view resumen_aver_view_1 */

/*!50001 DROP TABLE IF EXISTS `resumen_aver_view_1` */;
/*!50001 DROP VIEW IF EXISTS `resumen_aver_view_1` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `resumen_aver_view_1` AS (select `resumen_aver_view`.`tipodeingreso` AS `tipodeingreso`,sum(if((`resumen_aver_view`.`masiva` = 'Individual'),`resumen_aver_view`.`cant`,0)) AS `Individual`,sum(if((`resumen_aver_view`.`masiva` = 'Caida'),`resumen_aver_view`.`cant`,0)) AS `Caida`,sum(if((`resumen_aver_view`.`masiva` = 'Señal'),`resumen_aver_view`.`cant`,0)) AS `Senal`,sum(`resumen_aver_view`.`cant`) AS `total` from `ccm1`.`resumen_aver_view` group by `resumen_aver_view`.`tipodeingreso`) */;

/*View structure for view resumen_cm_view_casa */

/*!50001 DROP TABLE IF EXISTS `resumen_cm_view_casa` */;
/*!50001 DROP VIEW IF EXISTS `resumen_cm_view_casa` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `resumen_cm_view_casa` AS (select `a`.`cmts` AS `cmts`,`a`.`Interface` AS `interface`,`c`.`description` AS `description`,`a`.`sincroniz` AS `sincroniz`,if(isnull(`b`.`offline`),0,`b`.`offline`) AS `offline`,count(0) AS `total` from (((`ccm1`.`casa_interface_view` `a` left join `ccm1`.`casa_interface_view_offline` `b` on(((`a`.`cmts` = `b`.`cmts`) and (`a`.`Interface` = `b`.`Interface`)))) left join `catalogos`.`etiqueta_puertos` `c` on(((`a`.`cmts` = `c`.`cmts`) and (`a`.`Interface` = `c`.`interface`)))) join `ccm1`.`cmts_ip` `d` on((`a`.`cmts` = `d`.`cmts`))) where (`d`.`marca` = 'CASA') group by `a`.`cmts`,`a`.`Interface`) */;

/*View structure for view resumen_cm_view_cisco */

/*!50001 DROP TABLE IF EXISTS `resumen_cm_view_cisco` */;
/*!50001 DROP VIEW IF EXISTS `resumen_cm_view_cisco` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `resumen_cm_view_cisco` AS (select `a`.`cmts` AS `cmts`,`a`.`interface` AS `interface`,`c`.`description` AS `description`,`a`.`sincroniz` AS `sincroniz`,if(isnull(`b`.`offline`),0,`b`.`offline`) AS `offline`,(`a`.`sincroniz` + if(isnull(`b`.`offline`),0,`b`.`offline`)) AS `total` from (((`ccm1`.`cisco_interface_view` `a` left join `ccm1`.`cisco_interface_view_offline` `b` on(((`a`.`cmts` = `b`.`cmts`) and (`a`.`interface` = `b`.`interface`)))) join `catalogos`.`etiqueta_puertos` `c` on(((`a`.`cmts` = `c`.`cmts`) and (`a`.`interface` = `c`.`interface`)))) join `ccm1`.`cmts_ip` `d` on((`a`.`cmts` = `d`.`cmts`))) where (`d`.`marca` = 'CISCO')) */;

/*View structure for view resumen_cm_view_huawei */

/*!50001 DROP TABLE IF EXISTS `resumen_cm_view_huawei` */;
/*!50001 DROP VIEW IF EXISTS `resumen_cm_view_huawei` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `resumen_cm_view_huawei` AS (select `a`.`cmts` AS `cmts`,`a`.`Interface` AS `interface`,`ep`.`description` AS `description`,sum(if((`a`.`MACState` in ('ol-d','ol-pt','online','pol-pt')),1,0)) AS `sincroniz`,sum(if((`a`.`MACState` in ('offline','DHCP','DHCP-O','DHCP-R','init','init(o)','rej-pt')),1,0)) AS `cm_offline`,count(0) AS `total` from (`ccm1`.`scm_total` `a` left join `catalogos`.`etiqueta_puertos` `ep` on(((`a`.`cmts` = `ep`.`cmts`) and (`a`.`Interface` = `ep`.`interface`)))) where (substr(`a`.`Interface`,1,1) = 'H') group by `a`.`cmts`,`a`.`Interface`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

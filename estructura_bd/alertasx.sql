/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - alertasx
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`alertasx` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `alertasx`;

/*Table structure for table `alarmas_caidas_historico` */

DROP TABLE IF EXISTS `alarmas_caidas_historico`;

CREATE TABLE `alarmas_caidas_historico` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplif` varchar(2) DEFAULT NULL,
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

/*Table structure for table `alarmas_ims_view` */

DROP TABLE IF EXISTS `alarmas_ims_view`;

CREATE TABLE `alarmas_ims_view` (
  `cmts` varchar(50) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`nodo`,`troba`),
  KEY `cmts` (`cmts`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `alerta_edificio_sw` */

DROP TABLE IF EXISTS `alerta_edificio_sw`;

CREATE TABLE `alerta_edificio_sw` (
  `sw` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  KEY `sw` (`sw`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `alertas_consultas` */

DROP TABLE IF EXISTS `alertas_consultas`;

CREATE TABLE `alertas_consultas` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `alertas_consultas_d` */

DROP TABLE IF EXISTS `alertas_consultas_d`;

CREATE TABLE `alertas_consultas_d` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `alertas_edificio` */

DROP TABLE IF EXISTS `alertas_edificio`;

CREATE TABLE `alertas_edificio` (
  `desdtt` varchar(100) DEFAULT NULL,
  `via` varchar(20) DEFAULT NULL,
  `nro` varchar(20) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  `fecha_hora_ini` varchar(20) DEFAULT NULL,
  `fecha_hora_fin` varchar(20) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  UNIQUE KEY `desdtt_3` (`desdtt`,`via`,`nro`),
  KEY `desdtt_2` (`desdtt`),
  KEY `via` (`via`),
  KEY `nro` (`nro`),
  KEY `desdtt` (`desdtt`,`via`,`nro`,`fecha_hora_ini`),
  KEY `fecha_hora_ini` (`fecha_hora_ini`),
  KEY `estado` (`estado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `alertas_edificio_c` */

DROP TABLE IF EXISTS `alertas_edificio_c`;

CREATE TABLE `alertas_edificio_c` (
  `desdtt` varchar(100) DEFAULT NULL,
  `via` varchar(20) DEFAULT NULL,
  `nro` varchar(20) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  KEY `desdtt` (`desdtt`,`via`,`nro`),
  KEY `desdtt_2` (`desdtt`),
  KEY `via` (`via`),
  KEY `nro` (`nro`),
  KEY `desdtt_3` (`desdtt`,`via`,`nro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `alertas_reporte` */

DROP TABLE IF EXISTS `alertas_reporte`;

CREATE TABLE `alertas_reporte` (
  `jefatura` varchar(50) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `trabprog` varchar(200) DEFAULT NULL,
  `aver` int(11) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `consultas` int(11) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `critico` varchar(20) DEFAULT NULL,
  `tiempo` varchar(20) DEFAULT NULL,
  `ncaidas` int(11) DEFAULT NULL,
  `numbor` int(11) DEFAULT NULL,
  `estadomasiva` varchar(20) DEFAULT NULL,
  `alertaestado` varchar(20) DEFAULT NULL,
  `fgest` varchar(20) DEFAULT NULL,
  `observaciones` varchar(300) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `tecnico` varchar(100) DEFAULT NULL,
  UNIQUE KEY `jefatura` (`jefatura`,`nodo`,`troba`,`fecha_hora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  UNIQUE KEY `NewIndex4` (`codreq`),
  KEY `NewIndex1` (`codcli`),
  KEY `NewIndex2` (`codnod`),
  KEY `NewIndex3` (`nroplano`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `averias_catv_det` */

DROP TABLE IF EXISTS `averias_catv_det`;

CREATE TABLE `averias_catv_det` (
  `codofcadm` varchar(3) DEFAULT NULL,
  `codreq` int(16) DEFAULT NULL,
  `codclasrv` int(16) DEFAULT NULL,
  `fecreg` varchar(20) DEFAULT NULL,
  `estado` varchar(80) DEFAULT NULL,
  `codcli` int(20) DEFAULT NULL,
  `codnod` varchar(10) DEFAULT NULL,
  `nroplano` varchar(10) DEFAULT NULL,
  `codlex` char(0) CHARACTER SET utf8 NOT NULL,
  `codmotv` varchar(50) DEFAULT NULL,
  `desmotv` varchar(50) DEFAULT NULL,
  `tipreqfin` varchar(50) DEFAULT NULL,
  `destipreqfin` varchar(50) DEFAULT NULL,
  `desobsordtrab` varchar(50) DEFAULT NULL,
  `desobsordtrab_2` varchar(50) DEFAULT NULL,
  UNIQUE KEY `codreq` (`codreq`),
  KEY `codnod` (`codnod`),
  KEY `codcli` (`codcli`),
  KEY `nroplano` (`nroplano`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `bitacora_torre` */

DROP TABLE IF EXISTS `bitacora_torre`;

CREATE TABLE `bitacora_torre` (
  `jefatura` varchar(50) NOT NULL,
  `nodo` varchar(2) NOT NULL,
  `troba` varchar(4) NOT NULL,
  `consultas` int(11) DEFAULT NULL,
  `averias` int(11) DEFAULT NULL,
  `ultreq` varchar(20) DEFAULT NULL,
  `codmasiva` int(11) NOT NULL,
  `trabprog` varchar(1000) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `observacion` varchar(1000) NOT NULL,
  `fechahoragest` varchar(20) NOT NULL,
  `usuario` varchar(40) NOT NULL,
  `fecha_update` varchar(20) DEFAULT NULL,
  `porc_caida` varchar(20) DEFAULT NULL,
  `serv_afectado` varchar(20) DEFAULT NULL,
  KEY `jefatura_2` (`jefatura`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `usuario` (`usuario`),
  KEY `estado` (`estado`),
  KEY `nodo_2` (`nodo`,`troba`,`codmasiva`,`estado`,`observacion`(767),`usuario`,`fechahoragest`,`jefatura`,`trabprog`(767))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `bitacora_torre_d` */

DROP TABLE IF EXISTS `bitacora_torre_d`;

CREATE TABLE `bitacora_torre_d` (
  `jefatura` varchar(50) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `consultas` int(11) DEFAULT NULL,
  `averias` int(11) DEFAULT NULL,
  `ultreq` varchar(20) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `trabprog` varchar(1000) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `observacion` varchar(1000) DEFAULT NULL,
  `fechahoragest` varchar(20) DEFAULT NULL,
  `usuario` varchar(40) DEFAULT NULL,
  `fecha_update` varchar(20) DEFAULT NULL,
  KEY `jefatura_2` (`jefatura`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `usuario` (`usuario`),
  KEY `estado` (`estado`),
  KEY `jefatura` (`jefatura`,`nodo`,`troba`,`codmasiva`,`trabprog`(767),`estado`,`observacion`(767),`usuario`,`fechahoragest`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `caidas_c` */

DROP TABLE IF EXISTS `caidas_c`;

CREATE TABLE `caidas_c` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `Caida` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` varchar(8) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `caidas_cms` */

DROP TABLE IF EXISTS `caidas_cms`;

CREATE TABLE `caidas_cms` (
  `nodo` varchar(4) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` int(11) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `caidas_final` */

DROP TABLE IF EXISTS `caidas_final`;

CREATE TABLE `caidas_final` (
  `idcaida` int(11) NOT NULL AUTO_INCREMENT,
  `jefatura` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplif` varchar(10) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `Caida` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` varchar(10) DEFAULT NULL,
  `ncaidas` int(11) DEFAULT NULL,
  `numbor` int(11) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `tc` varchar(2) DEFAULT NULL,
  `digi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idcaida`),
  UNIQUE KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `cancli` (`cancli`),
  KEY `Caida` (`Caida`),
  KEY `estado` (`estado`),
  KEY `amplif` (`amplif`)
) ENGINE=MyISAM AUTO_INCREMENT=2393 DEFAULT CHARSET=latin1;

/*Table structure for table `caidas_historico` */

DROP TABLE IF EXISTS `caidas_historico`;

CREATE TABLE `caidas_historico` (
  `jefatura` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplif` varchar(2) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `Caida` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` varchar(8) DEFAULT NULL,
  `ncaidas` int(11) DEFAULT NULL,
  `numbor` int(11) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `tc` varchar(2) DEFAULT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `caidas_new` */

DROP TABLE IF EXISTS `caidas_new`;

CREATE TABLE `caidas_new` (
  `jefatura` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplif` varchar(10) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `Caida` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` varchar(10) DEFAULT NULL,
  `ncaidas` int(11) DEFAULT NULL,
  `numbor` int(11) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `tc` varchar(2) DEFAULT NULL,
  `digi` varchar(100) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`),
  KEY `cancli` (`cancli`),
  KEY `Caida` (`Caida`),
  KEY `estado` (`estado`),
  KEY `amplif` (`amplif`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `caidas_new_amplif` */

DROP TABLE IF EXISTS `caidas_new_amplif`;

CREATE TABLE `caidas_new_amplif` (
  `jefatura` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(3) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `Caida` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` varchar(10) DEFAULT NULL,
  `ncaidas` int(11) DEFAULT NULL,
  `numbor` int(11) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `tc` varchar(2) DEFAULT NULL,
  `digi` varchar(100) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`),
  KEY `cancli` (`cancli`),
  KEY `amplificador` (`amplificador`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `caidas_new_amplif_r` */

DROP TABLE IF EXISTS `caidas_new_amplif_r`;

CREATE TABLE `caidas_new_amplif_r` (
  `jefatura` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(3) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `Caida` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` varchar(10) DEFAULT NULL,
  `ncaidas` int(11) DEFAULT NULL,
  `numbor` int(11) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `tc` varchar(2) DEFAULT NULL,
  `digi` varchar(100) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`),
  KEY `cancli` (`cancli`),
  KEY `amplificador` (`amplificador`),
  KEY `Caida` (`Caida`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `caidas_new_r` */

DROP TABLE IF EXISTS `caidas_new_r`;

CREATE TABLE `caidas_new_r` (
  `jefatura` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplif` varchar(10) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `Caida` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` varchar(10) DEFAULT NULL,
  `ncaidas` int(11) DEFAULT NULL,
  `numbor` int(11) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `tc` varchar(2) DEFAULT NULL,
  `digi` varchar(100) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`),
  KEY `cancli` (`cancli`),
  KEY `Caida` (`Caida`),
  KEY `estado` (`estado`),
  KEY `amplif` (`amplif`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `caidas_t` */

DROP TABLE IF EXISTS `caidas_t`;

CREATE TABLE `caidas_t` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplif` varchar(10) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `Caida` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` varchar(20) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `cancli` (`cancli`),
  KEY `amplif` (`amplif`),
  KEY `offline` (`offline`),
  KEY `umbral` (`umbral`),
  KEY `Caida` (`Caida`),
  KEY `tiempo` (`tiempo`),
  KEY `fecha_fin` (`fecha_fin`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `caidas_t_amplif` */

DROP TABLE IF EXISTS `caidas_t_amplif`;

CREATE TABLE `caidas_t_amplif` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(3) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `Caida` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` varchar(20) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`,`amplificador`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `amplificador` (`amplificador`),
  KEY `Caida` (`Caida`),
  KEY `umbral` (`umbral`),
  KEY `fecha_fin` (`fecha_fin`),
  KEY `estado` (`estado`),
  KEY `cancli` (`cancli`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `caidastemp_c` */

DROP TABLE IF EXISTS `caidastemp_c`;

CREATE TABLE `caidastemp_c` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplif` varchar(10) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `Caida` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` varchar(10) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`),
  KEY `cancli` (`cancli`),
  KEY `offline` (`offline`),
  KEY `umbral` (`umbral`),
  KEY `fecha_fin` (`fecha_fin`),
  KEY `estado` (`estado`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `caidastemp_c_amplif` */

DROP TABLE IF EXISTS `caidastemp_c_amplif`;

CREATE TABLE `caidastemp_c_amplif` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(3) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `Caida` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` varchar(10) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`),
  KEY `amplificador` (`amplificador`),
  KEY `cancli` (`cancli`),
  KEY `offline` (`offline`),
  KEY `Caida` (`Caida`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `clientes_alertados` */

DROP TABLE IF EXISTS `clientes_alertados`;

CREATE TABLE `clientes_alertados` (
  `IDCLIENTECRM` double DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `tipo` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mactate` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(4) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `MACADDRESS` (`MACADDRESS`),
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`),
  KEY `tipo` (`tipo`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `clientes_alertados_c` */

DROP TABLE IF EXISTS `clientes_alertados_c`;

CREATE TABLE `clientes_alertados_c` (
  `IDCLIENTECRM` double DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `tipo` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mactate` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(4) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `IDCLIENTECRM` (`MACADDRESS`),
  KEY `MACADDRESS` (`MACADDRESS`),
  KEY `tipo` (`tipo`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `clientes_alertados_hist` */

DROP TABLE IF EXISTS `clientes_alertados_hist`;

CREATE TABLE `clientes_alertados_hist` (
  `IDCLIENTECRM` double DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `tipo` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mactate` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(4) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`),
  KEY `MACADDRESS` (`MACADDRESS`),
  KEY `tipo` (`tipo`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `clixamplif` */

DROP TABLE IF EXISTS `clixamplif`;

CREATE TABLE `clixamplif` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(4) DEFAULT NULL,
  `tot` int(11) DEFAULT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`,`amplificador`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `detalle_caidas_energia` */

DROP TABLE IF EXISTS `detalle_caidas_energia`;

CREATE TABLE `detalle_caidas_energia` (
  `idclientecrm` double DEFAULT NULL,
  `nameclient` varchar(100) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `macaddress` varchar(20) DEFAULT NULL,
  `macstate` varchar(20) DEFAULT NULL,
  `fecha_hora_caida` varchar(20) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `fecha_hora_gest` varchar(20) DEFAULT NULL,
  UNIQUE KEY `idclientecrm` (`idclientecrm`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `excep_alert` */

DROP TABLE IF EXISTS `excep_alert`;

CREATE TABLE `excep_alert` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  UNIQUE KEY `nodo` (`nodo`,`troba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `excep_alert_c` */

DROP TABLE IF EXISTS `excep_alert_c`;

CREATE TABLE `excep_alert_c` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `geoalertas_estados` */

DROP TABLE IF EXISTS `geoalertas_estados`;

CREATE TABLE `geoalertas_estados` (
  `idestado` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `estado` varchar(50) DEFAULT NULL,
  `atendida` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `activo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`idestado`)
) ENGINE=Aria AUTO_INCREMENT=58 DEFAULT CHARSET=latin1 PAGE_CHECKSUM=1;

/*Table structure for table `gestion_alert` */

DROP TABLE IF EXISTS `gestion_alert`;

CREATE TABLE `gestion_alert` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `observaciones` varchar(500) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `tecnico` varchar(100) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `porc_caida` varchar(10) DEFAULT NULL,
  `serv_afectado` varchar(100) DEFAULT NULL,
  `numreq` int(11) DEFAULT NULL,
  `remedy` varchar(30) DEFAULT NULL,
  `idcausalert` int(11) DEFAULT NULL,
  `idarearesponsable` int(11) DEFAULT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`,`fechahora`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fechahora` (`fechahora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `gestion_alert_backup` */

DROP TABLE IF EXISTS `gestion_alert_backup`;

CREATE TABLE `gestion_alert_backup` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `observaciones` varchar(500) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `tecnico` varchar(100) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `porc_caida` varchar(10) DEFAULT NULL,
  `serv_afectado` varchar(100) DEFAULT NULL,
  `numreq` int(11) DEFAULT NULL,
  `remedy` varchar(30) DEFAULT NULL,
  `idcausalert` int(11) DEFAULT NULL,
  `idarearesponsable` int(11) DEFAULT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`,`fechahora`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fechahora` (`fechahora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `gestion_consultas` */

DROP TABLE IF EXISTS `gestion_consultas`;

CREATE TABLE `gestion_consultas` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `observaciones` varchar(500) DEFAULT NULL,
  `usuario` varchar(40) DEFAULT NULL,
  `tecnico` varchar(150) DEFAULT NULL,
  `estado` varchar(40) DEFAULT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`,`fechahora`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `interfaces_phy` */

DROP TABLE IF EXISTS `interfaces_phy`;

CREATE TABLE `interfaces_phy` (
  `cmts` varchar(20) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `powerup_max` double(19,2) DEFAULT NULL,
  `powerup_prom` double(19,2) DEFAULT NULL,
  `powerup_min` double(19,2) DEFAULT NULL,
  `powerds_max` double(19,2) DEFAULT NULL,
  `powerds_prom` double(19,2) DEFAULT NULL,
  `powerds_min` double(19,2) DEFAULT NULL,
  `snr_avg` double(19,2) DEFAULT NULL,
  `snr_down` double(19,2) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `fecha_hora_f` char(0) CHARACTER SET utf8 NOT NULL,
  UNIQUE KEY `cmts` (`cmts`,`interface`,`fecha_hora`),
  KEY `cmts_2` (`cmts`),
  KEY `interface` (`interface`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `llamadashfc` */

DROP TABLE IF EXISTS `llamadashfc`;

CREATE TABLE `llamadashfc` (
  `idclientecrm` double DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `codnod` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(11) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `f_v` varchar(20) DEFAULT NULL,
  `De` int(11) DEFAULT NULL,
  `Day` varchar(20) DEFAULT NULL,
  `Hora` varchar(5) DEFAULT NULL,
  UNIQUE KEY `De_2` (`De`,`Day`,`Hora`),
  KEY `De` (`De`),
  KEY `idclientecrm` (`idclientecrm`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `masivas_catv` */

DROP TABLE IF EXISTS `masivas_catv`;

CREATE TABLE `masivas_catv` (
  `zonal` varchar(3) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `cant` bigint(21) NOT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `fecha_hora` datetime NOT NULL,
  `trabprog` varchar(53) DEFAULT NULL,
  `tipotrab` varchar(200) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  KEY `zonal` (`zonal`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `masivas_catv_c` */

DROP TABLE IF EXISTS `masivas_catv_c`;

CREATE TABLE `masivas_catv_c` (
  `zonal` varchar(3) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `cant` bigint(21) NOT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `fecha_hora` datetime NOT NULL,
  `trabprog` varchar(53) DEFAULT NULL,
  `tipotrab` varchar(200) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  KEY `zonal` (`zonal`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`)
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

/*Table structure for table `niveles_new` */

DROP TABLE IF EXISTS `niveles_new`;

CREATE TABLE `niveles_new` (
  `jefatura` varchar(50) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `tc` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `RxPwrdBmv` varchar(6) DEFAULT NULL,
  `pwr_up` varchar(6) DEFAULT NULL,
  `snr_up` varchar(6) DEFAULT NULL,
  `pwr_dn` varchar(6) DEFAULT NULL,
  `snr_dn` varchar(6) DEFAULT NULL,
  `can` int(11) DEFAULT NULL,
  `ncaidas` int(11) DEFAULT NULL,
  `numbor` int(11) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `caida` varchar(2) DEFAULT NULL,
  UNIQUE KEY `jefatura` (`nodo`,`troba`,`caida`,`fecha_hora`),
  KEY `jefatura_2` (`jefatura`),
  KEY `nodo` (`nodo`),
  KEY `caida` (`caida`),
  KEY `troba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `niveles_new_c` */

DROP TABLE IF EXISTS `niveles_new_c`;

CREATE TABLE `niveles_new_c` (
  `jefatura` varchar(50) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `tc` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `RxPwrdBmv` varchar(6) DEFAULT NULL,
  `pwr_up` varchar(6) DEFAULT NULL,
  `snr_up` varchar(6) DEFAULT NULL,
  `pwr_dn` varchar(6) DEFAULT NULL,
  `snr_dn` varchar(6) DEFAULT NULL,
  `can` int(11) DEFAULT NULL,
  `ncaidas` int(11) DEFAULT NULL,
  `numbor` int(11) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `caida` varchar(2) DEFAULT NULL,
  UNIQUE KEY `jefatura` (`nodo`,`troba`,`can`,`fecha_hora`),
  KEY `jefatura_2` (`jefatura`),
  KEY `nodo` (`nodo`),
  KEY `caida` (`caida`),
  KEY `troba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `niveles_new_r` */

DROP TABLE IF EXISTS `niveles_new_r`;

CREATE TABLE `niveles_new_r` (
  `jefatura` varchar(50) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `tc` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `codmasiva` int(11) DEFAULT NULL,
  `RxPwrdBmv` varchar(6) DEFAULT NULL,
  `pwr_up` varchar(6) DEFAULT NULL,
  `snr_up` varchar(6) DEFAULT NULL,
  `pwr_dn` varchar(6) DEFAULT NULL,
  `snr_dn` varchar(6) DEFAULT NULL,
  `can` int(11) DEFAULT NULL,
  `ncaidas` int(11) DEFAULT NULL,
  `numbor` int(11) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `caida` varchar(2) DEFAULT NULL,
  UNIQUE KEY `jefatura` (`nodo`,`troba`,`caida`,`fecha_hora`),
  KEY `jefatura_2` (`jefatura`),
  KEY `nodo` (`nodo`),
  KEY `caida` (`caida`),
  KEY `troba` (`troba`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `nivelestemp` */

DROP TABLE IF EXISTS `nivelestemp`;

CREATE TABLE `nivelestemp` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `RxPwrdBmv` double(19,2) DEFAULT NULL,
  `SNR_DN` double(19,2) DEFAULT NULL,
  `PWR_DN` double(19,2) DEFAULT NULL,
  `SNR_UP` double(19,2) DEFAULT NULL,
  `PWR_UP` double(19,2) DEFAULT NULL,
  `cant` bigint(21) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `fecha_fin` char(0) CHARACTER SET utf8 NOT NULL,
  `tiempo` char(0) CHARACTER SET utf8 NOT NULL,
  `caida` varchar(2) CHARACTER SET utf8 NOT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `nivelestemp_c` */

DROP TABLE IF EXISTS `nivelestemp_c`;

CREATE TABLE `nivelestemp_c` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `RxPwrdBmv` double(19,2) DEFAULT NULL,
  `SNR_DN` double(19,2) DEFAULT NULL,
  `PWR_DN` double(19,2) DEFAULT NULL,
  `SNR_UP` double(19,2) DEFAULT NULL,
  `PWR_UP` double(19,2) DEFAULT NULL,
  `cant` bigint(21) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `fecha_fin` char(0) CHARACTER SET utf8 NOT NULL,
  `tiempo` char(0) CHARACTER SET utf8 NOT NULL,
  `caida` varchar(2) CHARACTER SET utf8 NOT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `nivelestempxamplif` */

DROP TABLE IF EXISTS `nivelestempxamplif`;

CREATE TABLE `nivelestempxamplif` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(3) DEFAULT NULL,
  `RxPwrdBmv` double(19,2) DEFAULT NULL,
  `SNR_DN` double(19,2) DEFAULT NULL,
  `PWR_DN` double(19,2) DEFAULT NULL,
  `SNR_UP` double(19,2) DEFAULT NULL,
  `PWR_UP` double(19,2) DEFAULT NULL,
  `cant` bigint(21) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `fecha_fin` char(0) CHARACTER SET utf8 NOT NULL,
  `tiempo` char(0) CHARACTER SET utf8 NOT NULL,
  `caida` varchar(2) CHARACTER SET utf8 NOT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`,`amplificador`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `amplificador` (`amplificador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `nivelestempxamplif_c` */

DROP TABLE IF EXISTS `nivelestempxamplif_c`;

CREATE TABLE `nivelestempxamplif_c` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(3) DEFAULT NULL,
  `RxPwrdBmv` double(19,2) DEFAULT NULL,
  `SNR_DN` double(19,2) DEFAULT NULL,
  `PWR_DN` double(19,2) DEFAULT NULL,
  `SNR_UP` double(19,2) DEFAULT NULL,
  `PWR_UP` double(19,2) DEFAULT NULL,
  `cant` bigint(21) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `fecha_fin` char(0) CHARACTER SET utf8 NOT NULL,
  `tiempo` char(0) CHARACTER SET utf8 NOT NULL,
  `caida` varchar(2) CHARACTER SET utf8 NOT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`,`amplificador`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `amplificador` (`amplificador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `nivelesxmac` */

DROP TABLE IF EXISTS `nivelesxmac`;

CREATE TABLE `nivelesxmac` (
  `macaddress` varchar(20) DEFAULT NULL,
  `RxPwrdBmv` int(11) DEFAULT NULL,
  `SNR_DN` int(11) DEFAULT NULL,
  `PWR_DN` int(11) DEFAULT NULL,
  `SNR_UP` int(11) DEFAULT NULL,
  `PWR_UP` int(11) DEFAULT NULL,
  UNIQUE KEY `macaddress` (`macaddress`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `offline_total` */

DROP TABLE IF EXISTS `offline_total`;

CREATE TABLE `offline_total` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplif` varchar(3) DEFAULT NULL,
  `cancli` int(11) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  `Caida` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tiempo` int(11) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `offxamplif` */

DROP TABLE IF EXISTS `offxamplif`;

CREATE TABLE `offxamplif` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(4) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`,`amplificador`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `offxamplif_f` */

DROP TABLE IF EXISTS `offxamplif_f`;

CREATE TABLE `offxamplif_f` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(4) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `tot` int(11) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `fecha_fin` varchar(20) DEFAULT NULL,
  `tiempo` varchar(20) DEFAULT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`,`amplificador`,`fecha_hora`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `estado` (`estado`),
  KEY `fecha_fin` (`fecha_fin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `offxamplif_t` */

DROP TABLE IF EXISTS `offxamplif_t`;

CREATE TABLE `offxamplif_t` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(4) DEFAULT NULL,
  `offline` int(11) DEFAULT NULL,
  `tot` int(11) DEFAULT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`,`amplificador`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `puertos_down_saturados` */

DROP TABLE IF EXISTS `puertos_down_saturados`;

CREATE TABLE `puertos_down_saturados` (
  `cmts` varchar(50) DEFAULT NULL,
  `down` varchar(10) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  `fecini` varchar(20) DEFAULT NULL,
  `saturado` varchar(20) DEFAULT NULL,
  `fecfin` varchar(20) DEFAULT NULL,
  `rangosat` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`down`),
  KEY `cmts` (`cmts`),
  KEY `down` (`down`),
  KEY `fecini` (`fecini`),
  KEY `rangosat` (`rangosat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `puertos_down_saturados_60_70` */

DROP TABLE IF EXISTS `puertos_down_saturados_60_70`;

CREATE TABLE `puertos_down_saturados_60_70` (
  `cmts` varchar(50) DEFAULT NULL,
  `down` varchar(10) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  `fecini` varchar(20) DEFAULT NULL,
  `saturado` varchar(20) DEFAULT NULL,
  `fecfin` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`down`,`fecini`),
  KEY `cmts` (`cmts`),
  KEY `down` (`down`),
  KEY `fecini` (`fecini`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `puertos_down_saturados_70_80` */

DROP TABLE IF EXISTS `puertos_down_saturados_70_80`;

CREATE TABLE `puertos_down_saturados_70_80` (
  `cmts` varchar(50) DEFAULT NULL,
  `down` varchar(10) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  `fecini` varchar(20) DEFAULT NULL,
  `saturado` varchar(20) DEFAULT NULL,
  `fecfin` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`down`,`fecini`),
  KEY `cmts` (`cmts`),
  KEY `down` (`down`),
  KEY `fecini` (`fecini`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `puertos_down_saturados_80_90` */

DROP TABLE IF EXISTS `puertos_down_saturados_80_90`;

CREATE TABLE `puertos_down_saturados_80_90` (
  `cmts` varchar(50) DEFAULT NULL,
  `down` varchar(10) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  `fecini` varchar(20) DEFAULT NULL,
  `saturado` varchar(20) DEFAULT NULL,
  `fecfin` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`down`,`fecini`),
  KEY `cmts` (`cmts`),
  KEY `down` (`down`),
  KEY `fecini` (`fecini`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `puertos_down_saturados_90_100` */

DROP TABLE IF EXISTS `puertos_down_saturados_90_100`;

CREATE TABLE `puertos_down_saturados_90_100` (
  `cmts` varchar(50) DEFAULT NULL,
  `down` varchar(10) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  `fecini` varchar(20) DEFAULT NULL,
  `saturado` varchar(20) DEFAULT NULL,
  `fecfin` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`down`,`fecini`),
  KEY `cmts` (`cmts`),
  KEY `down` (`down`),
  KEY `fecini` (`fecini`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `resumen_nivelesxtroba_c` */

DROP TABLE IF EXISTS `resumen_nivelesxtroba_c`;

CREATE TABLE `resumen_nivelesxtroba_c` (
  `nodo` varchar(10) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `RxPwrdBmv` varchar(20) DEFAULT NULL,
  `SNR_DN` varchar(20) DEFAULT NULL,
  `PWR_DN` varchar(20) DEFAULT NULL,
  `SNR_UP` varchar(20) DEFAULT NULL,
  `PWR_UP` varchar(20) DEFAULT NULL,
  `cant` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(30) DEFAULT NULL,
  `fecha_fin` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `tiempo` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `caida` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  UNIQUE KEY `nodo_2` (`nodo`,`troba`,`fecha_hora`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tecnicos` */

DROP TABLE IF EXISTS `tecnicos`;

CREATE TABLE `tecnicos` (
  `item` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `empresa` varchar(30) DEFAULT NULL,
  `ruta` varchar(20) DEFAULT NULL,
  `dni` varchar(10) DEFAULT NULL,
  `nombre1` varchar(100) DEFAULT NULL,
  `rpm1` varchar(10) DEFAULT NULL,
  `nombre2` varchar(100) DEFAULT NULL,
  `rpm2` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`item`),
  KEY `NewIndex2` (`empresa`),
  KEY `NewIndex1` (`dni`),
  KEY `NewIndex3` (`nombre1`),
  KEY `NewIndex4` (`rpm1`),
  KEY `NewIndex5` (`nombre2`),
  KEY `NewIndex6` (`rpm2`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

/*Table structure for table `umbral_m` */

DROP TABLE IF EXISTS `umbral_m`;

CREATE TABLE `umbral_m` (
  `reg` int(11) NOT NULL,
  `porc` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `dia1` int(11) DEFAULT NULL,
  `noche` int(11) DEFAULT NULL,
  `noche1` int(11) DEFAULT NULL,
  PRIMARY KEY (`reg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `umbral_m_amplif` */

DROP TABLE IF EXISTS `umbral_m_amplif`;

CREATE TABLE `umbral_m_amplif` (
  `reg` int(11) NOT NULL,
  `porc` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `dia1` int(11) DEFAULT NULL,
  `noche` int(11) DEFAULT NULL,
  `noche1` int(11) DEFAULT NULL,
  PRIMARY KEY (`reg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `umbral_troba` */

DROP TABLE IF EXISTS `umbral_troba`;

CREATE TABLE `umbral_troba` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `noche` int(11) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `umbral_troba_amplif` */

DROP TABLE IF EXISTS `umbral_troba_amplif`;

CREATE TABLE `umbral_troba_amplif` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(3) DEFAULT NULL,
  `umbral` int(11) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/* Procedure structure for procedure `alertas_edificios` */

/*!50003 DROP PROCEDURE IF EXISTS  `alertas_edificios` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `alertas_edificios`()
BEGIN
update alertasx.alerta_edificio_sw set sw=1,fechahora=now();
TRUNCATE TABLE trabajos.`edif_level`;
	
/*NUEVO QUERY*/
INSERT INTO trabajos.`edif_level`
	SELECT DISTINCT a.macaddress,a.`EMPRESA`,a.`IDCLIENTECRM`,a.`idempresacrm`,a.`idservicio`,a.`idproducto`,a.`idventa`,a.`NAMECLIENT`,a.`NODO`,a.`TROBA`,a.`amplificador`,a.`tap`,a.`telf1`,a.`telf2`,a.`f_v`,a.`regver`,
a.`cmts`,a.`SERVICEPACKAGECRMID`,a.`SERVICEPACKAGE`,a.`CANTPCS`,a.`FECHAALTA`,a.`FECHAACTIVACION`,a.`ESTADO`,a.`SCOPESGROUP`,a.`SCOPESGROUPCM`,a.`SCOPESGROUPMTA`,a.`MTAMAC`,a.`IDSERVICIOMTA`,a.`IDPRODUCTOMTA`,
a.`IDVENTAMTA`,a.`MTAMODELNAME`,a.`CMTSID`,a.`UBICACIONENLARED`,a.`IPCM`,a.`DOCSISVERSION`,a.`movil1`,a.`mac2`,a.`mac3`,a.`direccion`,a.`codserv`,a.`fecha_upload`,a.`naked`,a.`numcoo_x`,a.`numcoo_y`,a.`desdtt`,
a.`via`,a.`nro`,c.`USPwr`,c.`USMER_SNR`,c.`DSPwr`,c.`DSMER_SNR`,
IF((c.USPwr <=35 OR c.USPwr >=56 ) AND USPwr<>'-' ,'Niveles NO OK',
IF(c.USMER_SNR <=27 AND c.USMER_SNR >0.00 AND USPwr<>'-' ,'Niveles NO OK', 
IF((c.DSPwr <-12 OR c.DSPwr >12 ) AND USPwr<>'-','Niveles NO OK', 
IF(c.DSMER_SNR <=30 AND USPwr<>'-' ,'Niveles NO OK','OK')))) AS estado_l
FROM trabajos.`dataedif_t1` a FORCE INDEX(mac2)
INNER JOIN ccm1.scm_phy_t c FORCE INDEX(NewIndex1,DSMER_SNR)
ON a.mac2=c.`MACAddress`
WHERE c.`DSMER_SNR` NOT LIKE '--%';
	
	TRUNCATE TABLE alertasx.alertas_edificio_c;
	INSERT IGNORE alertasx.alertas_edificio_c
	(SELECT desdtt,via,nro,COUNT(*) AS cant FROM trabajos.edif_level WHERE estado_l = 'Niveles NO OK' AND nro>0 GROUP BY 1,2,3 HAVING COUNT(*)>4);
	
	
	#TRUNCATE alertasx.`alertas_edificio`;
	
	INSERT IGNORE alertasx.`alertas_edificio`
	SELECT a.`desdtt`,a.`via`,a.`nro`,a.`cant`,NOW() AS `fecha_hora_ini`,'' AS `fecha_hora_fin`,'CONTINUA' AS `estado` FROM alertasx.`alertas_edificio_c` a
	GROUP BY a.desdtt,a.via,a.nro;
	
	
	UPDATE alertasx.`alertas_edificio` a FORCE INDEX(desdtt_2,via,nro) LEFT JOIN alertasx.`alertas_edificio_c` b
	ON a.desdtt=b.desdtt AND a.via=b.via AND a.nro=b.nro
	SET fecha_hora_fin = NOW(),estado='LEVANTO'
	WHERE b.desdtt IS NULL;
	
	UPDATE alertasx.`alertas_edificio` a  FORCE INDEX(desdtt_2,via,nro) LEFT JOIN alertasx.`alertas_edificio_c` b
	ON a.desdtt=b.desdtt AND a.via=b.via AND a.nro=b.nro
	SET fecha_hora_ini = NOW(),fecha_hora_fin = '',estado='CONTINUA'
	WHERE b.desdtt  IS NOT NULL AND estado='LEVANTO';
	
	UPDATE alertasx.alerta_edificio_sw SET sw=0,fechahora=NOW();
	END */$$
DELIMITER ;

/* Procedure structure for procedure `clientes_alertados` */

/*!50003 DROP PROCEDURE IF EXISTS  `clientes_alertados` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `clientes_alertados`()
BEGIN
TRUNCATE TABLE `caidas_new_amplif_r` ;
	INSERT INTO `caidas_new_amplif_r` SELECT * FROM `caidas_new_amplif` WHERE Caida='SI';
	TRUNCATE TABLE `caidas_new_r` ;
	INSERT INTO `caidas_new_r` SELECT * FROM `caidas_new` WHERE Caida='SI';
	TRUNCATE TABLE `niveles_new_r` ;
	INSERT INTO `niveles_new_r` SELECT * FROM `niveles_new` WHERE Caida='SI';
	TRUNCATE TABLE `clientes_alertados_c`;
	
	INSERT IGNORE `clientes_alertados_c`
	SELECT a.`IDCLIENTECRM`,a.`MACADDRESS`,'CAIDA AMPLIF',b.macstate AS mactate,a.nodo,a.troba,a.amplificador,b.`fecha_hora` 
	FROM ccm1.scm_total_r b FORCE INDEX (MACAddress,MACState) INNER JOIN 
	ccm1.nclientes a FORCE INDEX (NewIndex1,NODO,TROBA,NewIndex4) 
	ON b.`MACAddress` = a.`mac2`
	INNER JOIN alertasx.`caidas_new_amplif_r` c FORCE INDEX (nodo,troba,Caida)
 	ON a.nodo=c.nodo AND a.troba=c.`troba` AND a.amplificador=c.amplificador AND c.`Caida`='SI'
	WHERE b.macstate='offline' AND DATEDIFF(NOW(),b.fecha_hora)=0
	GROUP BY a.`mac2`;
	INSERT IGNORE `clientes_alertados_c`
	SELECT a.`IDCLIENTECRM`,a.`MACADDRESS`,'CAIDA MASIVA',b.macstate AS mactate,a.nodo,a.troba,a.amplificador,b.`fecha_hora` 
	FROM ccm1.scm_total_r b FORCE INDEX (MACAddress,MACState) INNER JOIN 
	ccm1.nclientes a FORCE INDEX (NewIndex1,NODO,TROBA,NewIndex4) 
	ON b.`MACAddress` = a.`mac2`
	INNER JOIN alertasx.`caidas_new_r` c FORCE INDEX (nodo,troba,Caida)
 	ON a.nodo=c.nodo AND a.troba=c.`troba` AND c.`Caida`='SI'
	WHERE b.macstate='offline'  AND DATEDIFF(NOW(),b.fecha_hora)=0
	GROUP BY a.`mac2`;
	
	
/*	
	INSERT IGNORE `clientes_alertados_c`
	SELECT a.`IDCLIENTECRM`,a.`MACADDRESS`,'CAIDA SENAL','online' AS  mactate,a.nodo,a.troba,a.amplificador,b.`fecha_hora` 
	FROM ccm1.nclientes a  FORCE INDEX (NewIndex1,NODO,TROBA,NewIndex4) 
	INNER JOIN alertasx.`niveles_new_r` c FORCE INDEX (nodo,troba,caida)
	ON a.nodo=c.nodo AND a.troba=c.`troba` 
	INNER JOIN ccm1.scm_phy_r b FORCE INDEX (NewIndex1)
	ON a.`mac2`=b.`MACAddress` 
	WHERE c.`Caida`='SI'  AND DATEDIFF(NOW(),b.fecha_hora)=0 	
	GROUP BY a.`mac2`;
	
	INSERT IGNORE `clientes_alertados_c`
	SELECT a.`IDCLIENTECRM`,a.`MACADDRESS`,'CAIDA SENAL','online' AS  mactate,a.nodo,a.troba,a.amplificador,b.`fecha_hora` 
	FROM ccm1.nclientes a FORCE INDEX(NewIndex4,NODO,TROBA)
	INNER JOIN alertasx.`niveles_new_r` c FORCE INDEX(caida,nodo,troba)
	ON a.nodo=c.nodo AND a.troba=c.`troba` 
	INNER JOIN ccm1.scm_phy_r b FORCE INDEX(NewIndex1)
	ON a.`mac2`=b.`MACAddress` 
	WHERE a.nodo NOT LIKE '' AND a.troba NOT LIKE '' AND c.`Caida`='SI' and datediff(now(),b.fecha_hora)=0	
	GROUP BY a.`mac2`;
*/	
	RENAME TABLE clientes_alertados TO clientes_alertados_d,
		clientes_alertados_c TO clientes_alertados,
		clientes_alertados_d TO clientes_alertados_c;
#	INSERT IGNORE `historico_nclientes`.clientes_alertados_historico 
# 	SELECT * FROM alertasx.`clientes_alertados` WHERE nodo IN ('LO','SI','MI');		
		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Newalert` */

/*!50003 DROP PROCEDURE IF EXISTS  `Newalert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `Newalert`()
BEGIN
	TRUNCATE TABLE alertasx.caidastemp_c;
	
	INSERT IGNORE alertasx.caidastemp_c 
	SELECT * FROM (
	SELECT b.nodo,b.troba,'',COUNT(*) AS cancli,SUM(IF(a.MACState='offline',1,0)) AS offline,0 AS umbral ,'' AS caida,NOW() AS fecha_hora," " AS tiempo , '' AS fecha_fin , '' AS estado 
	FROM ccm1.scm_total_r a FORCE INDEX(MACAddress) 
	INNER JOIN ccm1.nclientes b FORCE INDEX (NewIndex4) 
	ON a.MACAddress=b.mac2 
	WHERE b.idclientecrm <>969625 AND b.idclientecrm <10000000 AND b.estado ='Activo' AND b.nodo IS NOT  NULL
	GROUP BY 1,2
	)xx 
	WHERE cancli>=20;		
	
	DELETE FROM alertasx.`caidastemp_c` WHERE nodo='' OR offline=0;
	
	UPDATE alertasx.caidastemp_c a FORCE INDEX(nodo,troba)
	INNER JOIN ccm1.cantroba b  
	FORCE INDEX (NewIndex1,NewIndex2) 
	ON a.nodo=b.nodo AND a.troba=b.troba 
	 SET a.cancli=b.cant;
	
	UPDATE alertasx.caidastemp_c a FORCE INDEX(cancli,fecha_hora) INNER JOIN alertasx.umbral_m b FORCE INDEX(PRIMARY) 
	ON a.cancli=b.reg
	LEFT JOIN alertasx.`umbral_troba` ut FORCE INDEX(nodo,troba) ON a.nodo=ut.nodo AND a.troba=ut.troba 
	SET a.umbral=IF(ut.nodo IS NOT NULL,ut.dia,IF(SUBSTR(fecha_hora,12,2)>=22 OR SUBSTR(fecha_hora,12,2)<=8,b.noche,b.dia));	
	
	
	DELETE FROM alertasx.caidastemp_c WHERE offline < umbral OR umbral=0;
	
	UPDATE alertasx.caidastemp_c FORCE INDEX(offline) SET caida='SI' , estado='CONTINUA' 
	WHERE offline>=umbral;
	
	DELETE FROM alertasx.caidastemp_c WHERE caida<>'SI' ;
	
	
	
	UPDATE alertasx.caidas_t a FORCE INDEX(nodo,troba,fecha_hora,fecha_fin,estado,Caida) LEFT JOIN alertasx.caidastemp_c b FORCE INDEX(nodo,troba)
	ON a.nodo=b.nodo AND a.troba=b.troba   
	SET a.Caida='NO',a.fecha_fin=NOW(),a.tiempo = SUBSTR(TIMEDIFF(NOW(),a.fecha_hora),1,8),a.estado='LEVANTO'
	WHERE b.nodo IS NULL AND a.estado='CONTINUA';	
	
	
	
	UPDATE alertasx.caidas_t a FORCE INDEX (nodo,troba,Caida,fecha_fin,fecha_hora,estado) LEFT JOIN alertasx.caidastemp_c b FORCE INDEX (nodo,troba) 
	ON a.nodo=b.nodo AND a.troba=b.troba 
	SET a.Caida='SI',a.fecha_fin='',a.fecha_hora=NOW(),a.tiempo = " " ,a.estado='CONTINUA'
	WHERE b.nodo IS NOT NULL AND a.estado='LEVANTO';
	
	INSERT IGNORE alertasx.caidas_t SELECT * FROM alertasx.caidastemp_c;	
	
	UPDATE alertasx.caidas_t a FORCE INDEX(nodo,troba) INNER JOIN ccm1.cantroba b  FORCE INDEX(NewIndex1,NewIndex2)
	ON a.nodo=b.nodo AND a.troba=b.troba 
	SET a.cancli=b.cant;
	
	UPDATE alertasx.caidas_t a FORCE INDEX(cancli,nodo,troba) INNER JOIN alertasx.umbral_m b FORCE INDEX(PRIMARY)  
	ON a.cancli=b.reg
	LEFT JOIN alertasx.umbral_troba ut FORCE INDEX(nodo,troba)  
	ON a.nodo=ut.nodo AND a.troba=ut.troba 
	SET a.umbral=IF(ut.nodo IS NOT NULL,ut.dia,IF(SUBSTR(fecha_hora,12,2)>=22 OR SUBSTR(fecha_hora,12,2)<=8,b.noche,b.dia));	
	
	
	DELETE FROM alertasx.caidas_t WHERE offline < umbral;	
	
	
	TRUNCATE TABLE alertasx.caidas_new ;
	INSERT INTO alertasx.caidas_new 
	SELECT b.jefatura ,a.nodo,a.troba,'',a.cancli,a.offline,c.codreqmnt AS codmasiva,a.umbral,a.Caida,a.fecha_hora,a.tiempo,0 AS ncaidas,d.numbor,a.fecha_fin,a.estado,IF(e.critica=1,'TC' ,'') AS tc,'' AS digi
	FROM alertasx.caidas_t a FORCE INDEX(nodo) 
	INNER JOIN catalogos.jefaturas b FORCE INDEX (nodo) 
	ON a.nodo=b.nodo
	LEFT JOIN dbpext.masivas_temp c FORCE INDEX (NewIndex1) 
	ON a.nodo=c.codnod AND a.troba=c.nroplano
	LEFT JOIN catalogos.bornesxtroba d FORCE INDEX (NewIndex1) 
	ON a.nodo=d.nodo AND a.troba=d.troba
	LEFT JOIN catalogos.`trobas_criticas_n` e FORCE INDEX (nodo) 
	ON a.nodo=e.nodo AND a.troba=e.troba
	LEFT JOIN alertasx.`caidas_new` cn FORCE INDEX (nodo,troba,Caida,cancli) 
	ON  a.nodo=cn.nodo AND a.troba=cn.troba AND cn.caida='SI'
	WHERE a.cancli>=20 AND cn.nodo IS NULL
	GROUP BY a.nodo,a.troba
	ORDER BY estado ;
	
	truncate `alertasx`.`caidas_final`;
	INSERT IGNORE `alertasx`.`caidas_final` SELECT NULL,a.* FROM `alertasx`.`caidas_new` a
	GROUP BY nodo,troba,fecha_hora;
	
	
	CALL dbpext.`masivas_proc`;
	
	CALL alertasx.`SP_NewAlertAmplif`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_llamadas` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_llamadas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `sp_llamadas`()
BEGIN
	#TRUNCATE TABLE alertasx.llamadashfc;
	INSERT IGNORE alertasx.llamadashfc
	SELECT b.idclientecrm,b.idproducto,b.nodo as codnod,b.troba,b.amplificador,b.cmts,b.f_v,a.`De`,a.`Day`,SUBSTR(Fecha_Inicio,12,5) AS Hora FROM catalogos.`llamadas_ivr` a FORCE INDEX(De) INNER JOIN ccm1.nclientes b FORCE INDEX(idxtelef1) 
	ON a.De =b.telf1 GROUP BY b.idclientecrm,a.De,a.Fecha_Inicio;
	INSERT IGNORE alertasx.llamadashfc
	SELECT b.idclientecrm,b.idproducto,b.nodo as codnod,b.troba,b.amplificador,b.cmts,b.f_v,a.`De`,a.`Day`,SUBSTR(Fecha_Inicio,12,5) AS Hora  FROM catalogos.`llamadas_ivr` a FORCE INDEX(De) INNER JOIN ccm1.nclientes b FORCE INDEX(idxtelef2) 
	ON a.De =b.telf2 GROUP BY b.idclientecrm,a.De,a.Fecha_Inicio;
	INSERT IGNORE alertasx.llamadashfc
	SELECT b.idclientecrm,b.idproducto,b.nodo as codnod,b.troba,b.amplificador,b.cmts,b.f_v,a.`De`,a.`Day`,SUBSTR(Fecha_Inicio,12,5) AS Hora  FROM catalogos.`llamadas_ivr` a FORCE INDEX(De) INNER JOIN ccm1.nclientes b FORCE INDEX(idxmovil) 
	ON a.De =b.movil1 GROUP BY b.idclientecrm,a.De,a.Fecha_Inicio;
	SELECT * FROM alertasx.llamadashfc a WHERE DATEDIFF(NOW(),a.Day)=0  INTO OUTFILE '/temp/llamadas_hfc.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SP_NewAlertAmplif` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_NewAlertAmplif` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `SP_NewAlertAmplif`()
BEGIN
	INSERT IGNORE alertasx.caidastemp_c_amplif 
	SELECT xx.* FROM (
	SELECT b.nodo,b.troba,b.amplificador,COUNT(*) AS cancli,SUM(IF(a.macstate='offline',1,0)) AS offline,0 AS umbral ,'' AS caida,NOW() AS fecha_hora," " AS tiempo , '' AS fecha_fin , '' AS estado 
	FROM ccm1.scm_total_r a FORCE INDEX(MACAddress) 
	INNER JOIN ccm1.nclientes b FORCE INDEX (NewIndex4) ON a.macaddress=b.mac2 
	WHERE b.idclientecrm <>969625 AND b.idclientecrm <10000000 AND b.amplificador<>'' AND b.estado ='Activo' AND b.nodo IS NOT NULL 
	GROUP BY 1,2,3 
	) xx
	WHERE xx.cancli>=50;
	
	DELETE FROM `caidastemp_c_amplif` WHERE nodo='' OR offline=0;
	
	UPDATE alertasx.caidastemp_c_amplif a FORCE INDEX(amplificador) INNER JOIN ccm1.cantroba_amplif b  FORCE INDEX (NewIndex1,NewIndex2,amplificador) ON a.nodo=b.nodo AND a.troba=b.troba AND a.amplificador=b.amplificador 
	 SET a.cancli=b.cant;
	
	UPDATE alertasx.caidastemp_c_amplif a FORCE INDEX(cancli,fecha_hora) 
	INNER JOIN alertasx.umbral_m_amplif b FORCE INDEX(PRIMARY) 
	ON a.cancli=b.reg
	LEFT JOIN alertasx.umbral_troba_amplif ut FORCE INDEX(nodo,troba,amplificador) ON a.nodo=ut.nodo AND a.troba=ut.troba AND a.amplificador=ut.amplificador
	SET a.umbral=IF(ut.nodo IS NOT NULL,ut.umbral,IF(SUBSTR(fecha_hora,12,2)>=22 OR SUBSTR(fecha_hora,12,2)<=8,noche+3,dia+3));	
	
	
	DELETE FROM alertasx.caidastemp_c_amplif WHERE offline < umbral OR umbral=0;
	
	UPDATE alertasx.caidastemp_c_amplif FORCE INDEX(offline) SET caida='SI' , estado='CONTINUA' 
	WHERE offline>=umbral;
	
	DELETE FROM alertasx.caidastemp_c_amplif WHERE caida<>'SI' ;
	
	
	
	UPDATE alertasx.caidas_t_amplif a FORCE INDEX(nodo,troba,amplificador,fecha_hora,fecha_fin,estado,Caida) LEFT JOIN alertasx.caidastemp_c_amplif b FORCE INDEX(nodo,troba,amplificador)
	ON a.nodo=b.nodo AND a.troba=b.troba   AND a.amplificador=b.amplificador 
	SET a.Caida='NO',a.fecha_fin=NOW(),a.tiempo = SUBSTR(TIMEDIFF(NOW(),a.fecha_hora),1,8),a.estado='LEVANTO'
	WHERE b.nodo IS NULL AND a.estado='CONTINUA';	
	
	
	
	UPDATE alertasx.caidas_t_amplif a FORCE INDEX (nodo,troba,amplificador,Caida,fecha_fin,fecha_hora,estado) LEFT JOIN alertasx.caidastemp_c_amplif b FORCE INDEX (nodo,troba,amplificador) 
	ON a.nodo=b.nodo AND a.troba=b.troba AND a.amplificador=b.amplificador 
	SET a.Caida='SI',a.fecha_fin='',a.fecha_hora=NOW(),a.tiempo = " " ,a.estado='CONTINUA'
	WHERE b.nodo IS NOT NULL AND a.estado='LEVANTO';
	
	INSERT IGNORE alertasx.caidas_t_amplif SELECT * FROM alertasx.caidastemp_c_amplif;	
	
	UPDATE alertasx.caidas_t_amplif a FORCE INDEX(nodo,troba,amplificador) INNER JOIN ccm1.cantroba_amplif b  FORCE INDEX(NewIndex1,NewIndex2,amplificador)
	ON a.nodo=b.nodo AND a.troba=b.troba AND  a.amplificador=b.amplificador 
	SET a.cancli=b.cant;
	
	UPDATE alertasx.caidas_t_amplif a FORCE INDEX(cancli,nodo,troba,amplificador) INNER JOIN alertasx.umbral_m_amplif b FORCE INDEX(PRIMARY)  
	ON a.cancli=b.reg
	LEFT JOIN alertasx.umbral_troba_amplif ut FORCE INDEX(nodo,troba,amplificador)  
	ON a.nodo=ut.nodo AND a.troba=ut.troba AND a.amplificador=ut.amplificador
	SET a.umbral=IF(ut.nodo IS NOT NULL,ut.umbral,IF(SUBSTR(fecha_hora,12,2)>=22 OR SUBSTR(fecha_hora,12,2)<=8,noche,dia));	
	
	
	DELETE FROM alertasx.caidas_t_amplif WHERE offline < umbral;	
	
	
	TRUNCATE TABLE alertasx.caidas_new_amplif ;
	INSERT INTO alertasx.caidas_new_amplif 
	SELECT b.jefatura ,a.nodo,a.troba,a.amplificador,a.cancli,a.offline,c.codreqmnt AS codmasiva,a.umbral,a.Caida,a.fecha_hora,a.tiempo,0 AS ncaidas,d.numbor,a.fecha_fin,a.estado,IF(e.critica=1,'TC' ,'') AS tc,'' AS digi
	FROM alertasx.caidas_t_amplif a FORCE INDEX(nodo) 
	INNER JOIN catalogos.jefaturas b FORCE INDEX (nodo) 
	ON a.nodo=b.nodo
	LEFT JOIN dbpext.masivas_temp c FORCE INDEX (NewIndex1) 
	ON a.nodo=c.codnod AND a.troba=c.nroplano
	LEFT JOIN catalogos.bornesxtroba d FORCE INDEX (NewIndex1) 
	ON a.nodo=d.nodo AND a.troba=d.troba
	LEFT JOIN catalogos.`trobas_criticas_n` e FORCE INDEX (nodo) 
	ON a.nodo=e.nodo AND a.troba=e.troba
	LEFT JOIN alertasx.`caidas_new` cn FORCE INDEX (nodo,troba,Caida,cancli) 
	ON  a.nodo=cn.nodo AND a.troba=cn.troba AND cn.caida='SI'
	WHERE a.cancli>=60 AND cn.nodo IS NULL
	GROUP BY a.nodo,a.troba
	ORDER BY estado ;
	
	delete from alertasx.caidas_new_amplif where concat(nodo,troba) in (select concat(nodo,troba) from alertasx.`caidas_new` group by 1);
	
	INSERT IGNORE alertasx.`caidas_new` (
		SELECT `jefatura`,`nodo`,`troba`,`amplificador` AS amplif,`cancli`,`offline`,`codmasiva`,`umbral`,`Caida`,`fecha_hora`,`tiempo`,`ncaidas`,`numbor`,`fecha_fin`,`estado`,`tc`,`digi` 
	FROM `caidas_new_amplif` FORCE INDEX (fecha_hora)
	WHERE DATEDIFF(NOW(),fecha_hora)<=2 
	GROUP BY nodo,troba,amplificador 
);
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saturados` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saturados` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `sp_saturados`()
BEGIN
	TRUNCATE  alertasx.puertos_down_saturados_90_100;
	
	INSERT IGNORE alertasx.puertos_down_saturados_90_100
	SELECT cmts,down,cant,fecha_hora AS fecini,'CONTINUA' AS estado,'' AS fecfin FROM reportes.`uso_portadoras`
	WHERE  uso BETWEEN 91 AND 100  AND DATEDIFF(NOW(),fecha_hora)<=7 
	GROUP BY 1,2
	HAVING COUNT(*)>15;
	
	TRUNCATE  alertasx.puertos_down_saturados_80_90;
	
	INSERT IGNORE alertasx.puertos_down_saturados_80_90
	SELECT cmts,down,cant,fecha_hora AS fecini,'CONTINUA' AS estado,'' AS fecfin FROM reportes.`uso_portadoras`
	WHERE  uso BETWEEN 81 AND 90 AND DATEDIFF(NOW(),fecha_hora)<=7 
	GROUP BY 1,2
	HAVING COUNT(*)>15;
	
	TRUNCATE  alertasx.puertos_down_saturados_70_80;
	
	INSERT IGNORE alertasx.puertos_down_saturados_70_80
	SELECT cmts,down,cant,fecha_hora AS fecini,'CONTINUA' AS estado,'' AS fecfin FROM reportes.`uso_portadoras`
	WHERE  uso BETWEEN 71 AND 80 AND DATEDIFF(NOW(),fecha_hora)<=7 
	GROUP BY 1,2
	HAVING COUNT(*)>15;
	
	TRUNCATE  alertasx.puertos_down_saturados_60_70;
	
	INSERT IGNORE alertasx.puertos_down_saturados_60_70
	SELECT cmts,down,cant,fecha_hora AS fecini,'CONTINUA' AS estado,'' AS fecfin FROM reportes.`uso_portadoras`
	WHERE   uso BETWEEN 60 AND 70    AND DATEDIFF(NOW(),`fecha_hora`)<=7 
	GROUP BY 1,2
	HAVING COUNT(*)>15;
	
	TRUNCATE TABLE alertasx.puertos_down_saturados;
	
	INSERT IGNORE alertasx.puertos_down_saturados
	SELECT a.*,'90_100' FROM alertasx.puertos_down_saturados_90_100 a GROUP BY cmts,down;
	
	INSERT IGNORE alertasx.puertos_down_saturados
	SELECT a.*,'80_90' FROM alertasx.puertos_down_saturados_80_90 a GROUP BY cmts,down;
	
	INSERT IGNORE alertasx.puertos_down_saturados
	SELECT a.*,'70-80' FROM alertasx.puertos_down_saturados_70_80 a GROUP BY cmts,down;
	
	INSERT IGNORE alertasx.puertos_down_saturados
	SELECT a.*,'60-70' FROM alertasx.puertos_down_saturados_60_70 a GROUP BY cmts,down;
	
	/*
	TRUNCATE TABLE reportes.clientes_en_puerto_saturado;
	
	INSERT IGNORE reportes.clientes_en_puerto_saturado  
	SELECT   
	a.`IDCLIENTECRM`,
	a.`nameclient`,
	a.`direccion`,
	a.`NODO`,
	a.`TROBA`,
	a.`amplificador`,
	a.`tap`,
	a.`telf1`,
	a.`telf2`,
	a.`movil1`,
	a.`MACADDRESS`,
	a.`SERVICEPACKAGE`,
	a.`SCOPESGROUP`,
	'' AS RxPwrdBmv,
	'' AS USPwr,
	'' AS USMER_SNR,
	'' AS DSPwr,
	'' AS DSMER_SNR,
	'' AS STATUS,
	a.f_v AS `INTERFACE`,
	a.`CMTS`,
	c.`down`,
	a.`fecha_upload`
	,'PUERTO DOWN SATURADO' 
	FROM ccm1.nclientes a FORCE INDEX (idxfv,cmts)
	INNER JOIN reportes.`portadorasxpuerto_tr` c FORCE INDEX(cmts,interface)
	ON a.cmts=c.cmts AND a.f_v=c.interface  
	INNER JOIN alertasx.`puertos_down_saturados` ps FORCE INDEX(cmts,rangosat)
	ON c.cmts=ps.cmts AND REPLACE(c.down,"'","")=REPLACE(ps.down,"'","")
	WHERE a.nodo<>'' and ps.rangosat IN ('70_80','90_100','80_90') AND ps.saturado='CONTINUA'
	GROUP BY a.macaddress;
	*/
	
    END */$$
DELIMITER ;

/*Table structure for table `alerta_ips` */

DROP TABLE IF EXISTS `alerta_ips`;

/*!50001 DROP VIEW IF EXISTS `alerta_ips` */;
/*!50001 DROP TABLE IF EXISTS `alerta_ips` */;

/*!50001 CREATE TABLE  `alerta_ips`(
 `cmts` varchar(85) ,
 `scopesgroup` varchar(20) ,
 `total` decimal(32,0) ,
 `used` decimal(32,0) ,
 `available` decimal(32,0) ,
 `porc` decimal(39,4) ,
 `color` varchar(6) 
)*/;

/*View structure for view alerta_ips */

/*!50001 DROP TABLE IF EXISTS `alerta_ips` */;
/*!50001 DROP VIEW IF EXISTS `alerta_ips` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `alerta_ips` AS (select `a`.`cmts` AS `cmts`,`a`.`scopesgroup` AS `scopesgroup`,`a`.`total` AS `total`,`a`.`used` AS `used`,`a`.`available` AS `available`,`a`.`porc` AS `porc`,if(((`a`.`available` < 150) and (`a`.`porc` > 90)),'red',if(((`a`.`available` >= 151) and (`a`.`available` <= 250) and (`a`.`porc` > 40)),'orange',if((`a`.`porc` < 40),'green','green'))) AS `color` from `catalogos`.`redesip_n_view` `a` order by if(((`a`.`available` < 150) and (`a`.`porc` > 90)),'red',if(((`a`.`available` >= 151) and (`a`.`available` <= 250) and (`a`.`porc` > 40)),'orange',if((`a`.`porc` < 40),'green','green'))) desc,`a`.`porc` desc) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

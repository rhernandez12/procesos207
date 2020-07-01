/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - reportes
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`reportes` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `reportes`;

/*Table structure for table `OffLinexTrobas` */

DROP TABLE IF EXISTS `OffLinexTrobas`;

CREATE TABLE `OffLinexTrobas` (
  `nodotroba` varchar(6) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `llaveHora` varchar(26) DEFAULT NULL,
  `ncmOffline` bigint(21) NOT NULL,
  KEY `llaveHora` (`llaveHora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `accessgroup` */

DROP TABLE IF EXISTS `accessgroup`;

CREATE TABLE `accessgroup` (
  `MACAddress` varchar(15) DEFAULT NULL,
  `ipaddress` varchar(15) DEFAULT NULL,
  `type_` varchar(5) DEFAULT NULL,
  `accessgroup` varchar(50) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `FECHA_HORA` varchar(20) DEFAULT NULL,
  `ultimo` varchar(1) DEFAULT NULL,
  KEY `NewIndex1` (`MACAddress`),
  KEY `NewIndex2` (`accessgroup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `agrupaciones` */

DROP TABLE IF EXISTS `agrupaciones`;

CREATE TABLE `agrupaciones` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(5) DEFAULT NULL,
  `dato` int(11) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`),
  KEY `tipo` (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `aver_liq_catv_pais` */

DROP TABLE IF EXISTS `aver_liq_catv_pais`;

CREATE TABLE `aver_liq_catv_pais` (
  `codigoreq` int(11) DEFAULT NULL,
  `codigodelgruporeq` varchar(2) DEFAULT NULL,
  `codigotiporeq` varchar(2) DEFAULT NULL,
  `codigomotivoreq` varchar(4) DEFAULT NULL,
  `codigodelcliente` int(11) DEFAULT NULL,
  `apellidopaterno` varchar(35) DEFAULT NULL,
  `apellidomaterno` varchar(35) DEFAULT NULL,
  `nombres` varchar(30) DEFAULT NULL,
  `indicador_vip` varchar(10) DEFAULT NULL,
  `categoria_cliente` varchar(50) DEFAULT NULL,
  `codigodelservicio` int(11) DEFAULT NULL,
  `clasedeservicio` varchar(4) DEFAULT NULL,
  `categoriadeservicio` varchar(2) DEFAULT NULL,
  `oficinaadministrativa` varchar(3) DEFAULT NULL,
  `departamento` varchar(3) DEFAULT NULL,
  `provincia` varchar(3) DEFAULT NULL,
  `distrito` varchar(3) DEFAULT NULL,
  `tipodevia` varchar(2) DEFAULT NULL,
  `nombredelavia` varchar(30) DEFAULT NULL,
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
  `fecharegistro` varchar(20) DEFAULT NULL,
  `usuariogeneracion` varchar(12) DEFAULT NULL,
  `ot` int(11) DEFAULT NULL,
  `fechaasignacion` varchar(20) DEFAULT NULL,
  `estadoot` varchar(1) DEFAULT NULL,
  `contrata` int(11) DEFAULT NULL,
  `tecnico` varchar(12) DEFAULT NULL,
  `fecha_liquidacion` datetime DEFAULT NULL,
  `codigodeliquidacion` varchar(12) DEFAULT NULL,
  `detalle_liquidacion` varchar(20) DEFAULT NULL,
  UNIQUE KEY `idx_codigoreq` (`codigoreq`),
  KEY `NewIndex1` (`codigodelcliente`),
  KEY `NewIndex2` (`fecharegistro`),
  KEY `NewIndex3` (`clasedeservicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `aver_pen_catv` */

DROP TABLE IF EXISTS `aver_pen_catv`;

CREATE TABLE `aver_pen_catv` (
  `codofcadm` varchar(3) DEFAULT NULL,
  `codreq` int(11) DEFAULT NULL,
  `codedo` varchar(1) DEFAULT NULL,
  `indvip` varchar(1) DEFAULT NULL,
  `indcorp` varchar(1) DEFAULT NULL,
  `codcli` int(11) DEFAULT NULL,
  `nomcli` varchar(100) DEFAULT NULL,
  `tipcli` int(11) DEFAULT NULL,
  `codsrv` int(11) DEFAULT NULL,
  `codclasrv` varchar(2) DEFAULT NULL,
  `desclasrv` varchar(100) DEFAULT NULL,
  `codcnd` varchar(2) DEFAULT NULL,
  `descnd` varchar(30) DEFAULT NULL,
  `nombre_de_la_playa` int(11) DEFAULT NULL,
  `alt_km` int(11) DEFAULT NULL,
  `codctgsrv` varchar(2) DEFAULT NULL,
  `desctgsrv` varchar(20) DEFAULT NULL,
  `codjef` varchar(2) DEFAULT NULL,
  `codctr` int(11) DEFAULT NULL,
  `desnomctr` varchar(20) DEFAULT NULL,
  `codcmts` varchar(20) DEFAULT NULL,
  `descmts` varchar(20) DEFAULT NULL,
  `codnod` varchar(20) DEFAULT NULL,
  `nroplano` varchar(20) DEFAULT NULL,
  `codtrtrn` varchar(20) DEFAULT NULL,
  `codlex` varchar(2) DEFAULT NULL,
  `codtap` varchar(2) DEFAULT NULL,
  `codbor` varchar(2) DEFAULT NULL,
  `desdtt` varchar(20) DEFAULT NULL,
  `destipvia` varchar(2) DEFAULT NULL,
  `desnomvia` varchar(40) DEFAULT NULL,
  `numvia` int(11) DEFAULT NULL,
  `despis` varchar(30) DEFAULT NULL,
  `desint` varchar(30) DEFAULT NULL,
  `desmzn` varchar(30) DEFAULT NULL,
  `deslot` varchar(30) DEFAULT NULL,
  `destipurb` varchar(2) DEFAULT NULL,
  `desurb` varchar(100) DEFAULT NULL,
  `telefono_1` varchar(20) DEFAULT NULL,
  `telefono_2` varchar(20) DEFAULT NULL,
  `fecregsrv` varchar(20) DEFAULT NULL,
  `fec_regist` varchar(20) DEFAULT NULL,
  `fec_est_sop` varchar(20) DEFAULT NULL,
  `fec_prog` varchar(20) DEFAULT NULL,
  `fec_desp` varchar(20) DEFAULT NULL,
  `nrotranf` int(11) DEFAULT NULL,
  `codmotv` varchar(5) DEFAULT NULL,
  `desmotv` varchar(30) DEFAULT NULL,
  `tipreqini` varchar(2) DEFAULT NULL,
  `destipreqini` varchar(100) DEFAULT NULL,
  `tipreqfin` varchar(2) DEFAULT NULL,
  `destipreqfin` varchar(100) DEFAULT NULL,
  `desobsordtrab` varchar(100) DEFAULT NULL,
  `demora_atcl` int(11) DEFAULT NULL,
  `demora_act_tot` int(11) DEFAULT NULL,
  `demora_act_est` int(11) DEFAULT NULL,
  `fechorpro` varchar(20) DEFAULT NULL,
  `filtro` varchar(50) DEFAULT NULL,
  `descripcion_filtro` varchar(50) DEFAULT NULL,
  `area` varchar(30) DEFAULT NULL,
  `indactuacion` varchar(1) DEFAULT NULL,
  `indagenda` varchar(1) DEFAULT NULL,
  `idcita` varchar(50) DEFAULT NULL,
  `fecinicita` varchar(50) DEFAULT NULL,
  `fecfincita` varchar(50) DEFAULT NULL,
  `feccumplimiento` varchar(50) DEFAULT NULL,
  `codedocita` varchar(50) DEFAULT NULL,
  `codedogaudi` varchar(50) DEFAULT NULL,
  `codedoact` varchar(50) DEFAULT NULL,
  `fecenviogaudi` varchar(50) DEFAULT NULL,
  `fecrecepgaudi` varchar(50) DEFAULT NULL,
  `coderror1` varchar(50) DEFAULT NULL,
  `deserrorenvio` varchar(50) DEFAULT NULL,
  `fecactedogaudi` varchar(50) DEFAULT NULL,
  `fechorliq` varchar(50) DEFAULT NULL,
  `fechorinf` varchar(50) DEFAULT NULL,
  `fecinfcierre` varchar(50) DEFAULT NULL,
  `fecfincierre` varchar(50) DEFAULT NULL,
  `coderror2` varchar(50) DEFAULT NULL,
  `deserrorcierre` varchar(50) DEFAULT NULL,
  `fecliberror` varchar(50) DEFAULT NULL,
  `codusrliberror` varchar(50) DEFAULT NULL,
  `codtipoact` varchar(50) DEFAULT NULL,
  `ind_autorizacion` varchar(2) DEFAULT NULL,
  `usu_int_autoriza` varchar(50) DEFAULT NULL,
  `nombre_usuario` varchar(50) DEFAULT NULL,
  `fec_int_autoriza` varchar(50) DEFAULT NULL,
  `observacion` varchar(50) DEFAULT NULL,
  `tec_int_autoriz` varchar(50) DEFAULT NULL,
  `nombre_tecnico` varchar(50) DEFAULT NULL,
  `cod_autorizacion` varchar(50) DEFAULT NULL,
  `ind_conformidad` varchar(50) DEFAULT NULL,
  `motivo` varchar(50) DEFAULT NULL,
  `descrip_motivo` varchar(50) DEFAULT NULL,
  `contacto_cliente` varchar(1) DEFAULT NULL,
  `nombre_contacto` varchar(50) DEFAULT NULL,
  `parentesco` varchar(50) DEFAULT NULL,
  `doc_entidad` varchar(50) DEFAULT NULL,
  `tel_cont_cct` varchar(50) DEFAULT NULL,
  `tel_cont_ref_cct` varchar(50) DEFAULT NULL,
  `tel_cont_cc` varchar(50) DEFAULT NULL,
  `tel_cont_ref_cc` varchar(50) DEFAULT NULL,
  `ind_encuesta` varchar(2) DEFAULT NULL,
  `contacto_enc` varchar(50) DEFAULT NULL,
  `parentesco_enc` varchar(50) DEFAULT NULL,
  `telf_enc` varchar(50) DEFAULT NULL,
  `incidencia` varchar(1) DEFAULT NULL,
  `ticket_incidencia` varchar(50) DEFAULT NULL,
  `segincidencia` varchar(11) DEFAULT NULL,
  `tipo_servicio` varchar(50) DEFAULT NULL,
  `tipo_deco_ins` varchar(50) DEFAULT NULL,
  `paquete` varchar(50) DEFAULT NULL,
  `numaverei` varchar(50) DEFAULT NULL,
  `numavedif` varchar(50) DEFAULT NULL,
  `indmaxad` varchar(50) DEFAULT NULL,
  `numdialim` varchar(50) DEFAULT NULL,
  `destipprb` varchar(50) DEFAULT NULL,
  `desobsprb` varchar(50) DEFAULT NULL,
  `ind_duo` varchar(50) DEFAULT NULL,
  `tiplinea` varchar(6) DEFAULT NULL,
  `numtelefvoip` varchar(50) DEFAULT NULL,
  `codpromo` varchar(6) DEFAULT NULL,
  `despromo` varchar(50) DEFAULT NULL,
  `nodoid` varchar(50) DEFAULT NULL,
  KEY `codreq` (`codreq`),
  KEY `codnod` (`codnod`),
  KEY `nroplano` (`nroplano`),
  KEY `codlex` (`codlex`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `aver_pen_catv_agrupado` */

DROP TABLE IF EXISTS `aver_pen_catv_agrupado`;

CREATE TABLE `aver_pen_catv_agrupado` (
  `codofcadm` varchar(3) DEFAULT NULL,
  `codreq` int(11) DEFAULT NULL,
  `codedo` varchar(1) DEFAULT NULL,
  `indvip` varchar(1) DEFAULT NULL,
  `indcorp` varchar(1) DEFAULT NULL,
  `codcli` int(11) DEFAULT NULL,
  `nomcli` varchar(100) DEFAULT NULL,
  `tipcli` int(11) DEFAULT NULL,
  `codsrv` int(11) DEFAULT NULL,
  `codclasrv` varchar(2) DEFAULT NULL,
  `desclasrv` varchar(100) DEFAULT NULL,
  `codcnd` varchar(2) DEFAULT NULL,
  `descnd` varchar(30) DEFAULT NULL,
  `nombre_de_la_playa` int(11) DEFAULT NULL,
  `alt_km` int(11) DEFAULT NULL,
  `codctgsrv` varchar(2) DEFAULT NULL,
  `desctgsrv` varchar(20) DEFAULT NULL,
  `codjef` varchar(2) DEFAULT NULL,
  `codctr` int(11) DEFAULT NULL,
  `desnomctr` varchar(20) DEFAULT NULL,
  `codcmts` varchar(20) DEFAULT NULL,
  `descmts` varchar(20) DEFAULT NULL,
  `codnod` varchar(20) DEFAULT NULL,
  `nroplano` varchar(20) DEFAULT NULL,
  `codtrtrn` varchar(20) DEFAULT NULL,
  `codlex` varchar(2) DEFAULT NULL,
  `codtap` varchar(2) DEFAULT NULL,
  `codbor` varchar(2) DEFAULT NULL,
  `desdtt` varchar(20) DEFAULT NULL,
  `destipvia` varchar(2) DEFAULT NULL,
  `desnomvia` varchar(40) DEFAULT NULL,
  `numvia` int(11) DEFAULT NULL,
  `despis` varchar(30) DEFAULT NULL,
  `desint` varchar(30) DEFAULT NULL,
  `desmzn` varchar(30) DEFAULT NULL,
  `deslot` varchar(30) DEFAULT NULL,
  `destipurb` varchar(2) DEFAULT NULL,
  `desurb` varchar(100) DEFAULT NULL,
  `telefono_1` varchar(20) DEFAULT NULL,
  `telefono_2` varchar(20) DEFAULT NULL,
  `fecregsrv` varchar(20) DEFAULT NULL,
  `fec_regist` varchar(20) DEFAULT NULL,
  `fec_est_sop` varchar(20) DEFAULT NULL,
  `fec_prog` varchar(20) DEFAULT NULL,
  `fec_desp` varchar(20) DEFAULT NULL,
  `nrotranf` int(11) DEFAULT NULL,
  `codmotv` varchar(5) DEFAULT NULL,
  `desmotv` varchar(30) DEFAULT NULL,
  `tipreqini` varchar(2) DEFAULT NULL,
  `destipreqini` varchar(100) DEFAULT NULL,
  `tipreqfin` varchar(2) DEFAULT NULL,
  `destipreqfin` varchar(100) DEFAULT NULL,
  `desobsordtrab` varchar(100) DEFAULT NULL,
  `demora_atcl` int(11) DEFAULT NULL,
  `demora_act_tot` int(11) DEFAULT NULL,
  `demora_act_est` int(11) DEFAULT NULL,
  `fechorpro` varchar(20) DEFAULT NULL,
  `filtro` varchar(50) DEFAULT NULL,
  `descripcion_filtro` varchar(50) DEFAULT NULL,
  `area` varchar(30) DEFAULT NULL,
  `indactuacion` varchar(1) DEFAULT NULL,
  `indagenda` varchar(1) DEFAULT NULL,
  `idcita` varchar(50) DEFAULT NULL,
  `fecinicita` varchar(50) DEFAULT NULL,
  `fecfincita` varchar(50) DEFAULT NULL,
  `feccumplimiento` varchar(50) DEFAULT NULL,
  `codedocita` varchar(50) DEFAULT NULL,
  `codedogaudi` varchar(50) DEFAULT NULL,
  `codedoact` varchar(50) DEFAULT NULL,
  `fecenviogaudi` varchar(50) DEFAULT NULL,
  `fecrecepgaudi` varchar(50) DEFAULT NULL,
  `coderror1` varchar(50) DEFAULT NULL,
  `deserrorenvio` varchar(50) DEFAULT NULL,
  `fecactedogaudi` varchar(50) DEFAULT NULL,
  `fechorliq` varchar(50) DEFAULT NULL,
  `fechorinf` varchar(50) DEFAULT NULL,
  `fecinfcierre` varchar(50) DEFAULT NULL,
  `fecfincierre` varchar(50) DEFAULT NULL,
  `coderror2` varchar(50) DEFAULT NULL,
  `deserrorcierre` varchar(50) DEFAULT NULL,
  `fecliberror` varchar(50) DEFAULT NULL,
  `codusrliberror` varchar(50) DEFAULT NULL,
  `codtipoact` varchar(50) DEFAULT NULL,
  `ind_autorizacion` varchar(2) DEFAULT NULL,
  `usu_int_autoriza` varchar(50) DEFAULT NULL,
  `nombre_usuario` varchar(50) DEFAULT NULL,
  `fec_int_autoriza` varchar(50) DEFAULT NULL,
  `observacion` varchar(50) DEFAULT NULL,
  `tec_int_autoriz` varchar(50) DEFAULT NULL,
  `nombre_tecnico` varchar(50) DEFAULT NULL,
  `cod_autorizacion` varchar(50) DEFAULT NULL,
  `ind_conformidad` varchar(50) DEFAULT NULL,
  `motivo` varchar(50) DEFAULT NULL,
  `descrip_motivo` varchar(50) DEFAULT NULL,
  `contacto_cliente` varchar(1) DEFAULT NULL,
  `nombre_contacto` varchar(50) DEFAULT NULL,
  `parentesco` varchar(50) DEFAULT NULL,
  `doc_entidad` varchar(50) DEFAULT NULL,
  `tel_cont_cct` varchar(50) DEFAULT NULL,
  `tel_cont_ref_cct` varchar(50) DEFAULT NULL,
  `tel_cont_cc` varchar(50) DEFAULT NULL,
  `tel_cont_ref_cc` varchar(50) DEFAULT NULL,
  `ind_encuesta` varchar(2) DEFAULT NULL,
  `contacto_enc` varchar(50) DEFAULT NULL,
  `parentesco_enc` varchar(50) DEFAULT NULL,
  `telf_enc` varchar(50) DEFAULT NULL,
  `incidencia` varchar(1) DEFAULT NULL,
  `ticket_incidencia` varchar(50) DEFAULT NULL,
  `segincidencia` varchar(11) DEFAULT NULL,
  `tipo_servicio` varchar(50) DEFAULT NULL,
  `tipo_deco_ins` varchar(50) DEFAULT NULL,
  `paquete` varchar(50) DEFAULT NULL,
  `numaverei` varchar(50) DEFAULT NULL,
  `numavedif` varchar(50) DEFAULT NULL,
  `indmaxad` varchar(50) DEFAULT NULL,
  `numdialim` varchar(50) DEFAULT NULL,
  `destipprb` varchar(50) DEFAULT NULL,
  `desobsprb` varchar(50) DEFAULT NULL,
  `ind_duo` varchar(50) DEFAULT NULL,
  `tiplinea` varchar(6) DEFAULT NULL,
  `numtelefvoip` varchar(50) DEFAULT NULL,
  `codpromo` varchar(6) DEFAULT NULL,
  `despromo` varchar(50) DEFAULT NULL,
  `nodoid` varchar(50) DEFAULT NULL,
  `tipo` varchar(120) DEFAULT NULL,
  `m1` varchar(10) DEFAULT NULL,
  `rutinas` varchar(10) DEFAULT NULL,
  KEY `codreq` (`codreq`),
  KEY `codnod` (`codnod`),
  KEY `nroplano` (`nroplano`),
  KEY `codlex` (`codlex`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `balanceo_portadoras` */

DROP TABLE IF EXISTS `balanceo_portadoras`;

CREATE TABLE `balanceo_portadoras` (
  `cmts` varchar(20) DEFAULT NULL,
  `puertoDown` varchar(3) DEFAULT NULL,
  `fecha` varchar(20) DEFAULT NULL,
  `portadoras` bigint(21) NOT NULL,
  `totalModems` decimal(32,0) DEFAULT NULL,
  `maxModem` bigint(11) unsigned DEFAULT NULL,
  `minModem` bigint(11) unsigned DEFAULT NULL,
  `>400M` decimal(32,0) DEFAULT NULL,
  `>200M` decimal(32,0) DEFAULT NULL,
  `>100M` decimal(32,0) DEFAULT NULL,
  `>50M` decimal(32,0) DEFAULT NULL,
  `>20M` decimal(32,0) DEFAULT NULL,
  `>10M` decimal(32,0) DEFAULT NULL,
  `>5M` decimal(32,0) DEFAULT NULL,
  `<5M` decimal(32,0) DEFAULT NULL,
  `0M` decimal(32,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `bdcortes` */

DROP TABLE IF EXISTS `bdcortes`;

CREATE TABLE `bdcortes` (
  `codcli` int(20) DEFAULT NULL,
  `fecregreq` varchar(20) DEFAULT NULL,
  `mes` varchar(20) DEFAULT NULL,
  `dni` varchar(25) DEFAULT NULL,
  UNIQUE KEY `llave` (`codcli`,`fecregreq`,`mes`),
  KEY `codcli` (`codcli`),
  KEY `fecreg` (`fecregreq`),
  KEY `mes` (`mes`),
  KEY `dni` (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `bdcortes_doc` */

DROP TABLE IF EXISTS `bdcortes_doc`;

CREATE TABLE `bdcortes_doc` (
  `codcli` int(20) DEFAULT NULL,
  `fecregreq` varchar(20) DEFAULT NULL,
  `mes` varchar(21) DEFAULT NULL,
  `doc` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `bdllamadas` */

DROP TABLE IF EXISTS `bdllamadas`;

CREATE TABLE `bdllamadas` (
  `cod_cable` int(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `tema_codigo` int(11) DEFAULT NULL,
  `tema_descripcion` varchar(80) DEFAULT NULL,
  `dni_cliente` varchar(25) DEFAULT NULL,
  `mes` varchar(20) DEFAULT NULL,
  KEY `codcli` (`cod_cable`),
  KEY `fechahora` (`fecha_hora`),
  KEY `codtema` (`tema_codigo`),
  KEY `dni` (`dni_cliente`),
  KEY `mes` (`mes`),
  KEY `llave` (`cod_cable`,`fecha_hora`,`mes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `cant_portadoras_casa` */

DROP TABLE IF EXISTS `cant_portadoras_casa`;

CREATE TABLE `cant_portadoras_casa` (
  `cmts` varchar(20) DEFAULT NULL,
  `down` varchar(4) DEFAULT NULL,
  `can` bigint(21) NOT NULL,
  `clientes` decimal(32,0) DEFAULT NULL,
  UNIQUE KEY `cmts` (`cmts`,`down`),
  KEY `down` (`down`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `clientes_en_puerto_saturado` */

DROP TABLE IF EXISTS `clientes_en_puerto_saturado`;

CREATE TABLE `clientes_en_puerto_saturado` (
  `IDCLIENTECRM` double DEFAULT NULL,
  `nameclient` varchar(100) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `amplificador` varchar(11) DEFAULT NULL,
  `tap` varchar(11) DEFAULT NULL,
  `telf1` varchar(10) DEFAULT NULL,
  `telf2` varchar(10) DEFAULT NULL,
  `movil1` varchar(20) DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `SCOPESGROUP` varchar(15) DEFAULT NULL,
  `RxPwrdBmv` varchar(20) DEFAULT NULL,
  `USPwr` varchar(20) DEFAULT NULL,
  `USMER_SNR` varchar(20) DEFAULT NULL,
  `DSPwr` varchar(20) DEFAULT NULL,
  `DSMER_SNR` varchar(20) DEFAULT NULL,
  `STATUS` varchar(78) DEFAULT NULL,
  `INTERFACE` varchar(20) DEFAULT NULL,
  `CMTS` varchar(20) DEFAULT NULL,
  `down` varchar(10) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `tipopuerto` varchar(20) DEFAULT NULL,
  UNIQUE KEY `MACADDRESS` (`MACADDRESS`),
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `consulta_phy_casa` */

DROP TABLE IF EXISTS `consulta_phy_casa`;

CREATE TABLE `consulta_phy_casa` (
  `MACAddress` varchar(30) DEFAULT NULL,
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
  `Modex` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `consulta_phy_cisco` */

DROP TABLE IF EXISTS `consulta_phy_cisco`;

CREATE TABLE `consulta_phy_cisco` (
  `MACAddress` varchar(30) DEFAULT NULL,
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
  `MACAddress` varchar(30) DEFAULT NULL,
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
  `MACAddress` varchar(30) DEFAULT NULL,
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

/*Table structure for table `consultas` */

DROP TABLE IF EXISTS `consultas`;

CREATE TABLE `consultas` (
  `tipobusqueda` varchar(30) DEFAULT NULL,
  `dato` varchar(20) DEFAULT NULL,
  `fechahora` varchar(10) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `idclientecrm` double DEFAULT NULL,
  `codreq` int(16) DEFAULT NULL,
  `mensaje` varchar(100) DEFAULT NULL,
  `consultas` bigint(21) NOT NULL DEFAULT '0',
  `usuario` varchar(20) DEFAULT NULL,
  KEY `NewIndex1` (`tipobusqueda`),
  KEY `NewIndex2` (`dato`),
  KEY `NewIndex3` (`fechahora`),
  KEY `NewIndex4` (`nodo`),
  KEY `NewIndex5` (`troba`),
  KEY `NewIndex6` (`idclientecrm`),
  KEY `NewIndex7` (`codreq`),
  KEY `NewIndex8` (`mensaje`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `criticos` */

DROP TABLE IF EXISTS `criticos`;

CREATE TABLE `criticos` (
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
  `entidad` varchar(100) DEFAULT NULL,
  UNIQUE KEY `MACADDRESS` (`MACADDRESS`),
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `cuarentena_base` */

DROP TABLE IF EXISTS `cuarentena_base`;

CREATE TABLE `cuarentena_base` (
  `codigo_del_cliente` int(11) DEFAULT NULL,
  `fecha_liquidacion` varchar(20) DEFAULT NULL,
  `contrata` int(11) DEFAULT NULL,
  `tecnico` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `mac2` varchar(20) DEFAULT NULL,
  `codigo_del_grupo_req` varchar(2) DEFAULT NULL,
  `codigo_tipo_req` varchar(2) DEFAULT NULL,
  UNIQUE KEY `codigo_del_cliente_2` (`codigo_del_cliente`,`fecha_liquidacion`,`mac2`),
  KEY `codigo_del_cliente` (`codigo_del_cliente`),
  KEY `fecha_liquidacion` (`fecha_liquidacion`),
  KEY `contrata` (`contrata`),
  KEY `tecnico` (`tecnico`),
  KEY `mac2` (`mac2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `cuarentena_detalle` */

DROP TABLE IF EXISTS `cuarentena_detalle`;

CREATE TABLE `cuarentena_detalle` (
  `codigo_del_cliente` int(11) DEFAULT NULL,
  `fecha_liquidacion` varchar(20) DEFAULT NULL,
  `contrata` int(11) DEFAULT NULL,
  `tecnico` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `mac2` varchar(20) DEFAULT NULL,
  `codigo_del_grupo_req` varchar(2) DEFAULT NULL,
  `codigo_tipo_req` varchar(2) DEFAULT NULL,
  `STATUS` varchar(28) DEFAULT NULL,
  `fecha_valida` varchar(20) NOT NULL,
  `USPwr` varchar(6) DEFAULT NULL,
  `USMER_SNR` varchar(6) DEFAULT NULL,
  `DSPwr` varchar(6) DEFAULT NULL,
  `DSMER_SNR` varchar(6) DEFAULT NULL,
  `macstate` varchar(10) DEFAULT NULL,
  UNIQUE KEY `codigo_del_cliente` (`codigo_del_cliente`,`fecha_liquidacion`,`mac2`,`fecha_valida`),
  KEY `codigo_del_cliente_2` (`codigo_del_cliente`),
  KEY `fecha_liquidacion` (`fecha_liquidacion`),
  KEY `contrata` (`contrata`),
  KEY `tecnico` (`tecnico`),
  KEY `mac2` (`mac2`),
  KEY `fecha_valida` (`fecha_valida`),
  KEY `STATUS` (`STATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `depura_juntar` */

DROP TABLE IF EXISTS `depura_juntar`;

CREATE TABLE `depura_juntar` (
  `IDCLIENTECRM` double DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idproducto_iw` double DEFAULT NULL,
  `idventa` double DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `mac3` varchar(20) DEFAULT NULL,
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `FECHAALTA` varchar(20) DEFAULT NULL,
  `FECHAACTIVACION` varchar(20) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  `SCOPESGROUP` varchar(15) DEFAULT NULL,
  `codsrv_cms` int(11) DEFAULT NULL,
  `codoficadm_cms` char(3) CHARACTER SET utf8 DEFAULT NULL,
  `condclite` char(3) CHARACTER SET utf8 DEFAULT NULL,
  `desccondcl` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `condides` char(3) CHARACTER SET utf8 DEFAULT NULL,
  `descconsrv` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `edocompxsr` char(1) CHARACTER SET utf8 DEFAULT NULL,
  `codelemsrv` char(3) CHARACTER SET utf8 DEFAULT NULL,
  `apepater` char(20) CHARACTER SET utf8 DEFAULT NULL,
  `apemat` char(20) CHARACTER SET utf8 DEFAULT NULL,
  `nombclt` char(20) CHARACTER SET utf8 DEFAULT NULL,
  `idproductocms` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `elim_codser` */

DROP TABLE IF EXISTS `elim_codser`;

CREATE TABLE `elim_codser` (
  `codserv` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `eventos_x_troba` */

DROP TABLE IF EXISTS `eventos_x_troba`;

CREATE TABLE `eventos_x_troba` (
  `nodotroba` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `fecha` varchar(16) CHARACTER SET latin1 DEFAULT NULL,
  `llave` varchar(23) CHARACTER SET latin1 DEFAULT NULL,
  `clientes` bigint(21) NOT NULL DEFAULT '0',
  `xOffline` decimal(32,0) DEFAULT NULL,
  `xInit` decimal(32,0) DEFAULT NULL,
  `xUSmer_snr` decimal(32,0) DEFAULT NULL,
  `xDSmer_snr` decimal(32,0) DEFAULT NULL,
  `xUSpwr` decimal(32,0) DEFAULT NULL,
  `xDSpwr` decimal(32,0) DEFAULT NULL,
  `_Offline` decimal(7,3) NOT NULL DEFAULT '0.000',
  `_init` decimal(7,3) NOT NULL DEFAULT '0.000',
  `_USmer_snr` decimal(7,3) NOT NULL DEFAULT '0.000',
  `_DSmer_snr` decimal(7,3) NOT NULL DEFAULT '0.000',
  `_USpwr` decimal(7,3) NOT NULL DEFAULT '0.000',
  `_DSpwr` decimal(7,3) NOT NULL DEFAULT '0.000',
  `microzona` varchar(15) NOT NULL DEFAULT '',
  `trobaOrigen` varchar(10) NOT NULL DEFAULT '',
  KEY `llave` (`llave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `fftt_error` */

DROP TABLE IF EXISTS `fftt_error`;

CREATE TABLE `fftt_error` (
  `cliente` int(11) DEFAULT NULL,
  `servicio` int(11) DEFAULT NULL,
  `nodo_hfc` varchar(2) DEFAULT NULL,
  `troba_hfc` varchar(4) DEFAULT NULL,
  `nodo_cms` varchar(2) DEFAULT NULL,
  `troba_cms` varchar(4) DEFAULT NULL,
  `amplificador` varchar(2) DEFAULT NULL,
  `tap` varchar(2) DEFAULT NULL,
  `borne` varchar(2) DEFAULT NULL,
  `dpto` varchar(3) DEFAULT NULL,
  `prov` varchar(3) DEFAULT NULL,
  `sector` varchar(5) DEFAULT NULL,
  UNIQUE KEY `cliente` (`cliente`,`servicio`),
  KEY `cliente_2` (`cliente`),
  KEY `servicio` (`servicio`),
  KEY `nodo_hfc` (`nodo_hfc`),
  KEY `troba_hfc` (`troba_hfc`),
  KEY `nodo_cms` (`nodo_cms`),
  KEY `troba_cms` (`troba_cms`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

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

/*Table structure for table `indicencias_trobas` */

DROP TABLE IF EXISTS `indicencias_trobas`;

CREATE TABLE `indicencias_trobas` (
  `nodotroba` varchar(6) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `llave` varchar(16) DEFAULT NULL,
  `nro_incidencias` int(4) NOT NULL,
  `tipo_incidencia` varchar(14) CHARACTER SET utf8 NOT NULL,
  `microzona` varchar(10) CHARACTER SET utf8 NOT NULL,
  KEY `llave` (`llave`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `interface_puertos_snr` */

DROP TABLE IF EXISTS `interface_puertos_snr`;

CREATE TABLE `interface_puertos_snr` (
  `cmts` varchar(20) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `trobas` varchar(35) NOT NULL DEFAULT '',
  `clientes` bigint(21) NOT NULL DEFAULT '0',
  `prom_usnr` double(24,1) DEFAULT NULL,
  `prom_dsnr` double(24,1) DEFAULT NULL,
  `prom_uspwr` double(24,1) DEFAULT NULL,
  `prom_dspwr` double(24,1) DEFAULT NULL,
  `min_uspwr` double(20,1) DEFAULT NULL,
  `max_uspwr` double(20,1) DEFAULT NULL,
  `min_dspwr` double(20,1) DEFAULT NULL,
  `max_dspwr` double(20,1) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `fecha` varchar(20) NOT NULL DEFAULT '',
  `microzona` varchar(15) NOT NULL DEFAULT '',
  `zona` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `interface_puertos_snr_premium` */

DROP TABLE IF EXISTS `interface_puertos_snr_premium`;

CREATE TABLE `interface_puertos_snr_premium` (
  `cmts` varchar(20) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `trobas` varchar(35) NOT NULL DEFAULT '',
  `clientes` bigint(21) NOT NULL DEFAULT '0',
  `prom_usnr` double(24,1) DEFAULT NULL,
  `prom_dsnr` double(24,1) DEFAULT NULL,
  `prom_uspwr` double(24,1) DEFAULT NULL,
  `prom_dspwr` double(24,1) DEFAULT NULL,
  `min_uspwr` double(20,1) DEFAULT NULL,
  `max_uspwr` double(20,1) DEFAULT NULL,
  `min_dspwr` double(20,1) DEFAULT NULL,
  `max_dspwr` double(20,1) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `fecha` varchar(20) NOT NULL DEFAULT '',
  `microzona` varchar(15) NOT NULL DEFAULT '',
  `zona` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `liqxhoramas24horas` */

DROP TABLE IF EXISTS `liqxhoramas24horas`;

CREATE TABLE `liqxhoramas24horas` (
  `jefatura` varchar(14) DEFAULT NULL,
  `00` decimal(23,0) DEFAULT NULL,
  `01` decimal(23,0) DEFAULT NULL,
  `02` decimal(23,0) DEFAULT NULL,
  `03` decimal(23,0) DEFAULT NULL,
  `04` decimal(23,0) DEFAULT NULL,
  `05` decimal(23,0) DEFAULT NULL,
  `06` decimal(23,0) DEFAULT NULL,
  `07` decimal(23,0) DEFAULT NULL,
  `08` decimal(23,0) DEFAULT NULL,
  `09` decimal(23,0) DEFAULT NULL,
  `10` decimal(23,0) DEFAULT NULL,
  `11` decimal(23,0) DEFAULT NULL,
  `12` decimal(23,0) DEFAULT NULL,
  `13` decimal(23,0) DEFAULT NULL,
  `14` decimal(23,0) DEFAULT NULL,
  `15` decimal(23,0) DEFAULT NULL,
  `16` decimal(23,0) DEFAULT NULL,
  `17` decimal(23,0) DEFAULT NULL,
  `18` decimal(23,0) DEFAULT NULL,
  `19` decimal(23,0) DEFAULT NULL,
  `20` decimal(23,0) DEFAULT NULL,
  `21` decimal(23,0) DEFAULT NULL,
  `22` decimal(23,0) DEFAULT NULL,
  `23` decimal(23,0) DEFAULT NULL,
  `cant` bigint(21) NOT NULL,
  KEY `jefatura` (`jefatura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `liqxhoramenos24horas` */

DROP TABLE IF EXISTS `liqxhoramenos24horas`;

CREATE TABLE `liqxhoramenos24horas` (
  `jefatura` varchar(14) DEFAULT NULL,
  `00` decimal(23,0) DEFAULT NULL,
  `01` decimal(23,0) DEFAULT NULL,
  `02` decimal(23,0) DEFAULT NULL,
  `03` decimal(23,0) DEFAULT NULL,
  `04` decimal(23,0) DEFAULT NULL,
  `05` decimal(23,0) DEFAULT NULL,
  `06` decimal(23,0) DEFAULT NULL,
  `07` decimal(23,0) DEFAULT NULL,
  `08` decimal(23,0) DEFAULT NULL,
  `09` decimal(23,0) DEFAULT NULL,
  `10` decimal(23,0) DEFAULT NULL,
  `11` decimal(23,0) DEFAULT NULL,
  `12` decimal(23,0) DEFAULT NULL,
  `13` decimal(23,0) DEFAULT NULL,
  `14` decimal(23,0) DEFAULT NULL,
  `15` decimal(23,0) DEFAULT NULL,
  `16` decimal(23,0) DEFAULT NULL,
  `17` decimal(23,0) DEFAULT NULL,
  `18` decimal(23,0) DEFAULT NULL,
  `19` decimal(23,0) DEFAULT NULL,
  `20` decimal(23,0) DEFAULT NULL,
  `21` decimal(23,0) DEFAULT NULL,
  `22` decimal(23,0) DEFAULT NULL,
  `23` decimal(23,0) DEFAULT NULL,
  `cant` bigint(21) NOT NULL,
  KEY `jefatura` (`jefatura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `llamadasxcorte` */

DROP TABLE IF EXISTS `llamadasxcorte`;

CREATE TABLE `llamadasxcorte` (
  `cod_cable` int(20) DEFAULT NULL,
  `fecha_llamada` varchar(30) DEFAULT NULL,
  `mes_llamada` varchar(20) DEFAULT NULL,
  `tema_codigo` int(11) DEFAULT NULL,
  `tema_descripcion` varchar(80) DEFAULT NULL,
  `dni_cliente` varchar(25) DEFAULT NULL,
  `fecha_corte` varchar(20) DEFAULT NULL,
  `mes_corte` varchar(20) DEFAULT NULL,
  `llamada` varchar(10) DEFAULT NULL,
  `corte` varchar(10) DEFAULT NULL,
  `tiempo` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

/*Table structure for table `multi_consultas_agrupada` */

DROP TABLE IF EXISTS `multi_consultas_agrupada`;

CREATE TABLE `multi_consultas_agrupada` (
  `item` int(18) NOT NULL AUTO_INCREMENT,
  `tipobusqueda` varchar(20) DEFAULT NULL,
  `dato` int(20) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  `mensaje` varchar(100) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(4) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`item`),
  UNIQUE KEY `NewIndex3` (`dato`),
  KEY `NewIndex1` (`tipobusqueda`),
  KEY `NewIndex2` (`fechahora`),
  KEY `NewIndex4` (`dato`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `amplificador` (`amplificador`)
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
  KEY `TROBA` (`TROBA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `nclientes_dat` */

DROP TABLE IF EXISTS `nclientes_dat`;

CREATE TABLE `nclientes_dat` (
  `IDCLIENTECRM` double DEFAULT NULL,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `amplificador` varchar(11) DEFAULT NULL,
  `tap` varchar(11) DEFAULT NULL,
  `telf1` varchar(10) DEFAULT NULL,
  `telf2` varchar(10) DEFAULT NULL,
  `movil1` varchar(10) DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `codserv` int(11) DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `idventa` double DEFAULT NULL,
  `clave` double NOT NULL,
  `naked` varchar(20) DEFAULT NULL,
  `numcoo_x` varchar(30) DEFAULT NULL,
  `numcoo_y` varchar(30) DEFAULT NULL,
  `nameclient` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`clave`),
  UNIQUE KEY `NewIndex3` (`MACADDRESS`),
  KEY `NewIndex1` (`IDCLIENTECRM`),
  KEY `idxnodo` (`NODO`),
  KEY `idxtroba` (`TROBA`),
  KEY `idxtelef1` (`telf1`),
  KEY `idxtelef2` (`telf2`),
  KEY `movil1` (`movil1`),
  KEY `idproducto` (`idproducto`),
  KEY `idventa` (`idventa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

/*Table structure for table `ncrit` */

DROP TABLE IF EXISTS `ncrit`;

CREATE TABLE `ncrit` (
  `codcli` int(11) NOT NULL,
  `tipcli` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`codcli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `param_hfc` */

DROP TABLE IF EXISTS `param_hfc`;

CREATE TABLE `param_hfc` (
  `idclientecrm` double DEFAULT NULL,
  `codserv` int(11) DEFAULT NULL,
  `nameclient` varchar(100) DEFAULT NULL,
  `nodotroba` varchar(6) DEFAULT NULL,
  `scopesgroup` varchar(15) DEFAULT NULL,
  `mac2` varchar(20) DEFAULT NULL,
  `USPwr` varchar(20) DEFAULT NULL,
  `DSPwr` varchar(20) DEFAULT NULL,
  `USMER_SNR` varchar(20) DEFAULT NULL,
  `DSMER_SNR` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `MACState` varchar(20) DEFAULT NULL,
  `malos_parametros` int(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `param_hfc_final` */

DROP TABLE IF EXISTS `param_hfc_final`;

CREATE TABLE `param_hfc_final` (
  `idclientecrm` double DEFAULT NULL,
  `codserv` int(11) DEFAULT NULL,
  `nameclient` varchar(100) DEFAULT NULL,
  `nodotroba` varchar(6) DEFAULT NULL,
  `scopesgroup` varchar(15) DEFAULT NULL,
  `mac2` varchar(20) DEFAULT NULL,
  `USPwr` varchar(20) DEFAULT NULL,
  `DSPwr` varchar(20) DEFAULT NULL,
  `USMER_SNR` varchar(20) DEFAULT NULL,
  `DSMER_SNR` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `MACState` varchar(20) DEFAULT NULL,
  `malos_parametros` int(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `particiones` */

DROP TABLE IF EXISTS `particiones`;

CREATE TABLE `particiones` (
  `nodotroba` varchar(15) CHARACTER SET utf8 NOT NULL,
  `trobaOrigen` varchar(15) CHARACTER SET utf8 NOT NULL,
  KEY `nodotroba` (`nodotroba`),
  KEY `trobaOrigen` (`trobaOrigen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `particiones_tmp` */

DROP TABLE IF EXISTS `particiones_tmp`;

CREATE TABLE `particiones_tmp` (
  `cmts` varchar(50) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `can` bigint(21) NOT NULL DEFAULT '0',
  `clientes` decimal(42,0) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `nodotroba` varchar(15) CHARACTER SET utf8 NOT NULL,
  `trobaOrigen` varchar(15) CHARACTER SET utf8 NOT NULL,
  `c1` varchar(25) CHARACTER SET utf8 NOT NULL,
  `c2` varchar(25) CHARACTER SET utf8 NOT NULL,
  `c3` varchar(25) CHARACTER SET utf8 NOT NULL,
  `llave` varchar(35) CHARACTER SET utf8 NOT NULL,
  `origen` int(3) NOT NULL,
  KEY `llave` (`llave`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

/*Table structure for table `planta_revisada` */

DROP TABLE IF EXISTS `planta_revisada`;

CREATE TABLE `planta_revisada` (
  `IDCLIENTECRM` double DEFAULT NULL,
  `nameclient` varchar(100) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `amplificador` varchar(11) DEFAULT NULL,
  `tap` varchar(11) DEFAULT NULL,
  `telf1` varchar(10) DEFAULT NULL,
  `telf2` varchar(10) DEFAULT NULL,
  `movil1` varchar(20) DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `SCOPESGROUP` varchar(15) DEFAULT NULL,
  `RxPwrdBmv` varchar(20) DEFAULT NULL,
  `USPwr` varchar(20) DEFAULT NULL,
  `USMER_SNR` varchar(20) DEFAULT NULL,
  `DSPwr` varchar(20) DEFAULT NULL,
  `DSMER_SNR` varchar(20) DEFAULT NULL,
  `STATUS` varchar(78) DEFAULT NULL,
  `INTERFACE` varchar(20) DEFAULT NULL,
  `CMTS` varchar(20) DEFAULT NULL,
  `down` varchar(10) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  UNIQUE KEY `MACADDRESS` (`MACADDRESS`),
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`),
  KEY `NODO` (`NODO`),
  KEY `TROBA` (`TROBA`),
  KEY `amplificador` (`amplificador`),
  KEY `down` (`down`),
  KEY `INTERFACE` (`INTERFACE`),
  KEY `CMTS` (`CMTS`),
  KEY `fecha_upload` (`fecha_upload`),
  KEY `status` (`STATUS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `planta_revisada_milthon` */

DROP TABLE IF EXISTS `planta_revisada_milthon`;

CREATE TABLE `planta_revisada_milthon` (
  `IDCLIENTECRM` varchar(20) NOT NULL DEFAULT '',
  `nameclient` varchar(60) NOT NULL DEFAULT '',
  `direccion` varchar(80) NOT NULL DEFAULT '',
  `NODO` varchar(10) NOT NULL DEFAULT '',
  `TROBA` varchar(10) NOT NULL DEFAULT '',
  `amplificador` varchar(10) NOT NULL DEFAULT '',
  `tap` varchar(10) NOT NULL DEFAULT '',
  `telf1` varchar(20) NOT NULL DEFAULT '',
  `telf2` varchar(20) NOT NULL DEFAULT '',
  `movil1` varchar(20) NOT NULL DEFAULT '',
  `MACADDRESS` varchar(40) NOT NULL DEFAULT '',
  `SERVICEPACKAGE` varchar(40) NOT NULL DEFAULT '',
  `SCOPESGROUP` varchar(20) NOT NULL DEFAULT '',
  `RxPwrdBmv` decimal(10,2) NOT NULL DEFAULT '0.00',
  `USPwr` decimal(10,2) NOT NULL DEFAULT '0.00',
  `USMER_SNR` decimal(10,2) NOT NULL DEFAULT '0.00',
  `DSPwr` decimal(10,2) NOT NULL DEFAULT '0.00',
  `DSMER_SNR` decimal(10,2) NOT NULL DEFAULT '0.00',
  `STATUS` varchar(50) NOT NULL DEFAULT '',
  `INTERFACE` varchar(20) NOT NULL DEFAULT '',
  `CMTS` varchar(40) NOT NULL DEFAULT '',
  `down` varchar(20) NOT NULL DEFAULT '',
  `fecha_upload` varchar(20) NOT NULL DEFAULT '',
  `grupo_status` varchar(20) NOT NULL DEFAULT '',
  `numcoo_x` varchar(25) NOT NULL DEFAULT '',
  `numcoo_y` varchar(25) NOT NULL DEFAULT '',
  `error_DSMER_SNR` varchar(5) NOT NULL DEFAULT '',
  `error_USMER_SNR` varchar(5) NOT NULL DEFAULT '',
  `error_DSPwr` varchar(5) NOT NULL DEFAULT '',
  `error_USPwr` varchar(5) NOT NULL DEFAULT '',
  `nodotroba` varchar(10) NOT NULL DEFAULT '',
  `microzona` varchar(10) NOT NULL DEFAULT '',
  `analitycs` varchar(5) NOT NULL DEFAULT '',
  `fecha_alta` varchar(15) NOT NULL DEFAULT '',
  `mes_alta` varchar(10) NOT NULL DEFAULT '',
  `trobaOrigen` varchar(10) NOT NULL DEFAULT '',
  `clientes` decimal(10,0) NOT NULL DEFAULT '0',
  `xerror_USMER_SNR` decimal(10,0) NOT NULL DEFAULT '0',
  `xerror_DSMER_SNR` decimal(10,0) NOT NULL DEFAULT '0',
  `xerror_USPwr` decimal(10,0) NOT NULL DEFAULT '0',
  `xerror_DSPwr` decimal(10,0) NOT NULL DEFAULT '0',
  KEY `idxnodotroba` (`nodotroba`),
  KEY `idxidclientecrm` (`IDCLIENTECRM`),
  KEY `idx3` (`STATUS`),
  KEY `idx4` (`grupo_status`),
  KEY `idx5` (`analitycs`),
  KEY `idx6` (`fecha_alta`),
  KEY `idx7` (`DSMER_SNR`),
  KEY `idx8` (`USMER_SNR`),
  KEY `idx9` (`USPwr`),
  KEY `idx10` (`DSPwr`),
  KEY `idx11` (`trobaOrigen`),
  KEY `idx12` (`microzona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `planta_revisada_resum` */

DROP TABLE IF EXISTS `planta_revisada_resum`;

CREATE TABLE `planta_revisada_resum` (
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `amplificador` varchar(11) DEFAULT NULL,
  `cant` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `portadoras` */

DROP TABLE IF EXISTS `portadoras`;

CREATE TABLE `portadoras` (
  `cmts` varchar(50) DEFAULT NULL,
  `down` varchar(6) DEFAULT NULL,
  `puertoDw` varchar(57) DEFAULT NULL,
  `dw_portadoras` bigint(21) NOT NULL DEFAULT '0',
  `dw_clientes` decimal(42,0) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `segmento` varchar(20) CHARACTER SET utf8 NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `up_clientes` int(4) NOT NULL,
  `puertoUp` varchar(71) DEFAULT NULL,
  `trobaOrigen` varchar(15) CHARACTER SET utf8 NOT NULL,
  `c1` varchar(25) CHARACTER SET utf8 NOT NULL,
  `c2` varchar(25) CHARACTER SET utf8 NOT NULL,
  `c3` varchar(25) CHARACTER SET utf8 NOT NULL,
  `numTrobas` int(3) NOT NULL,
  `puertoDwSegmento` varchar(35) CHARACTER SET utf8 NOT NULL,
  `numSegUp` int(3) NOT NULL,
  `dw_mbps` int(5) NOT NULL,
  `up_mbps` int(5) NOT NULL,
  `dw_xcliente` decimal(5,2) NOT NULL,
  `up_xcliente` decimal(5,2) NOT NULL,
  `UpCritico` varchar(5) CHARACTER SET utf8 NOT NULL,
  `microzona` varchar(10) CHARACTER SET utf8 NOT NULL,
  `zona` varchar(10) CHARACTER SET utf8 NOT NULL,
  KEY `interface` (`interface`),
  KEY `puertoUp` (`puertoUp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `portadorasxpuerto` */

DROP TABLE IF EXISTS `portadorasxpuerto`;

CREATE TABLE `portadorasxpuerto` (
  `cmts` varchar(50) DEFAULT NULL,
  `down` varchar(20) DEFAULT NULL,
  `can` int(11) DEFAULT NULL,
  `clientes` int(11) DEFAULT NULL,
  `fecha_upload` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`down`),
  KEY `cmts` (`cmts`),
  KEY `down` (`down`),
  KEY `fecha_upload` (`fecha_upload`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `portadorasxpuerto_puertos_casa` */

DROP TABLE IF EXISTS `portadorasxpuerto_puertos_casa`;

CREATE TABLE `portadorasxpuerto_puertos_casa` (
  `cmts` varchar(20) DEFAULT NULL,
  `dsif` varchar(6) DEFAULT NULL,
  `usif` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`dsif`,`usif`),
  KEY `cmts` (`cmts`),
  KEY `dsif` (`dsif`),
  KEY `usif` (`usif`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `portadorasxpuerto_tr` */

DROP TABLE IF EXISTS `portadorasxpuerto_tr`;

CREATE TABLE `portadorasxpuerto_tr` (
  `cmts` varchar(50) DEFAULT NULL,
  `down` varchar(6) DEFAULT NULL,
  `can` bigint(21) NOT NULL DEFAULT '0',
  `clientes` decimal(42,0) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `uso` varchar(10) DEFAULT NULL,
  KEY `cmts` (`cmts`),
  KEY `down` (`down`),
  KEY `interface` (`interface`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `portadorasxpuerto_uso` */

DROP TABLE IF EXISTS `portadorasxpuerto_uso`;

CREATE TABLE `portadorasxpuerto_uso` (
  `cmts` varchar(50) DEFAULT NULL,
  `down` varchar(6) DEFAULT NULL,
  `can` bigint(21) NOT NULL DEFAULT '0',
  `clientes` decimal(42,0) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `uso` varchar(10) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`down`,`fecha_upload`),
  KEY `cmts` (`cmts`),
  KEY `down` (`down`),
  KEY `interface` (`cmts`,`down`,`fecha_upload`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `INFO_BINARY` blob,
  `TID` bigint(4) NOT NULL DEFAULT '0',
  `FECHA_HORA` varchar(20) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`,`FECHA_HORA`(10)),
  KEY `ID_2` (`ID`),
  KEY `FECHA_HORA` (`FECHA_HORA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `procesos_kill` */

DROP TABLE IF EXISTS `procesos_kill`;

CREATE TABLE `procesos_kill` (
  `id` int(11) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `host` varchar(20) DEFAULT NULL,
  `db` varchar(20) DEFAULT NULL,
  `command` varchar(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `info` longtext,
  `fechakill` varchar(20) DEFAULT NULL
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

/*Table structure for table `prov_liq_catv_pais_componentes` */

DROP TABLE IF EXISTS `prov_liq_catv_pais_componentes`;

CREATE TABLE `prov_liq_catv_pais_componentes` (
  `codigo_req` int(11) DEFAULT NULL,
  `Ind_Origen_Req` varchar(1) DEFAULT NULL,
  `indice_de_componente` varchar(30) DEFAULT NULL,
  `codigo_de_componente` int(11) DEFAULT NULL,
  `codigo_elemento_servicio` varchar(3) DEFAULT NULL,
  `codigo_material` varchar(20) DEFAULT NULL,
  `numero_de_serie` varchar(32) DEFAULT NULL,
  `estado_componente` varchar(5) DEFAULT NULL,
  `fecha_carga` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `NewIndex3` (`codigo_req`,`indice_de_componente`),
  KEY `NewIndex1` (`codigo_req`),
  KEY `NewIndex2` (`codigo_req`,`codigo_de_componente`),
  KEY `numero_de_serie` (`numero_de_serie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

/*Table structure for table `prueba_fecha` */

DROP TABLE IF EXISTS `prueba_fecha`;

CREATE TABLE `prueba_fecha` (
  `cliente` varchar(30) DEFAULT '',
  `servicio` varchar(30) DEFAULT '',
  `nodotroba` char(10) DEFAULT '',
  `cmts` varchar(20) DEFAULT '',
  `Latitud` varchar(20) DEFAULT NULL,
  `Longitud` varchar(20) DEFAULT NULL,
  `fecregserv` varchar(10) DEFAULT NULL,
  `marca_nodo` varchar(1) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `nodo` varchar(4) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `nrodoc` varchar(20) DEFAULT NULL,
  KEY `cliente` (`cliente`),
  KEY `servicio` (`servicio`),
  KEY `telefono` (`telefono`),
  KEY `nrodoc` (`nrodoc`),
  KEY `Latitud` (`Latitud`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `puertos_up_saturados` */

DROP TABLE IF EXISTS `puertos_up_saturados`;

CREATE TABLE `puertos_up_saturados` (
  `cmts` varchar(20) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `tipopuerto` varchar(20) DEFAULT NULL,
  KEY `cmts` (`cmts`),
  KEY `interface` (`interface`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `query` */

DROP TABLE IF EXISTS `query`;

CREATE TABLE `query` (
  `detalle` varchar(200) DEFAULT NULL,
  `query` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `querys` */

DROP TABLE IF EXISTS `querys`;

CREATE TABLE `querys` (
  `detalle` varchar(200) DEFAULT NULL,
  `query` longtext
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

/*Table structure for table `saturaciones` */

DROP TABLE IF EXISTS `saturaciones`;

CREATE TABLE `saturaciones` (
  `cmts` varchar(50) DEFAULT NULL,
  `down` varchar(6) DEFAULT NULL,
  `can` bigint(21) NOT NULL DEFAULT '0',
  `clientes` decimal(42,0) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `fecini` varchar(20) DEFAULT NULL,
  `saturado` varchar(20) DEFAULT NULL,
  `rangosat` varchar(20) DEFAULT NULL,
  `fecfin` varchar(20) DEFAULT NULL,
  KEY `cmts` (`cmts`),
  KEY `down` (`down`),
  KEY `interface` (`interface`),
  KEY `rangosat` (`rangosat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_c` */

DROP TABLE IF EXISTS `scm_c`;

CREATE TABLE `scm_c` (
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
  KEY `NewIndex4` (`cmts`),
  KEY `NewIndex1` (`MACAddress`),
  KEY `NewIndex3` (`MACState`),
  KEY `NewIndex5` (`Interface`),
  KEY `NewIndex6` (`FECHA_HORA`),
  KEY `NewIndex7` (`interface6`)
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

/*Table structure for table `seguimientoCM` */

DROP TABLE IF EXISTS `seguimientoCM`;

CREATE TABLE `seguimientoCM` (
  `idclientecrm` double DEFAULT NULL,
  `macaddress` varchar(25) DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `servicepackage` varchar(50) DEFAULT NULL,
  `macstate` varchar(20) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  KEY `idclientecrm` (`idclientecrm`),
  KEY `macaddress` (`macaddress`),
  KEY `fecha_hora` (`fecha_hora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `show_docsis_downstream_sw` */

DROP TABLE IF EXISTS `show_docsis_downstream_sw`;

CREATE TABLE `show_docsis_downstream_sw` (
  `sw` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `sinnodo` */

DROP TABLE IF EXISTS `sinnodo`;

CREATE TABLE `sinnodo` (
  `codserv` int(11) NOT NULL,
  `idclientecrm` int(11) DEFAULT NULL,
  PRIMARY KEY (`codserv`),
  KEY `idclientecrm` (`idclientecrm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `status_sanisidro` */

DROP TABLE IF EXISTS `status_sanisidro`;

CREATE TABLE `status_sanisidro` (
  `idclientecrm` double DEFAULT NULL,
  `macaddress` varchar(20) DEFAULT NULL,
  `NAMECLIENT` varchar(100) DEFAULT NULL,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `SERVICEPACKAGECRMID` varchar(50) DEFAULT NULL,
  `amplificador` varchar(11) DEFAULT NULL,
  `tap` varchar(11) DEFAULT NULL,
  `telf1` varchar(10) DEFAULT NULL,
  `telf2` varchar(10) DEFAULT NULL,
  `movil1` varchar(20) DEFAULT NULL,
  `macstate` varchar(20) DEFAULT NULL,
  `DSMER_SNR` varchar(20) DEFAULT NULL,
  `DSPwr` varchar(20) DEFAULT NULL,
  `USMER_SNR` varchar(20) DEFAULT NULL,
  `USPwr` varchar(20) DEFAULT NULL,
  `RxPwrdBmv` varchar(20) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `codserv` varchar(20) DEFAULT NULL,
  `estado_servicio` varchar(78) DEFAULT NULL,
  `fecha_reporte` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tb_DiagnosticoError` */

DROP TABLE IF EXISTS `tb_DiagnosticoError`;

CREATE TABLE `tb_DiagnosticoError` (
  `idclientecrm` varchar(20) NOT NULL DEFAULT '',
  `direccion` varchar(80) NOT NULL DEFAULT '',
  `nodotroba` varchar(10) NOT NULL DEFAULT '',
  `trobaOrigen` varchar(10) NOT NULL DEFAULT '',
  `amplificador` varchar(10) NOT NULL DEFAULT '',
  `tap` varchar(10) NOT NULL DEFAULT '',
  `servicepackage` varchar(40) NOT NULL DEFAULT '',
  `RxPwrdBmv` decimal(10,2) NOT NULL DEFAULT '0.00',
  `USPwr` decimal(10,2) NOT NULL DEFAULT '0.00',
  `USMER_SNR` decimal(10,2) NOT NULL DEFAULT '0.00',
  `DSPwr` decimal(10,2) NOT NULL DEFAULT '0.00',
  `DSMER_SNR` decimal(10,2) NOT NULL DEFAULT '0.00',
  `STATUS` varchar(50) NOT NULL DEFAULT '',
  `interface` varchar(20) NOT NULL DEFAULT '',
  `cmts` varchar(40) NOT NULL DEFAULT '',
  `fecha_upload` varchar(20) NOT NULL DEFAULT '',
  `grupo_status` varchar(20) NOT NULL DEFAULT '',
  `numcoo_x` varchar(25) NOT NULL DEFAULT '',
  `numcoo_y` varchar(25) NOT NULL DEFAULT '',
  `error_DSMER_SNR` varchar(5) NOT NULL DEFAULT '',
  `error_USMER_SNR` varchar(5) NOT NULL DEFAULT '',
  `error_DSPwr` varchar(5) NOT NULL DEFAULT '',
  `error_USPwr` varchar(5) NOT NULL DEFAULT '',
  `fecha` date DEFAULT NULL,
  `microzona` varchar(10) NOT NULL DEFAULT '',
  `analitycs` varchar(5) NOT NULL DEFAULT '',
  `proactivo` varchar(30) CHARACTER SET utf8 NOT NULL,
  `llave` varchar(45) CHARACTER SET utf8 NOT NULL,
  `clientes` int(3) NOT NULL,
  `edificio` varchar(5) CHARACTER SET utf8 NOT NULL,
  KEY `llave` (`llave`),
  KEY `nodotroba` (`nodotroba`),
  KEY `numcoo_x` (`numcoo_x`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tb_edificios` */

DROP TABLE IF EXISTS `tb_edificios`;

CREATE TABLE `tb_edificios` (
  `llave` varchar(26) NOT NULL,
  `clientes` bigint(21) NOT NULL,
  KEY `llave` (`llave`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tb_temp` */

DROP TABLE IF EXISTS `tb_temp`;

CREATE TABLE `tb_temp` (
  `IDCLIENTECRM` double DEFAULT NULL,
  `nameclient` varchar(100) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `NODO` varchar(2) DEFAULT NULL,
  `TROBA` varchar(4) DEFAULT NULL,
  `amplificador` varchar(11) DEFAULT NULL,
  `tap` varchar(11) DEFAULT NULL,
  `telf1` varchar(10) DEFAULT NULL,
  `telf2` varchar(10) DEFAULT NULL,
  `movil1` varchar(20) DEFAULT NULL,
  `MACADDRESS` varchar(20) DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) DEFAULT NULL,
  `SCOPESGROUP` varchar(15) DEFAULT NULL,
  `RxPwrdBmv` varchar(20) DEFAULT NULL,
  `USPwr` varchar(20) DEFAULT NULL,
  `USMER_SNR` varchar(20) DEFAULT NULL,
  `DSPwr` varchar(20) DEFAULT NULL,
  `DSMER_SNR` varchar(20) DEFAULT NULL,
  `STATUS` varchar(78) DEFAULT NULL,
  `INTERFACE` varchar(20) DEFAULT NULL,
  `CMTS` varchar(20) DEFAULT NULL,
  `down` varchar(10) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tmp_alarmas_interface` */

DROP TABLE IF EXISTS `tmp_alarmas_interface`;

CREATE TABLE `tmp_alarmas_interface` (
  `cmts` varchar(20) DEFAULT NULL,
  `interface` varchar(20) DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `muestra` bigint(21) NOT NULL,
  `prom_usnr` double(18,1) DEFAULT NULL,
  `prom_dsnr` double(18,1) DEFAULT NULL,
  `prom_uspwr` double(18,1) DEFAULT NULL,
  `prom_dspwr` double(18,1) DEFAULT NULL,
  `min_uspwr` double(18,1) DEFAULT NULL,
  `max_uspwr` double(18,1) DEFAULT NULL,
  `min_dspwr` double(18,1) DEFAULT NULL,
  `max_dspwr` double(18,1) DEFAULT NULL,
  `clientes` varchar(10) NOT NULL,
  `llave` varchar(35) NOT NULL,
  `description` varchar(35) NOT NULL,
  `nodotroba` varchar(15) NOT NULL,
  `trobaOrigen` varchar(15) NOT NULL,
  `microzona` varchar(15) NOT NULL,
  `zona` varchar(15) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  KEY `llave` (`llave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `tmpbalanceo` */

DROP TABLE IF EXISTS `tmpbalanceo`;

CREATE TABLE `tmpbalanceo` (
  `cmts` varchar(20) DEFAULT NULL,
  `downstream` varchar(8) DEFAULT NULL,
  `puertoDown` varchar(3) DEFAULT NULL,
  `portadora` double DEFAULT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  `fecha` varchar(20) DEFAULT NULL,
  `utilization` int(10) DEFAULT NULL,
  `modemsonline` int(10) DEFAULT NULL,
  `>400M` int(2) NOT NULL,
  `>200M` int(2) NOT NULL,
  `>100M` int(2) NOT NULL,
  `>50M` int(2) NOT NULL,
  `>20M` int(2) NOT NULL,
  `>10M` int(2) NOT NULL,
  `>5M` int(2) NOT NULL,
  `<5M` int(2) NOT NULL,
  `0M` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `trobas_sanisidro` */

DROP TABLE IF EXISTS `trobas_sanisidro`;

CREATE TABLE `trobas_sanisidro` (
  `clave` varchar(6) NOT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`clave`),
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `uso_portadoras` */

DROP TABLE IF EXISTS `uso_portadoras`;

CREATE TABLE `uso_portadoras` (
  `cmts` varchar(20) DEFAULT NULL,
  `down` varchar(6) DEFAULT NULL,
  `uso` double(18,1) DEFAULT NULL,
  `cant` bigint(21) NOT NULL,
  `fecha_hora` varchar(20) DEFAULT NULL,
  UNIQUE KEY `cmts_2` (`cmts`,`down`,`fecha_hora`),
  KEY `cmts` (`cmts`),
  KEY `down` (`down`),
  KEY `fecha_hora` (`fecha_hora`),
  KEY `uso` (`uso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `xborrar` */

DROP TABLE IF EXISTS `xborrar`;

CREATE TABLE `xborrar` (
  `fecha_hora_min` varchar(16) DEFAULT NULL,
  `excluye` varchar(10) CHARACTER SET utf8 NOT NULL,
  `sum(ncmOffline)` decimal(42,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `xclientes` */

DROP TABLE IF EXISTS `xclientes`;

CREATE TABLE `xclientes` (
  `idclientecrm` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `macaddress` varchar(40) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `microzona` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  KEY `macaddress` (`macaddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `xsnr_up` */

DROP TABLE IF EXISTS `xsnr_up`;

CREATE TABLE `xsnr_up` (
  `IDCLIENTECRM` double DEFAULT NULL,
  `nameclient` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `direccion` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `NODO` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `TROBA` varchar(4) CHARACTER SET latin1 DEFAULT NULL,
  `amplificador` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `tap` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `telf1` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `telf2` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `movil1` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `MACADDRESS` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `SERVICEPACKAGE` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `SCOPESGROUP` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `RxPwrdBmv` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `USPwr` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `USMER_SNR` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `DSPwr` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `DSMER_SNR` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `STATUS` varchar(78) CHARACTER SET latin1 DEFAULT NULL,
  `INTERFACE` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `CMTS` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `down` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `grupoError` varchar(10) DEFAULT NULL,
  KEY `fecha_upload` (`fecha_upload`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1250;

/*Table structure for table `xy_clientes_analytics` */

DROP TABLE IF EXISTS `xy_clientes_analytics`;

CREATE TABLE `xy_clientes_analytics` (
  `servicio` varchar(15) NOT NULL,
  `coddpt` varchar(10) NOT NULL,
  `desdpt` varchar(30) NOT NULL,
  `codpvc` varchar(10) NOT NULL,
  `despvc` varchar(30) NOT NULL,
  `coddtt` varchar(10) NOT NULL,
  `desdtt` varchar(50) NOT NULL,
  `nodo` varchar(10) NOT NULL,
  `plano` varchar(10) NOT NULL,
  `NORMALIZADO` varchar(10) NOT NULL,
  `x_` varchar(30) NOT NULL,
  `y_` varchar(30) NOT NULL,
  `METODO_GEOCOD` varchar(35) NOT NULL,
  `GEOCODIFICADO` varchar(10) NOT NULL,
  `codcli` varchar(20) NOT NULL,
  `fecha_alta` varchar(20) NOT NULL,
  `mes_alta` varchar(10) NOT NULL,
  KEY `servicio` (`servicio`),
  KEY `codcli` (`codcli`),
  KEY `idxgeocodificado` (`GEOCODIFICADO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `xy_clientes_catv` */

DROP TABLE IF EXISTS `xy_clientes_catv`;

CREATE TABLE `xy_clientes_catv` (
  `codofic` varchar(3) DEFAULT NULL,
  `codcli` varchar(15) DEFAULT NULL,
  `codserv` varchar(15) DEFAULT NULL,
  `claserv` varchar(4) DEFAULT NULL,
  `tipreq` varchar(3) DEFAULT NULL,
  `codigo_req` varbinary(30) DEFAULT NULL,
  `codmot` varchar(5) DEFAULT NULL,
  `desmot` varchar(40) DEFAULT NULL,
  `codpeti` varchar(15) DEFAULT NULL,
  `usureg` varchar(9) DEFAULT NULL,
  `nomcli` varchar(60) DEFAULT NULL,
  `destipvia` varchar(5) DEFAULT NULL,
  `nomvia` varchar(30) DEFAULT NULL,
  `numvia` varchar(5) DEFAULT NULL,
  `despis` varchar(3) DEFAULT NULL,
  `desint` varchar(3) DEFAULT NULL,
  `desmzn` varchar(3) DEFAULT NULL,
  `deslot` varchar(3) DEFAULT NULL,
  `tipurb` varchar(5) DEFAULT NULL,
  `nomurb` varchar(30) DEFAULT NULL,
  `desset` varchar(4) DEFAULT NULL,
  `desetp` varchar(4) DEFAULT NULL,
  `desref` varchar(100) DEFAULT NULL,
  `tipmovimiento` varchar(2) DEFAULT NULL,
  `destipmov` varchar(20) DEFAULT NULL,
  `tipasignacion` varchar(2) DEFAULT NULL,
  `destipasigna` varchar(20) DEFAULT NULL,
  `fecllegada` varchar(25) DEFAULT NULL,
  `fecfftt` varchar(25) DEFAULT NULL,
  `codmotact` varchar(4) DEFAULT NULL,
  `desmotact` varchar(20) DEFAULT NULL,
  `codtec` varchar(8) DEFAULT NULL,
  `codasigna` varchar(8) DEFAULT NULL,
  `codedo` varchar(2) DEFAULT NULL,
  `codsit` varchar(3) DEFAULT NULL,
  `codest` varchar(15) DEFAULT NULL,
  `codarest` varchar(3) DEFAULT NULL,
  `codusr` varchar(8) DEFAULT NULL,
  `coddpt` varchar(3) DEFAULT NULL,
  `desdpt` varchar(20) DEFAULT NULL,
  `codpvc` varchar(3) DEFAULT NULL,
  `despvc` varchar(20) DEFAULT NULL,
  `coddtt` varchar(3) DEFAULT NULL,
  `desdtt` varchar(20) DEFAULT NULL,
  `codnod` varchar(3) DEFAULT NULL,
  `desnod` varbinary(29) DEFAULT NULL,
  `codtrtrn` varchar(5) DEFAULT NULL,
  `codlex` varchar(3) DEFAULT NULL,
  `codtap` varchar(3) DEFAULT NULL,
  `codbor` varchar(3) DEFAULT NULL,
  `codsplit` varchar(3) DEFAULT NULL,
  `fecliq` varchar(25) DEFAULT NULL,
  `codset` varchar(5) DEFAULT NULL,
  `codidccoo` varchar(3) DEFAULT NULL,
  `desidccoo` varchar(20) DEFAULT NULL,
  `numcoo_x` varchar(20) DEFAULT NULL,
  `numcoo_y` varchar(20) DEFAULT NULL,
  `fecregreq` varchar(25) DEFAULT NULL,
  `idreg` varchar(8) DEFAULT NULL,
  `desobs` varchar(60) DEFAULT NULL,
  `fecha_insert` datetime DEFAULT NULL,
  UNIQUE KEY `idx_codigo_req` (`codigo_req`),
  KEY `codcli` (`codcli`),
  KEY `codpeti` (`codpeti`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/* Procedure structure for procedure `agrupaciones` */

/*!50003 DROP PROCEDURE IF EXISTS  `agrupaciones` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `agrupaciones`()
BEGIN
#Primera validación Masivas CMS
#------------------------------
TRUNCATE TABLE reportes.agrupaciones;
INSERT INTO reportes.agrupaciones
SELECT codnod AS nodo,nroplano AS troba,'' AS aplificador,codreqmnt,CONCAT('Agrupar Masiva Nodo:',codnod,' Troba: ',nroplano,' Masiva:',codreqmnt) AS tipo
 FROM dbpext.masivas_temp;
#Para agrupar por amplificador por señal.
#-----------------------------
INSERT INTO reportes.agrupaciones
SELECT nodo,troba,amplificador,COUNT(*) AS dato,CONCAT('Agrupar x Señal Nodo:',nodo,' Troba: ',troba,' Amplif: ',amplificador) AS tipo FROM 
(SELECT b.idclientecrm,REPLACE(b.nameclient,',',' ') AS nameclient,b.nodo,b.troba,b.amplificador,b.tap,b.telf1,b.telf2,b.macaddress,b.servicepackage,REPLACE(b.direccion,',',' ') AS direccion,a.DSMER_SNR AS Snr_DN,a.DSPwr AS Pwr_DN,a.USMER_SNR AS Snr_UP,a.USPwr AS Pwr_UP,a.cmts,a.interface
 FROM ccm1.scm_phy_t a INNER JOIN ccm1.nclientes b
ON a.MACAddress=b.mac2
WHERE 
(a.USMER_SNR < (SELECT vmin FROM catalogos.parametros_rf_c WHERE parametro='snr_avg' )
OR (a.USPwr <  (SELECT vmin FROM catalogos.parametros_rf_c WHERE parametro='powerup_prom' ) AND 
	a.USPwr >  (SELECT vmax FROM catalogos.parametros_rf_c WHERE parametro='powerup_prom') )
OR a.DSMER_SNR <(SELECT vmin FROM catalogos.parametros_rf_c WHERE parametro='snr_down')
OR (a.DSPwr < (SELECT vmin FROM catalogos.parametros_rf_c WHERE parametro='powerds_prom' ) AND
	a.DSPwr >  (SELECT vmax FROM catalogos.parametros_rf_c WHERE parametro='powerds_prom')))
AND a.DSMER_SNR NOT IN ('-----','-') AND a.USPwr NOT IN ('-----','-') AND a.USMER_SNR NOT IN ('-----')
) mal
WHERE nodo IS NOT NULL
GROUP BY 1,2,3
HAVING COUNT(*)>4;
#Para agrupar por amplificador por caidas.
#-------------------------------------
INSERT INTO reportes.agrupaciones
SELECT nodo,troba,amplificador,offline  AS dato , CONCAT('Agrupar x Caidas Nodo:',nodo,' Troba: ',troba,' Amplif: ',amplificador) AS tipo
FROM alertas.offxamplif_f
WHERE estado='CAIDO';
#Para agrupar por amplificador por llamadas
#------------------------------------
INSERT INTO reportes.agrupaciones
SELECT mc.nodo,mc.troba,mc.amplificador,COUNT(*) AS dato,
CONCAT('Agrupar x llamadas Nodo:',mc.nodo,' Troba:',mc.troba,' Amplificador :',mc.amplificador) AS tipo FROM 
(SELECT * FROM ccm1_temporal.multi_consultas 
WHERE DATEDIFF(NOW(),fechahora)=0 AND nodo<>''
GROUP BY dato) mc 
WHERE DATEDIFF(NOW(),mc.fechahora)=0 AND mc.nodo<>''
GROUP BY 1,2,3
HAVING COUNT(*)>3;
##Cruce con averias
#---------------------------------------
TRUNCATE TABLE reportes.aver_pen_catv_agrupado;
INSERT IGNORE reportes.aver_pen_catv_agrupado
SELECT a.*,b.tipo,
IF((a.codclasrv IN (26,27,33) OR a.ind_duo='DUO' OR a.tiplinea='VOIP'),'M1','CATV' ) AS m1 ,
IF(a.tipreqfin IN ('II','IO','IR','RI','RO','RR'),'R','A') AS rutina
FROM reportes.aver_pen_catv a
INNER JOIN reportes.agrupaciones b
ON a.codnod=b.nodo AND a.nroplano=b.troba AND a.codlex=b.amplificador AND b.amplificador <>'';
INSERT IGNORE reportes.aver_pen_catv_agrupado
SELECT a.*,b.tipo,
IF((a.codclasrv IN (26,27,33) OR a.ind_duo='DUO' OR a.tiplinea='VOIP'),'M1','CATV' ) AS m1 ,
IF(a.tipreqfin IN ('II','IO','IR','RI','RO','RR'),'R','A') AS rutina 
FROM reportes.aver_pen_catv a
INNER JOIN reportes.agrupaciones b
ON a.codnod=b.nodo AND a.nroplano=b.troba AND b.amplificador ='';
INSERT IGNORE reportes.aver_pen_catv_agrupado
SELECT a.*,'Individual' AS tipo,
IF((a.codclasrv IN (26,27,33) OR a.ind_duo='DUO' OR a.tiplinea='VOIP'),'M1','CATV' ) AS m1 ,
IF(a.tipreqfin IN ('II','IO','IR','RI','RO','RR'),'R','A') AS rutina FROM reportes.aver_pen_catv a
LEFT JOIN reportes.agrupaciones b
ON a.codnod=b.nodo AND a.nroplano=b.troba
WHERE  b.nodo IS NULL;
INSERT IGNORE aver_pen_catv_agrupado
SELECT a.*,'Individual' AS tipo,
IF((a.codclasrv IN (26,27,33) OR a.ind_duo='DUO' OR a.tiplinea='VOIP'),'M1','CATV' ) AS m1 ,
IF(a.tipreqfin IN ('II','IO','IR','RI','RO','RR'),'R','A') AS rutina FROM aver_pen_catv a LEFT JOIN aver_pen_catv_agrupado b
ON a.codreq=b.codreq
WHERE b.codreq IS NULL;
###Resultado para Agrupar
##------------------------
SELECT 'codofcadm','codreq','codcli','nomcli','codsrv','codclasrv','desclasrv','codctr','desnomctr','codnod','nroplano','codlex','codtap','codbor','desdtt','destipvia','desnomvia','numvia','despis','desint','desmzn','deslot','destipurb','desurb','fec_regist','codmotv','desmotv','tipreqini','destipreqini','tipreqfin','destipreqfin','desobsordtrab','area','ind_duo','tiplinea','tipo','m1','rutinas','tipodeingreso','bolsa'
UNION
SELECT st.codofcadm,st.codreq,st.codcli,REPLACE(st.nomcli,',',' ') AS nomcli,st.codsrv,st.codclasrv,st.desclasrv,st.codctr,st.desnomctr,st.codnod,st.nroplano,st.codlex,st.codtap,st.codbor,
st.desdtt,st.destipvia,st.desnomvia,st.numvia,st.despis,st.desint,st.desmzn,st.deslot,st.destipurb,st.desurb,st.fec_regist,st.codmotv,st.desmotv,st.tipreqini,st.destipreqini,st.tipreqfin,st.destipreqfin,st.desobsordtrab,st.area,st.ind_duo,st.tiplinea,st.tipo,st.m1,st.rutinas,st.tipodeingreso,
IF(st.area='REDCLTE' AND tipo<>'Individual','TRANSFIERE A PLANTA EXTERNA',
IF(st.area='PLTAEXT' AND tipo='Individual','TRANSFIERE A RED_CLIENTE',
IF(st.area='' AND st.tipo='Individual','TRANSFIERE A RED_CLIENTE',''))) AS bolsa 
FROM 
(SELECT a.*,b.tipodeingreso,
IF(f.MACState ='Offline' AND f.macaddress IS NULL ,'Offline - NO OK',
	IF(e.DSMER_SNR ='-----','Modem Sincronizado - Cmts no aun no lee niveles',
	IF(e.DSMER_SNR IS NULL AND f.macstate IN ('w-online','online','operational'),'Modem Sincronizado - No hay reporte de niveles - Validar Manualmente',
	IF(f.macstate IS NULL AND e.DSMER_SNR IS NULL,'Offline - NO OK',
	IF(f.macstate NOT IN ('w-online','online','operational','offline')  AND DSMER_SNR IS NULL,  CONCAT(f.macstate,'Modem no Sincronizado - No hay niveles no se puede validar'),
	IF(e.USPwr <35 OR e.USPwr >57 ,'Niveles NO OK',
	IF(e.USMER_SNR <25 AND e.USMER_SNR >0.00 ,'Niveles NO OK',
	IF(e.DSPwr <-10  OR e.DSPwr >12 ,'Niveles NO OK',
	IF(e.DSPwr IS NULL, 'Incierto - Validar',
	IF(e.DSMER_SNR <27 ,'Niveles NO OK','OK')))))))))) AS STATUS,IF(f.macstate ='offline',f.interface,e.interface) AS INTERFACE,IF(f.macstate ='offline',f.CMTS,e.CMTS) AS CMTS
FROM reportes.aver_pen_catv_agrupado a INNER JOIN ccm1.averias_m1_new b
ON a.codreq=b.codreq
INNER JOIN ccm1.nclientes d 
ON d.idclientecrm=b.codcli
LEFT JOIN ccm1.scm_phy_t e
	ON d.mac2=e.MACAddress 	
LEFT JOIN ccm1.scm_total f
ON d.mac2=f.MACAddress) st
WHERE st.m1='M1' AND st.rutinas='A' 
HAVING st.tipo<>'Individual' AND bolsa=''
INTO OUTFILE '/var/www/html/cmts/CGM1_Agrupar.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
###¨Para liquidar
##--------------------------
SELECT 'codofcadm','codreq','codcli','nomcli','codsrv','codclasrv','desclasrv','codctr','desnomctr','codnod','nroplano','codlex','codtap','codbor','desdtt','destipvia','desnomvia','numvia','despis','desint','desmzn','deslot','destipurb','desurb','fec_regist','codmotv','desmotv','tipreqini','destipreqini','tipreqfin','destipreqfin','desobsordtrab','area','ind_duo','tiplinea','tipo','m1','rutinas','tipodeingreso'
UNION
SELECT st.codofcadm,st.codreq,st.codcli,REPLACE(st.nomcli,',',' ') AS nomcli,st.codsrv,st.codclasrv,st.desclasrv,st.codctr,st.desnomctr,st.codnod,st.nroplano,st.codlex,st.codtap,st.codbor,
st.desdtt,st.destipvia,st.desnomvia,st.numvia,st.despis,st.desint,st.desmzn,st.deslot,st.destipurb,st.desurb,st.fec_regist,st.codmotv,st.desmotv,st.tipreqini,st.destipreqini,st.tipreqfin,st.destipreqfin,st.desobsordtrab,st.area,st.ind_duo,st.tiplinea,st.tipo,st.m1,st.rutinas,st.tipodeingreso
FROM 
(SELECT a.*,b.tipodeingreso,
IF(f.MACState ='Offline' AND f.macaddress IS NULL ,'Offline - NO OK',
	IF(e.DSMER_SNR ='-----','Modem Sincronizado - Cmts no aun no lee niveles',
	IF(e.DSMER_SNR IS NULL AND f.macstate IN ('w-online','online','operational'),'Modem Sincronizado - No hay reporte de niveles - Validar Manualmente',
	IF(f.macstate IS NULL AND e.DSMER_SNR IS NULL,'Offline - NO OK',
	IF(f.macstate NOT IN ('w-online','online','operational','offline')  AND DSMER_SNR IS NULL,  CONCAT(f.macstate,'Modem no Sincronizado - No hay niveles no se puede validar'),
	IF(e.USPwr <35 OR e.USPwr >57 ,'Niveles NO OK',
	IF(e.USMER_SNR <25 AND e.USMER_SNR >0.00 ,'Niveles NO OK',
	IF(e.DSPwr <-10  OR e.DSPwr >12 ,'Niveles NO OK',
	IF(e.DSPwr IS NULL, 'Incierto - Validar',
	IF(e.DSMER_SNR <27 ,'Niveles NO OK','OK')))))))))) AS STATUS,IF(f.macstate ='offline',f.interface,e.interface) AS INTERFACE,IF(f.macstate ='offline',f.CMTS,e.CMTS) AS CMTS
FROM reportes.aver_pen_catv_agrupado a INNER JOIN ccm1.averias_m1_new b
ON a.codreq=b.codreq
INNER JOIN ccm1.nclientes d 
ON d.idclientecrm=b.codcli
LEFT JOIN ccm1.scm_phy_t e
	ON d.mac2=e.MACAddress 	
LEFT JOIN ccm1.scm_total f
ON d.mac2=f.MACAddress) st
WHERE st.m1='M1' AND st.rutinas='A' AND st.status IN ('OK','Modem Sincronizado - Cmts no aun no lee niveles') 
AND st.tipodeingreso IN ('LENTITUD','No Navega','WIFI','CABLE MODEM','MASIVA') 
INTO OUTFILE '/var/www/html/cmts/CGM1_Liquidar.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
## Para Transferrir
SELECT 'codofcadm','codreq','codcli','nomcli','codsrv','codclasrv','desclasrv','codctr','desnomctr','codnod','nroplano','codlex','codtap','codbor','desdtt','destipvia','desnomvia','numvia','despis','desint','desmzn','deslot','destipurb','desurb','fec_regist','codmotv','desmotv','tipreqini','destipreqini','tipreqfin','destipreqfin','desobsordtrab','area','ind_duo','tiplinea','tipo','m1','rutinas','tipodeingreso','bolsa'
UNION
SELECT st.codofcadm,st.codreq,st.codcli,REPLACE(st.nomcli,',',' ') AS nomcli,st.codsrv,st.codclasrv,st.desclasrv,st.codctr,st.desnomctr,st.codnod,st.nroplano,st.codlex,st.codtap,st.codbor,
st.desdtt,st.destipvia,st.desnomvia,st.numvia,st.despis,st.desint,st.desmzn,st.deslot,st.destipurb,st.desurb,st.fec_regist,st.codmotv,st.desmotv,st.tipreqini,st.destipreqini,st.tipreqfin,st.destipreqfin,st.desobsordtrab,st.area,st.ind_duo,st.tiplinea,st.tipo,st.m1,st.rutinas,st.tipodeingreso,
IF(st.area='REDCLTE' AND tipo<>'Individual','TRANSFIERE A PLANTA EXTERNA',
IF(st.area='PLTAEXT' AND tipo='Individual','TRANSFIERE A RED_CLIENTE',
IF(st.area='' AND st.tipo='Individual','TRANSFIERE A RED_CLIENTE',''))) AS bolsa 
FROM 
(SELECT a.*,b.tipodeingreso,
IF(f.MACState ='Offline' AND f.macaddress IS NULL ,'Offline - NO OK',
	IF(e.DSMER_SNR ='-----','Modem Sincronizado - Cmts no aun no lee niveles',
	IF(e.DSMER_SNR IS NULL AND f.macstate IN ('w-online','online','operational'),'Modem Sincronizado - No hay reporte de niveles - Validar Manualmente',
	IF(f.macstate IS NULL AND e.DSMER_SNR IS NULL,'Offline - NO OK',
	IF(f.macstate NOT IN ('w-online','online','operational','offline')  AND DSMER_SNR IS NULL,  CONCAT(f.macstate,'Modem no Sincronizado - No hay niveles no se puede validar'),
	IF(e.USPwr <35 OR e.USPwr >57 ,'Niveles NO OK',
	IF(e.USMER_SNR <25 AND e.USMER_SNR >0.00 ,'Niveles NO OK',
	IF(e.DSPwr <-10  OR e.DSPwr >12 ,'Niveles NO OK',
	IF(e.DSPwr IS NULL, 'Incierto - Validar',
	IF(e.DSMER_SNR <27 ,'Niveles NO OK','OK')))))))))) AS STATUS,IF(f.macstate ='offline',f.interface,e.interface) AS INTERFACE,IF(f.macstate ='offline',f.CMTS,e.CMTS) AS CMTS
FROM reportes.aver_pen_catv_agrupado a INNER JOIN ccm1.averias_m1_new b
ON a.codreq=b.codreq
INNER JOIN ccm1.nclientes d 
ON d.idclientecrm=b.codcli
LEFT JOIN ccm1.scm_phy_t e
	ON d.mac2=e.MACAddress 	
LEFT JOIN ccm1.scm_total f
ON d.mac2=f.MACAddress) st
WHERE st.m1='M1' AND st.rutinas='A' AND st.status IN 
('Offline - NO OK',
'Offline - NO OK',
'Modem no Sincronizado - No hay niveles no se puede validar',
'Niveles NO OK',
'Incierto - Validar'
)
HAVING bolsa <>''
INTO OUTFILE '/var/www/html/cmts/CGM1_Transferir.csv' FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_snr` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_snr` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`mnunez`@`%` PROCEDURE `sp_snr`()
BEGIN
	insert xsnr_up
	(SELECT *,'USMER_SNR' as grupoError FROM planta_revisada
	WHERE usmer_snr<27 AND USMER_SNR>0);
	
	INSERT xsnr_up
	(SELECT *,'DSMER_SNR' AS grupoError FROM planta_revisada
	WHERE dsmer_snr<30 AND DSMER_SNR>0);	
	
	INSERT xsnr_up
	(SELECT *,'OFF LINE' AS grupoError FROM planta_revisada
	WHERE `STATUS` LIKE 'Off%' and cmts IS NOT NULL );
	
	DELETE FROM xsnr_up WHERE CAST(fecha_upload AS DATE)<CAST(CURDATE()-2 AS DATE);
END */$$
DELIMITER ;

/* Procedure structure for procedure `portadorasxpuerto` */

/*!50003 DROP PROCEDURE IF EXISTS  `portadorasxpuerto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `portadorasxpuerto`()
BEGIN
	DELETE FROM reportes.uso_portadoras WHERE DATEDIFF(NOW(),fecha_hora)>3;
	TRUNCATE TABLE reportes.portadorasxpuerto;
	INSERT IGNORE reportes.portadorasxpuerto
	SELECT b.cmts,sg AS down,COUNT(*) AS can,SUM(cancli) AS clientes, NULL as fecha_upload FROM 
	(SELECT cmts,SUBSTR(host_interface,1,6) AS sg,primary_down AS down,COUNT(*) AS cancli, NULL FROM ccm1_data.show_primary GROUP BY 1,2,3) a
	LEFT JOIN ccm1.cmts_ip  b
	ON a.cmts=b.nombre
	GROUP BY 1,2;
	
	UPDATE reportes.portadorasxpuerto SET fecha_upload=NOW();
	
	TRUNCATE TABLE reportes.portadorasxpuerto_tr;
	INSERT IGNORE reportes.portadorasxpuerto_tr
	SELECT a.cmts,a.down,a.can,a.clientes,b.interface,b.description, NULL ,NULL
	FROM reportes.portadorasxpuerto a FORCE INDEX (cmts,down) INNER JOIN ccm1.scm_sum b
	ON a.cmts = b.cmts AND a.down=b.interface6;
	
	TRUNCATE TABLE reportes.cant_portadoras_casa;
	INSERT IGNORE reportes.cant_portadoras_casa
	SELECT cmts,CONCAT("'",SUBSTR(downstream,1,3)) AS down,COUNT(*) AS can ,SUM(modemsonline) AS clientes
	 FROM ccm1_temporal.casa_down_util
	 WHERE secondarymodems>0
	GROUP BY 1,2;
	
	/*INSERT IGNORE reportes.portadorasxpuerto_tr
	SELECT a.cmts,a.down,a.can,a.clientes,c.usif,b.description, NULL,NULL 
	FROM reportes.cant_portadoras_casa a FORCE INDEX(cmts,down)
	INNER JOIN reportes.portadorasxpuerto_puertos_casa c
	ON a.cmts=c.cmts AND a.down=c.dsif
	LEFT JOIN ccm1.scm_sum b
	ON c.cmts = b.cmts AND c.usif=b.interface6
	GROUP BY 1,2,5;*/
	
	INSERT IGNORE reportes.portadorasxpuerto_tr
	SELECT a.cmts,a.down,a.can,a.clientes,c.usif,b.description, NULL,NULL 
	FROM reportes.cant_portadoras_casa a FORCE INDEX(cmts,down)
	INNER JOIN reportes.portadorasxpuerto_puertos_casa c FORCE INDEX(cmts,dsif)
	ON a.cmts=c.cmts AND a.down=c.dsif 
	LEFT JOIN ccm1.scm_sum b FORCE INDEX (idxCmts,idxInterface6)
	ON c.cmts = b.cmts AND c.usif=b.interface6
	GROUP BY 1,2,5;
	
	
	DELETE FROM reportes.portadorasxpuerto_tr WHERE SUBSTR(interface,8,2)='UB';
	
	UPDATE reportes.portadorasxpuerto_tr SET fecha_upload=NOW();
	
	UPDATE reportes.portadorasxpuerto_tr a INNER JOIN 
	(SELECT cmts,down,uso FROM reportes.uso_portadoras  GROUP BY 1,2 ORDER BY fecha_hora DESC) b
	ON a.cmts=b.cmts AND a.down=b.down
	SET a.uso=b.uso;
	UPDATE `portadorasxpuerto_tr` a FORCE INDEX(cmts,interface) INNER JOIN catalogos.`etiqueta_puertos` b
	ON a.cmts=b.cmts AND a.`interface`=b.interface SET a.description=b.`description` WHERE a.description='';
	delete from portadorasxpuerto_uso where datediff(now(),fecha_upload)>7;
	INSERT IGNORE `portadorasxpuerto_uso` SELECT `cmts`,`down`,`can`,`clientes`,`fecha_upload`,`uso` FROM `portadorasxpuerto_tr`;
DELETE FROM `uso_portadoras` WHERE cmts IS NULL OR cmts='0';  
    END */$$
DELIMITER ;

/* Procedure structure for procedure `reporte_consultas` */

/*!50003 DROP PROCEDURE IF EXISTS  `reporte_consultas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `reporte_consultas`()
BEGIN
		TRUNCATE reportes.consultas;
		INSERT INTO reportes.consultas
		SELECT a.tipobusqueda,a.dato,SUBSTR(a.fechahora,1,10) AS fechahora,b.nodo,b.troba,b.idclientecrm,c.codreq,REPLACE(a.mensaje,',','') AS mensaje,COUNT(*) AS consultas,a.usuario
		FROM multiconsulta.multi_consultas_c a
		INNER JOIN ccm1.nclientes b
		ON a.dato=b.idclientecrm
		LEFT JOIN ccm1.averias_m1 c
		ON b.idclientecrm=c.codcli
		WHERE a.dato<>'' AND a.tipobusqueda='IDCLIENTECRM'
		GROUP BY b.idclientecrm,SUBSTR(a.fechahora,1,10);
		INSERT INTO reportes.consultas
		SELECT a.tipobusqueda,a.dato,SUBSTR(a.fechahora,1,10) AS fechahora,b.nodo,b.troba,b.idclientecrm,c.codreq,REPLACE(a.mensaje,',','') AS mensaje,COUNT(*) AS consultas,a.usuario
		FROM multiconsulta.multi_consultas_c a
		INNER JOIN ccm1.nclientes b
		ON a.dato=b.macaddress
		LEFT JOIN ccm1.averias_m1 c
		ON b.idclientecrm=c.codcli
		WHERE a.dato<>'' AND a.tipobusqueda='MACADDRESS'
		GROUP BY b.idclientecrm,SUBSTR(a.fechahora,1,10);
		INSERT INTO reportes.consultas
		SELECT a.tipobusqueda,a.dato,SUBSTR(a.fechahora,1,10) AS fechahora,b.nodo,b.troba,b.idclientecrm,c.codreq,REPLACE(a.mensaje,',','') AS mensaje,COUNT(*) AS consultas,a.usuario
		FROM multiconsulta.multi_consultas_c a
		INNER JOIN ccm1.nclientes b
		ON b.telf1=a.dato
		LEFT JOIN ccm1.averias_m1 c
		ON b.idclientecrm=c.codcli
		WHERE a.dato<>'' AND a.tipobusqueda='TELEFONO TBA/CEL'
		GROUP BY b.idclientecrm,SUBSTR(a.fechahora,1,10);
		INSERT INTO reportes.consultas
		SELECT a.tipobusqueda,a.dato,SUBSTR(a.fechahora,1,10) AS fechahora,b.nodo,b.troba,b.idclientecrm,c.codreq,REPLACE(a.mensaje,',','') AS mensaje,COUNT(*) AS consultas,a.usuario
		FROM multiconsulta.multi_consultas_c a
		INNER JOIN ccm1.nclientes b
		ON b.telf2=a.dato
		LEFT JOIN ccm1.averias_m1 c
		ON b.idclientecrm=c.codcli
		WHERE a.dato<>'' AND a.tipobusqueda='TELEFONO TBA/CEL'
		GROUP BY b.idclientecrm,SUBSTR(a.fechahora,1,10);
		INSERT INTO reportes.consultas
		SELECT a.tipobusqueda,a.dato,SUBSTR(a.fechahora,1,10) AS fechahora,b.nodo,b.troba,b.idclientecrm,c.codreq,REPLACE(a.mensaje,',','') AS mensaje,COUNT(*) AS consultas,a.usuario
		FROM multiconsulta.multi_consultas_c a
		INNER JOIN ccm1.nclientes b
		ON b.movil1=a.dato
		LEFT JOIN ccm1.averias_m1 c
		ON b.idclientecrm=c.codcli
		WHERE a.dato<>'' AND a.tipobusqueda='TELEFONO TBA/CEL'
		GROUP BY b.idclientecrm,SUBSTR(a.fechahora,1,10);
		INSERT INTO reportes.consultas
		SELECT a.tipobusqueda,a.dato,SUBSTR(a.fechahora,1,10) AS fechahora,b.nodo,b.troba,b.idclientecrm,d.codreq,REPLACE(a.mensaje,',','') AS mensaje,COUNT(*) AS consultas,a.usuario
		 FROM multiconsulta.multi_consultas_c a
		INNER JOIN catalogos.telefonoshfc c
		ON a.dato = c.telefonohfc
		LEFT JOIN ccm1.nclientes b
		ON c.idcliente=b.idclientecrm
		LEFT JOIN ccm1.averias_m1 d
		ON b.idclientecrm=d.codcli
		WHERE DATEDIFF(NOW(),fechahora) <=7 AND a.dato<>'' AND a.tipobusqueda='TELEFONO HFC'
		GROUP BY b.idclientecrm,SUBSTR(a.fechahora,1,10);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `revisar_planta` */

/*!50003 DROP PROCEDURE IF EXISTS  `revisar_planta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `revisar_planta`()
BEGIN
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED ;
	DELETE FROM reportes.planta_revisada WHERE SUBSTR(NOW(),12,2)<='06';
	INSERT IGNORE reportes.planta_revisada
	SELECT d.IDCLIENTECRM,REPLACE(d.NAMECLIENT,',',' ') AS nameclient,REPLACE(d.direccion,',',' ') AS direccion,d.NODO,d.TROBA,d.amplificador,d.tap,d.telf1,d.telf2,d.movil1,d.MACADDRESS,d.SERVICEPACKAGE,d.SCOPESGROUP,f.RxPwrdBmv,e.USPwr,e.USMER_SNR,REPLACE(e.DSPwr,' ','') AS DSPwr,e.DSMER_SNR,
	IF(f.MACState ='offline'  ,'Offline - NO OK',
		IF(e.DSMER_SNR ='-----','Modem Sincronizado - Cmts no aun no lee niveles',
		IF(e.DSMER_SNR IS NULL AND f.macstate IN ('w-online','online','operational'),'Modem Sincronizado - No hay reporte de niveles - Validar Manualmente',
		IF(f.macstate IS NULL AND e.DSMER_SNR IS NULL,'Offline - NO OK',
		IF(f.macstate NOT IN ('w-online','online','operational','offline')  AND DSMER_SNR IS NULL,  CONCAT(f.macstate,'Modem no Sincronizado - No hay niveles no se puede validar'),
		IF(e.USPwr <35 OR e.USPwr >57 ,'Niveles NO OK',
		IF(e.USMER_SNR <25 AND e.USMER_SNR >0.00 ,'Niveles NO OK',
		IF(e.DSPwr <-10  OR e.DSPwr >12 ,'Niveles NO OK',
		IF(e.DSPwr IS NULL, 'Incierto - Validar',
		IF(e.DSMER_SNR <27 ,'Niveles NO OK','OK')))))))))) AS STATUS,IF(f.macstate ='offline',f.interface,e.interface) AS INTERFACE,
		IF(f.macstate ='offline',f.CMTS,e.CMTS) AS CMTS,pp.down, NOW()
	FROM  ccm1.nclientes d FORCE INDEX (NewIndex4,idxfv,cmts)
	LEFT JOIN ccm1.scm_phy_t e FORCE INDEX (NewIndex1)
		ON d.mac2=e.MACAddress 
	LEFT JOIN ccm1.scm_total f FORCE INDEX (MACAddress)
	ON d.mac2=f.MACAddress
	LEFT JOIN reportes.portadorasxpuerto_tr pp FORCE INDEX(cmts,interface)
	ON d.f_v=pp.interface AND  d.cmts=pp.cmts
	WHERE d.servicepackage<>'Servicio Bloqueado (Standard)' AND d.cmts IS NOT NULL AND d.idclientecrm<>969625 AND d.estado='Activo'
	GROUP BY d.macaddress;
	commit;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED ;	
	DELETE FROM reportes.planta_revisada_resum WHERE SUBSTR(NOW(),12,2)<='06';
	INSERT IGNORE reportes.planta_revisada_resum
	SELECT nodo,troba,amplificador,COUNT(*) AS cant FROM reportes.planta_revisada a
	WHERE a.status IN ('Niveles NO OK','Offline - NO OK') AND a.amplificador<>''
	AND SUBSTR(NOW(),12,2)<='06'
	GROUP BY 1,2,3
	HAVING cant >5;
	commit;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spBalanceo` */

/*!50003 DROP PROCEDURE IF EXISTS  `spBalanceo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `spBalanceo`()
BEGIN
/*CARGA PARAMETROS POR PUERTO*/
DROP TABLE IF EXISTS temporal.tmp_alarmas_interface;
CREATE TABLE temporal.tmp_alarmas_interface
SELECT a.cmts,a.interface,a.fecha_hora,COUNT(*) AS muestra,
ROUND(AVG(a.usmer_snr),1) AS prom_usnr,ROUND(AVG(a.dsmer_snr),1) AS prom_dsnr,ROUND(AVG(a.uspwr),1) AS prom_uspwr,ROUND(AVG(a.dspwr),1) AS prom_dspwr,
ROUND(MIN(a.uspwr),1) AS min_uspwr,ROUND(MAX(a.uspwr),1) AS max_uspwr,ROUND(MIN(a.dspwr),1) AS min_dspwr,ROUND(MAX(a.dspwr),1) AS max_dspwr,SPACE(10) AS clientes,
SPACE(35) AS llave,SPACE(35) AS description,SPACE(15) AS nodotroba,SPACE(15) AS trobaOrigen,SPACE(15) AS microzona,SPACE(15) AS zona,
SPACE(20) AS fecha
FROM `ccm1_temporal`.`scm_phy_t` a
GROUP BY 1,2,3;
UPDATE temporal.tmp_alarmas_interface SET llave=CONCAT(cmts,'-',interface);
ALTER TABLE temporal.tmp_alarmas_interface ADD INDEX(llave);
END */$$
DELIMITER ;

/* Procedure structure for procedure `spParametros_xtroba` */

/*!50003 DROP PROCEDURE IF EXISTS  `spParametros_xtroba` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`mnunez`@`%` PROCEDURE `spParametros_xtroba`()
BEGIN
DROP TABLE IF EXISTS reportes.parametrosxCliente;
CREATE TABLE reportes.parametrosxCliente
SELECT a.*,b.interface AS interface2,b.USMER_SNR,b.DSMER_SNR,b.USPwr,b.DSPwr,
c.idclientecrm,CONCAT(c.nodo,c.troba) AS nodotroba,c.amplificador,c.tap,c.servicepackage,c.nameclient,c.direccion,
0 AS xOffline,0 AS xInit,0 AS xUSmer_snr,0 AS xDSmer_snr,0 AS xUSpwr,0 AS xDSpwr
FROM ccm1.`scm_total` a
LEFT JOIN ccm1.`scm_phy_t` b
ON a.macaddress=b.macaddress
LEFT JOIN ccm1.`nclientes` c
ON a.macaddress=c.mac2;
/*Califica*/
UPDATE reportes.parametrosxCliente SET xOffline=1 WHERE macstate='offline' AND interface2 IS NOT NULL;
UPDATE reportes.parametrosxCliente SET xInit=1 WHERE macstate LIKE '%init%' AND interface2 IS NOT NULL;
UPDATE reportes.parametrosxCliente SET xUSmer_snr=1 WHERE USMER_SNR<27 AND interface2 IS NOT NULL;
UPDATE reportes.parametrosxCliente SET xDSmer_snr=1 WHERE (DSMER_SNR<30 AND DSMER_SNR>0) AND interface2 IS NOT NULL;
UPDATE reportes.parametrosxCliente SET xUSpwr=1 WHERE (USPwr<37 OR USPwr>55) AND interface2 IS NOT NULL;
UPDATE reportes.parametrosxCliente SET xDSpwr=1 WHERE (DSPwr<-10 OR DSPwr>10) AND interface2 IS NOT NULL;
DROP TABLE IF EXISTS reportes.t1;
CREATE TABLE reportes.t1
SELECT nodotroba,CONCAT(SUBSTRING(fecha_hora,1,14),'00') AS fecha,CONCAT(nodotroba,'-',CONCAT(SUBSTRING(fecha_hora,1,14),'00')) AS llave,COUNT(*) AS clientes,
SUM(xOffline) AS xOffline,SUM(xInit) AS xInit,SUM(xUSmer_snr) AS xUSmer_snr,SUM(xDSmer_snr) AS xDSmer_snr,SUM(xUSpwr) AS xUSpwr,SUM(xDSpwr) AS xDSpwr,
0000.000 AS _Offline,0000.000 AS _init,0000.000 AS _USmer_snr,0000.000 AS _DSmer_snr,0000.000 AS _USpwr,0000.000 AS _DSpwr,SPACE(15) AS microzona,
SPACE(15) AS trobaOrigen
FROM reportes.parametrosxCliente WHERE nodotroba IS NOT NULL AND nodotroba<>'' GROUP BY 1,2,3;
ALTER TABLE reportes.t1 ADD INDEX(llave),ADD INDEX(nodotroba);
UPDATE reportes.t1 SET _Offline=(xOffline/clientes) WHERE clientes>0;
UPDATE reportes.t1 SET _Init=(xinit/clientes) WHERE clientes>0;
UPDATE reportes.t1 SET _USmer_snr=(xUSmer_snr/clientes) WHERE clientes>0;
UPDATE reportes.t1 SET _DSmer_snr=(xDSmer_snr/clientes) WHERE clientes>0;
UPDATE reportes.t1 SET _USpwr=(xUSpwr/clientes) WHERE clientes>0;
UPDATE reportes.t1 SET _DSpwr=(xDSpwr/clientes) WHERE clientes>0;
/*Microzonas*/
ALTER TABLE trabajos.t1 CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
UPDATE reportes.t1 a
INNER JOIN catalogos.`microzona` b
ON a.nodotroba=b.nodotroba
SET a.microzona=b.microzona;
UPDATE reportes.t1 a
INNER JOIN catalogos.`microzona` b
ON a.trobaOrigen=b.nodotroba
SET a.microzona=b.microzona;
INSERT INTO reportes.eventos_x_troba
(SELECT * FROM reportes.t1 WHERE llave NOT IN (SELECT llave FROM reportes.eventos_x_troba));
DROP TABLE IF EXISTS reportes.t1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spParticiones` */

/*!50003 DROP PROCEDURE IF EXISTS  `spParticiones` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`mnunez`@`%` PROCEDURE `spParticiones`()
BEGIN
	DROP TABLE IF EXISTS reportes.particiones_tmp;
	CREATE TABLE reportes.particiones_tmp
	SELECT cmts, interface, description,SPACE(15) AS nodotroba,SPACE(15) AS trobaOrigen,SPACE(25) AS c1,SPACE(25) AS c2,SPACE(25) AS c3
	FROM reportes.`portadorasxpuerto_tr`
	WHERE description LIKE '%(%';
	/*Separa la cadena en columnas donde haya coma*/
	UPDATE reportes.particiones_tmp SET c1=SUBSTRING(description,(INSTR(description,',')+2),LENGTH(description)-INSTR(description,',')+3)
	WHERE description LIKE '%,%';
	UPDATE reportes.particiones_tmp SET c2=SUBSTRING(description,(INSTR(description,',')+2),LENGTH(description)-INSTR(description,',')+3)
	WHERE description LIKE '%,%' AND c1='';
	/*-----------------------------------------------*/
	/*Agrega como registro las trobas separadas por comas*/
	INSERT INTO reportes.particiones_tmp
	(cmts,interface,description)
	SELECT cmts,interface,c1 AS description FROM reportes.particiones_tmp WHERE c1<>'';
	INSERT INTO reportes.particiones_tmp
	(cmts,interface,description)
	SELECT cmts,interface,c1 AS description FROM reportes.particiones_tmp WHERE c2<>'';
	/*------------------------------------------------*/
	/*Extrae la troba actual*/
	UPDATE reportes.particiones_tmp SET nodotroba=CONCAT(SUBSTRING(description,1,2),SUBSTRING(description,4,4));
	/*-----------------------------*/
	/*Extrae la troba origen*/
	UPDATE reportes.particiones_tmp SET trobaOrigen=CONCAT(SUBSTRING(description,(INSTR(description,'(')+1),2),
	SUBSTRING(description,(INSTR(description,'(')+4),4));
	/*-----------------------------*/
	DROP TABLE IF EXISTS reportes.particiones;
	CREATE TABLE reportes.particiones
	SELECT nodotroba,trobaOrigen FROM reportes.particiones_tmp GROUP BY 1,2;
	ALTER TABLE reportes.particiones ADD INDEX(nodotroba),ADD INDEX(trobaOrigen);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spPuertosInterfaces` */

/*!50003 DROP PROCEDURE IF EXISTS  `spPuertosInterfaces` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`mnunez`@`%` PROCEDURE `spPuertosInterfaces`()
BEGIN
/*CARGA PARAMETROS POR PUERTO*/
DROP TABLE IF EXISTS reportes.tmp_alarmas_interface;
CREATE TABLE reportes.tmp_alarmas_interface
SELECT a.cmts,a.interface,a.fecha_hora,COUNT(*) AS muestra,
ROUND(AVG(a.usmer_snr),1) AS prom_usnr,ROUND(AVG(a.dsmer_snr),1) AS prom_dsnr,ROUND(AVG(a.uspwr),1) AS prom_uspwr,ROUND(AVG(a.dspwr),1) AS prom_dspwr,
ROUND(MIN(a.uspwr),1) AS min_uspwr,ROUND(MAX(a.uspwr),1) AS max_uspwr,ROUND(MIN(a.dspwr),1) AS min_dspwr,ROUND(MAX(a.dspwr),1) AS max_dspwr,SPACE(10) AS clientes,
SPACE(35) AS llave,SPACE(35) AS description,SPACE(15) AS nodotroba,SPACE(15) AS trobaOrigen,SPACE(15) AS microzona,SPACE(15) AS zona,
SPACE(20) AS fecha
FROM `ccm1_temporal`.`scm_phy_t` a
GROUP BY 1,2,3;
UPDATE reportes.tmp_alarmas_interface SET llave=CONCAT(cmts,'-',interface);
ALTER TABLE reportes.tmp_alarmas_interface ADD INDEX(llave);
/*CARGA PORTADORAS*/
DROP TABLE IF EXISTS reportes.particiones_tmp;
CREATE TABLE reportes.particiones_tmp
SELECT cmts, interface,can,clientes, description,SPACE(15) AS nodotroba,SPACE(15) AS trobaOrigen,SPACE(25) AS c1,SPACE(25) AS c2,SPACE(25) AS c3,
SPACE(35) AS llave
FROM reportes.`portadorasxpuerto_tr`;
/*Separa la cadena en columnas donde haya coma*/
UPDATE reportes.particiones_tmp SET c1=SUBSTRING(description,(INSTR(description,',')+2),LENGTH(description)-INSTR(description,',')+3)
WHERE description LIKE '%,%';
UPDATE reportes.particiones_tmp SET c2=SUBSTRING(description,(INSTR(description,',')+2),LENGTH(description)-INSTR(description,',')+3)
WHERE description LIKE '%,%' AND c1='';
/*-----------------------------------------------*/
/*Agrega como registro las trobas separadas por comas*/
INSERT INTO reportes.particiones_tmp
(cmts,interface,can, clientes,description)
SELECT cmts,interface,can, clientes,c1 AS description FROM reportes.particiones_tmp WHERE c1<>'';
INSERT INTO reportes.particiones_tmp
(cmts,interface,can, clientes,description)
SELECT cmts,interface,can, clientes,c1 AS description FROM reportes.particiones_tmp WHERE c2<>'';
/*------------------------------------------------*/
/*Extrae la troba actual*/
UPDATE reportes.particiones_tmp SET nodotroba=CONCAT(SUBSTRING(description,1,2),SUBSTRING(description,4,4));
/*-----------------------------*/
/*Extrae la troba origen*/
UPDATE reportes.particiones_tmp SET trobaOrigen=CONCAT(SUBSTRING(description,(INSTR(description,'(')+1),2),
SUBSTRING(description,(INSTR(description,'(')+4),4));
DROP TABLE IF EXISTS reportes.particiones;
CREATE TABLE reportes.particiones
SELECT nodotroba,trobaOrigen FROM reportes.particiones_tmp WHERE description LIKE '%(%' GROUP BY 1,2;
ALTER TABLE reportes.particiones ADD INDEX(nodotroba),ADD INDEX(trobaOrigen);
UPDATE reportes.particiones_tmp SET llave=CONCAT(cmts,'-',interface);
ALTER TABLE reportes.particiones_tmp ADD INDEX(llave);
/*-----------------------------*/
/*CRUCE PARAMETROS VS PORTADORAS*/
UPDATE reportes.tmp_alarmas_interface a
INNER JOIN reportes.particiones_tmp b
ON a.llave=b.llave
SET a.description=b.description,
a.clientes=b.clientes,
a.nodotroba=b.nodotroba,
a.trobaOrigen=b.trobaOrigen;
/*-----------------------------*/
/*MICROZONAS*/
ALTER TABLE reportes.tmp_alarmas_interface CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
UPDATE reportes.tmp_alarmas_interface a
INNER JOIN catalogos.`microzonas` b
ON a.nodotroba=b.`nodotroba`
SET a.microzona=b.microzona
WHERE a.nodotroba<>'';
UPDATE reportes.tmp_alarmas_interface a
INNER JOIN catalogos.`microzonas` b
ON a.trobaOrigen=b.`nodotroba`
SET a.microzona=b.microzona
WHERE a.trobaOrigen<>'' AND a.microzona='';
UPDATE reportes.tmp_alarmas_interface SET zona='PREMIUM' WHERE microzona<>'';
UPDATE reportes.tmp_alarmas_interface SET zona='MASIVO' WHERE microzona='' AND nodotroba<>'';
UPDATE reportes.tmp_alarmas_interface SET fecha=CONCAT(SUBSTRING(fecha_hora,1,13),':','00');
/*-----------------------------*/
/*INSERTA EN BASE ACUMULADA*/
DELETE FROM reportes.`interface_puertos_snr` WHERE CAST(fecha AS DATE)<CAST((CURDATE()-5) AS DATE);
SET @UltimaCarga= (SELECT fecha FROM reportes.`interface_puertos_snr` GROUP BY 1 ORDER BY fecha DESC LIMIT 1);
INSERT INTO reportes.interface_puertos_snr
SELECT cmts,interface,description AS trobas,clientes,prom_usnr,prom_dsnr,prom_uspwr,prom_dspwr,min_uspwr,max_uspwr,min_dspwr,max_dspwr,
fecha_hora,fecha,microzona,zona
FROM reportes.tmp_alarmas_interface WHERE fecha<>@UltimaCarga AND muestra>50;
truncate table reportes.interface_puertos_snr_premium;
INSERT INTO reportes.interface_puertos_snr_premium
SELECT cmts,interface,trobas,clientes,prom_usnr,prom_dsnr,prom_uspwr,prom_dspwr,min_uspwr,max_uspwr,min_dspwr,max_dspwr,
fecha_hora,fecha,microzona,zona
FROM reportes.interface_puertos_snr WHERE zona='PREMIUM';
/*-----------------------------*/
END */$$
DELIMITER ;

/* Procedure structure for procedure `spTrobasCaidas` */

/*!50003 DROP PROCEDURE IF EXISTS  `spTrobasCaidas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`mnunez`@`%` PROCEDURE `spTrobasCaidas`()
BEGIN
	/*ANALIZA TROBAS CAIDAS*/
	DROP TABLE IF EXISTS reportes.temporal;
	CREATE TABLE reportes.temporal
	SELECT *,CONCAT(nodo,troba) AS nodotroba,CAST(fecha_hora AS DATE) AS fecha_ocurrencia, 000 AS veces_caida
	FROM ccm1_temporal.`alarmas_caidas_historico`;
	
	DROP TABLE IF EXISTS reportes.temporal1;
	CREATE TABLE reportes.temporal1
	SELECT nodotroba,fecha_hora,CAST(fecha_hora AS DATE) AS fecha,CONCAT(nodotroba,CAST(fecha_hora AS DATE)) AS llave,
	COUNT(*) AS veces FROM reportes.temporal GROUP BY 1,2,3,4;
	
	DROP TABLE IF EXISTS reportes.temporal2;
	CREATE TABLE reportes.temporal2
	SELECT llave,fecha, COUNT(*) AS veces FROM reportes.temporal1 GROUP BY 1,2;
	ALTER TABLE reportes.temporal2 ADD INDEX(llave);
	
	DROP TABLE IF EXISTS `reportes`.`indicencias_trobas`;
	CREATE TABLE `reportes`.`indicencias_trobas`
	SELECT nodotroba, CAST(fecha_hora AS DATE) AS fecha,CONCAT(nodotroba,CAST(fecha_hora AS DATE)) AS llave,
	0000 AS nro_incidencias, 'TROBA CAIDA   ' AS tipo_incidencia,
	SPACE(10) AS microzona
	FROM reportes.temporal
	GROUP BY 1,2,3,4;
	
	ALTER TABLE `reportes`.`indicencias_trobas` ADD INDEX(llave);
	UPDATE `reportes`.`indicencias_trobas` a
	INNER JOIN reportes.temporal2 b
	ON a.llave=b.llave
	SET a.nro_incidencias=b.veces;
	
	/*ANALIZA TROBAS SIN SEÑAL*/
	DROP TABLE IF EXISTS reportes.temporal;
	CREATE TABLE reportes.temporal
	SELECT *,CONCAT(nodo,troba) AS nodotroba,CAST(fecha_hora AS DATE) AS fecha_ocurrencia, 000 AS veces_caida
	FROM ccm1_temporal.`alertas_signal_historico`;
	
	DROP TABLE IF EXISTS reportes.temporal1;
	CREATE TABLE reportes.temporal1
	SELECT nodotroba,fecha_hora,CAST(fecha_hora AS DATE) AS fecha,CONCAT(nodotroba,CAST(fecha_hora AS DATE)) AS llave,
	COUNT(*) AS veces FROM reportes.temporal GROUP BY 1,2,3,4;
	
	DROP TABLE IF EXISTS reportes.temporal2;
	CREATE TABLE reportes.temporal2
	SELECT llave,fecha, COUNT(*) AS veces FROM reportes.temporal1 GROUP BY 1,2;
	ALTER TABLE reportes.temporal2 ADD INDEX(llave);
	
	DROP TABLE IF EXISTS `reportes`.`trobas_signal`;
	CREATE TABLE `reportes`.`trobas_signal`
	SELECT nodotroba, CAST(fecha_hora AS DATE) AS fecha,CONCAT(nodotroba,CAST(fecha_hora AS DATE)) AS llave,
	0000 AS nro_incidencias, 'TROBA SIGNAL   ' AS tipo_incidencia,
	SPACE(10) AS microzona
	FROM `reportes`.temporal
	GROUP BY 1,2,3;
	
	ALTER TABLE `reportes`.`trobas_signal` ADD INDEX(llave);
	UPDATE `reportes`.`trobas_signal` a
	INNER JOIN `reportes`.temporal2 b
	ON a.llave=b.llave
	SET a.nro_incidencias=b.veces;
	INSERT INTO `reportes`.`indicencias_trobas`
	(SELECT * FROM `reportes`.`trobas_signal`);
	DROP TABLE IF EXISTS `reportes`.`trobas_signal`;
	UPDATE `reportes`.`indicencias_trobas` a
	INNER JOIN catalogos.`microzonas` b
	ON a.nodotroba=b.nodotroba
	SET a.microzona=b.microzona;
	
	/*reporte caida comite microzonas
	DROP TABLE IF EXISTS `reportes`.`indicencias_trobas_resumen`;
	CREATE TABLE `reportes`.`indicencias_trobas_resumen`
	SELECT microzona,fecha,nodotroba,CONCAT(fecha,nodotroba) AS llave,codmasiva,ROUND(AVG(cant),0) AS cant,
	MAX(off),ROUND(((MAX(off)/AVG(cant))*100),1) AS `%Caidos`,MAX(tiempo),
	SPACE(20) AS fecha_inicio, SPACE(25) AS fecha_fin, 000.00 AS hora
	FROM `reportes`.`indicencias_trobas` 
	WHERE tipo_incidencia='TROBA CAIDA' AND microzona<>''
	GROUP BY 1,2,3,4,5 ORDER BY fecha DESC,MAX(tiempo) DESC;
	ALTER TABLE `reportes`.`indicencias_trobas_resumen` ADD INDEX(llave);
	/*Fecha inicio incidencia
	DROP TABLE IF EXISTS reportes.temporal;
	CREATE TABLE reportes.temporal
	SELECT *, CONCAT(nodo,troba) AS nodotroba, CONCAT(CAST(fecha_hora AS DATE),nodo,troba) AS llave
	FROM ccm1_temporal.`alarmas_caidas_historico`
	ORDER BY CONCAT(nodo,troba),fecha_hora ASC;
	ALTER TABLE reportes.temporal ADD INDEX(llave);
	UPDATE `reportes`.`indicencias_trobas_resumen` a
	INNER JOIN reportes.temporal b
	ON a.llave=b.llave
	SET a.fecha_inicio=b.fecha_hora;
	/*Fecha fin incidencia
	DROP TABLE IF EXISTS reportes.temporal;
	CREATE TABLE reportes.temporal
	SELECT *, CONCAT(nodo,troba) AS nodotroba, CONCAT(CAST(fecha_hora AS DATE),nodo,troba) AS llave
	FROM ccm1_temporal.`alarmas_caidas_historico`
	ORDER BY CONCAT(nodo,troba),fecha_fin DESC;
	ALTER TABLE reportes.temporal ADD INDEX(llave);
	UPDATE `reportes`.`indicencias_trobas_resumen` a
	INNER JOIN reportes.temporal b
	ON a.llave=b.llave
	SET a.fecha_fin=b.fecha_fin;
	UPDATE `reportes`.`indicencias_trobas_resumen` SET hora= SUBSTRING(`max(tiempo)`,1,2)
	WHERE SUBSTRING(`max(tiempo)`,1,2)>=1;	
	
	update `reportes`.`indicencias_trobas_resumen` SET hora=ROUND((((TIMESTAMPDIFF(SECOND,fecha_inicio,fecha_fin))/60)/60),2)
	where hora=0;*/
	
	DROP TABLE IF EXISTS reportes.temporal;
	DROP TABLE IF EXISTS reportes.temporal1;
	DROP TABLE IF EXISTS reportes.temporal2;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spTrobasOffline` */

/*!50003 DROP PROCEDURE IF EXISTS  `spTrobasOffline` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`mnunez`@`%` PROCEDURE `spTrobasOffline`()
BEGIN
DROP TABLE IF EXISTS reportes.x1;
CREATE TABLE reportes.x1
select a.macaddress, a.interface,a.macstate,a.cmts,a.fecha_hora,concat(b.nodo,b.troba) as nodotroba
from `ccm1`.`scm_total` a
LEFT JOIN ccm1.`nclientes` b
on a.macaddress=b.mac2
where a.macstate in ('offline') and b.troba is not null and b.troba<>'';
drop table if exists reportes.x2;
CREATE TABLE reportes.x2
select nodotroba,fecha_hora,concat(nodotroba,fecha_hora) as llaveHora, count(*) as ncmOffline from reportes.x1 group by 1,2,3;
alter table reportes.x2 ADD INDEX(llaveHora);
insert into reportes.`OffLinexTrobas`
(nodotroba,fecha_hora,llaveHora,ncmOffline)
select nodotroba,fecha_hora,llaveHora,ncmOffline from reportes.x2 where llaveHora not in (select llaveHora from reportes.`OffLinexTrobas`);
DROP TABLE IF EXISTS reportes.x1;
DROP TABLE IF EXISTS reportes.x2;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_cuarentena` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_cuarentena` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `sp_cuarentena`()
BEGIN
		### Eliminando registros que ya superan los 15días
		delete from reportes.cuarentena_base where datediff(now(),fecha_liquidacion)>=16;
		###Inserta las altas liquidadas del día anterior
		INSERT ignore reportes.cuarentena_base
		SELECT a.codigo_del_cliente,a.fecha_liquidacion,a.contrata,a.tecnico,b.mac2,a.codigo_del_grupo_req ,a.codigo_tipo_req
		FROM cms.prov_liq_catv_pais a INNER JOIN ccm1.nclientes b
		ON a.codigo_del_cliente=b.idclientecrm 
		WHERE DATEDIFF(NOW(),a.fecha_liquidacion)<=15 AND a.codigo_del_grupo_req in ('AL','MG','TR');
		### Eliminando registros que ya superan los 15días
		delete from reportes.cuarentena_detalle where datediff(now(),fecha_liquidacion)>=16;
		### valida los servicios que estuvieran en cuarentena
		insert ignore cuarentena_detalle
		SELECT a.codigo_del_cliente,a.fecha_liquidacion,a.contrata,a.tecnico,a.mac2,a.codigo_del_grupo_req ,a.codigo_tipo_req,
			IF(f.MACState ='Offline' AND f.macaddress IS NULL ,'NO OK',
			IF(e.DSMER_SNR ='-----','Incierto',
			IF(e.DSMER_SNR IS NULL AND f.macstate IN ('w-online','online','operational'),'Incierto',
			IF(f.macstate IS NULL AND e.DSMER_SNR IS NULL,'NO OK',
			IF(f.macstate NOT IN ('w-online','online','operational','offline')  AND DSMER_SNR IS NULL,  CONCAT(f.macstate,'Incierto'),
			IF(e.USPwr <35 OR e.USPwr >57 ,'NO OK',
			IF(e.USMER_SNR <25 AND e.USMER_SNR >0.00 ,'NO OK',
			IF(replace(e.DSPwr,' ','') <-10  OR REPLACE(e.DSPwr,' ','') >12 ,'NO OK',
			IF(e.DSPwr IS NULL, 'Incierto',
			IF(e.DSMER_SNR <27 ,'NO OK','OK')))))))))) AS STATUS,NOW() AS fecha_valida,
			e.USPwr,e.USMER_SNR,REPLACE(e.DSPwr,' ',''),e.DSMER_SNR,f.macstate
		 FROM reportes.cuarentena_base a 
		LEFT JOIN ccm1.scm_total f 
		ON a.mac2=f.MACAddress
		LEFT JOIN ccm1.scm_phy_t e
		ON a.mac2=e.MACAddress;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_plantaRevisadaMilthon` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_plantaRevisadaMilthon` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`mnunez`@`%` PROCEDURE `sp_plantaRevisadaMilthon`()
BEGIN
TRUNCATE TABLE `reportes`.planta_revisada_milthon;
INSERT INTO `reportes`.planta_revisada_milthon
SELECT *, NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0 FROM `planta_revisada`;
UPDATE `reportes`.planta_revisada_milthon SET grupo_status='Sin error' WHERE STATUS IN ('OK');
UPDATE `reportes`.planta_revisada_milthon SET grupo_status='Con error' WHERE STATUS IN ('Niveles NO OK');
UPDATE `reportes`.planta_revisada_milthon SET grupo_status='Con error Offline' WHERE STATUS IN ('Offline - NO OK');
UPDATE `reportes`.planta_revisada_milthon SET grupo_status='Sin evaluacion' WHERE grupo_status='';
UPDATE `reportes`.planta_revisada_milthon SET nodotroba=CONCAT(nodo,troba);
/*Captura el xy*/
UPDATE reportes.planta_revisada_milthon a
INNER JOIN reportes.`xy_clientes_analytics` b
ON a.idclientecrm=b.codcli
SET a.numcoo_x=b.x_,
a.numcoo_y=b.y_,
a.analitycs='si',
a.fecha_alta=b.fecha_alta,
a.mes_alta=b.mes_alta
WHERE b.geocodificado='SI';
UPDATE reportes.planta_revisada_milthon a
INNER JOIN reportes.`xy_clientes_catv` b
ON a.idclientecrm=b.codcli
SET a.numcoo_x=b.numcoo_x,
a.numcoo_y=b.numcoo_y,
a.analitycs='no'
WHERE a.analitycs=''
AND b.numcoo_x<>'' AND b.numcoo_x<>'0';
UPDATE reportes.planta_revisada_milthon a
INNER JOIN reportes.`xy_clientes_catv` b
ON a.idclientecrm=b.codcli
SET a.fecha_alta=CAST(CONCAT(SUBSTR(b.fecliq,7,4),'-',SUBSTR(b.fecliq,4,2),'-',SUBSTR(b.fecliq,1,2)) AS DATE),
a.mes_alta=CONCAT(SUBSTR(b.fecliq,4,2),'-',SUBSTR(b.fecliq,7,4))
WHERE a.fecha_alta='';
UPDATE reportes.planta_revisada_milthon a
INNER JOIN reportes.`prueba_fecha` b
ON a.idclientecrm=b.cliente
SET a.numcoo_x=b.longitud,
a.numcoo_y=b.latitud,
a.analitycs='no'
WHERE a.analitycs=''
AND b.longitud<>'' AND b.longitud IS NOT NULL;
/*-------------------------------------------------------------------------*/
/*Error ruido down*/
UPDATE reportes.planta_revisada_milthon SET error_DSMER_SNR='';
UPDATE reportes.planta_revisada_milthon SET error_DSMER_SNR='no' WHERE DSMER_SNR>=30;
UPDATE reportes.planta_revisada_milthon SET error_DSMER_SNR='n/a' WHERE DSMER_SNR=0 AND error_DSMER_SNR='';
UPDATE reportes.planta_revisada_milthon SET error_DSMER_SNR='si' WHERE DSMER_SNR<30 AND DSMER_SNR>0 AND error_DSMER_SNR='';
UPDATE reportes.planta_revisada_milthon SET error_DSMER_SNR='si' WHERE DSMER_SNR<=0 AND error_DSMER_SNR='';
/*Error ruido Up*/
UPDATE reportes.planta_revisada_milthon SET error_USMER_SNR='';
UPDATE reportes.planta_revisada_milthon SET error_USMER_SNR='no' WHERE USMER_SNR>=27;
UPDATE reportes.planta_revisada_milthon SET error_USMER_SNR='n/a' WHERE USMER_SNR=0 AND error_USMER_SNR='';
UPDATE reportes.planta_revisada_milthon SET error_USMER_SNR='si' WHERE USMER_SNR<27 AND USMER_SNR>0 AND error_USMER_SNR='';
UPDATE reportes.planta_revisada_milthon SET error_USMER_SNR='si' WHERE USMER_SNR<=0 AND error_USMER_SNR='';
/*Error potencia Down*/
UPDATE reportes.planta_revisada_milthon SET error_DSPwr='';
UPDATE reportes.planta_revisada_milthon SET error_DSPwr='no' WHERE DSPwr>=-5 AND DSPwr<=10;
UPDATE reportes.planta_revisada_milthon SET error_DSPwr='n/a' WHERE DSPwr=0 AND error_DSPwr='';
UPDATE reportes.planta_revisada_milthon SET error_DSPwr='si' WHERE error_DSPwr='';
/*Error potencia Up*/
UPDATE reportes.planta_revisada_milthon SET error_USPwr='';
UPDATE reportes.planta_revisada_milthon SET error_USPwr='no' WHERE USPwr>=37 AND USPwr<=55;
UPDATE reportes.planta_revisada_milthon SET error_USPwr='n/a' WHERE USPwr=0 AND error_USPwr='';
UPDATE reportes.planta_revisada_milthon SET error_USPwr='si' WHERE error_USPwr='';
UPDATE reportes.planta_revisada_milthon SET clientes=1;
UPDATE reportes.planta_revisada_milthon SET xerror_USMER_SNR=1 WHERE error_USMER_SNR='si';
UPDATE reportes.planta_revisada_milthon SET xerror_DSMER_SNR=1 WHERE error_DSMER_SNR='si';
UPDATE reportes.planta_revisada_milthon SET xerror_USPwr=1 WHERE error_USPwr='si';
UPDATE reportes.planta_revisada_milthon SET xerror_DSPwr=1 WHERE error_DSPwr='si';
/*Identifica la troba Origen*/
UPDATE reportes.planta_revisada_milthon a
INNER JOIN reportes.`particiones` b
ON a.nodotroba=b.nodotroba
SET a.trobaOrigen=b.trobaOrigen
WHERE b.trobaOrigen<>'';
/*-----------------------------*/
/*Identifica Microzonas*/
UPDATE reportes.planta_revisada_milthon a
INNER JOIN catalogos.`microzonas` b
ON a.nodotroba=b.`nodotroba`
SET a.microzona=b.microzona
WHERE a.nodotroba<>'';
UPDATE reportes.planta_revisada_milthon a
INNER JOIN catalogos.`microzonas` b
ON a.trobaOrigen=b.`nodotroba`
SET a.microzona=b.microzona
WHERE a.trobaOrigen<>'' AND a.microzona='';
/*-------------------------------------------*/
/*Clientes con error Premiun*/
DROP TABLE IF EXISTS reportes.tb_DiagnosticoError;
CREATE TABLE reportes.tb_DiagnosticoError
SELECT idclientecrm,direccion,nodotroba,trobaOrigen,amplificador,tap,servicepackage,
RxPwrdBmv,USPwr,USMER_SNR,DSPwr,DSMER_SNR,STATUS,interface,cmts,fecha_upload,grupo_status,
numcoo_x,numcoo_y,error_DSMER_SNR,error_USMER_SNR,error_DSPwr,error_USPwr,CAST(fecha_upload AS DATE) AS fecha,microzona,analitycs,
SPACE(30) AS proactivo,SPACE(45) AS llave,000 AS clientes, SPACE(5) AS edificio
FROM reportes.`planta_revisada_milthon`
WHERE analitycs<>''
AND (error_DSMER_SNR='si' OR error_USMER_SNR='si' OR error_DSPwr='si' OR error_USPwr='si');
ALTER TABLE reportes.tb_DiagnosticoError ADD INDEX(llave), ADD INDEX(nodotroba), ADD INDEX(numcoo_x);
UPDATE reportes.tb_DiagnosticoError SET llave=CONCAT(nodotroba,SUBSTRING(numcoo_x,1,8),SUBSTRING(numcoo_y,1,8)) 
WHERE nodotroba<>'' AND numcoo_x<>'';
/*Identifica Edificios con error*/
DROP TABLE IF EXISTS reportes.tb_edificios;
CREATE TABLE reportes.tb_edificios
SELECT CONCAT(nodotroba,SUBSTRING(numcoo_x,1,8),SUBSTRING(numcoo_y,1,8)) AS llave,COUNT(*) AS clientes
FROM reportes.tb_DiagnosticoError 
WHERE error_USMER_SNR='si' 
AND llave<>''
GROUP BY 1 HAVING clientes>3 ORDER BY 2 DESC;
ALTER TABLE reportes.tb_edificios ADD INDEX(llave);
UPDATE reportes.tb_DiagnosticoError a
INNER JOIN reportes.tb_edificios b
ON a.llave=b.llave
SET a.clientes=b.clientes,
a.edificio='si'
WHERE a.llave<>'';
    
    
    END */$$
DELIMITER ;

/*Table structure for table `puertos_saturados` */

DROP TABLE IF EXISTS `puertos_saturados`;

/*!50001 DROP VIEW IF EXISTS `puertos_saturados` */;
/*!50001 DROP TABLE IF EXISTS `puertos_saturados` */;

/*!50001 CREATE TABLE  `puertos_saturados`(
 `cmts` varchar(50) ,
 `down` varchar(10) ,
 `uso` varchar(20) ,
 `cant` int(11) ,
 `fecha_hora` char(0) 
)*/;

/*View structure for view puertos_saturados */

/*!50001 DROP TABLE IF EXISTS `puertos_saturados` */;
/*!50001 DROP VIEW IF EXISTS `puertos_saturados` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `puertos_saturados` AS (select `alertasx`.`puertos_down_saturados`.`cmts` AS `cmts`,`alertasx`.`puertos_down_saturados`.`down` AS `down`,`alertasx`.`puertos_down_saturados`.`rangosat` AS `uso`,`alertasx`.`puertos_down_saturados`.`cant` AS `cant`,'' AS `fecha_hora` from `alertasx`.`puertos_down_saturados` where (`alertasx`.`puertos_down_saturados`.`rangosat` >= '80-90')) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

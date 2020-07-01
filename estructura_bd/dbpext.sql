/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - dbpext
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbpext` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dbpext`;

/*Table structure for table `gestion_alertas` */

DROP TABLE IF EXISTS `gestion_alertas`;

CREATE TABLE `gestion_alertas` (
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
  `CONTRATA` varchar(60) DEFAULT NULL,
  `HORACIERRE` varchar(10) DEFAULT NULL,
  `OBSERVACIONES` varchar(200) DEFAULT NULL,
  `ESTADO` varchar(10) DEFAULT NULL,
  `fecha_registro` varchar(20) DEFAULT NULL,
  `fecha_apertura` varchar(20) DEFAULT NULL,
  `fecha_cierre` varchar(20) DEFAULT NULL,
  `fecha_cancela` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ITEM`),
  KEY `NewIndex1` (`NODO`),
  KEY `NewIndex2` (`TROBA`),
  KEY `NewIndex3` (`FINICIO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `glteasg001` */

DROP TABLE IF EXISTS `glteasg001`;

CREATE TABLE `glteasg001` (
  `oficina` varchar(100) DEFAULT NULL,
  `departamento` varchar(100) DEFAULT NULL,
  `provincia` varchar(102) DEFAULT NULL,
  `nodo` varchar(100) DEFAULT NULL,
  `troba` varchar(100) DEFAULT NULL,
  `linext` varchar(100) DEFAULT NULL,
  `tap` varchar(100) DEFAULT NULL,
  `tipotap` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `nroposte` varchar(100) DEFAULT NULL,
  `numborne` varchar(100) DEFAULT NULL,
  `bornesocup` varchar(100) DEFAULT NULL,
  `imped` varchar(100) DEFAULT NULL,
  `plano` varchar(100) DEFAULT NULL,
  `codarea` varchar(100) DEFAULT NULL,
  `sector` varchar(100) DEFAULT NULL,
  `spliter` varchar(100) DEFAULT NULL,
  `indtapdirec` varchar(100) DEFAULT NULL,
  `fecreac` varchar(100) DEFAULT NULL,
  `fecinst` varchar(100) DEFAULT NULL,
  `fecrevi` varchar(100) DEFAULT NULL,
  `fecactu` varchar(100) DEFAULT NULL,
  `fecregi` varchar(100) DEFAULT NULL,
  `distrito` varchar(100) DEFAULT NULL,
  `desdistrito` varchar(100) DEFAULT NULL,
  `tipovia` varchar(100) DEFAULT NULL,
  `nomvia` varchar(100) DEFAULT NULL,
  `numvia` varchar(100) DEFAULT NULL,
  `inte` varchar(100) DEFAULT NULL,
  `piso` varchar(100) DEFAULT NULL,
  `manz` varchar(100) DEFAULT NULL,
  `lote` varchar(100) DEFAULT NULL,
  `tipourb` varchar(100) DEFAULT NULL,
  `urb` varchar(100) DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `fecha_insert` datetime DEFAULT NULL,
  `clavetap` varchar(50) DEFAULT NULL,
  KEY `nodo` (`nodo`),
  KEY `troba` (`troba`),
  KEY `linext` (`linext`),
  KEY `tap` (`tap`),
  KEY `NewIndex1` (`clavetap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `masivas_historico` */

DROP TABLE IF EXISTS `masivas_historico`;

CREATE TABLE `masivas_historico` (
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
  UNIQUE KEY `NewIndex4` (`codreqmnt`),
  KEY `NewIndex1` (`codnod`),
  KEY `NewIndex2` (`nroplano`),
  KEY `NewIndex3` (`fecreg`),
  KEY `check` (`check`)
) ENGINE=InnoDB AUTO_INCREMENT=8900873 DEFAULT CHARSET=latin1;

/*Table structure for table `masivas_historicox` */

DROP TABLE IF EXISTS `masivas_historicox`;

CREATE TABLE `masivas_historicox` (
  `Oficina` varchar(50) DEFAULT NULL,
  `codreqmnt` int(11) DEFAULT NULL,
  `codnod` varchar(50) DEFAULT NULL,
  `nroplano` varchar(50) DEFAULT NULL,
  `Departamento` int(11) DEFAULT NULL,
  `Provincia` int(11) DEFAULT NULL,
  `Tipo_Requerimiento` varchar(50) DEFAULT NULL,
  `Numero_Fercuencia_Averia` int(11) DEFAULT NULL,
  `Tipo_Frecuencia_Averia` varchar(50) DEFAULT NULL,
  `Codigo_Motivo` varchar(50) DEFAULT NULL,
  `Motivo` varchar(50) DEFAULT NULL,
  `codmotact` int(11) DEFAULT NULL,
  `desmotact` varchar(50) DEFAULT NULL,
  `nro_tranf` int(11) DEFAULT NULL,
  `Situacion` int(11) DEFAULT NULL,
  `Codigo_Contrata` int(11) DEFAULT NULL,
  `Nombre_Contrata` varchar(50) DEFAULT NULL,
  `codareahbl` varchar(50) DEFAULT NULL,
  `IndicadorActuacion` varchar(50) DEFAULT NULL,
  `IndicadorCita` varchar(50) DEFAULT NULL,
  `CodigoCita` varchar(50) DEFAULT NULL,
  `FechaInicioCita` varchar(20) DEFAULT NULL,
  `FechaFinCita` varchar(20) DEFAULT NULL,
  `FechaCumplimiento` varchar(20) DEFAULT NULL,
  `EstadoCita` varchar(50) DEFAULT NULL,
  `EstadoActuacionGaudi` varchar(50) DEFAULT NULL,
  `EstadoActuacionCMS` varchar(50) DEFAULT NULL,
  `FechaEnvioGaudi` varchar(20) DEFAULT NULL,
  `FechaRecepcionActuacion` varchar(20) DEFAULT NULL,
  `CodigoErrorEnvio` varchar(50) DEFAULT NULL,
  `DescripcionErrorEnvio` varchar(50) DEFAULT NULL,
  `fechaCambioEstado` varchar(20) DEFAULT NULL,
  `fecliq` varchar(20) DEFAULT NULL,
  `fechaInformada` varchar(20) DEFAULT NULL,
  `fechaRecepcionCierre` varchar(20) DEFAULT NULL,
  `fechacompletoCierre` varchar(20) DEFAULT NULL,
  `CodigoErrorCierre` varchar(50) DEFAULT NULL,
  `DescripcionErrorCierre` varchar(50) DEFAULT NULL,
  `fechaCorrepcionCierre` varchar(20) DEFAULT NULL,
  `Usuario` varchar(50) DEFAULT NULL,
  `CodTipoAct` varchar(50) DEFAULT NULL,
  `Codigo_Tecnico` varchar(50) DEFAULT NULL,
  `Nombre_Tecnico` varchar(50) DEFAULT NULL,
  `fecpri_rec` varchar(50) DEFAULT NULL,
  `fecreg_mas` varchar(50) DEFAULT NULL,
  `fecreg` varchar(20) DEFAULT NULL,
  `Fecha_Ultima_Transferencia` varchar(20) DEFAULT NULL,
  `Fecha_Liquidacion` varchar(20) DEFAULT NULL,
  `Codigo_Franqueo` varchar(50) DEFAULT NULL,
  `Rubro` varchar(50) DEFAULT NULL,
  `Codigo_Liquidacion` varchar(50) DEFAULT NULL,
  `Descripcion_Codigo` varchar(50) DEFAULT NULL,
  `Codigo_Detalle` varchar(50) DEFAULT NULL,
  `Descripcion_Detalle` varchar(50) DEFAULT NULL,
  `Observacion_Orden_Trabajo` varchar(50) DEFAULT NULL,
  `Cantidad_Requerida` int(11) DEFAULT NULL,
  `Nro_Cantidad` int(11) DEFAULT NULL,
  `demotot_atn` varchar(50) DEFAULT NULL,
  `demotot_mas` varchar(50) DEFAULT NULL,
  `demotot_asig` int(11) DEFAULT NULL,
  `Trab_Realizado` varchar(50) DEFAULT NULL,
  `Estado_GO` varchar(50) DEFAULT NULL,
  `Solicitud_Tecnica` varchar(50) DEFAULT NULL,
  `fecha_upload` varchar(20) DEFAULT NULL,
  UNIQUE KEY `codreqmnt` (`codreqmnt`),
  KEY `codnod` (`codnod`),
  KEY `nroplano` (`nroplano`)
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

/*Table structure for table `masivas_temp_c` */

DROP TABLE IF EXISTS `masivas_temp_c`;

CREATE TABLE `masivas_temp_c` (
  `check` varchar(2) NOT NULL,
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

/*Table structure for table `masivas_tempx` */

DROP TABLE IF EXISTS `masivas_tempx`;

CREATE TABLE `masivas_tempx` (
  `Oficina` varchar(50) DEFAULT NULL,
  `codreqmnt` int(11) DEFAULT NULL,
  `codnod` varchar(50) DEFAULT NULL,
  `nroplano` varchar(50) DEFAULT NULL,
  `Departamento` int(11) DEFAULT NULL,
  `Provincia` int(11) DEFAULT NULL,
  `Tipo_Requerimiento` varchar(50) DEFAULT NULL,
  `Numero_Fercuencia_Averia` int(11) DEFAULT NULL,
  `Tipo_Frecuencia_Averia` varchar(50) DEFAULT NULL,
  `Codigo_Motivo` varchar(50) DEFAULT NULL,
  `Motivo` varchar(50) DEFAULT NULL,
  `codmotact` int(11) DEFAULT NULL,
  `desmotact` varchar(50) DEFAULT NULL,
  `nro_tranf` int(11) DEFAULT NULL,
  `Situacion` int(11) DEFAULT NULL,
  `Codigo_Contrata` int(11) DEFAULT NULL,
  `Nombre_Contrata` varchar(50) DEFAULT NULL,
  `codareahbl` varchar(50) DEFAULT NULL,
  `IndicadorActuacion` varchar(50) DEFAULT NULL,
  `IndicadorCita` varchar(50) DEFAULT NULL,
  `CodigoCita` varchar(50) DEFAULT NULL,
  `FechaInicioCita` varchar(20) DEFAULT NULL,
  `FechaFinCita` varchar(20) DEFAULT NULL,
  `FechaCumplimiento` varchar(20) DEFAULT NULL,
  `EstadoCita` varchar(50) DEFAULT NULL,
  `EstadoActuacionGaudi` varchar(50) DEFAULT NULL,
  `EstadoActuacionCMS` varchar(50) DEFAULT NULL,
  `FechaEnvioGaudi` varchar(20) DEFAULT NULL,
  `FechaRecepcionActuacion` varchar(20) DEFAULT NULL,
  `CodigoErrorEnvio` varchar(50) DEFAULT NULL,
  `DescripcionErrorEnvio` varchar(50) DEFAULT NULL,
  `fechaCambioEstado` varchar(20) DEFAULT NULL,
  `fecliq` varchar(20) DEFAULT NULL,
  `fechaInformada` varchar(20) DEFAULT NULL,
  `fechaRecepcionCierre` varchar(20) DEFAULT NULL,
  `fechacompletoCierre` varchar(20) DEFAULT NULL,
  `CodigoErrorCierre` varchar(50) DEFAULT NULL,
  `DescripcionErrorCierre` varchar(50) DEFAULT NULL,
  `fechaCorrepcionCierre` varchar(20) DEFAULT NULL,
  `Usuario` varchar(50) DEFAULT NULL,
  `CodTipoAct` varchar(50) DEFAULT NULL,
  `Codigo_Tecnico` varchar(50) DEFAULT NULL,
  `Nombre_Tecnico` varchar(50) DEFAULT NULL,
  `fecpri_rec` varchar(50) DEFAULT NULL,
  `fecreg_mas` varchar(50) DEFAULT NULL,
  `fecreg` varchar(20) DEFAULT NULL,
  `Fecha_Ultima_Transferencia` varchar(20) DEFAULT NULL,
  `Fecha_Liquidacion` varchar(20) DEFAULT NULL,
  `Codigo_Franqueo` varchar(50) DEFAULT NULL,
  `Rubro` varchar(50) DEFAULT NULL,
  `Codigo_Liquidacion` varchar(50) DEFAULT NULL,
  `Descripcion_Codigo` varchar(50) DEFAULT NULL,
  `Codigo_Detalle` varchar(50) DEFAULT NULL,
  `Descripcion_Detalle` varchar(50) DEFAULT NULL,
  `Observacion_Orden_Trabajo` varchar(50) DEFAULT NULL,
  `Cantidad_Requerida` int(11) DEFAULT NULL,
  `Nro_Cantidad` int(11) DEFAULT NULL,
  `demotot_atn` varchar(50) DEFAULT NULL,
  `demotot_mas` varchar(50) DEFAULT NULL,
  `demotot_asig` int(11) DEFAULT NULL,
  `Trab_Realizado` varchar(50) DEFAULT NULL,
  `Estado_GO` varchar(50) DEFAULT NULL,
  `Solicitud_Tecnica` varchar(50) DEFAULT NULL,
  `fecha_upload` varchar(20) DEFAULT NULL,
  UNIQUE KEY `codreqmnt` (`codreqmnt`),
  KEY `codnod` (`codnod`),
  KEY `nroplano` (`nroplano`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `masivas_tempx_c` */

DROP TABLE IF EXISTS `masivas_tempx_c`;

CREATE TABLE `masivas_tempx_c` (
  `Oficina` varchar(50) DEFAULT NULL,
  `codreqmnt` int(11) DEFAULT NULL,
  `codnod` varchar(50) DEFAULT NULL,
  `nroplano` varchar(50) DEFAULT NULL,
  `Departamento` int(11) DEFAULT NULL,
  `Provincia` int(11) DEFAULT NULL,
  `Tipo_Requerimiento` varchar(50) DEFAULT NULL,
  `Numero_Fercuencia_Averia` int(11) DEFAULT NULL,
  `Tipo_Frecuencia_Averia` varchar(50) DEFAULT NULL,
  `Codigo_Motivo` varchar(50) DEFAULT NULL,
  `Motivo` varchar(50) DEFAULT NULL,
  `codmotact` int(11) DEFAULT NULL,
  `desmotact` varchar(50) DEFAULT NULL,
  `nro_tranf` int(11) DEFAULT NULL,
  `Situacion` int(11) DEFAULT NULL,
  `Codigo_Contrata` int(11) DEFAULT NULL,
  `Nombre_Contrata` varchar(50) DEFAULT NULL,
  `codareahbl` varchar(50) DEFAULT NULL,
  `IndicadorActuacion` varchar(50) DEFAULT NULL,
  `IndicadorCita` varchar(50) DEFAULT NULL,
  `CodigoCita` varchar(50) DEFAULT NULL,
  `FechaInicioCita` varchar(20) DEFAULT NULL,
  `FechaFinCita` varchar(20) DEFAULT NULL,
  `FechaCumplimiento` varchar(20) DEFAULT NULL,
  `EstadoCita` varchar(50) DEFAULT NULL,
  `EstadoActuacionGaudi` varchar(50) DEFAULT NULL,
  `EstadoActuacionCMS` varchar(50) DEFAULT NULL,
  `FechaEnvioGaudi` varchar(20) DEFAULT NULL,
  `FechaRecepcionActuacion` varchar(20) DEFAULT NULL,
  `CodigoErrorEnvio` varchar(50) DEFAULT NULL,
  `DescripcionErrorEnvio` varchar(50) DEFAULT NULL,
  `fechaCambioEstado` varchar(20) DEFAULT NULL,
  `fecliq` varchar(20) DEFAULT NULL,
  `fechaInformada` varchar(20) DEFAULT NULL,
  `fechaRecepcionCierre` varchar(20) DEFAULT NULL,
  `fechacompletoCierre` varchar(20) DEFAULT NULL,
  `CodigoErrorCierre` varchar(50) DEFAULT NULL,
  `DescripcionErrorCierre` varchar(50) DEFAULT NULL,
  `fechaCorrepcionCierre` varchar(20) DEFAULT NULL,
  `Usuario` varchar(50) DEFAULT NULL,
  `CodTipoAct` varchar(50) DEFAULT NULL,
  `Codigo_Tecnico` varchar(50) DEFAULT NULL,
  `Nombre_Tecnico` varchar(50) DEFAULT NULL,
  `fecpri_rec` varchar(50) DEFAULT NULL,
  `fecreg_mas` varchar(50) DEFAULT NULL,
  `fecreg` varchar(20) DEFAULT NULL,
  `Fecha_Ultima_Transferencia` varchar(20) DEFAULT NULL,
  `Fecha_Liquidacion` varchar(20) DEFAULT NULL,
  `Codigo_Franqueo` varchar(50) DEFAULT NULL,
  `Rubro` varchar(50) DEFAULT NULL,
  `Codigo_Liquidacion` varchar(50) DEFAULT NULL,
  `Descripcion_Codigo` varchar(50) DEFAULT NULL,
  `Codigo_Detalle` varchar(50) DEFAULT NULL,
  `Descripcion_Detalle` varchar(50) DEFAULT NULL,
  `Observacion_Orden_Trabajo` varchar(50) DEFAULT NULL,
  `Cantidad_Requerida` int(11) DEFAULT NULL,
  `Nro_Cantidad` int(11) DEFAULT NULL,
  `demotot_atn` varchar(50) DEFAULT NULL,
  `demotot_mas` varchar(50) DEFAULT NULL,
  `demotot_asig` int(11) DEFAULT NULL,
  `Trab_Realizado` varchar(50) DEFAULT NULL,
  `Estado_GO` varchar(50) DEFAULT NULL,
  `Solicitud_Tecnica` varchar(50) DEFAULT NULL,
  `fecha_upload` varchar(20) DEFAULT NULL,
  UNIQUE KEY `codreqmnt` (`codreqmnt`),
  KEY `codnod` (`codnod`),
  KEY `nroplano` (`nroplano`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `negocios` */

DROP TABLE IF EXISTS `negocios`;

CREATE TABLE `negocios` (
  `CLIENTE` int(11) DEFAULT NULL,
  `CUENTA` int(11) DEFAULT NULL,
  `SERVICIO` int(11) DEFAULT NULL,
  `CON_SRV` int(11) DEFAULT NULL,
  `CLASESRV` int(11) DEFAULT NULL,
  `TIPOSRV` int(11) DEFAULT NULL,
  `CATEGORIA` varchar(2) DEFAULT NULL,
  `OFI_CLI` varchar(20) DEFAULT NULL,
  `OFI_SRV` varchar(20) DEFAULT NULL,
  `CODDPT` int(11) DEFAULT NULL,
  `DESDPT` varchar(100) DEFAULT NULL,
  `CODPVC` int(11) DEFAULT NULL,
  `DESPVC` varchar(100) DEFAULT NULL,
  `CODDTT` int(11) DEFAULT NULL,
  `DESDTT` varchar(100) DEFAULT NULL,
  `INDFACT` varchar(5) DEFAULT NULL,
  `NODO` varchar(5) DEFAULT NULL,
  `PLANO` varchar(5) DEFAULT NULL,
  `CODLEX` int(11) DEFAULT NULL,
  `CODTAP` int(11) DEFAULT NULL,
  `CODBOR` int(11) DEFAULT NULL,
  `IND_VIP` varchar(5) DEFAULT NULL,
  `TIPO_DOCUM` varchar(5) DEFAULT NULL,
  `NUMERORUC` int(25) DEFAULT NULL,
  `NUMERODOC` varchar(14) DEFAULT NULL,
  `TELEFCL1` varchar(14) DEFAULT NULL,
  `TELEFCL2` varchar(14) DEFAULT NULL,
  `TELEFCL3` varchar(14) DEFAULT NULL,
  `APE_PAT` varchar(50) DEFAULT NULL,
  `APE_MAT` varchar(50) DEFAULT NULL,
  `NOMBRE` varchar(50) DEFAULT NULL,
  `PETATIS` varchar(50) DEFAULT NULL,
  `UBIPLAN` int(11) DEFAULT NULL,
  `PAIS` varchar(50) DEFAULT NULL,
  `UBIGEO` int(11) DEFAULT NULL,
  `ZONAL_ANT` varchar(50) DEFAULT NULL,
  `REGION` varchar(50) DEFAULT NULL,
  `ZONAL_NEW` varchar(50) DEFAULT NULL,
  `IND_DUNA` varchar(50) DEFAULT NULL,
  `AÑO_DUN` varchar(50) DEFAULT NULL,
  `CRUCE` varchar(50) DEFAULT NULL,
  `PAQUETE` varchar(50) DEFAULT NULL,
  `PAQUETE1` varchar(50) DEFAULT NULL,
  `SUB_NEG` varchar(50) DEFAULT NULL,
  `PROVEEDOR` varchar(50) DEFAULT NULL,
  `TECNOLOGIA` varchar(50) DEFAULT NULL,
  `PERU8K` varchar(50) DEFAULT NULL,
  `EX_CTA` varchar(50) DEFAULT NULL,
  `MARCAA` int(11) DEFAULT NULL,
  `CND_SRV_01` int(11) DEFAULT NULL,
  `CND_SRV_02` int(11) DEFAULT NULL,
  `CND_SRV_03` int(11) DEFAULT NULL,
  `EXCLUSANT` varchar(50) DEFAULT NULL,
  `PROV_ANT` varchar(50) DEFAULT NULL,
  `NEGO_ANT` varchar(50) DEFAULT NULL,
  `CSER_ANT` int(11) DEFAULT NULL,
  `PAQU_ANT` varchar(50) DEFAULT NULL,
  `PAQU1_ANT` varchar(50) DEFAULT NULL,
  `SEGMENTO` varchar(50) DEFAULT NULL,
  `MARCA_SUS` int(11) DEFAULT NULL,
  `EXCLU_SUS` varchar(50) DEFAULT NULL,
  `EX_BJ_INCO` varchar(50) DEFAULT NULL,
  `IND_EXCLUS` varchar(50) DEFAULT NULL,
  `MARCAB` varchar(50) DEFAULT NULL,
  `FEPROC` varchar(20) DEFAULT NULL,
  `SEG_CMS` varchar(30) DEFAULT NULL,
  `SEGMENTO_NEG` varchar(30) DEFAULT NULL,
  `SUBSEGMENTO_NEG` varchar(30) DEFAULT NULL,
  `TIPREQ` varchar(30) DEFAULT NULL,
  `CODMOTV` varchar(30) DEFAULT NULL,
  `FECREGSRV` varchar(20) DEFAULT NULL,
  `DIGITALIZADO` varchar(30) DEFAULT NULL,
  `FECHASUSPENSION` varchar(30) DEFAULT NULL,
  `TIPOREQSUSPENSION` varchar(30) DEFAULT NULL,
  `CODCLI` int(11) DEFAULT NULL,
  `CLIENTE_1` varchar(150) DEFAULT NULL,
  `RUC` varchar(20) DEFAULT NULL,
  KEY `CLIENTE` (`CLIENTE`),
  KEY `NODO` (`NODO`),
  KEY `PLANO` (`PLANO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `remedy` */

DROP TABLE IF EXISTS `remedy`;

CREATE TABLE `remedy` (
  `numreq` int(11) DEFAULT NULL,
  `remedy` varchar(30) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL,
  KEY `numreq` (`numreq`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `supervisor` */

DROP TABLE IF EXISTS `supervisor`;

CREATE TABLE `supervisor` (
  `supervisor` varchar(150) DEFAULT NULL,
  `supervisor1` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tempcli` */

DROP TABLE IF EXISTS `tempcli`;

CREATE TABLE `tempcli` (
  `codcli` int(11) DEFAULT NULL,
  KEY `NewIndex1` (`codcli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tempcli_c` */

DROP TABLE IF EXISTS `tempcli_c`;

CREATE TABLE `tempcli_c` (
  `codcli` int(11) DEFAULT NULL,
  KEY `NewIndex1` (`codcli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tempmac` */

DROP TABLE IF EXISTS `tempmac`;

CREATE TABLE `tempmac` (
  `macaddress` varchar(25) NOT NULL,
  UNIQUE KEY `NewIndex1` (`macaddress`)
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
) ENGINE=MyISAM AUTO_INCREMENT=43752 DEFAULT CHARSET=latin1;

/*Table structure for table `trabajos_programados_c` */

DROP TABLE IF EXISTS `trabajos_programados_c`;

CREATE TABLE `trabajos_programados_c` (
  `ITEM` int(11) NOT NULL AUTO_INCREMENT,
  `NODO` varchar(2) NOT NULL,
  `TROBA` varchar(4) NOT NULL,
  `AMP` varchar(80) DEFAULT NULL,
  `TIPODETRABAJO` varchar(200) NOT NULL,
  `SUPERVISOR` varchar(150) DEFAULT NULL,
  `FINICIO` varchar(20) NOT NULL,
  `HINICIO` varchar(10) NOT NULL,
  `HTERMINO` varchar(10) NOT NULL,
  `HORARIO` varchar(10) NOT NULL,
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
  PRIMARY KEY (`ITEM`,`NODO`,`TROBA`,`TIPODETRABAJO`,`FINICIO`,`HINICIO`,`HTERMINO`,`HORARIO`),
  KEY `NewIndex1` (`NODO`),
  KEY `NewIndex2` (`TROBA`),
  KEY `NewIndex3` (`FINICIO`),
  KEY `ESTADO` (`ESTADO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `trabajos_programados_prueba` */

DROP TABLE IF EXISTS `trabajos_programados_prueba`;

CREATE TABLE `trabajos_programados_prueba` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/* Procedure structure for procedure `masivas_proc` */

/*!50003 DROP PROCEDURE IF EXISTS  `masivas_proc` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `masivas_proc`()
BEGIN
TRUNCATE TABLE alertasx.`masivas_temp`;
INSERT IGNORE alertasx.`masivas_temp`
SELECT `check`,
`numfrecave`,
`tipfrecave`,
`fecreg`,
`codofcadm`,
`codcmts`,
`codnod`,
`nroplano`,
`codtrtrn`,
`edofrecave`,
`cantreq`,
`nrocant`,
`fecultact`,
`coddpt`,
`codpvc`,
`codreqmnt`,
`codctr`,
`codedo`,
`fecliq`,
`indorigreq`,
`cantreqliq`,
`codareahbl`,
`indactuacion`,
`indseginc`,
`indinc`,
`codinc`,
`fecha_upload` 
FROM dbpext.`masivas_temp`;
INSERT IGNORE alertasx.`masivas_temp`
SELECT 
ROUND(RAND()*5000000,0) AS `check`,
ROUND(RAND()*7000000,0) AS numfrecave,
'01' AS tipfrecave,
NOW() AS fecreg,
jefatura AS codofcadm,
'' AS codcmts,
nodo AS codnod,
troba AS nroplano,
troba AS codtrtrn,
'S' AS edofrecave,
offline AS cantreq,
offline AS nrocant,
NOW() AS fecultact,
'' AS coddpt,
'' AS codpvc,
ROUND(RAND()*300000,0) AS codreqmnt,
12 AS codctr,
'S' AS codedo,
'' AS fecliq,
'M' AS indorigreq,
0 AS cantreqliq,
'PLTAEXT' AS codareahbl,
'' AS indactuacion,
0 AS indseginc,
0 AS indinc,
0 AS codinc,
NOW() AS fecha_upload
FROM alertasx.caidas_new force index(estado) WHERE estado='CONTINUA';
    END */$$
DELIMITER ;

/*Table structure for table `digitalizacion_view` */

DROP TABLE IF EXISTS `digitalizacion_view`;

/*!50001 DROP VIEW IF EXISTS `digitalizacion_view` */;
/*!50001 DROP TABLE IF EXISTS `digitalizacion_view` */;

/*!50001 CREATE TABLE  `digitalizacion_view`(
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `TIPODETRABAJO` varchar(200) ,
 `ESTADO` varchar(10) ,
 `finicio` varchar(20) ,
 `fecha_apertura` varchar(20) ,
 `fecha_cierre` varchar(20) ,
 `fecha_registro` varchar(20) ,
 `MENSAJE` varchar(56) 
)*/;

/*Table structure for table `trabajos_pendientes_view` */

DROP TABLE IF EXISTS `trabajos_pendientes_view`;

/*!50001 DROP VIEW IF EXISTS `trabajos_pendientes_view` */;
/*!50001 DROP TABLE IF EXISTS `trabajos_pendientes_view` */;

/*!50001 CREATE TABLE  `trabajos_pendientes_view`(
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `TIPODETRABAJO` varchar(200) ,
 `ESTADO` varchar(10) ,
 `finicio` varchar(20) ,
 `fecha_apertura` varchar(20) 
)*/;

/*Table structure for table `trabajos_prog_offline` */

DROP TABLE IF EXISTS `trabajos_prog_offline`;

/*!50001 DROP VIEW IF EXISTS `trabajos_prog_offline` */;
/*!50001 DROP TABLE IF EXISTS `trabajos_prog_offline` */;

/*!50001 CREATE TABLE  `trabajos_prog_offline`(
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `amplificador` varchar(4) ,
 `offline` bigint(21) 
)*/;

/*Table structure for table `trabprog2dias_view` */

DROP TABLE IF EXISTS `trabprog2dias_view`;

/*!50001 DROP VIEW IF EXISTS `trabprog2dias_view` */;
/*!50001 DROP TABLE IF EXISTS `trabprog2dias_view` */;

/*!50001 CREATE TABLE  `trabprog2dias_view`(
 `nodo` varchar(2) ,
 `troba` varchar(4) ,
 `TIPODETRABAJO` varchar(200) ,
 `trabprog` varchar(53) ,
 `ESTADO` varchar(10) 
)*/;

/*View structure for view digitalizacion_view */

/*!50001 DROP TABLE IF EXISTS `digitalizacion_view` */;
/*!50001 DROP VIEW IF EXISTS `digitalizacion_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `digitalizacion_view` AS (select `a`.`NODO` AS `nodo`,`a`.`TROBA` AS `troba`,`a`.`TIPODETRABAJO` AS `TIPODETRABAJO`,`a`.`ESTADO` AS `ESTADO`,max(`a`.`FINICIO`) AS `finicio`,max(`a`.`fecha_apertura`) AS `fecha_apertura`,max(`a`.`fecha_cierre`) AS `fecha_cierre`,max(`a`.`fecha_registro`) AS `fecha_registro`,if((((to_days(now()) - to_days(max(`a`.`fecha_registro`))) <= 8) and (`b`.`sede` = 'LIMA')),'<b>Generar Rutina I128</b></br>DIGITALIZACION NUEVA</BR>',if((((to_days(now()) - to_days(max(`a`.`fecha_registro`))) <= 15) and (`b`.`sede` <> 'LIMA')),'DIGITALIZACION NUEVA</br><b>Generar Rutina I128</b></BR>','DIGITALIZACION ANTIGUA')) AS `MENSAJE` from (`dbpext`.`trabajos_programados` `a` join `ccm1`.`zonales_nodos_eecc` `b` on((`a`.`NODO` = `b`.`nodo`))) where ((`a`.`TIPODETRABAJO` = 'DIGITALIZACION') and (`a`.`ESTADO` not in ('CANCELADO','PENDIENTE'))) group by `a`.`NODO`,`a`.`TROBA` order by `a`.`NODO`,`a`.`TROBA`,`a`.`fecha_registro` desc) */;

/*View structure for view trabajos_pendientes_view */

/*!50001 DROP TABLE IF EXISTS `trabajos_pendientes_view` */;
/*!50001 DROP VIEW IF EXISTS `trabajos_pendientes_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `trabajos_pendientes_view` AS (select `trabajos_programados`.`NODO` AS `nodo`,`trabajos_programados`.`TROBA` AS `troba`,`trabajos_programados`.`TIPODETRABAJO` AS `TIPODETRABAJO`,`trabajos_programados`.`ESTADO` AS `ESTADO`,`trabajos_programados`.`FINICIO` AS `finicio`,`trabajos_programados`.`fecha_apertura` AS `fecha_apertura` from `trabajos_programados` where (((to_days(now()) - to_days(`trabajos_programados`.`FINICIO`)) <= 0) and (`trabajos_programados`.`ESTADO` = 'ENPROCESO')) group by `trabajos_programados`.`NODO`,`trabajos_programados`.`TROBA`) */;

/*View structure for view trabajos_prog_offline */

/*!50001 DROP TABLE IF EXISTS `trabajos_prog_offline` */;
/*!50001 DROP VIEW IF EXISTS `trabajos_prog_offline` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `trabajos_prog_offline` AS (select `a`.`nodo` AS `nodo`,`b`.`TROBA` AS `troba`,`a`.`amplificador` AS `amplificador`,count(0) AS `offline` from (`alertasx`.`clientes_alertados` `a` join `dbpext`.`trabajos_programados` `b` on(((`a`.`nodo` = `b`.`NODO`) and (`a`.`troba` = `b`.`TROBA`)))) where ((`b`.`ESTADO` in ('PENDIENTE','ABIERTO','ENPROCESO')) and ((to_days(now()) - to_days(`b`.`FINICIO`)) >= 0)) group by `a`.`nodo`,`a`.`troba`,`a`.`amplificador`) */;

/*View structure for view trabprog2dias_view */

/*!50001 DROP TABLE IF EXISTS `trabprog2dias_view` */;
/*!50001 DROP VIEW IF EXISTS `trabprog2dias_view` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `trabprog2dias_view` AS (select `trabajos_programados`.`NODO` AS `nodo`,`trabajos_programados`.`TROBA` AS `troba`,`trabajos_programados`.`TIPODETRABAJO` AS `TIPODETRABAJO`,concat('Fecha:',`trabajos_programados`.`FINICIO`,' de ',`trabajos_programados`.`HINICIO`,' a ',`trabajos_programados`.`HTERMINO`) AS `trabprog`,`trabajos_programados`.`ESTADO` AS `ESTADO` from `trabajos_programados` where ((to_days(now()) - to_days(`trabajos_programados`.`fecha_apertura`)) <= 2) group by `trabajos_programados`.`NODO`,`trabajos_programados`.`TROBA`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

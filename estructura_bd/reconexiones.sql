/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - reconexiones
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`reconexiones` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `reconexiones`;

/*Table structure for table `ReporteSuspensiones` */

DROP TABLE IF EXISTS `ReporteSuspensiones`;

CREATE TABLE `ReporteSuspensiones` (
  `Cliente` varchar(100) DEFAULT NULL,
  `TipoC` varchar(50) DEFAULT NULL,
  `CodCliente` int(11) DEFAULT NULL,
  `CodServicio` int(11) DEFAULT NULL,
  `Telefono` varchar(10) DEFAULT NULL,
  `Celular` varchar(10) DEFAULT NULL,
  `TipoServicio` varchar(10) DEFAULT NULL,
  `Inscripcion` varchar(10) DEFAULT NULL,
  `CMS` varchar(20) DEFAULT NULL,
  `ATIS` varchar(20) DEFAULT NULL,
  `MultiC` varchar(20) DEFAULT NULL,
  `Fecha` varchar(20) DEFAULT NULL,
  KEY `Cliente` (`Cliente`),
  KEY `CodCliente` (`CodCliente`),
  KEY `CodServicio` (`CodServicio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `cortesyreconex_tramas` */

DROP TABLE IF EXISTS `cortesyreconex_tramas`;

CREATE TABLE `cortesyreconex_tramas` (
  `idclientecrm` double DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `fecha_reg` varchar(10) DEFAULT NULL,
  `proceso` int(1) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `fecha_proceso` varchar(20) DEFAULT NULL,
  UNIQUE KEY `idclientecrm` (`idclientecrm`,`idproducto`,`fecha_reg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `pagos_del_dia` */

DROP TABLE IF EXISTS `pagos_del_dia`;

CREATE TABLE `pagos_del_dia` (
  `COD_SERVICIO` varchar(1) DEFAULT NULL,
  `COD_CIUDAD` int(11) DEFAULT NULL,
  `NUM_FACTURA` int(11) DEFAULT NULL,
  `FEC_EMISION` int(11) DEFAULT NULL,
  `COD_MONEDA` int(11) DEFAULT NULL,
  `NUM_ABONADO` int(11) DEFAULT NULL,
  `NUM_INSCRIPCION` int(11) DEFAULT NULL,
  `NUM_CENTRAL` int(11) DEFAULT NULL,
  `MTO_TOTAL` varchar(10) DEFAULT NULL,
  `COD_TIPO_DOCUMENTO` varchar(2) DEFAULT NULL,
  `COD_TIPO_ENTIDAD` varchar(2) DEFAULT NULL,
  `COD_ENTIDAD` int(11) DEFAULT NULL,
  `COD_SUCURSAL` int(11) DEFAULT NULL,
  `COD_AGENCIA` int(11) DEFAULT NULL,
  `COD_PUNTO_PAGO` varchar(8) DEFAULT NULL,
  `FEC_PAGO` int(11) DEFAULT NULL,
  `HOR_PAGO` int(11) DEFAULT NULL,
  `COD_NEGOCIO` int(11) DEFAULT NULL,
  `VIA_PAGO` int(11) DEFAULT NULL,
  `NUM_AUTORIZACION` int(11) DEFAULT NULL,
  `NUM_TRACE` int(11) DEFAULT NULL,
  `FILLER1` int(11) DEFAULT NULL,
  `NUM_COMPROBANTE` int(11) DEFAULT NULL,
  `RUC` int(11) DEFAULT NULL,
  `FILLER2` int(11) DEFAULT NULL,
  UNIQUE KEY `NUM_ABONADO` (`NUM_ABONADO`),
  KEY `FEC_PAGO` (`FEC_PAGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `reconex_con_req_cor` */

DROP TABLE IF EXISTS `reconex_con_req_cor`;

CREATE TABLE `reconex_con_req_cor` (
  `codcli` varchar(50) DEFAULT NULL,
  `codsrv` varchar(20) DEFAULT NULL,
  `codreqsrv` int(11) DEFAULT NULL,
  `codcta` int(11) DEFAULT NULL,
  `indvip` varchar(1) DEFAULT NULL,
  `desapepat` varchar(50) DEFAULT NULL,
  `desapemtr` varchar(50) DEFAULT NULL,
  `desnomcli` varchar(50) DEFAULT NULL,
  `codofcadm` varchar(3) DEFAULT NULL,
  `indorigreq` varchar(1) DEFAULT NULL,
  `tipreq` varchar(2) DEFAULT NULL,
  `codmotv` varchar(4) DEFAULT NULL,
  `desmotv` varchar(50) DEFAULT NULL,
  `codoferta` varchar(50) DEFAULT NULL,
  `codnod` varchar(2) DEFAULT NULL,
  `nroplano` varchar(4) DEFAULT NULL,
  `codest` varchar(50) DEFAULT NULL,
  `codsit` int(11) DEFAULT NULL,
  `dessit` varchar(50) DEFAULT NULL,
  `codmotact` varchar(4) DEFAULT NULL,
  `desmotvx` varchar(50) DEFAULT NULL,
  `codedo` varchar(1) DEFAULT NULL,
  `desedo` varchar(50) DEFAULT NULL,
  `codclasrv` int(11) DEFAULT NULL,
  `tipsrv` int(11) DEFAULT NULL,
  `codcnd` int(11) DEFAULT NULL,
  `desobs` varchar(50) DEFAULT NULL,
  `fecregreq` varchar(20) DEFAULT NULL,
  `fecest` varchar(20) DEFAULT NULL,
  `fecprg` varchar(20) DEFAULT NULL,
  `fecliq` varchar(20) DEFAULT NULL,
  `fecultfac` varchar(20) DEFAULT NULL,
  `codctr` int(11) DEFAULT NULL,
  `codusrgen` varchar(20) DEFAULT NULL,
  `codusr` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `codcnlvta` varchar(20) DEFAULT NULL,
  `codgrpvta` varchar(20) DEFAULT NULL,
  `codvdd` varchar(20) DEFAULT NULL,
  `codsolatn` int(11) DEFAULT NULL,
  `TipoCatv` varchar(20) DEFAULT NULL,
  `fechaupdate` varchar(20) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  UNIQUE KEY `codcli_2` (`codcli`,`codsrv`,`fechaupdate`),
  KEY `codcli` (`codcli`),
  KEY `codsrv` (`codsrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `refresh_masivos_rx` */

DROP TABLE IF EXISTS `refresh_masivos_rx`;

CREATE TABLE `refresh_masivos_rx` (
  `codigo_req` int(16) DEFAULT NULL,
  `codigo_del_cliente` int(16) DEFAULT NULL,
  `serie` varchar(22) CHARACTER SET utf8 DEFAULT NULL,
  `fecha_liquidacion` varchar(20) DEFAULT NULL,
  `trama` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `fecha_hora` varchar(20) NOT NULL,
  `sw` varchar(2) CHARACTER SET utf8 NOT NULL,
  UNIQUE KEY `codigo_req` (`codigo_req`,`codigo_del_cliente`,`serie`,`fecha_hora`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `rx_cable_multi_hfc_hist` */

DROP TABLE IF EXISTS `rx_cable_multi_hfc_hist`;

CREATE TABLE `rx_cable_multi_hfc_hist` (
  `codcli` varchar(50) DEFAULT NULL,
  `codsrv` varchar(20) DEFAULT NULL,
  `codreqsrv` int(11) DEFAULT NULL,
  `codcta` int(11) DEFAULT NULL,
  `indvip` varchar(1) DEFAULT NULL,
  `desapepat` varchar(50) DEFAULT NULL,
  `desapemtr` varchar(50) DEFAULT NULL,
  `desnomcli` varchar(50) DEFAULT NULL,
  `codofcadm` varchar(3) DEFAULT NULL,
  `indorigreq` varchar(1) DEFAULT NULL,
  `tipreq` varchar(2) DEFAULT NULL,
  `codmotv` varchar(4) DEFAULT NULL,
  `desmotv` varchar(50) DEFAULT NULL,
  `codoferta` varchar(50) DEFAULT NULL,
  `codnod` varchar(2) DEFAULT NULL,
  `nroplano` varchar(4) DEFAULT NULL,
  `codest` varchar(50) DEFAULT NULL,
  `codsit` int(11) DEFAULT NULL,
  `dessit` varchar(50) DEFAULT NULL,
  `codmotact` varchar(4) DEFAULT NULL,
  `desmotvx` varchar(50) DEFAULT NULL,
  `codedo` varchar(1) DEFAULT NULL,
  `desedo` varchar(50) DEFAULT NULL,
  `codclasrv` int(11) DEFAULT NULL,
  `tipsrv` int(11) DEFAULT NULL,
  `codcnd` int(11) DEFAULT NULL,
  `desobs` varchar(50) DEFAULT NULL,
  `fecregreq` varchar(20) DEFAULT NULL,
  `fecest` varchar(20) DEFAULT NULL,
  `fecprg` varchar(20) DEFAULT NULL,
  `fecliq` varchar(20) DEFAULT NULL,
  `fecultfac` varchar(20) DEFAULT NULL,
  `codctr` int(11) DEFAULT NULL,
  `codusrgen` varchar(20) DEFAULT NULL,
  `codusr` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `codcnlvta` varchar(20) DEFAULT NULL,
  `codgrpvta` varchar(20) DEFAULT NULL,
  `codvdd` varchar(20) DEFAULT NULL,
  `codsolatn` int(11) DEFAULT NULL,
  `TipoCatv` varchar(20) DEFAULT NULL,
  `fechaupdate` varchar(20) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  UNIQUE KEY `codcli_2` (`codcli`,`codsrv`,`fechaupdate`),
  KEY `codcli` (`codcli`),
  KEY `codsrv` (`codsrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `rx_cable_multi_hfc_log` */

DROP TABLE IF EXISTS `rx_cable_multi_hfc_log`;

CREATE TABLE `rx_cable_multi_hfc_log` (
  `fecha_proceso` datetime DEFAULT NULL,
  `fecha_archivo` varchar(50) DEFAULT NULL,
  `resultado` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `rx_cable_multi_hfc_proceso1` */

DROP TABLE IF EXISTS `rx_cable_multi_hfc_proceso1`;

CREATE TABLE `rx_cable_multi_hfc_proceso1` (
  `IDCLIENTECRM` double DEFAULT NULL,
  `cant_nclientes` bigint(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `rx_cable_multi_hfc_proceso2` */

DROP TABLE IF EXISTS `rx_cable_multi_hfc_proceso2`;

CREATE TABLE `rx_cable_multi_hfc_proceso2` (
  `IDCLIENTECRM` double DEFAULT NULL,
  `cant_nclientes` bigint(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `rx_cable_multi_hfc_proceso3` */

DROP TABLE IF EXISTS `rx_cable_multi_hfc_proceso3`;

CREATE TABLE `rx_cable_multi_hfc_proceso3` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `IDCLIENTECRM` double DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `sp` varchar(100) DEFAULT NULL,
  `scopegroup` varchar(50) DEFAULT NULL,
  `fecha_archivo` varchar(50) DEFAULT NULL,
  `procesado` tinyint(4) DEFAULT '0',
  `fecha_proceso` datetime DEFAULT NULL,
  `respuesta_iw` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDCLIENTECRM_2` (`IDCLIENTECRM`,`fecha_archivo`),
  KEY `IDCLIENTECRM` (`IDCLIENTECRM`),
  KEY `idservicio` (`idservicio`),
  KEY `idproducto` (`idproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/* Procedure structure for procedure `sp_refresh_rx` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_refresh_rx` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `sp_refresh_rx`()
BEGIN
	insert ignore `reconexiones`.refresh_masivos_rx
	SELECT codigo_req,codigo_del_cliente,serie,fecha_liquidacion,CONCAT("sshpass -p 'Santana' ssh -p 9561 -o StrictHostKeyChecking=no ehuertasf@190.234.74.6 'php /home/rfalla/tramasDecos3.php ",b.serie," ",b.codmat," A'") AS trama,NOW() AS fecha_hora,'' AS sw
	FROM cms.`prov_liq_catv_pais` a INNER JOIN catalogos.`cablemodem_glciexp054_decos` b
	ON a.codigo_del_cliente=b.`codcliente` 
	WHERE DATEDIFF(NOW(),a.fecha_registro)<=1
	AND a.codigo_del_grupo_req='RX'  AND b.`codelemsrv`='DED' AND b.desccondcl='ACTIVO' AND b.descconsrv='ACTIVO' AND b.edocompxsr='A';
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

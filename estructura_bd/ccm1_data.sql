/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - ccm1_data
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ccm1_data` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ccm1_data`;

/*Table structure for table `a1` */

DROP TABLE IF EXISTS `a1`;

CREATE TABLE `a1` (
  `codcliente_cms` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `alex3` */

DROP TABLE IF EXISTS `alex3`;

CREATE TABLE `alex3` (
  `codcliente` varchar(50) DEFAULT NULL,
  `NroCliente` double DEFAULT NULL,
  `Nombre` varchar(200) DEFAULT NULL,
  `MACAddress` varchar(20) DEFAULT NULL,
  `Fabricante` varchar(20) DEFAULT NULL,
  `Modelo` varchar(100) DEFAULT NULL,
  `oui` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `clientes_incidencias` */

DROP TABLE IF EXISTS `clientes_incidencias`;

CREATE TABLE `clientes_incidencias` (
  `codcliente` varchar(50) DEFAULT NULL,
  KEY `indx1` (`codcliente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cm_revisar_valores_iw` */

DROP TABLE IF EXISTS `cm_revisar_valores_iw`;

CREATE TABLE `cm_revisar_valores_iw` (
  `idproducto` int(11) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `pwr_down` varchar(50) DEFAULT NULL,
  `pwr_up` varchar(50) DEFAULT NULL,
  `snr_down` varchar(50) DEFAULT NULL,
  `snr_up` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cmts_ip` */

DROP TABLE IF EXISTS `cmts_ip`;

CREATE TABLE `cmts_ip` (
  `cmts` varchar(50) DEFAULT NULL,
  `ip` varchar(40) DEFAULT NULL,
  `abrev` varchar(4) DEFAULT NULL,
  `docsis3` tinyint(4) DEFAULT '0',
  `cisco` tinyint(4) DEFAULT '1',
  `activo` tinyint(4) DEFAULT '1',
  KEY `idx1` (`cmts`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cmts_show_run` */

DROP TABLE IF EXISTS `cmts_show_run`;

CREATE TABLE `cmts_show_run` (
  `cmts` varchar(100) DEFAULT NULL,
  `interfaz` varchar(255) DEFAULT NULL,
  `llave_interfaz` varchar(150) DEFAULT NULL,
  `down1` varchar(255) DEFAULT NULL,
  `modular1` varchar(100) DEFAULT NULL,
  `wide1` varchar(100) DEFAULT NULL,
  `modular1_wide1` varchar(200) DEFAULT NULL,
  `modular1_wide2` varchar(200) DEFAULT NULL,
  `down2` varchar(255) DEFAULT NULL,
  `modular2` varchar(100) DEFAULT NULL,
  `wide2` varchar(100) DEFAULT NULL,
  `modular2_wide1` varchar(200) DEFAULT NULL,
  `modular2_wide2` varchar(200) DEFAULT NULL,
  `campo4` varchar(30) DEFAULT NULL,
  `campo5` varchar(30) DEFAULT NULL,
  `campo6` int(11) DEFAULT NULL,
  `campo7` int(11) DEFAULT NULL,
  `totalPortadoras` int(11) DEFAULT NULL,
  KEY `idx1` (`modular1`),
  KEY `idx2` (`modular2`),
  KEY `idx3` (`llave_interfaz`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cmts_show_run_wide` */

DROP TABLE IF EXISTS `cmts_show_run_wide`;

CREATE TABLE `cmts_show_run_wide` (
  `cmts` varchar(100) DEFAULT NULL,
  `interfaz` varchar(255) DEFAULT NULL,
  `min` varchar(20) DEFAULT NULL,
  `max` varchar(20) DEFAULT NULL,
  `minmax` varchar(25) DEFAULT NULL,
  `modular` varchar(150) DEFAULT NULL,
  `llave_cacti` varchar(255) DEFAULT NULL,
  `wideband` varchar(200) DEFAULT NULL,
  KEY `idx1` (`llave_cacti`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `gps_capturaweb` */

DROP TABLE IF EXISTS `gps_capturaweb`;

CREATE TABLE `gps_capturaweb` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `latitud` varchar(255) DEFAULT NULL,
  `longitud` varchar(255) DEFAULT NULL,
  `elemento` varchar(100) DEFAULT NULL,
  `fecha_captura` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Table structure for table `listamodems` */

DROP TABLE IF EXISTS `listamodems`;

CREATE TABLE `listamodems` (
  `docsis` varchar(7) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Empresa` varchar(3) DEFAULT NULL,
  `NroCliente` varchar(200) DEFAULT NULL,
  `Nombre` varchar(200) DEFAULT NULL,
  `MACAddress` varchar(20) DEFAULT NULL,
  `Fechadealta` varchar(20) DEFAULT NULL,
  `Fechadeactivacion` varchar(20) DEFAULT NULL,
  `Fabricante` varchar(100) DEFAULT NULL,
  `Modelo` varchar(100) DEFAULT NULL,
  `Versioon` varchar(100) DEFAULT NULL,
  `Tipodedispositivo` varchar(100) DEFAULT NULL,
  `IPCablemodem` varchar(20) DEFAULT NULL,
  `CMTS` varchar(20) DEFAULT NULL,
  `temp` varchar(20) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  `fecha_activacion` datetime DEFAULT NULL
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
  `hwversion` varchar(100) DEFAULT NULL,
  `Versioon` varchar(100) DEFAULT NULL,
  `Tipodedispositivo` varchar(100) DEFAULT NULL,
  `IPCablemodem` varchar(20) DEFAULT NULL,
  `CMTS` varchar(30) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `docsis_version` varchar(50) DEFAULT NULL,
  `service_package` varchar(50) DEFAULT NULL,
  `service_package_crmid` varchar(50) DEFAULT NULL,
  `scopesgroup` varchar(30) DEFAULT NULL,
  `mta_mac` varchar(20) DEFAULT NULL,
  `mta_modelo` varchar(100) DEFAULT NULL,
  `fecha_upload` varchar(20) DEFAULT NULL,
  KEY `NewIndex1` (`NroCliente`),
  KEY `NewIndex3` (`CMTS`),
  KEY `NewIndex4` (`Fabricante`),
  KEY `NewIndex2` (`MACAddress`),
  KEY `Modelo` (`Modelo`),
  KEY `Versioon` (`Versioon`),
  KEY `mta_mac` (`mta_mac`),
  KEY `service_package` (`service_package`),
  KEY `scopesgroup` (`scopesgroup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `marca_modelo_c` */

DROP TABLE IF EXISTS `marca_modelo_c`;

CREATE TABLE `marca_modelo_c` (
  `Empresa` varchar(3) DEFAULT NULL,
  `NroCliente` double DEFAULT NULL,
  `Nombre` varchar(200) DEFAULT NULL,
  `MACAddress` varchar(20) DEFAULT NULL,
  `Fechadealta` varchar(20) DEFAULT NULL,
  `Fechadeactivacion` varchar(20) DEFAULT NULL,
  `Fabricante` varchar(20) DEFAULT NULL,
  `Modelo` varchar(100) DEFAULT NULL,
  `hwversion` varchar(100) DEFAULT NULL,
  `Versioon` varchar(100) DEFAULT NULL,
  `Tipodedispositivo` varchar(100) DEFAULT NULL,
  `IPCablemodem` varchar(20) DEFAULT NULL,
  `CMTS` varchar(30) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `docsis_version` varchar(50) DEFAULT NULL,
  `service_package` varchar(50) DEFAULT NULL,
  `service_package_crmid` varchar(50) DEFAULT NULL,
  `scopesgroup` varchar(30) DEFAULT NULL,
  `mta_mac` varchar(20) DEFAULT NULL,
  `mta_modelo` varchar(100) DEFAULT NULL,
  `fecha_upload` varchar(20) DEFAULT NULL,
  KEY `NewIndex1` (`NroCliente`),
  KEY `NewIndex3` (`CMTS`),
  KEY `NewIndex4` (`Fabricante`),
  KEY `NewIndex2` (`MACAddress`),
  KEY `Modelo` (`Modelo`),
  KEY `Versioon` (`Versioon`),
  KEY `mta_mac` (`mta_mac`),
  KEY `service_package` (`service_package`),
  KEY `scopesgroup` (`scopesgroup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `marca_modelo_catalogo` */

DROP TABLE IF EXISTS `marca_modelo_catalogo`;

CREATE TABLE `marca_modelo_catalogo` (
  `marca` varchar(255) DEFAULT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `tipodocsis` varchar(255) DEFAULT NULL,
  `sumaMta` tinyint(3) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `idxunico` (`marca`,`modelo`),
  KEY `idxmarca` (`marca`),
  KEY `idxmodelo` (`modelo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `marca_modelo_docsis_total` */

DROP TABLE IF EXISTS `marca_modelo_docsis_total`;

CREATE TABLE `marca_modelo_docsis_total` (
  `docsis` varchar(7) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Empresa` varchar(3) DEFAULT NULL,
  `NroCliente` double DEFAULT NULL,
  `Nombre` varchar(200) DEFAULT NULL,
  `MACAddress` varchar(20) DEFAULT NULL,
  `Fechadealta` varchar(20) DEFAULT NULL,
  `Fechadeactivacion` varchar(20) DEFAULT NULL,
  `Fabricante` varchar(100) DEFAULT NULL,
  `Modelo` varchar(100) DEFAULT NULL,
  `hwversion` varchar(100) DEFAULT NULL,
  `Versioon` varchar(100) DEFAULT NULL,
  `Tipodedispositivo` varchar(100) DEFAULT NULL,
  `IPCablemodem` varchar(20) DEFAULT NULL,
  `CMTS` varchar(30) DEFAULT NULL,
  `temp` varchar(20) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  UNIQUE KEY `idxmac` (`MACAddress`),
  KEY `idxdocsis` (`docsis`),
  KEY `idxcodcli` (`NroCliente`),
  KEY `CMTS` (`CMTS`),
  KEY `Fabricante` (`Fabricante`),
  KEY `Modelo` (`Modelo`),
  KEY `MACAddress` (`MACAddress`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `marca_modelo_docsis_total_c` */

DROP TABLE IF EXISTS `marca_modelo_docsis_total_c`;

CREATE TABLE `marca_modelo_docsis_total_c` (
  `docsis` varchar(7) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Empresa` varchar(3) DEFAULT NULL,
  `NroCliente` double DEFAULT NULL,
  `Nombre` varchar(200) DEFAULT NULL,
  `MACAddress` varchar(20) DEFAULT NULL,
  `Fechadealta` varchar(20) DEFAULT NULL,
  `Fechadeactivacion` varchar(20) DEFAULT NULL,
  `Fabricante` varchar(100) DEFAULT NULL,
  `Modelo` varchar(100) DEFAULT NULL,
  `hwversion` varchar(100) DEFAULT NULL,
  `Versioon` varchar(100) DEFAULT NULL,
  `Tipodedispositivo` varchar(100) DEFAULT NULL,
  `IPCablemodem` varchar(20) DEFAULT NULL,
  `CMTS` varchar(30) DEFAULT NULL,
  `temp` varchar(20) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  UNIQUE KEY `idxmac` (`MACAddress`),
  KEY `idxdocsis` (`docsis`),
  KEY `idxcodcli` (`NroCliente`),
  KEY `CMTS` (`CMTS`),
  KEY `Fabricante` (`Fabricante`),
  KEY `Modelo` (`Modelo`),
  KEY `MACAddress` (`MACAddress`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `marca_modelo_oui_catalogo` */

DROP TABLE IF EXISTS `marca_modelo_oui_catalogo`;

CREATE TABLE `marca_modelo_oui_catalogo` (
  `oui` varchar(8) DEFAULT NULL,
  `Fabricante` varchar(100) DEFAULT NULL,
  `Modelo` varchar(100) DEFAULT NULL,
  `total_planta` bigint(21) NOT NULL DEFAULT '0',
  `docsis` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `mta_suma` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `activo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fecha_upload` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `oui` (`oui`),
  KEY `Fabricante` (`Fabricante`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `planta_hfc_total` */

DROP TABLE IF EXISTS `planta_hfc_total`;

CREATE TABLE `planta_hfc_total` (
  `telefono` varchar(25) DEFAULT NULL,
  `inscripcion` varchar(40) DEFAULT NULL,
  `codcliente_cms` varchar(25) DEFAULT NULL,
  `codservicio_cms` varchar(25) DEFAULT NULL,
  `tipo_promocion` varchar(50) DEFAULT NULL,
  `veloc_vigente` varchar(20) DEFAULT NULL,
  `veloc_real` varchar(20) DEFAULT NULL,
  `fecha_ini` varchar(50) DEFAULT NULL,
  `fecha_fin` varchar(50) DEFAULT NULL,
  `fecha_upload` datetime DEFAULT NULL,
  KEY `idxtelefono` (`telefono`),
  KEY `idxcodcliente` (`codcliente_cms`),
  KEY `idxcodservicio` (`codservicio_cms`),
  KEY `idxvelocvig` (`veloc_vigente`),
  KEY `idxvelocreal` (`veloc_real`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `planta_hfc_total_errores` */

DROP TABLE IF EXISTS `planta_hfc_total_errores`;

CREATE TABLE `planta_hfc_total_errores` (
  `codcliente_cms` varchar(25) DEFAULT NULL,
  `veloc_vigente` varchar(20) DEFAULT NULL,
  `veloc_real` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `portadoras_down_split` */

DROP TABLE IF EXISTS `portadoras_down_split`;

CREATE TABLE `portadoras_down_split` (
  `cmts` varchar(50) DEFAULT NULL,
  `interface` varchar(50) DEFAULT NULL,
  `total_portadoras_simple` int(11) DEFAULT NULL,
  `total_portadoras_split` int(11) DEFAULT NULL,
  KEY `idx1` (`cmts`),
  KEY `idx2` (`interface`),
  KEY `idxunico` (`cmts`,`interface`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `portadoras_down_up` */

DROP TABLE IF EXISTS `portadoras_down_up`;

CREATE TABLE `portadoras_down_up` (
  `idx_portadora` double DEFAULT NULL,
  `cmts` varchar(100) DEFAULT NULL,
  `host_interface` varchar(30) DEFAULT NULL,
  `primary_down` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `portadoras_down_up_final` */

DROP TABLE IF EXISTS `portadoras_down_up_final`;

CREATE TABLE `portadoras_down_up_final` (
  `cmts` varchar(100) DEFAULT NULL,
  `interface` varchar(6) DEFAULT NULL,
  `total_portadoras` double DEFAULT NULL,
  KEY `idx_cmts` (`cmts`),
  KEY `idx_interface` (`interface`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `portadoras_down_up_previo1` */

DROP TABLE IF EXISTS `portadoras_down_up_previo1`;

CREATE TABLE `portadoras_down_up_previo1` (
  `idx_portadora` double DEFAULT NULL,
  `cmts` varchar(100) DEFAULT NULL,
  `host_interface` varchar(30) DEFAULT NULL,
  `primary_down` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `portadoras_down_up_previo11` */

DROP TABLE IF EXISTS `portadoras_down_up_previo11`;

CREATE TABLE `portadoras_down_up_previo11` (
  `cmts` varchar(100) DEFAULT NULL,
  `interface` varchar(6) DEFAULT NULL,
  `primary_down2` varchar(30) DEFAULT NULL,
  `ini` double DEFAULT NULL,
  `fin` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `portadoras_down_up_previo12` */

DROP TABLE IF EXISTS `portadoras_down_up_previo12`;

CREATE TABLE `portadoras_down_up_previo12` (
  `cmts` varchar(100) DEFAULT NULL,
  `interface` varchar(6) DEFAULT NULL,
  `primary_down2` varchar(30) DEFAULT NULL,
  `ini` double DEFAULT NULL,
  `fin` double DEFAULT NULL,
  `subtotal_portadoras` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `sergio_resetcablemodems` */

DROP TABLE IF EXISTS `sergio_resetcablemodems`;

CREATE TABLE `sergio_resetcablemodems` (
  `fila` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codcliente` double DEFAULT NULL,
  `MACAddress` varchar(20) DEFAULT NULL,
  `Fabricante` varchar(20) DEFAULT NULL,
  `Modelo` varchar(100) DEFAULT NULL,
  `CMTS` varchar(20) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `idventa` double DEFAULT NULL,
  `ipcm` varchar(50) DEFAULT NULL,
  `actualizado` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fila`),
  KEY `codcliente` (`codcliente`),
  KEY `MACAddress` (`MACAddress`),
  KEY `idservicio` (`idservicio`),
  KEY `idproducto` (`idproducto`),
  KEY `actualizado` (`actualizado`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `sergio_sanjose` */

DROP TABLE IF EXISTS `sergio_sanjose`;

CREATE TABLE `sergio_sanjose` (
  `codcliente` double DEFAULT NULL,
  `MACAddress` varchar(20) DEFAULT NULL,
  `Fabricante` varchar(20) DEFAULT NULL,
  `Modelo` varchar(100) DEFAULT NULL,
  `CMTS` varchar(20) DEFAULT NULL,
  KEY `codcliente` (`codcliente`),
  KEY `MACAddress` (`MACAddress`),
  KEY `CMTS` (`CMTS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `sergio_sanjose2` */

DROP TABLE IF EXISTS `sergio_sanjose2`;

CREATE TABLE `sergio_sanjose2` (
  `fila` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codcliente` double DEFAULT NULL,
  `MACAddress` varchar(20) DEFAULT NULL,
  `Fabricante` varchar(20) DEFAULT NULL,
  `Modelo` varchar(100) DEFAULT NULL,
  `CMTS` varchar(20) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idproducto` double DEFAULT NULL,
  `idventa` double DEFAULT NULL,
  `actualizado` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fila`),
  KEY `codcliente` (`codcliente`),
  KEY `MACAddress` (`MACAddress`),
  KEY `idservicio` (`idservicio`),
  KEY `idproducto` (`idproducto`),
  KEY `actualizado` (`actualizado`)
) ENGINE=MyISAM AUTO_INCREMENT=2928 DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `victor_down` */

DROP TABLE IF EXISTS `victor_down`;

CREATE TABLE `victor_down` (
  `cmts` varchar(255) DEFAULT NULL,
  `interfaz` varchar(255) DEFAULT NULL,
  `llave` varchar(255) NOT NULL,
  UNIQUE KEY `idxllave` (`llave`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `wsccm1_parametros_rf` */

DROP TABLE IF EXISTS `wsccm1_parametros_rf`;

CREATE TABLE `wsccm1_parametros_rf` (
  `usPwr_min` double DEFAULT NULL,
  `usPwr_max` double DEFAULT NULL,
  `dsPwr_min` double DEFAULT NULL,
  `dsPwr_max` double DEFAULT NULL,
  `usSnr_max` double DEFAULT NULL,
  `dsSnr_max` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `wsccm1_pruebas_cablemodem` */

DROP TABLE IF EXISTS `wsccm1_pruebas_cablemodem`;

CREATE TABLE `wsccm1_pruebas_cablemodem` (
  `mac_address` varchar(50) DEFAULT NULL,
  `resultado1` varchar(100) DEFAULT NULL,
  `resultado2` varchar(25) DEFAULT NULL,
  `fecha_mov` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/* Procedure structure for procedure `sp_marcaModelo` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_marcaModelo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `sp_marcaModelo`()
BEGIN
UPDATE ccm1_data.`marca_modelo_catalogo` SET modelo=TRIM(modelo), marca=TRIM(marca);
UPDATE ccm1_data.`marca_modelo` SET Fabricante=TRIM(Fabricante), Modelo=TRIM(Modelo);
TRUNCATE TABLE ccm1_data.`marca_modelo_docsis_total`;
INSERT INTO ccm1_data.`marca_modelo_docsis_total`
SELECT b.`tipodocsis`, a.* FROM ccm1_data.`marca_modelo` a FORCE INDEX(NewIndex4,modelo), ccm1_data.`marca_modelo_catalogo` b FORCE INDEX(idxmarca,idxmodelo,idxunico)
WHERE a.`Fabricante`=b.marca AND a.`Modelo`=b.`modelo` and a.Empresa='TDP';
UPDATE ccm1_data.`marca_modelo_docsis_total` 
SET docsis = CASE docsis WHEN '2' THEN 'DOCSIS2' WHEN '3' THEN 'DOCSIS3' END;
INSERT IGNORE INTO ccm1_data.`marca_modelo_docsis_total_acum` SELECT * FROM ccm1_data.`marca_modelo_docsis_total`;
TRUNCATE TABLE ccm1_data.`marca_modelo_docsis2`;
INSERT INTO ccm1_data.`marca_modelo_docsis2` SELECT * FROM ccm1_data.`marca_modelo_docsis_total` WHERE docsis='DOCSIS2';
TRUNCATE TABLE ccm1_data.`marca_modelo_docsis3`;
INSERT INTO ccm1_data.`marca_modelo_docsis3` SELECT * FROM ccm1_data.`marca_modelo_docsis_total` WHERE docsis='DOCSIS3';
-- OUI
REPLACE ccm1_data.`marca_modelo_oui` (oui, Fabricante, Modelo, total_planta, fecha_upload)
SELECT LEFT(MACAddress, 8) AS oui, Fabricante, Modelo, COUNT(*) AS total_planta, NOW() AS fecha_upload FROM ccm1.`marca_modelo`
WHERE Fabricante IS NOT NULL
GROUP BY 1,2 ORDER BY 1,2,3;
UPDATE ccm1_data.`marca_modelo_oui` a, ccm1_data.`marca_modelo_catalogo` b
SET a.`mta_suma`=b.`sumaMta`, a.`docsis`=b.`tipodocsis` WHERE a.`Modelo`=b.`modelo` AND a.`Fabricante`=b.`marca`;
 
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_TotalPortadoras` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_TotalPortadoras` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `sp_TotalPortadoras`()
BEGIN
DROP TABLE IF EXISTS ccm1_data.portadoras_down_up_previo1;
CREATE TABLE ccm1_data.portadoras_down_up_previo1
SELECT SUBSTR(primary_down, LOCATE(':',primary_down)+1, 4)*1 AS idx_portadora, 
cmts,host_interface,primary_down 
FROM ccm1.show_primary 
-- WHERE cmts='higuereta3' AND host_interface LIKE 'C5/0/4%' 
;
DROP TABLE IF EXISTS ccm1_data.portadoras_down_up_previo11;
CREATE TABLE ccm1_data.portadoras_down_up_previo11
SELECT cmts, SUBSTR(host_interface,1,6) AS interface, 
SUBSTR(primary_down, 1, LOCATE(':',primary_down)-1) AS primary_down2, 
MIN(idx_portadora) AS ini,MAX(idx_portadora) AS fin 
FROM ccm1_data.portadoras_down_up_previo1
-- WHERE cmts='higuereta3'
GROUP BY 1,2,3;
DROP TABLE IF EXISTS ccm1_data.portadoras_down_up_previo12;
CREATE TABLE ccm1_data.portadoras_down_up_previo12
SELECT cmts, interface, primary_down2, ini, fin, ((fin-ini)+1) AS subtotal_portadoras
FROM ccm1_data.portadoras_down_up_previo11
-- WHERE cmts='higuereta3';
;
DROP TABLE IF EXISTS ccm1_data.portadoras_down_up_final;
CREATE TABLE ccm1_data.portadoras_down_up_final
SELECT cmts, interface, SUM(subtotal_portadoras) AS total_portadoras
FROM ccm1_data.portadoras_down_up_previo12
-- WHERE cmts='higuereta3'
GROUP BY 1,2;
ALTER TABLE `ccm1_data`.`portadoras_down_up_final` ADD INDEX `idx_cmts` (`cmts`), ADD INDEX `idx_interface` (`interface`); 
   END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - ccm1_web
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ccm1_web` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ccm1_web`;

/*Table structure for table `a0` */

DROP TABLE IF EXISTS `a0`;

CREATE TABLE `a0` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `eecc` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `accesos_cot` */

DROP TABLE IF EXISTS `accesos_cot`;

CREATE TABLE `accesos_cot` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `area` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `areas` */

DROP TABLE IF EXISTS `areas`;

CREATE TABLE `areas` (
  `idarea` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area` varchar(50) DEFAULT NULL,
  `activo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`idarea`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Table structure for table `clienteshfc` */

DROP TABLE IF EXISTS `clienteshfc`;

CREATE TABLE `clienteshfc` (
  `Empresa` varchar(3) DEFAULT NULL,
  `CodClienteCMS` double DEFAULT NULL,
  `cliente` varchar(100) DEFAULT NULL,
  `nodo` varchar(2) DEFAULT NULL,
  `troba` varchar(4) DEFAULT NULL,
  `cmts` varchar(20) DEFAULT NULL,
  `cmts2` varchar(100) DEFAULT NULL,
  `macaddresscm` varchar(20) DEFAULT NULL,
  `velocidad_intraway` varchar(50) DEFAULT NULL,
  `Estado` varchar(10) DEFAULT NULL,
  `ScopeIP` varchar(15) DEFAULT NULL,
  `SCOPESGROUPMTA` varchar(15) DEFAULT NULL,
  `ModeloMTA` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `geoalertas_estados` */

DROP TABLE IF EXISTS `geoalertas_estados`;

CREATE TABLE `geoalertas_estados` (
  `idestado` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `estado` varchar(50) DEFAULT NULL,
  `atendida` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `activo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`idestado`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Table structure for table `geoalertas_estados_d` */

DROP TABLE IF EXISTS `geoalertas_estados_d`;

CREATE TABLE `geoalertas_estados_d` (
  `idestado` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `estado` varchar(50) DEFAULT NULL,
  `atendida` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `activo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`idestado`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Table structure for table `geoalertas_gestion` */

DROP TABLE IF EXISTS `geoalertas_gestion`;

CREATE TABLE `geoalertas_gestion` (
  `idgestion` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `nodo` varchar(10) DEFAULT NULL,
  `troba` varchar(10) DEFAULT NULL,
  `fecha_inicio_caida` datetime DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  PRIMARY KEY (`idgestion`),
  UNIQUE KEY `idxunico` (`nodo`,`troba`,`fecha_inicio_caida`),
  KEY `idxnodo` (`nodo`),
  KEY `idxtroba` (`troba`)
) ENGINE=InnoDB AUTO_INCREMENT=690 DEFAULT CHARSET=latin1;

/*Table structure for table `geoalertas_gestion_mov` */

DROP TABLE IF EXISTS `geoalertas_gestion_mov`;

CREATE TABLE `geoalertas_gestion_mov` (
  `idmov` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `idgestion` mediumint(8) unsigned NOT NULL,
  `fecha_mov` datetime DEFAULT NULL,
  `idusuario` int(11) unsigned NOT NULL,
  `idestado` int(10) unsigned NOT NULL,
  `observaciones` text,
  `tecnicos` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmov`),
  KEY `idxgestion` (`idgestion`),
  KEY `idxfechamov` (`fecha_mov`),
  KEY `idxusuario` (`idusuario`),
  KEY `idxestado` (`idestado`)
) ENGINE=InnoDB AUTO_INCREMENT=828 DEFAULT CHARSET=latin1;

/*Table structure for table `intraway_logs` */

DROP TABLE IF EXISTS `intraway_logs`;

CREATE TABLE `intraway_logs` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) unsigned NOT NULL,
  `fecha_mov` datetime DEFAULT NULL,
  `accion` varchar(75) NOT NULL,
  `codigo_cliente` varchar(50) NOT NULL,
  `interfaz_iw` varchar(50) NOT NULL,
  `tramaxml` text,
  `respuestaIW` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1275360 DEFAULT CHARSET=utf8;

/*Table structure for table `intraway_power_snr` */

DROP TABLE IF EXISTS `intraway_power_snr`;

CREATE TABLE `intraway_power_snr` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `power_down_min` double DEFAULT NULL,
  `power_down_max` double DEFAULT NULL,
  `power_up_min` double DEFAULT NULL,
  `power_up_max` double DEFAULT NULL,
  `snr_down_min` double DEFAULT NULL,
  `snr_down_max` double DEFAULT NULL,
  `snr_up_min` double DEFAULT NULL,
  `snr_up_max` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `iw_funciones` */

DROP TABLE IF EXISTS `iw_funciones`;

CREATE TABLE `iw_funciones` (
  `idiw_funcion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iw_funcion` varchar(100) DEFAULT NULL,
  `activo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`idiw_funcion`,`activo`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Table structure for table `iw_funciones_c` */

DROP TABLE IF EXISTS `iw_funciones_c`;

CREATE TABLE `iw_funciones_c` (
  `idiw_funcion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iw_funcion` varchar(100) DEFAULT NULL,
  `activo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`idiw_funcion`,`activo`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Table structure for table `iw_ispcrm` */

DROP TABLE IF EXISTS `iw_ispcrm`;

CREATE TABLE `iw_ispcrm` (
  `idispcrm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ispcrm` varchar(30) NOT NULL,
  `ispcrm_pruebas` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `activo` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`idispcrm`),
  KEY `activo` (`activo`),
  KEY `ispcrm_pruebas` (`ispcrm_pruebas`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Table structure for table `iw_mta_modelos` */

DROP TABLE IF EXISTS `iw_mta_modelos`;

CREATE TABLE `iw_mta_modelos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modelomta` varchar(200) DEFAULT NULL,
  `idmtaiw` varchar(200) DEFAULT NULL,
  `mtaPruebas` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `activo` tinyint(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idmtaiw` (`idmtaiw`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Table structure for table `iw_servicepackages` */

DROP TABLE IF EXISTS `iw_servicepackages`;

CREATE TABLE `iw_servicepackages` (
  `SERVICEPACKAGE` varchar(255) NOT NULL,
  `SERVICEPACKAGECRMID` varchar(255) NOT NULL,
  `visibleweb` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `activo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  UNIQUE KEY `SERVICEPACKAGE` (`SERVICEPACKAGE`),
  UNIQUE KEY `SERVICEPACKAGECRMID` (`SERVICEPACKAGECRMID`),
  KEY `visibleweb` (`visibleweb`),
  KEY `activo` (`activo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `modulos` */

DROP TABLE IF EXISTS `modulos`;

CREATE TABLE `modulos` (
  `idmodulo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modulo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT '1',
  PRIMARY KEY (`idmodulo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Table structure for table `modulos_admin` */

DROP TABLE IF EXISTS `modulos_admin`;

CREATE TABLE `modulos_admin` (
  `idmodulo_admin` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modulo_admin` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT '1',
  PRIMARY KEY (`idmodulo_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Table structure for table `opciones` */

DROP TABLE IF EXISTS `opciones`;

CREATE TABLE `opciones` (
  `idopcion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `opcion` varchar(100) DEFAULT NULL,
  `valor` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`idopcion`),
  KEY `opcion` (`opcion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `sesiones` */

DROP TABLE IF EXISTS `sesiones`;

CREATE TABLE `sesiones` (
  `idusuario` int(10) NOT NULL,
  `idsesion` varchar(100) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  UNIQUE KEY `idusuarioUnique` (`idusuario`),
  UNIQUE KEY `idsesionUnique` (`idsesion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `submodulos` */

DROP TABLE IF EXISTS `submodulos`;

CREATE TABLE `submodulos` (
  `idsubmodulo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmodulo` int(10) unsigned NOT NULL,
  `submodulo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT '1',
  PRIMARY KEY (`idsubmodulo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Table structure for table `submodulos_admin` */

DROP TABLE IF EXISTS `submodulos_admin`;

CREATE TABLE `submodulos_admin` (
  `idsubmodulo_admin` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmodulo_admin` int(10) unsigned NOT NULL,
  `submodulo_admin` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT '1',
  PRIMARY KEY (`idsubmodulo_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Table structure for table `tb_eecc` */

DROP TABLE IF EXISTS `tb_eecc`;

CREATE TABLE `tb_eecc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `eecc` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `contrata_bucle` tinyint(4) DEFAULT '1',
  `estado` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Table structure for table `tb_perfil` */

DROP TABLE IF EXISTS `tb_perfil`;

CREATE TABLE `tb_perfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perfil` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `FK_tb_perfil` (`estado`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Table structure for table `tb_usuario` */

DROP TABLE IF EXISTS `tb_usuario`;

CREATE TABLE `tb_usuario` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `dni` varchar(9) COLLATE utf8_spanish_ci NOT NULL,
  `online` int(11) NOT NULL DEFAULT '0',
  `id_perfil` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ideecc` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`dni`),
  KEY `FK_tb_usuario` (`id_perfil`),
  KEY `FK_tb_usuario_1` (`id_area`),
  KEY `ideecc` (`ideecc`),
  KEY `idx_usuario` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=823 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Table structure for table `tb_usuario_20180702` */

DROP TABLE IF EXISTS `tb_usuario_20180702`;

CREATE TABLE `tb_usuario_20180702` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `dni` char(8) COLLATE utf8_spanish_ci NOT NULL,
  `online` int(11) NOT NULL DEFAULT '0',
  `id_perfil` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ideecc` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`dni`),
  KEY `FK_tb_usuario` (`id_perfil`),
  KEY `FK_tb_usuario_1` (`id_area`),
  KEY `ideecc` (`ideecc`),
  KEY `idx_usuario` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=547 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Table structure for table `tb_usuario_22182207_BCK` */

DROP TABLE IF EXISTS `tb_usuario_22182207_BCK`;

CREATE TABLE `tb_usuario_22182207_BCK` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `dni` char(8) COLLATE utf8_spanish_ci NOT NULL,
  `online` int(11) NOT NULL DEFAULT '0',
  `id_perfil` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ideecc` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`dni`),
  KEY `FK_tb_usuario` (`id_perfil`),
  KEY `FK_tb_usuario_1` (`id_area`),
  KEY `ideecc` (`ideecc`),
  KEY `idx_usuario` (`usuario`),
  CONSTRAINT `tb_usuario_22182207_BCK_ibfk_1` FOREIGN KEY (`ideecc`) REFERENCES `tb_eecc` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=547 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Table structure for table `tb_usuario_administracion` */

DROP TABLE IF EXISTS `tb_usuario_administracion`;

CREATE TABLE `tb_usuario_administracion` (
  `id` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `idusuario` int(10) NOT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `accion` varchar(50) NOT NULL,
  `motivo` longtext,
  `fecha_mov` datetime DEFAULT NULL,
  `idusuario_mov` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=latin1;

/*Table structure for table `tb_usuario_login` */

DROP TABLE IF EXISTS `tb_usuario_login`;

CREATE TABLE `tb_usuario_login` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `idusuario` int(10) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `accion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idusuario` (`idusuario`),
  KEY `fecha` (`fecha`),
  KEY `ip` (`ip`),
  KEY `accion` (`accion`)
) ENGINE=InnoDB AUTO_INCREMENT=97378 DEFAULT CHARSET=latin1;

/*Table structure for table `tb_usuario_logs` */

DROP TABLE IF EXISTS `tb_usuario_logs`;

CREATE TABLE `tb_usuario_logs` (
  `idulog` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `idusuario` int(10) unsigned NOT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `accion` varchar(50) NOT NULL,
  `fecha_mov` datetime DEFAULT NULL,
  `idusuario_mov` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idulog`),
  KEY `idusuario` (`idusuario`),
  KEY `accion` (`accion`),
  KEY `fecha_mov` (`fecha_mov`),
  KEY `idusuario_mov` (`idusuario_mov`)
) ENGINE=InnoDB AUTO_INCREMENT=1194 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;

/*Table structure for table `usuarios_eecc` */

DROP TABLE IF EXISTS `usuarios_eecc`;

CREATE TABLE `usuarios_eecc` (
  `idusuarioeecc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idusuario` int(10) NOT NULL,
  `ideecc` int(10) unsigned NOT NULL,
  `activo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`idusuarioeecc`),
  UNIQUE KEY `idxunico` (`idusuario`,`ideecc`),
  KEY `idxusuario` (`idusuario`),
  KEY `idxeecc` (`ideecc`)
) ENGINE=InnoDB AUTO_INCREMENT=27449 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Table structure for table `usuarios_iw_codigos_clientes` */

DROP TABLE IF EXISTS `usuarios_iw_codigos_clientes`;

CREATE TABLE `usuarios_iw_codigos_clientes` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) NOT NULL,
  `codcliente` varchar(50) NOT NULL,
  `activo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `idusuario` (`idusuario`,`codcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

/*Table structure for table `usuarios_iw_funciones` */

DROP TABLE IF EXISTS `usuarios_iw_funciones`;

CREATE TABLE `usuarios_iw_funciones` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) NOT NULL,
  `idiw_funcion` int(11) unsigned NOT NULL,
  `activo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  UNIQUE KEY `idusuario` (`idusuario`,`idiw_funcion`),
  KEY `idiw_funcion` (`idiw_funcion`),
  KEY `id` (`id`),
  CONSTRAINT `usuarios_iw_funciones_ibfk_1` FOREIGN KEY (`idiw_funcion`) REFERENCES `iw_funciones` (`idiw_funcion`)
) ENGINE=InnoDB AUTO_INCREMENT=42017 DEFAULT CHARSET=latin1;

/*Table structure for table `usuarios_submodulos` */

DROP TABLE IF EXISTS `usuarios_submodulos`;

CREATE TABLE `usuarios_submodulos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idusuario` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `idsubmodulo` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_unico_usersubmod` (`idusuario`,`idsubmodulo`),
  KEY `idx_usuario` (`idusuario`),
  KEY `idx_submodulo` (`idsubmodulo`),
  CONSTRAINT `usuarios_submodulos_ibfk_1` FOREIGN KEY (`idsubmodulo`) REFERENCES `submodulos` (`idsubmodulo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3357 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Table structure for table `usuarios_submodulos_admin` */

DROP TABLE IF EXISTS `usuarios_submodulos_admin`;

CREATE TABLE `usuarios_submodulos_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idusuario` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `idsubmodulo_admin` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idsubmodulo_admin` (`idsubmodulo_admin`),
  CONSTRAINT `usuarios_submodulos_admin_ibfk_1` FOREIGN KEY (`idsubmodulo_admin`) REFERENCES `usuarios_submodulos_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Table structure for table `usuarios_zonales` */

DROP TABLE IF EXISTS `usuarios_zonales`;

CREATE TABLE `usuarios_zonales` (
  `idusuario_zonal` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idusuario` int(10) NOT NULL,
  `zonal` varchar(4) NOT NULL,
  `activo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`idusuario_zonal`),
  UNIQUE KEY `idxunico` (`idusuario`,`zonal`),
  KEY `idxzonal` (`zonal`),
  CONSTRAINT `usuarios_zonales_ibfk_1` FOREIGN KEY (`zonal`) REFERENCES `zonales` (`zonal`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

/*Table structure for table `zlog_update_tb_user` */

DROP TABLE IF EXISTS `zlog_update_tb_user`;

CREATE TABLE `zlog_update_tb_user` (
  `script` text,
  `fecha` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `zonales` */

DROP TABLE IF EXISTS `zonales`;

CREATE TABLE `zonales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zonal` varchar(4) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `activo` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idxzonal` (`zonal`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/* Procedure structure for procedure `valida_accesos` */

/*!50003 DROP PROCEDURE IF EXISTS  `valida_accesos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `valida_accesos`()
BEGIN
	DELETE FROM ccm1_web.usuarios_iw_funciones
	WHERE idusuario IN
	(SELECT id FROM ccm1_web.tb_usuario
	WHERE id NOT IN
	(SELECT id FROM ccm1_web.accesos_cot) AND ideecc<>5)
	AND idiw_funcion  IN (9,2,3,4,5,7,8,12,15,17,19);
	truncate table ccm1_web.usuarios_iw_funciones_bck;
	insert ignore ccm1_web.usuarios_iw_funciones_bck (SELECT * FROM ccm1_web.`usuarios_iw_funciones`);
    END */$$
DELIMITER ;

/*Table structure for table `auditoria_users` */

DROP TABLE IF EXISTS `auditoria_users`;

/*!50001 DROP VIEW IF EXISTS `auditoria_users` */;
/*!50001 DROP TABLE IF EXISTS `auditoria_users` */;

/*!50001 CREATE TABLE  `auditoria_users`(
 `nombres` varchar(101) ,
 `usuario` varchar(20) ,
 `idusuario` int(11) unsigned ,
 `InstalarCM` decimal(23,0) ,
 `EditarCGNAT_CPE` decimal(23,0) ,
 `BorrarEspacioCM` decimal(23,0) ,
 `AddEspacioCM` decimal(23,0) ,
 `LiberarEspacioMTA` decimal(23,0) ,
 `InstalarMTA` decimal(23,0) ,
 `LiberarEspacioCM` decimal(23,0) 
)*/;

/*View structure for view auditoria_users */

/*!50001 DROP TABLE IF EXISTS `auditoria_users` */;
/*!50001 DROP VIEW IF EXISTS `auditoria_users` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`userProc`@`%` SQL SECURITY DEFINER VIEW `auditoria_users` AS (select concat(`b`.`nombre`,' ',`b`.`apellido`) AS `nombres`,`b`.`usuario` AS `usuario`,`a`.`idusuario` AS `idusuario`,sum(if((`a`.`accion` = 'instalarCM'),1,0)) AS `InstalarCM`,sum(if((`a`.`accion` = 'editarCGNAT-CPE'),1,0)) AS `EditarCGNAT_CPE`,sum(if((`a`.`accion` = 'borrarEspacioCM'),1,0)) AS `BorrarEspacioCM`,sum(if((`a`.`accion` = 'addEspacioCM'),1,0)) AS `AddEspacioCM`,sum(if((`a`.`accion` = 'liberarEspacioMTA'),1,0)) AS `LiberarEspacioMTA`,sum(if((`a`.`accion` = 'instalarMTA'),1,0)) AS `InstalarMTA`,sum(if((`a`.`accion` = 'liberarEspacioCM'),1,0)) AS `LiberarEspacioCM` from (`intraway_logs` `a` join `tb_usuario` `b` on((`a`.`idusuario` = `b`.`id`))) where (`b`.`usuario` <> 'cvisurragas') group by concat(`b`.`nombre`,' ',`b`.`apellido`)) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*
SQLyog Community
MySQL - 10.0.34-MariaDB-0ubuntu0.16.04.1 : Database - tmpwork_a
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tmpwork_a` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tmpwork_a`;

/*Table structure for table `SP_Signal_Alert_SW` */

DROP TABLE IF EXISTS `SP_Signal_Alert_SW`;

CREATE TABLE `SP_Signal_Alert_SW` (
  `sw` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `cmts_ip_cols_phy` */

DROP TABLE IF EXISTS `cmts_ip_cols_phy`;

CREATE TABLE `cmts_ip_cols_phy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmts` varchar(50) NOT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `abrev` varchar(4) DEFAULT NULL,
  `marca` varchar(10) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `zonal` varchar(3) DEFAULT NULL,
  `col1` varchar(10) DEFAULT NULL,
  `col2` varchar(10) DEFAULT NULL,
  `col3` varchar(10) DEFAULT NULL,
  `col4` varchar(10) DEFAULT NULL,
  `col5` varchar(10) DEFAULT NULL,
  `col6` varchar(10) DEFAULT NULL,
  `col7` varchar(10) DEFAULT NULL,
  `col8` varchar(10) DEFAULT NULL,
  `col9` varchar(10) DEFAULT NULL,
  `col10` varchar(10) DEFAULT NULL,
  `col11` varchar(10) DEFAULT NULL,
  `col12` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cmts`),
  KEY `idx1` (`cmts`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=458 DEFAULT CHARSET=latin1;

/*Table structure for table `cmts_ip_cols_scm` */

DROP TABLE IF EXISTS `cmts_ip_cols_scm`;

CREATE TABLE `cmts_ip_cols_scm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmts` varchar(50) NOT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `abrev` varchar(4) DEFAULT NULL,
  `marca` varchar(10) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `zonal` varchar(3) DEFAULT NULL,
  `col1` varchar(10) DEFAULT NULL,
  `col2` varchar(10) DEFAULT NULL,
  `col3` varchar(10) DEFAULT NULL,
  `col4` varchar(10) DEFAULT NULL,
  `col5` varchar(10) DEFAULT NULL,
  `col6` varchar(10) DEFAULT NULL,
  `col7` varchar(10) DEFAULT NULL,
  `col8` varchar(10) DEFAULT NULL,
  `col9` varchar(10) DEFAULT NULL,
  `col10` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cmts`),
  KEY `idx1` (`cmts`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=457 DEFAULT CHARSET=latin1;

/*Table structure for table `current` */

DROP TABLE IF EXISTS `current`;

CREATE TABLE `current` (
  `scm` int(11) DEFAULT NULL,
  `horaprocscm` varchar(20) DEFAULT NULL,
  `phy` int(11) DEFAULT NULL,
  `horaprocphy` varchar(20) DEFAULT NULL,
  `pasascm` int(11) DEFAULT NULL,
  `horapasascm` varchar(20) DEFAULT NULL,
  `pasaphy` int(11) DEFAULT NULL,
  `horapasaphy` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_phy_esp_sw` */

DROP TABLE IF EXISTS `scm_phy_esp_sw`;

CREATE TABLE `scm_phy_esp_sw` (
  `sw` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Table structure for table `scm_scm_esp_sw` */

DROP TABLE IF EXISTS `scm_scm_esp_sw`;

CREATE TABLE `scm_scm_esp_sw` (
  `sw` int(11) DEFAULT NULL,
  `fechahora` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/* Procedure structure for procedure `SP_Signal_Alert` */

/*!50003 DROP PROCEDURE IF EXISTS  `SP_Signal_Alert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`userProc`@`%` PROCEDURE `SP_Signal_Alert`()
BEGIN
	UPDATE tmpwork_a.SP_Signal_Alert_SW SET sw=1,fechahora=NOW();
	COMMIT;
	
	TRUNCATE TABLE alertasx.nivelesxmac;
	COMMIT;
	
	INSERT IGNORE alertasx.nivelesxmac 
	SELECT b.macaddress,
	ROUND(AVG(IF(c.RxPwrdBmv LIKE '%0.00' OR LEFT(c.RxPwrdBmv,1) IN ('!','*'),RIGHT(c.RxPwrdBmv,4),c.RxPwrdBmv)),0) AS RxPwrdBmv ,
	ROUND(AVG(b.DSMER_SNR),0) AS  SNR_DN,
	ROUND(AVG(b.DSPwr),0) AS PWR_DN,
	ROUND(AVG(b.USMER_SNR),0) AS SNR_UP,
	ROUND(AVG(b.USPwr),0) AS PWR_UP
	FROM  ccm1.scm_phy_r b FORCE INDEX (NewIndex1,USMER_SNR,DSMER_SNR)
	INNER JOIN ccm1_temporal.scm_total_f c FORCE INDEX (MACAddress) 
	ON b.macaddress=c.macaddress
	GROUP BY b.macaddress
	ORDER BY b.macaddress;	
	COMMIT;
	
	INSERT IGNORE alertasx.resumen_nivelesxtroba_c 
	SELECT xx.* FROM 
	(SELECT a.nodo,a.troba,xx.RxPwrdBmv,xx.SNR_DN,xx.PWR_DN,xx.SNR_UP,xx.PWR_UP,COUNT(*) AS cant,NOW() AS fecha_hora," " AS fecha_fin," " AS tiempo,"SI" AS caida 
	FROM ccm1.nclientes a FORCE INDEX (NewIndex4,NODO) 
	INNER JOIN alertasx.nivelesxmac xx FORCE INDEX (macaddress) ON a.mac2=xx.macaddress 
	) xx
	WHERE xx.nodo IS NOT NULL AND xx.nodo NOT LIKE '' AND xx.nodo NOT LIKE 'NO%' 
	GROUP BY xx.nodo,xx.troba;
	
	TRUNCATE TABLE alertasx.nivelestemp_c;
	COMMIT;
	
	INSERT IGNORE alertasx.nivelestemp_c
	SELECT * FROM alertasx.resumen_nivelesxtroba_c a
	WHERE
	(a.snr_up < (SELECT vmin FROM catalogos.parametros_rf WHERE parametro='snr_avg' )
	OR (a.pwr_up < (SELECT vmin FROM catalogos.parametros_rf WHERE parametro='powerup_prom' ) AND
		a.pwr_up > (SELECT vmax FROM catalogos.parametros_rf WHERE parametro='powerup_prom') )
	OR a.snr_dn <(SELECT vmin FROM catalogos.parametros_rf WHERE parametro='snr_down')
	OR (a.pwr_dn < (SELECT vmin FROM catalogos.parametros_rf WHERE parametro='powerds_prom' ) AND
		a.pwr_dn > (SELECT vmax FROM catalogos.parametros_rf WHERE parametro='powerds_prom')));
	COMMIT;
		
		
	UPDATE alertasx.nivelestemp a FORCE INDEX (nodo,troba) LEFT JOIN alertasx.nivelestemp_c b FORCE INDEX (nodo,troba)
	ON a.nodo=b.nodo AND a.troba=b.troba
	SET a.fecha_fin=NOW(),a.tiempo=TIMEDIFF(NOW(),a.fecha_hora) ,a.caida='NO'
	WHERE b.nodo IS NULL AND a.caida='SI';
	COMMIT;
	
	UPDATE alertasx.nivelestemp a FORCE INDEX (nodo,troba) INNER JOIN alertasx.nivelestemp_c b FORCE INDEX (nodo,troba)
	ON a.nodo=b.nodo AND a.troba=b.troba
	SET a.RxPwrdBmv=b.RxPwrdBmv,a.SNR_DN=b.SNR_DN,a.PWR_DN=b.PWR_DN,a.SNR_UP=b.SNR_UP,a.PWR_UP=b.PWR_UP,a.tiempo=TIMEDIFF(NOW(),a.fecha_hora)
	WHERE a.caida='SI';
	COMMIT;
	
	UPDATE alertasx.nivelestemp a FORCE INDEX (nodo_2,nodo,troba) INNER JOIN alertasx.nivelestemp_c b FORCE INDEX (nodo,troba)
	ON a.nodo=b.nodo AND a.troba=b.troba
	SET a.RxPwrdBmv=b.RxPwrdBmv,a.SNR_DN=b.SNR_DN,a.PWR_DN=b.PWR_DN,a.SNR_UP=b.SNR_UP,a.PWR_UP=b.PWR_UP,a.tiempo=TIMEDIFF(NOW(),a.fecha_hora),a.caida='SI',a.fecha_fin=''
	WHERE a.caida='NO';
	COMMIT;
	
	
	INSERT IGNORE alertasx.nivelestemp
	SELECT * FROM alertasx.nivelestemp_c FORCE INDEX(nodo,troba) WHERE CONCAT(nodo,troba) NOT IN (SELECT CONCAT(nodo,troba) FROM alertasx.nivelestemp);
	COMMIT;
	
	
	DELETE FROM alertasx.nivelestemp WHERE DATEDIFF(NOW(),fecha_hora)>2 AND caida='NO';
	COMMIT;
	
	
	TRUNCATE TABLE alertasx.niveles_new;
	COMMIT;
	
	
	INSERT INTO alertasx.niveles_new
	SELECT CONCAT(b.jefatura,'_',b.sede) AS jefatura ,a.nodo,a.troba,IF(e.critica=1,'TC' ,'') AS tc,a.fecha_hora,c.codreqmnt AS codmasiva,
	a.RxPwrdBmv,a.PWR_UP AS pwr_up,a.SNR_UP AS snr_up,a.PWR_DN AS pwr_dn,a.SNR_DN AS snr_dn,cant AS can ,
	0 AS ncaidas,d.numbor,a.fecha_fin,a.caida
	FROM alertasx.`nivelestemp` a FORCE INDEX(nodo)
	INNER JOIN ccm1.zonales_nodos_eecc b FORCE INDEX(nodo_2,nodo)
	ON a.nodo=b.nodo
	LEFT JOIN dbpext.masivas_temp c FORCE INDEX (NewIndex4,NewIndex1,NewIndex2)
	ON a.nodo=c.codnod AND a.troba=c.nroplano
	LEFT JOIN catalogos.bornesxtroba d FORCE INDEX (NewIndex1,NewIndex2)
	ON a.nodo=d.nodo AND a.troba=d.troba
	LEFT JOIN catalogos.`trobas_criticas_n` e FORCE INDEX (nodo_2,nodo,troba)
	ON a.nodo=e.nodo AND a.troba=e.troba
	GROUP BY a.nodo,a.troba;
	COMMIT;
	
	
	UPDATE tmpwork_a.SP_Signal_Alert_SW SET sw=0,fechahora=NOW();
	COMMIT;
	
	
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

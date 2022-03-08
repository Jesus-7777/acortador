-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para dataurl
CREATE DATABASE IF NOT EXISTS `dataurl` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dataurl`;

-- Volcando estructura para tabla dataurl.enlaces
CREATE TABLE IF NOT EXISTS `enlaces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exten` varchar(255) DEFAULT NULL,
  `cort` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla dataurl.enlaces: ~0 rows (aproximadamente)
DELETE FROM `enlaces`;
/*!40000 ALTER TABLE `enlaces` DISABLE KEYS */;
INSERT INTO `enlaces` (`id`, `exten`, `cort`) VALUES
	(1, 'https://www.youtube.com/watch?v=YI16KWyA3M0&t=420s', 'fvHq');
/*!40000 ALTER TABLE `enlaces` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

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

-- Volcando estructura para tabla dataurl.enlaces
CREATE TABLE IF NOT EXISTS `enlaces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exten` varchar(255) DEFAULT NULL,
  `cort` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla dataurl.enlaces: ~8 rows (aproximadamente)
DELETE FROM `enlaces`;
/*!40000 ALTER TABLE `enlaces` DISABLE KEYS */;
INSERT INTO `enlaces` (`id`, `exten`, `cort`) VALUES
	(1, 'jose', 'jos'),
	(2, 'data could be array', NULL),
	(3, '%s', NULL),
	(4, '%s', NULL),
	(5, '%s', NULL),
	(6, '%s', NULL),
	(7, '%s', NULL),
	(8, '%s', NULL),
	(9, NULL, NULL),
	(10, 'https://www.youtube.com/watch?v=YI16KWyA3M0&t=420s', 'https://www.youtube.com/watch?v=YI16KWyA3M0&t=420s'),
	(11, 'https://www.youtube.com/watch?v=YI16KWyA3M0&t=420s', ''),
	(12, 'https://www.youtube.com/watch?v=YI16KWyA3M0&t=420s', NULL),
	(13, 'https://www.youtube.com/watch?v=YI16KWyA3M0&t=420s', 'hola mundo'),
	(14, 'https://www.youtube.com/watch?v=YI16KWyA3M0&t=420s', 'hola mundo'),
	(15, 'https://www.youtube.com/watch?v=YI16KWyA3M0&t=420s', 'hola mundo'),
	(16, 'https://www.youtube.com/watch?v=YI16KWyA3M0&t=420s', 'hola mundo');
/*!40000 ALTER TABLE `enlaces` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

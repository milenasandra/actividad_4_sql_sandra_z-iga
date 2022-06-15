-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para lugares_en_el_mundo
DROP DATABASE IF EXISTS `lugares_en_el_mundo`;
CREATE DATABASE IF NOT EXISTS `lugares_en_el_mundo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `lugares_en_el_mundo`;

-- Volcando estructura para tabla lugares_en_el_mundo.cities
DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla lugares_en_el_mundo.cities: ~11 rows (aproximadamente)
DELETE FROM `cities`;
INSERT INTO `cities` (`id`, `name`) VALUES
	(1, 'leticia'),
	(2, 'yarumal'),
	(3, 'chicago'),
	(4, 'ciudad de méxico'),
	(5, 'buenos aires'),
	(6, 'el cairo'),
	(7, 'camberra'),
	(8, 'suva'),
	(9, 'moscú'),
	(10, 'tokio'),
	(11, 'madrid');

-- Volcando estructura para tabla lugares_en_el_mundo.cities_countries_continents
DROP TABLE IF EXISTS `cities_countries_continents`;
CREATE TABLE IF NOT EXISTS `cities_countries_continents` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `cities_id` tinyint(4) NOT NULL DEFAULT 0,
  `countries_id` tinyint(4) NOT NULL DEFAULT 0,
  `continent_id` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla lugares_en_el_mundo.cities_countries_continents: ~0 rows (aproximadamente)
DELETE FROM `cities_countries_continents`;
INSERT INTO `cities_countries_continents` (`id`, `cities_id`, `countries_id`, `continent_id`) VALUES
	(1, 1, 1, 1),
	(2, 2, 1, 1),
	(3, 3, 2, 1),
	(4, 4, 3, 1),
	(5, 5, 4, 1),
	(6, 6, 5, 4),
	(7, 7, 6, 5),
	(8, 8, 7, 5),
	(9, 9, 9, 3),
	(10, 10, 8, 3),
	(11, 11, 10, 2);

-- Volcando estructura para tabla lugares_en_el_mundo.continents
DROP TABLE IF EXISTS `continents`;
CREATE TABLE IF NOT EXISTS `continents` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla lugares_en_el_mundo.continents: ~5 rows (aproximadamente)
DELETE FROM `continents`;
INSERT INTO `continents` (`id`, `name`) VALUES
	(1, 'america'),
	(2, 'europa'),
	(3, 'asia'),
	(4, 'africa'),
	(5, 'oceania');

-- Volcando estructura para tabla lugares_en_el_mundo.countries
DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla lugares_en_el_mundo.countries: ~10 rows (aproximadamente)
DELETE FROM `countries`;
INSERT INTO `countries` (`id`, `name`) VALUES
	(1, 'colombia'),
	(2, 'estados unidos'),
	(3, 'méxico'),
	(4, 'argentina'),
	(5, 'egipto'),
	(6, 'australia'),
	(7, 'fiyi'),
	(8, 'japón'),
	(9, 'rusia'),
	(10, 'españa');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

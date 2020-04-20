# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 192.168.1.10 (MySQL 5.5.55-0ubuntu0.14.04.1)
# Datenbank: quotes
# Erstellt am: 2017-08-18 12:36:55 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Export von Tabelle colors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `colors`;

CREATE TABLE `colors` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `color` varchar(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;

INSERT INTO `colors` (`id`, `color`)
VALUES
	(1,'#1abc9c'),
	(2,'#2ecc71'),
	(3,'#3498db'),
	(4,'#9b59b6'),
	(5,'#34495e'),
	(6,'#16a085'),
	(7,'#27ae60'),
	(8,'#2980b9'),
	(9,'#8e44ad'),
	(10,'#2c3e50'),
	(11,'#f1c40f'),
	(12,'#e67e22'),
	(13,'#e74c3c'),
	(14,'#7FBAB8'),
	(15,'#95a5a6'),
	(16,'#f39c12'),
	(17,'#d35400'),
	(18,'#1a1a1a'),
	(19,'#bdc3c7'),
	(20,'#7f8c8d'),
	(21,'#F44336'),
	(22,'#3F51B5'),
	(23,'#2196F3'),
	(24,'#03A9F4'),
	(25,'#FF9800'),
	(26,'#FF5722'),
	(27,'#795548'),
	(28,'#FFEB3B'),
	(29,'#607D8B'),
	(30,'#009688');

/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle quotes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quotes`;

CREATE TABLE `quotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quote` varchar(199) NOT NULL DEFAULT '',
  `author` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `quotes` WRITE;
/*!40000 ALTER TABLE `quotes` DISABLE KEYS */;

INSERT INTO `quotes` (`id`, `quote`, `author`)
VALUES
	(1,'The most dangerous thing you can do in life is play it safe.','Casey Neistat'),
	(2,'If the reason why you\'re doing anything creative is to make a living, then you\'re doing it wrong.','Casey Neistat'),
	(3,'There is nothing more likely to start disagreement among people or countries than an agreement.','E. B. White'),
	(4,'Our greatest weakness lies in giving up. The most certain way to succeed is always to try just one more time.','Thomas A. Edison'),
	(5,'The best preparation for tomorrow is doing your best today.','H. Jackson Brown, Jr'),
	(6,'You can do anything.','David Allen'),
	(7,'You miss 100 percent of the shots you don\'t take.','Wayne Gretzky'),
	(8,'If opportunity doesn\'t knock, build a door.','Milton Berle'),
	(9,'One that would have the fruit, must climb the tree.','Thomas Fuller'),
	(10,'The biggest risk is to take no risk at all.','Casey Neistat'),
	(11,'Without a goal, you can’t score.','Casey Neistat'),
	(12,'The right time is always right now.','Casey Neistat'),
	(13,'It\'s the execution that matters, never the idea.','Casey Neistat'),
	(14,'If the reason why you\'re doing anything creative is to make a living, then you\'re doing it wrong.','Casey Neistat'),
	(15,'A computer once beat me at chess, but it was no match for me at kick boxing.','Emo Philips'),
	(16,'You have not failed until you quit trying.','Gordon B. Hinckley'),
	(17,'Everything you want is on the other side of fear.','Jack Canfield'),
	(18,'To avoid criticism, do nothing, say nothing, and be nothing.','Elbert Hubbard'),
	(19,'Difficulties are meant to rouse, not discourage. The human spirit is to grow strong by conflict.','William Ellery Channing'),
	(20,'If we don\'t participate in the tender, the only possibility is to lose.','Sven Jäger');

/*!40000 ALTER TABLE `quotes` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

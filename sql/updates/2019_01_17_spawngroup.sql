/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.1.21-MariaDB : Database - sapphire
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sapphire` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sapphire`;

/*Table structure for table `spawngroup` */

DROP TABLE IF EXISTS `spawngroup`;

CREATE TABLE `spawngroup` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `territoryTypeId` int(5) NOT NULL,
  `bNpcTemplateId` int(10) NOT NULL,
  `level` int(3) NOT NULL,
  `maxHp` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `spawngroup` */

insert  into `spawngroup`(`id`,`territoryTypeId`,`bNpcTemplateId`,`level`,`maxHp`) values 
(1,134,7,10,192);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

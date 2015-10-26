# MySQL-Front 5.1  (Build 4.13)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: 127.0.0.1    Database: fshop
# ------------------------------------------------------
# Server version 5.5.19

CREATE DATABASE `fshop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `fshop`;

#
# Source for table sec_global_settings
#

CREATE TABLE `sec_global_settings` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `system_style` varchar(50) DEFAULT NULL COMMENT '系统风格',
  `is_intelligent_search` varchar(10) DEFAULT NULL COMMENT '是否启用智能搜索',
  `is_open_mobile` varchar(10) DEFAULT NULL COMMENT '是否开启移动端',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table sec_global_settings
#

LOCK TABLES `sec_global_settings` WRITE;
UNLOCK TABLES;

#
# Source for table sec_user
#

CREATE TABLE `sec_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) DEFAULT '',
  `name` varchar(50) DEFAULT NULL,
  `nick_name` varchar(50) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Dumping data for table sec_user
#

LOCK TABLES `sec_user` WRITE;
INSERT INTO `sec_user` VALUES (1,'superadmin0','吴圣','圣领域','11111','123456');
INSERT INTO `sec_user` VALUES (2,'superadmin1','邵东','东大侠','22222','123456');
INSERT INTO `sec_user` VALUES (3,'superadmin2','兴科','屌丝罗','33333','123456');
UNLOCK TABLES;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

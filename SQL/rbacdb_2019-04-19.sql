# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.3.14-MariaDB)
# Database: rbacdb
# Generation Time: 2019-04-19 07:53:08 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table l_permission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `l_permission`;

CREATE TABLE `l_permission` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `permission` varchar(100) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `l_permission` WRITE;
/*!40000 ALTER TABLE `l_permission` DISABLE KEYS */;

INSERT INTO `l_permission` (`pid`, `permission`, `rid`)
VALUES
	(1,'USER',1),
	(2,'ADMIN',2),
	(3,'USER_READ',1),
	(4,'ADMIN_READ',2),
	(5,'ADMIN_WRITE',2),
	(6,'ADMIN_DELETE',2);

/*!40000 ALTER TABLE `l_permission` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table l_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `l_role`;

CREATE TABLE `l_role` (
  `rid` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `rname` varchar(45) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `l_role` WRITE;
/*!40000 ALTER TABLE `l_role` DISABLE KEYS */;

INSERT INTO `l_role` (`rid`, `rname`)
VALUES
	(1,'USER'),
	(2,'ADMIN');

/*!40000 ALTER TABLE `l_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table l_rolepermission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `l_rolepermission`;

CREATE TABLE `l_rolepermission` (
  `rpid` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色权限ID',
  `rid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL COMMENT '权限ID',
  PRIMARY KEY (`rpid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `l_rolepermission` WRITE;
/*!40000 ALTER TABLE `l_rolepermission` DISABLE KEYS */;

INSERT INTO `l_rolepermission` (`rpid`, `rid`, `pid`)
VALUES
	(1,1,1),
	(2,2,2),
	(3,2,4),
	(4,2,5),
	(5,2,6);

/*!40000 ALTER TABLE `l_rolepermission` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table l_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `l_user`;

CREATE TABLE `l_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `account` varchar(45) DEFAULT NULL COMMENT '账号',
  `password` varchar(45) DEFAULT NULL COMMENT '密码',
  `name` varchar(45) DEFAULT NULL COMMENT '姓名',
  `rid` int(11) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `l_user` WRITE;
/*!40000 ALTER TABLE `l_user` DISABLE KEYS */;

INSERT INTO `l_user` (`uid`, `account`, `password`, `name`, `rid`)
VALUES
	(1,'clarence','123456','Clarence',2);

/*!40000 ALTER TABLE `l_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table l_userrole
# ------------------------------------------------------------

DROP TABLE IF EXISTS `l_userrole`;

CREATE TABLE `l_userrole` (
  `urid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户角色ID',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `rid` int(11) DEFAULT NULL COMMENT '权限ID',
  PRIMARY KEY (`urid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `l_userrole` WRITE;
/*!40000 ALTER TABLE `l_userrole` DISABLE KEYS */;

INSERT INTO `l_userrole` (`urid`, `uid`, `rid`)
VALUES
	(1,1,2);

/*!40000 ALTER TABLE `l_userrole` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

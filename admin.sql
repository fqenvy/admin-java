-- MySQL dump 10.13  Distrib 5.7.16, for osx10.11 (x86_64)
--
-- Host: 127.0.0.1    Database: admin
-- ------------------------------------------------------
-- Server version	5.7.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(64) NOT NULL,
  `path` varchar(255) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(255) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `component` varchar(255) DEFAULT NULL,
  `type` int(5) NOT NULL COMMENT '类型     0：目录   1：菜单   2：按钮',
  `icon` varchar(32) DEFAULT NULL COMMENT '菜单图标',
  `orderNum` int(11) DEFAULT NULL COMMENT '排序',
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `statu` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` (`id`, `parent_id`, `name`, `path`, `perms`, `component`, `type`, `icon`, `orderNum`, `created`, `updated`, `statu`) VALUES (1,0,'系统管理','','sys:manage','',0,'el-icon-s-operation',1,'2021-01-15 18:58:18','2021-01-15 18:58:20',1),(2,1,'用户管理','/sys/users','sys:user:list','sys/User',1,'el-icon-s-custom',1,'2021-01-15 19:03:45','2021-01-15 19:03:48',1),(3,1,'角色管理','/sys/roles','sys:role:list','sys/Role',1,'el-icon-rank',2,'2021-01-15 19:03:45','2021-01-15 19:03:48',1),(4,1,'菜单管理','/sys/menus','sys:menu:list','sys/Menu',1,'el-icon-menu',3,'2021-01-15 19:03:45','2021-01-15 19:03:48',1),(5,0,'系统工具','','sys:tools',NULL,0,'el-icon-s-tools',2,'2021-01-15 19:06:11',NULL,1),(6,5,'数字字典','/sys/dicts','sys:dict:list','sys/Dict',1,'el-icon-s-order',1,'2021-01-15 19:07:18','2021-01-18 16:32:13',1),(7,3,'添加角色','','sys:role:save','',2,'',1,'2021-01-15 23:02:25','2021-01-17 21:53:14',0),(9,2,'添加用户',NULL,'sys:user:save',NULL,2,NULL,1,'2021-01-17 21:48:32',NULL,1),(10,2,'修改用户',NULL,'sys:user:update',NULL,2,NULL,2,'2021-01-17 21:49:03','2021-01-17 21:53:04',1),(11,2,'删除用户',NULL,'sys:user:delete',NULL,2,NULL,3,'2021-01-17 21:49:21',NULL,1),(12,2,'分配角色',NULL,'sys:user:role',NULL,2,NULL,4,'2021-01-17 21:49:58',NULL,1),(13,2,'重置密码',NULL,'sys:user:repass',NULL,2,NULL,5,'2021-01-17 21:50:36',NULL,1),(14,3,'修改角色',NULL,'sys:role:update',NULL,2,NULL,2,'2021-01-17 21:51:14',NULL,1),(15,3,'删除角色',NULL,'sys:role:delete',NULL,2,NULL,3,'2021-01-17 21:51:39',NULL,1),(16,3,'分配权限',NULL,'sys:role:perm',NULL,2,NULL,5,'2021-01-17 21:52:02',NULL,1),(17,4,'添加菜单',NULL,'sys:menu:save',NULL,2,NULL,1,'2021-01-17 21:53:53','2021-01-17 21:55:28',1),(18,4,'修改菜单',NULL,'sys:menu:update',NULL,2,NULL,2,'2021-01-17 21:56:12',NULL,1),(19,4,'删除菜单',NULL,'sys:menu:delete',NULL,2,NULL,3,'2021-01-17 21:56:36',NULL,1);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `remark` varchar(64) DEFAULT NULL COMMENT '备注',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `statu` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  UNIQUE KEY `code` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` (`id`, `name`, `code`, `remark`, `created`, `updated`, `statu`) VALUES (3,'普通用户','normal','只有基本查看功能','2021-01-04 10:09:14','2021-01-30 08:19:52',1),(6,'超级管理员','admin','系统默认最高权限，不可以编辑和任意修改','2021-01-16 13:29:03','2021-01-17 15:50:45',1),(9,'fq','normol','root','2021-05-04 15:53:00','2021-05-04 15:53:32',1);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`) VALUES (60,6,1),(61,6,2),(62,6,9),(63,6,10),(64,6,11),(65,6,12),(66,6,13),(67,6,3),(68,6,7),(69,6,14),(70,6,15),(71,6,16),(72,6,4),(73,6,17),(74,6,18),(75,6,19),(76,6,5),(77,6,6),(96,3,1),(97,3,2),(98,3,3),(99,3,4),(100,3,5),(101,3,6),(103,9,1),(104,9,2),(105,9,3),(106,9,4);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `statu` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_USERNAME` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` (`id`, `username`, `password`, `avatar`, `email`, `city`, `created`, `updated`, `last_login`, `statu`) VALUES (1,'admin','$2a$10$0ilP4ZD1kLugYwLCs4pmb.ZT9cFqzOZTNaMiHxrBnVIQUGUwEvBIO','https://avatars.githubusercontent.com/u/73355009?s=48&v=4','123@qq.com','四川','2021-05-01 12:45:39','2021-05-01 12:45:39','2020-12-30 08:38:37',1),(2,'test','$2a$10$0ilP4ZD1kLugYwLCs4pmb.ZT9cFqzOZTNaMiHxrBnVIQUGUwEvBIO','https://avatars.githubusercontent.com/u/73355009?s=48&v=4','test@qq.com',NULL,'2021-05-01 12:45:55','2021-05-01 12:45:57',NULL,1),(3,'fq','$2a$10$I22FC3vpzsNLs97jLqHTOOQPCa0gVd44i91X4aH30r.ZeEzdzPOxe','https://avatars.githubusercontent.com/u/73355009?s=48&v=4','1442121327@qq.com',NULL,'2021-05-04 15:54:11','2021-05-04 16:05:20',NULL,1);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` (`id`, `user_id`, `role_id`) VALUES (4,1,6),(7,1,3),(13,2,3),(14,3,9);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-04 16:14:15

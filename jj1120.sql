-- MySQL dump 10.13  Distrib 5.7.10, for Win64 (x86_64)
--
-- Host: localhost    Database: jj
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `pre_dept`
--

DROP TABLE IF EXISTS `pre_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pre_dept` (
  `dept_id` int(4) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(12) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pre_dept`
--

LOCK TABLES `pre_dept` WRITE;
/*!40000 ALTER TABLE `pre_dept` DISABLE KEYS */;
INSERT INTO `pre_dept` VALUES (1,'媒体部'),(2,'销售部'),(3,'人事部'),(4,'运维部'),(5,'市场部'),(6,'开发部');
/*!40000 ALTER TABLE `pre_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pre_emp`
--

DROP TABLE IF EXISTS `pre_emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pre_emp` (
  `e_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `e_name` varchar(20) NOT NULL,
  `e_dept` varchar(20) NOT NULL,
  `date_of_birth` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_of_entry` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pre_emp`
--

LOCK TABLES `pre_emp` WRITE;
/*!40000 ALTER TABLE `pre_emp` DISABLE KEYS */;
INSERT INTO `pre_emp` VALUES (1,'张三','市场部','2008-04-03 05:33:00','2014-09-22 09:53:00'),(2,'李四','开发部','2008-04-03 05:33:00','2013-10-24 09:53:00'),(3,'王五','媒体部','2008-04-03 05:33:00','2015-04-21 05:33:00'),(4,'赵六','销售部','2008-04-03 05:33:00','2015-03-20 09:54:00'),(5,'小兰','人事部','1989-05-04 09:33:00','2015-04-01 09:35:00'),(6,'小小','市场部','2009-01-27 06:46:30','2018-10-29 06:46:41'),(7,'小白','市场部','1991-10-17 09:37:00','2014-08-16 09:37:00'),(8,'小智','运维部','1987-06-20 09:37:00','2015-01-10 09:38:00');
/*!40000 ALTER TABLE `pre_emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` char(32) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'大d锦','123456','ddj@ddj.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-20 22:50:34

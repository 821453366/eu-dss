-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: 192.168.1.112    Database: eudsstest
-- ------------------------------------------------------
-- Server version	5.5.40

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
-- Table structure for table `dssuser`
--

DROP TABLE IF EXISTS `dssuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dssuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `rank` varchar(20) NOT NULL DEFAULT '1',
  `date` varchar(20) DEFAULT NULL,
  `rankValue` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dssuser`
--

LOCK TABLES `dssuser` WRITE;
/*!40000 ALTER TABLE `dssuser` DISABLE KEYS */;
INSERT INTO `dssuser` VALUES (1,'普通会员','admin','admin','女',19,'1365478596','2','2017-6-11','二级管理员'),(2,'MR_欢先生','mahuan','admin','男',22,'15802953657','0','2017-3-15','超级管理员'),(3,'超级管理员','super','super','女',12,'15802458456','0','2017-8-11','超级管理员'),(19,'小明','xiaoming','123456','男',NULL,NULL,'1','2017-3-7','一级管理员'),(83,'我叫马欢','我是一个会员','123456','男',NULL,NULL,'2','2016-1-1','二级管理员'),(84,'mahuan','mahuan111','11111111','男',NULL,NULL,'3','2016-8-9','三级管理员'),(96,'12121212','mahuan1111','12121212','男',NULL,NULL,'2','2017-2-13','二级管理员'),(97,'程序员的我','821453366','821453366','男',NULL,NULL,'3','2015-2-4','三级管理员'),(98,'马欢','1014449029','1014449029','男',NULL,NULL,'2','2015-2-4','二级管理员'),(99,'1','1','1','1',1,NULL,'2','2015-12-2','二级管理员'),(100,'1','2','1','1',1,'1','1','2015-11-23','一级管理员'),(102,'1','22','22','1',1,'1','3','2016-5-6','三级管理员'),(103,'12','12212','1212',NULL,NULL,NULL,'1','1221212','一级管理员'),(104,'小花','37295436','12453654',NULL,NULL,NULL,'1','2017-07-12 ','一级管理员'),(106,'马欢欢','1221112','1212',NULL,NULL,NULL,'1','1221212','12'),(107,'马欢欢','7451245236','45422122',NULL,NULL,NULL,'3','2017-07-12 ','三级管理员'),(109,'张老师','1014449022','789456',NULL,NULL,NULL,'0','2017-07-12 ','超级管理员'),(110,'请问','123','12312',NULL,NULL,NULL,'1','2017-07-12 ','一级管理员'),(111,'而我若','wer21','31231',NULL,NULL,NULL,'1','2017-07-12 ','一级管理员');
/*!40000 ALTER TABLE `dssuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eu_tronclass`
--

DROP TABLE IF EXISTS `eu_tronclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eu_tronclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tron_month` varchar(20) NOT NULL,
  `eu_rj` int(11) NOT NULL,
  `eu_xin` int(11) NOT NULL,
  `eu_rw` int(11) NOT NULL,
  `eu_ts` int(11) NOT NULL,
  `eu_xiu` int(11) NOT NULL,
  `eu_gz` int(11) NOT NULL,
  `eu_kuai` int(11) NOT NULL,
  `eu_ad` int(11) NOT NULL,
  `eu_wc` int(11) NOT NULL,
  `eu_wu` int(11) NOT NULL,
  `eu_jr` int(11) NOT NULL,
  `year` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eu_tronclass`
--

LOCK TABLES `eu_tronclass` WRITE;
/*!40000 ALTER TABLE `eu_tronclass` DISABLE KEYS */;
INSERT INTO `eu_tronclass` VALUES (1,'三月份',657,482,465,448,427,421,318,219,207,146,142,'2017'),(2,'四月份',2303,1394,1654,1561,1712,1706,966,866,1133,1127,755,'2017'),(3,'五月份',657,482,465,448,427,421,318,219,207,146,142,'2017'),(4,'六月份',657,482,465,448,427,421,318,219,207,146,142,'2017'),(5,'七月份',657,482,465,448,427,421,318,219,207,146,142,'2017'),(6,'八月份',657,482,465,448,427,421,318,219,207,146,142,'2017'),(7,'九月份',657,482,465,448,427,421,318,219,207,146,142,'2017'),(8,'一月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(9,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(10,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(11,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(12,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(13,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(14,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(15,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(16,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(17,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(18,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(19,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(20,'二月份1',657,482,465,448,427,421,318,219,207,146,142,'2016'),(21,'2',657,482,465,448,427,421,318,219,207,146,142,'2016'),(22,'二月份2',657,482,465,448,427,421,318,219,207,146,142,'2016'),(23,'222',657,482,465,448,427,421,318,219,207,146,142,'2016'),(24,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(25,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(26,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(27,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(28,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(29,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(30,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(31,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(32,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(33,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(34,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(35,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(36,'22',657,482,465,448,427,421,318,219,207,146,142,'2016'),(37,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(38,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(39,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(40,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(41,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(42,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(43,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(44,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(45,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(46,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(47,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(48,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(49,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(50,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(51,'22222',657,482,465,448,427,421,318,219,207,146,142,'2016'),(52,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(53,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(54,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(55,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(57,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(58,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(59,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(60,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(61,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(62,'44444',657,482,465,448,427,421,318,219,207,146,142,'2016'),(63,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(64,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(65,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(66,'二月份',657,482,465,448,427,421,318,219,207,146,142,'2016'),(67,'一月份',89,89,89,89,89,89,89,89,89,89,89,'2017'),(76,'一月份',89,89,89,89,89,89,89,89,89,89,89,'2017'),(77,'一月份',88,88,88,88,88,88,88,88,88,88,88,'2017'),(78,'一月份',78,787,87,87,87,87,87,87,87,87,787,'2017'),(79,'一月份',787878787,787,87,87,8,78,7,8,78,7,8,'2017'),(80,'一月份',7878,78,78,878,7878,7878,787,8787,878,787,878,'2017'),(81,'8888',78,78,78,78,78,78,78,78,787,87,87,'2017'),(82,'一月份',121,1221,21212,1212,121,212,121,21,212,121,212,'2017'),(83,'九月份',7878,7878,7878,787,87878,787,8787,8787,878,7878,787,'2012'),(84,'一月份',12,12,121,21,21,21,21,21,2,1,11,'2017'),(85,'一月份',44,44,44,45,45,4,54,54,54,54,5,'2017'),(86,'一月份',12,12,12,121,21,21,21,2,12,12,111,'2017'),(87,'一月份',1,1,1,1,1,1,1,1,1,1,1,'2017'),(88,'一月份',1,21212,1212,1212,121,212,12,12,12,12,12,'2017'),(89,'一月份',121,1212,1212,1212,12,12,1,21,21,2,12,'2017'),(90,'一月份',1212,1212,121212,121,212,12,1,212,12,12,1212,'2017'),(91,'一月份',1212,12121,21212,121212,1212,1212,1212,1212,1212,12121,212,'2017'),(92,'一月份',1212,1212,1212,121,21,21,2,12,12,12,12,'2017'),(93,'二月份',4545,4545,4545,454,545,454,5454,54,545,45,45,'2016'),(96,'一月份',1,1,1,1,1,1,1,1,1,1,1,'2017'),(97,'一月份',1,1,1,1,1,1,1,1,1,1,1,'2017'),(98,'一月份',1,1,1,1,1,1,1,1,1,1,1,'2017'),(99,'一月份',2,2,2,2,2,2,2,2,2,2,2,'2017'),(100,'一月份',2,2,2,2,2,2,2,2,2,2,2,'2017'),(101,'一月份',2,2,2,2,2,2,2,2,2,2,2,'2017'),(102,'一月份',2,2,2,2,2,2,2,2,2,2,2,'2017');
/*!40000 ALTER TABLE `eu_tronclass` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-12 21:08:51
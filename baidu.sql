-- MySQL dump 10.13  Distrib 5.5.25a, for osx10.7 (i386)
--
-- Host: localhost    Database: baidu
-- ------------------------------------------------------
-- Server version	5.5.25a

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
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `keywords` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `text` text,
  `date` datetime DEFAULT NULL,
  `href` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'c1.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(2,'d1.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(3,'c2.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(4,'d3.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(5,'c3.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(6,'d2.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(7,'c4.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(8,'d4.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(9,'c5.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(10,'d5.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(11,'d6.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(12,'c6.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(13,'c7.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(14,'d7.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(15,'d8.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(16,'c8.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(17,'c9.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(18,'d9.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(19,'d10.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(20,'c10.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(21,'c11.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(22,'d11.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(23,'c12.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(24,'d12.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(25,'c13.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(26,'d13.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(27,'c14.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(28,'d14.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(29,'c15.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(30,'d15.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(31,'c16.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(32,'d16.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(33,'c17.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(34,'d17.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(35,'c18.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(36,'d18.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(37,'c19.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(38,'d19.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(39,'c20.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(40,'d20.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(41,'c21.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(42,'d21.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(43,'c22.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(44,'d22.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(45,'c23.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(46,'d23.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(47,'c24.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(48,'d24.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(49,'c25.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(50,'d25.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(51,'c26.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(52,'d26.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(53,'c27.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(54,'d27.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(55,'c28.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(56,'d28.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(57,'c29.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(58,'d29.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(59,'c30.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(60,'d30.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(61,'c31.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(62,'d31.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(63,'c32.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(64,'d32.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(65,'c33.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(66,'d33.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(67,'c34.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(68,'d34.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(69,'c35.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(70,'d35.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(71,'c36.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(72,'d36.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(73,'c37.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(74,'d37.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(75,'c38.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(76,'d38.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(77,'c39.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(78,'d39.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(79,'c40.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(80,'d40.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(81,'c41.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(82,'d41.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(83,'c42.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(84,'d42.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(85,'c43.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(86,'d43.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(87,'c44.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(88,'d44.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(89,'c45.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(90,'d45.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(91,'c46.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(92,'d46.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(93,'c47.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(94,'d47.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(95,'c48.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(96,'d48.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(97,'c49.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(98,'d49.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(99,'c50.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(100,'d50.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(101,'c51.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(102,'d51.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(103,'c52.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(104,'d52.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(105,'c53.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(106,'d53.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(107,'c54.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(108,'d54.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(109,'c55.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(110,'d55.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(111,'c56.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(112,'d56.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(113,'c57.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(114,'d57.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(115,'c58.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(116,'d58.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(117,'c59.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(118,'d59.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL),(119,'c60.jpg','cat','cat 猫 可爱 动物 cute','真正好玩：猫咪也会练瑜伽！',NULL,NULL,NULL),(120,'d60.jpg','dog','dog 狗 可爱 动物 cute','真正好玩：狗狗也会练瑜伽！',NULL,NULL,NULL);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-02 23:15:45

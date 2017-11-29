-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: inventory_system
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `orderreferenceinventory`
--

DROP TABLE IF EXISTS `orderreferenceinventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderreferenceinventory` (
  `orderNo` int(11) NOT NULL,
  `inventoryNo` int(11) NOT NULL,
  PRIMARY KEY (`orderNo`,`inventoryNo`),
  KEY `inventoryNo` (`inventoryNo`),
  CONSTRAINT `orderreferenceinventory_ibfk_1` FOREIGN KEY (`orderNo`) REFERENCES `restaurantorder` (`OrderNo`),
  CONSTRAINT `orderreferenceinventory_ibfk_2` FOREIGN KEY (`inventoryNo`) REFERENCES `inventory` (`inventoryNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderreferenceinventory`
--

LOCK TABLES `orderreferenceinventory` WRITE;
/*!40000 ALTER TABLE `orderreferenceinventory` DISABLE KEYS */;
INSERT INTO `orderreferenceinventory` VALUES (16,3),(17,3),(15,4),(14,5),(11,6),(12,7),(13,9),(10,11),(7,23),(8,26),(9,26),(5,30),(10,30),(6,31),(3,32),(10,32),(3,33),(10,37),(11,37),(4,38),(4,39);
/*!40000 ALTER TABLE `orderreferenceinventory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-29 17:55:46

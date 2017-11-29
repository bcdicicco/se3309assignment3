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
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `supplierNo` int(11) NOT NULL,
  `supplierName` varchar(30) DEFAULT NULL,
  `address` varchar(70) DEFAULT NULL,
  `phoneNo` char(10) DEFAULT NULL,
  PRIMARY KEY (`supplierNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'foodPlace','123 Food Street','5191234567'),(2,'dsd','1203982930 dsijad','1234567891'),(3,'Devpoint','98179 Nevada Way','6892915255'),(4,'Bluezoom','66747 Blaine Lane','3626891547'),(5,'Feedfish','192 Lake View Drive','2046628730'),(6,'Avamm','14 Village Place','5375516197'),(7,'Jabberbean','64655 Maryland Circle','6847270721'),(8,'Edgeclub','504 Annamark Junction','6913730882'),(9,'Centizu','56154 Knutson Alley','8175361924'),(10,'Twitterbeat','62 Main Circle','9121296296'),(11,'Topicware','0517 Paget Avenue','6782862681'),(12,'Twitterbeat','508 Texas Circle','6191100891'),(13,'Tambee','25059 Eliot Park','0519176933'),(14,'Voomm','1493 Banding Terrace','8799821116'),(15,'Flipstorm','736 Fairfield Place','2155875110'),(16,'Kwinu','31503 Utah Road','2443925490'),(17,'Fadeo','3085 Melvin Street','0398648917'),(18,'Tanoodle','1 John Wall Parkway','2502748485'),(19,'Trilia','1 Menomonie Avenue','3982665256'),(20,'Nlounge','14584 Bay Alley','8651843114'),(21,'Skyble','7157 Ramsey Junction','0112353845'),(22,'Meejo','260 Atwood Parkway','1436204064');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-29 17:55:47

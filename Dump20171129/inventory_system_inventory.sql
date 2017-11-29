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
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory` (
  `inventoryNo` int(11) NOT NULL,
  `inventoryName` varchar(30) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `invSupplier` int(11) NOT NULL,
  PRIMARY KEY (`inventoryNo`),
  KEY `invSupplier_idx` (`invSupplier`),
  CONSTRAINT `invSupplier` FOREIGN KEY (`invSupplier`) REFERENCES `supplier` (`supplierNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'Qweqwgzmdyauvz',95,211.08,7),(2,'Fpxvtmixabnovt',21,179.38,10),(3,'Niztvwlrprtbcu',96,319.04,3),(4,'Zxykwwmwcdgvbi',3,493.39,13),(5,'Mmjhvmyhlevpkn',91,109.95,4),(6,'Dkgziljrlhdzlg',53,284.64,5),(7,'Sbxctnnppidida',68,166.61,18),(8,'Tlsoddyqbprieq',11,46.72,2),(9,'Qobyotrlkkefdc',18,229.35,9),(10,'Rbsvstznxetvcp',65,418.64,8),(11,'Kpqtwkyoooxpgg',83,106.99,2),(12,'Emxrvddcgazjcq',2,380.67,20),(13,'Tfzyaovsorbkmi',13,343.81,2),(14,'Hrymfxihmotxtv',75,252.97,1),(15,'Tvjymezjyjtccf',2,367.73,15),(16,'Hxwwkvpcqcxysz',48,109.79,6),(17,'Kimsjgoyoqqwku',56,104.21,15),(18,'Hvkfhrcqldawvz',14,195.95,19),(19,'Bwbdwpwhonpujf',13,157.82,5),(20,'Ufapenwdrwmigh',74,297.81,13),(21,'Lmpuuwbglpgeyf',41,416.12,7),(22,'Fcrhptzcfjdtmd',44,316.07,2),(23,'Bwsfubasxmaqcy',2,80.67,1),(24,'Ewmtpilnhfwqkk',3,469.47,19),(25,'Lrhycumrudfpth',79,419.16,7),(26,'Kwxqoesiqtwbnx',3,36.26,14),(27,'Xqvacqoztxxgwq',23,316.02,10),(28,'Kdrwsisgypfnrx',95,332.47,19),(29,'Ywnvnvsqzsrrqc',91,326.49,12),(30,'Uhxheudstgnswg',5,107.26,5),(31,'Rzdxptxlaxshxc',50,265.94,6),(32,'Xofleizkpwmwlq',45,154.89,17),(33,'Bkoimgzatxwmur',91,438.6,4),(34,'Kmbikaqjgwgflr',22,28.11,19),(35,'Ghrnlrcgydbajv',89,179.29,12),(36,'Vaeofmxpmijxto',10,204.68,11),(37,'Kfjnjihalplzwv',60,390.39,15),(38,'Ruswsvmfotifqe',95,130.15,4),(39,'Fupdcdygnbzszz',46,297.88,12),(40,'Admyylhbccphff',62,180.8,17),(41,'Soogemugpqosfp',2,312.1,21),(42,'Vixazdpbudquna',79,353.62,8),(43,'Kjcvhyyqyckcjq',21,325.19,13),(44,'Vnagamiojjbiza',1,376.66,2),(45,'Ckoocratvzbpao',22,468.17,2),(46,'Iqpbovazwcieqe',52,143.93,17),(47,'Pbdqqfiypofiin',50,352.61,5),(48,'Yguytnvsrrrmis',87,131.35,7),(49,'Xuxcuwrrymkwkg',97,174.37,8),(50,'Nsbyiftbwkwpis',100,150.24,14),(51,'Ssrxbjffnxzgzs',85,386.86,11),(52,'Yjldhbugbzfvnk',37,319.28,5),(53,'Dicxddvchfpmok',43,63.99,7),(54,'Qubfujycffnxvc',23,187.74,16),(55,'Bbamgzewkcdyax',62,145.39,10),(56,'Nusfykcafewoyf',96,121.79,9),(57,'Vgwrbaqrwghhhk',49,159.67,12),(58,'Aditrtgkirbhcc',54,108.02,17),(59,'Auoqoxpsktmjoj',22,429.33,9),(60,'Dyaflxtplzftjv',93,340.82,20),(61,'Idgbehpcjicyjf',73,92.38,21),(62,'Ppoqrliapchgtw',3,479.11,22),(63,'Gvbzffkoivvnni',82,318.39,17),(64,'Aozedvgvghotcm',44,260.24,1),(65,'Gnlrpyzkbkbrbt',69,284.77,14),(66,'Fwihmkouwrurng',53,41.54,3),(67,'Ywwqciwpodupyr',51,494.16,4),(68,'Qupqnnbpvlttqr',64,429.36,5),(69,'Oxrkmkvuclxlbc',41,88.78,5),(70,'Timkkgxhbhohfp',90,494.45,21),(71,'Nwigqoisrwxjct',86,438.18,19),(72,'Rssqvknnlnzbux',84,420.61,15),(73,'Respfmpmzfokxi',52,265.65,6),(74,'Kghqonkvtrpton',83,173.48,17),(75,'Apqeibxhfskagq',32,427.25,5),(76,'Vbevnkpyafubip',73,356.4,20),(77,'Jhniqpobvqrljp',16,101.08,12),(78,'Ecwnxjgjcvgpyp',77,356.62,9),(79,'Exmiftvmzdxvct',28,255.77,3),(80,'Wvpzntlykqbjnq',50,214.43,5),(81,'Wfgnsccieesvdm',98,323.59,14),(82,'Leszvqbdtkeypu',57,410.02,14),(83,'Shpqsyvgzvvfih',14,309.08,22),(84,'Onnxczscbrlcjp',13,288.65,11),(85,'Ngdhntmcfqskrv',95,378.52,7),(86,'Pgtogpqkxiymye',93,209.43,12),(87,'Yetsmyyjcwsgst',95,444.26,10),(88,'Pdkpmrumdjngxi',58,163.84,4),(89,'Ymhvqlwjlouhqp',58,461.84,7),(90,'Jopnbhhszmjwon',17,363.25,14),(91,'Hjqjuxrjhjlpuv',82,189.16,17),(92,'Utbqjagmlakdyh',62,425.25,3),(93,'Wjuvbealvdstnp',7,144.25,9),(94,'Floqqhqpgmejls',93,376.49,15),(95,'Fzfuvpnbkyuuhv',27,499,12),(96,'Lvhpdnnzyjlydn',79,191.27,2),(97,'Peoinnnbpwozbd',13,172.61,7),(98,'Lzjkhmdjjcljwa',9,231.26,3),(99,'Ubaltxlphadeui',61,418.06,17),(100,'Aqjnviaktvhmgl',14,274.04,4),(101,'Obswbghxwlovjf',15,82.49,8),(102,'Mztgkeqvakeemu',40,63.45,13),(103,'Mednujxmwjbszl',52,305.9,10),(104,'Mhsiuxlcdfycnh',34,217.9,10),(105,'Hpzkipbrinrqhu',71,21.9,9),(106,'Eqeiymdgeglkyw',98,105.33,10),(107,'Navlcbljlpqtcq',51,119.18,4),(108,'Wptxwfqfkwrntx',68,112.27,5),(109,'Tbsqcnakpbwqhz',99,416.68,6),(110,'Jhdsqdmaonoblc',37,206.6,15),(111,'Yntlftmdjhilus',35,289.25,22),(112,'Dnjetummfsltai',1,131.5,8),(113,'Iypzovxhvxchhy',88,363.29,5),(114,'Gcimoyiigujypb',51,418.16,6),(115,'Nbvmcqsmcvnmjz',69,394.79,7),(116,'Qrdgxanbikedtq',62,62.82,11),(117,'Rmygflwlismaov',38,109.28,20),(118,'Eiohrnroqttkvl',7,433.62,13),(119,'Hjzhvfzlkmtdwm',17,51.11,14),(120,'Stpmtwvntwixii',57,16.14,17),(121,'Aanqvxldcbzqkg',37,479.07,5),(122,'Wvrfrungxaedoc',7,293.83,4),(123,'Khcdbgrmyhhydz',28,189.93,22),(124,'Manyaythanenee',93,87.18,4),(125,'Mjglmetufstels',67,325.72,2),(126,'Spdwwsrkemrwpp',92,105.19,7),(127,'Swvhjrpmqapuye',86,410.42,9),(128,'Bpzjmmeadkjpsg',63,188.58,19),(129,'Kdkjfgvdbredbx',28,496.53,11),(130,'Rzduscepagjmoy',34,220.58,13),(131,'Yoacqehfzxpspr',36,141.3,19),(132,'Wvuuktjrdwovbq',93,236.96,18),(133,'Huvazwmqwjokod',51,347.34,13),(134,'Cziqwrohmgojpx',28,494.24,15),(135,'Cbprdzvjxxrawj',63,183.57,20),(136,'Mcbsxvyvnoezoj',48,41.89,15),(137,'Kvuokhrzupbljk',87,58.2,9),(138,'Wvfxxhnffyryqf',75,477.91,5),(139,'Krrnldahcwaedq',89,150.7,8),(140,'Kbrmesohqworhv',83,256.21,19),(141,'Gtsbhtnjddsyea',13,479.36,1),(142,'Bqcsajnmjjtsre',17,499.21,6),(143,'Hpvfahrnhrapzq',88,370.62,19),(144,'Tecwoyvnzbapjr',79,293.68,12),(145,'Keoizojewbvqdk',12,218.89,2),(146,'Ufpbfnpshyogfw',2,424.92,7),(147,'Sjuxbdiuxhpmls',69,487.96,11),(148,'Tadljaacsbzbxf',77,264.87,4),(149,'Mnvgsswodrypsc',83,129.96,22),(150,'Aamidypvpumzcp',79,227.49,2);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
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

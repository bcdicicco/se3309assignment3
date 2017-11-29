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
-- Table structure for table `menuitem`
--

DROP TABLE IF EXISTS `menuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menuitem` (
  `menuNo` int(11) NOT NULL,
  `menuName` varchar(30) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`menuNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuitem`
--

LOCK TABLES `menuitem` WRITE;
/*!40000 ALTER TABLE `menuitem` DISABLE KEYS */;
INSERT INTO `menuitem` VALUES (1,'sidj',5,15),(2,'sdj',6,18),(3,'oasdj',23,69),(4,'ref',123,369),(6,'Strawberry_Pie',1.5,4.5),(7,'Pizza',NULL,NULL),(8,'Qfctrsuhplngkv',2.28,6.84),(9,'Oygtlxroczotzf',6.58,19.740000000000002),(10,'Nwljqyndqnajhi',9,27),(11,'Gqbxyrdjvtdcus',5.12,15.36),(12,'Mxpfojjagvxnkr',9.21,27.630000000000003),(13,'Lxkeaqiumtivrs',5.94,17.82),(14,'Vslfpdovowslrd',7.01,21.03),(15,'Bajkqpggrxekkv',5.41,16.23),(16,'Kqmibwyykydmsb',9.7,29.099999999999998),(17,'Fppptgwuunijdc',1.03,3.09),(18,'Chmwlbqrcdvhrq',5.35,16.049999999999997),(19,'Wiuwaqsxoyqoes',4.75,14.25),(20,'Ithzpgoozxgcbe',9.37,28.11),(21,'Osgwauclffdgsa',4.56,13.68),(22,'Ftzsbumowkmjai',8.81,26.43),(23,'Ygbfrcivlhfpdp',6.88,20.64),(24,'Yyakutddanibqr',6.61,19.830000000000002),(25,'Cpqypnhnletkji',4.19,12.57),(26,'Kwqlcvtlqcbvdz',5.9,17.700000000000003),(27,'Kokejxdnoyvddj',3.56,10.68),(28,'Yfhavuzgjancpx',7.14,21.419999999999998),(29,'Rmyvmgqxsjmtkd',1.41,4.2299999999999995),(30,'Igmglurhvidotx',4.31,12.93),(31,'Piknxiqugsdrys',2.86,8.58),(32,'Xwpcgylrvjhybc',7.64,22.919999999999998),(33,'Onexoczmflyciw',9.42,28.259999999999998),(34,'Cdvfaqdrnctgca',3.77,11.31),(35,'Evbmrkuxlqmwks',8.56,25.68),(36,'Xnsyaepkbeawai',1.8,5.4),(37,'Bpsqoldaylsrla',5.51,16.53),(38,'Ysbibedzkkhvdo',3.53,10.59),(39,'Githemxnoiupzp',5.36,16.080000000000002),(40,'Xheeggitzguruy',8.27,24.81),(41,'Ssyxufgkbfvarn',7,21),(42,'Oolfbqkgbciaix',1.83,5.49),(43,'Iqabaunvmpzvjh',3.58,10.74),(44,'Ssbroghdbutxrx',1.7,5.1),(45,'Yohxvbnvmzjxum',6.39,19.169999999999998),(46,'Idfbcaamoveyit',3.17,9.51),(47,'Ofysijflcugyhs',3.07,9.209999999999999),(48,'Pilxpvjdzjstiz',8.14,24.42),(49,'Darphyzhizytrh',3.18,9.540000000000001),(50,'Zcuhhhmvaakhqo',6.01,18.03),(51,'Nhgbwbtnvupcqs',1.23,3.69),(52,'Ksyjlcltilribn',5.62,16.86),(53,'Hfkhlpztrownxu',1.31,3.93),(54,'Jflobxmxupylew',2.5,7.5),(55,'Umdjduvsyyqfdm',2.99,8.97),(56,'Ehyvuvlghyqidj',2.11,6.33),(57,'Alropiwuymabxq',9.6,28.799999999999997),(58,'Hxrulpgkdsvsej',4.53,13.59),(59,'Etzkdkfpvzycks',5.33,15.99),(60,'Ooqmaknveftlhs',7.57,22.71),(61,'Hfmfmcmflbjbwz',5.76,17.28),(62,'Aihlfjqmzzscdt',3.75,11.25),(63,'Cuknkxgoiuvwgh',2.08,6.24),(64,'Szdtcwhpnskxyr',7.33,21.990000000000002),(65,'Xxccocnhfmoljn',1.33,3.99),(66,'Eknawtpnflmjam',6.13,18.39),(67,'Ftegoauipmezzx',1.85,5.550000000000001),(68,'Qlljguuygvjhmz',2.99,8.97),(69,'Ajqcrzvsqjefki',3.8,11.399999999999999),(70,'Xvafeduxzcarhm',9.52,28.56),(71,'Igqlttoakfhabs',5.39,16.169999999999998),(72,'Iasnzmhqqiqsza',2.62,7.86),(73,'Gbtjgamtzyiitm',9.73,29.19),(74,'Gyfsorkplgwfyn',1.41,4.2299999999999995),(75,'Gkibxtkrygvbyc',5.58,16.740000000000002),(76,'Xzwxyihtaotofh',3.83,11.49),(77,'Qrztznkejbzoex',4.1,12.299999999999999),(78,'Fttodsmfbnmnkk',1.66,4.9799999999999995),(79,'Zlclcshpjfmbke',2.84,8.52),(80,'Pzwoapcicijuvj',6.33,18.990000000000002),(81,'Rdvuwqvabhlanj',5.44,16.32),(82,'Ixnpievsthwqwd',4.19,12.57),(83,'Mncdfqhyevqxel',5.93,17.79),(84,'Hwfgvaszkunyhs',3.64,10.92),(85,'Ltlfwtzacasghz',5.68,17.04),(86,'Uxorkamczflcir',3.98,11.94),(87,'Dfkigtwxxjljkz',4.24,12.72),(88,'Bxblqgqwpmgttq',8.64,25.92),(89,'Nzoxyjurppkvhv',5.48,16.44),(90,'Fcrtvisxnmpysl',4.42,13.26),(91,'Wewgspfiqiyytl',3.52,10.56),(92,'Bxvxcfuezwzzei',4.18,12.54),(93,'Nzadncrdyynuvu',6.32,18.96),(94,'Ysafjgoinhjiwc',5.23,15.690000000000001),(95,'Tyzhkwvlbbabhp',4.47,13.41),(96,'Lpcpoglzxhorfy',1.25,3.75),(97,'Dqmfyuowcgpnba',1.1,3.3000000000000003),(98,'Ogofedjwlntrsk',7.05,21.15),(99,'Ejsvgsydprjjaz',1.43,4.29),(100,'Xrdaestcigvwpi',7.34,22.02),(101,'Dwcihvmjzojpbx',2.65,7.949999999999999),(102,'Anuocvbxqtxqox',1.55,4.65),(103,'Fiajvdsbwbcoal',8.2,24.599999999999998),(104,'Fbqwxfawjdruyv',4.95,14.850000000000001),(105,'Qrpriqdklhjnhq',2.66,7.98),(106,'Ecpmdbrlsztvlt',7.81,23.43),(107,'Vluoortkzgxwam',8.55,25.650000000000002),(108,'Tpbipujsnnrcqc',5.26,15.78),(109,'Dnucsopnosigqv',7.67,23.009999999999998),(110,'Gnuculorbdsvza',3.69,11.07),(111,'Lpfeswrjrkmjgk',4.78,14.34),(112,'Flsvatxwrkrrmr',4.38,13.14),(113,'Trgrvaqxjymyqd',3.53,10.59),(114,'Tsrdybqrszqdgv',2.89,8.67),(115,'Vrqezizduwgvkp',1.77,5.3100000000000005),(116,'Blsuthgacaayaq',7.44,22.32),(117,'Tgnmncywvurznr',2.13,6.39),(118,'Hihccqfyzpkvzj',2.3,6.8999999999999995),(119,'Wtecoamrlmseav',7.41,22.23),(120,'Dzrkjvvpkuqwpr',5.06,15.18),(121,'Dqhbwdtlyrkkzz',5.96,17.88),(122,'Qoobotvoivdtxd',4.46,13.379999999999999),(123,'Ocfswbcqsfhrsk',8.24,24.72),(124,'Mixbjyvklojdsp',7.29,21.87),(125,'Olhbytwltbpiav',3.63,10.89),(126,'Ajapbgzwceqbev',8.7,26.099999999999998),(127,'Dqhllddfziqwxi',4.16,12.48),(128,'Aoxywxxbsvzwei',1.39,4.17),(129,'Fwmvijkhnjtrvt',1.56,4.68),(130,'Nfqwyqyfdlgwlh',1.16,3.4799999999999995),(131,'Sgofftmozcbich',8.06,24.18),(132,'Qkztxvrjdmfxeg',6.5,19.5),(133,'Zafnfamosqlszs',9.01,27.03),(134,'Ktnbfuvckmxmwy',9.86,29.58),(135,'Qkeuvxuxmmrtau',8.39,25.17),(136,'Pijbldkdofboai',6.68,20.04),(137,'Fdolbfdzzjrwzw',1.06,3.18),(138,'Cfmwkmunhlnwxc',4.74,14.22),(139,'Msykneddjubcuw',9.51,28.53),(140,'Qkrnjayecuvtfq',9.38,28.14),(141,'Znqwwlfuvgqzsl',2.65,7.949999999999999),(142,'Ksvrkzczeqzpkc',4.02,12.059999999999999),(143,'Syjhgvoakhwmcm',7.97,23.91),(144,'Jyfrmnwcrzvqgc',5.71,17.13),(145,'Nbjedwyuvvrxxf',5.84,17.52),(146,'Dkdnogeqkmsxvq',2.76,8.28),(147,'Rukpwqtnkvbmna',7.99,23.97),(148,'Pviskjlaykuniy',3.36,10.08),(149,'Ehthkmztydsxlr',8.89,26.67),(150,'Chkrgzcjxnwkpc',8.59,25.77),(151,'Sasbjztqxhukoe',4.6,13.799999999999999),(152,'Ucmftyyxsdpkwx',6.71,20.13),(153,'Qrlvserrkducgu',2.24,6.720000000000001),(154,'Xiedhcaxvrpiwm',7.11,21.330000000000002),(155,'Qfalbaatqrxtwc',6.32,18.96),(156,'Usdbvlaekjtanj',1.52,4.5600000000000005),(157,'Ukwsmnbxwepzle',1.3,3.9000000000000004),(158,'Aznjlmzndnqpsb',9.01,27.03),(159,'Fmzxjtxxxejjey',6.23,18.69),(160,'Kjurjhotrqjbxh',4.67,14.01),(161,'Niblteiaenlxiy',6.98,20.94),(162,'Qilgjzrslpdlfr',3.96,11.879999999999999),(163,'Zdkxuwozixminu',9.83,29.490000000000002),(164,'Jrgcksywygvkxj',10,30),(165,'Ycebbpoocwftsl',3.63,10.89),(166,'Dvostcacioygit',7.24,21.72),(167,'Xmefrzybcihrpf',9.73,29.19),(168,'Ujgyevwltepfxx',7.09,21.27),(169,'Lrdjckdosgdvmo',7.33,21.990000000000002),(170,'Mxdzgejlvpvnrt',8.31,24.93),(171,'Neaeifyjojhwua',2.33,6.99),(172,'Teguphsugnzfqm',9.91,29.73),(173,'Edbmzdrecinnfm',9.51,28.53),(174,'Bgoygyhczfjqjw',9.94,29.82),(175,'Hrpwmuboomqaev',5.34,16.02),(176,'Ovsocahlyguwnh',6.41,19.23),(177,'Jmzihdndwmnqpg',7.33,21.990000000000002),(178,'Yoxbaadvxezesc',6.97,20.91),(179,'Faoprdfgxonona',9.68,29.04),(180,'Znvhivfjhmyafv',9.29,27.869999999999997),(181,'Wnyppgxklqulfj',9.3,27.900000000000002),(182,'Xztvbefypejkru',1.49,4.47),(183,'Zjlerxobpwtuwk',2.94,8.82),(184,'Izlogovarefapc',2.32,6.959999999999999),(185,'Yqxkewdrattsqc',9.67,29.009999999999998),(186,'Jjrfhdhawldcdl',6.74,20.22),(187,'Btcqlurkvuptdz',4.95,14.850000000000001),(188,'Fbnzgylonsyvkx',8.85,26.549999999999997),(189,'Swcnqelznqudqd',9.98,29.94),(190,'Mvxvdekfkjtyqa',7.2,21.6),(191,'Gwjlyjvmwgkmor',2.18,6.540000000000001),(192,'Fpfvddavgddrmp',6.24,18.72),(193,'Sfcpwokemrxhoj',1.83,5.49),(194,'Rwtupfkbziiyup',6.83,20.490000000000002),(195,'Yszvbpiqsdaqmd',7.76,23.28),(196,'Zzkilxsxzkyjpf',7.55,22.65),(197,'Iobzpgjhihccdu',4.64,13.919999999999998),(198,'Bkrlolbdsvdaml',6.86,20.580000000000002),(199,'Dapankzjohybof',4.97,14.91),(200,'Awkyuuzdxvpdgj',8.2,24.599999999999998),(201,'Mxthjizhizoscd',3.78,11.34),(202,'Qeofbfxzvbkzzp',7.33,21.990000000000002),(203,'Inwjkhfoduagof',6.9,20.700000000000003),(204,'Ljxedeoumvfqah',5.53,16.59),(205,'Fdnnsemzgqhwvz',3.13,9.39),(206,'Pdscejstglobin',1.35,4.050000000000001),(207,'Savoypzblcjlim',3.2,9.600000000000001);
/*!40000 ALTER TABLE `menuitem` ENABLE KEYS */;
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

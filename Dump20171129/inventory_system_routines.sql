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
-- Temporary view structure for view `ingredientview`
--

DROP TABLE IF EXISTS `ingredientview`;
/*!50001 DROP VIEW IF EXISTS `ingredientview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ingredientview` AS SELECT 
 1 AS `ingredientNo`,
 1 AS `ingredientName`,
 1 AS `dateOfPurchase`,
 1 AS `dateOfExpiry`,
 1 AS `cost`,
 1 AS `quantity`,
 1 AS `value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `inventoryview`
--

DROP TABLE IF EXISTS `inventoryview`;
/*!50001 DROP VIEW IF EXISTS `inventoryview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `inventoryview` AS SELECT 
 1 AS `inventoryNo`,
 1 AS `inventoryName`,
 1 AS `cost`,
 1 AS `quantity`,
 1 AS `value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `menuitemview`
--

DROP TABLE IF EXISTS `menuitemview`;
/*!50001 DROP VIEW IF EXISTS `menuitemview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `menuitemview` AS SELECT 
 1 AS `menuNo`,
 1 AS `menuName`,
 1 AS `cost`,
 1 AS `price`,
 1 AS `revenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `restaurantorderview`
--

DROP TABLE IF EXISTS `restaurantorderview`;
/*!50001 DROP VIEW IF EXISTS `restaurantorderview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `restaurantorderview` AS SELECT 
 1 AS `orderNo`,
 1 AS `orderTime`,
 1 AS `orderDate`,
 1 AS `subtotal`,
 1 AS `tax`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `ingredientview`
--

/*!50001 DROP VIEW IF EXISTS `ingredientview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ingredientview` AS select `ingredients`.`ingredientNo` AS `ingredientNo`,`ingredients`.`ingredientName` AS `ingredientName`,`ingredients`.`dateOfPurchase` AS `dateOfPurchase`,`ingredients`.`dateOfExpiry` AS `dateOfExpiry`,`ingredients`.`cost` AS `cost`,`ingredients`.`quantity` AS `quantity`,(`ingredients`.`quantity` * `ingredients`.`cost`) AS `value` from `ingredients` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inventoryview`
--

/*!50001 DROP VIEW IF EXISTS `inventoryview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inventoryview` AS select `inventory`.`inventoryNo` AS `inventoryNo`,`inventory`.`inventoryName` AS `inventoryName`,`inventory`.`cost` AS `cost`,`inventory`.`quantity` AS `quantity`,(`inventory`.`quantity` * `inventory`.`cost`) AS `value` from `inventory` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `menuitemview`
--

/*!50001 DROP VIEW IF EXISTS `menuitemview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `menuitemview` AS select `menuitem`.`menuNo` AS `menuNo`,`menuitem`.`menuName` AS `menuName`,`menuitem`.`cost` AS `cost`,`menuitem`.`price` AS `price`,(`menuitem`.`price` - `menuitem`.`cost`) AS `revenue` from `menuitem` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `restaurantorderview`
--

/*!50001 DROP VIEW IF EXISTS `restaurantorderview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `restaurantorderview` AS select `r`.`OrderNo` AS `orderNo`,`r`.`orderTime` AS `orderTime`,`r`.`orderDate` AS `orderDate`,sum(`m`.`price`) AS `subtotal`,(sum(`m`.`price`) * 0.13) AS `tax`,((sum(`m`.`price`) * 0.13) + sum(`m`.`price`)) AS `total` from ((`restaurantorder` `r` join `menuitem` `m`) join `orderreferencemenu` `o`) where ((`r`.`OrderNo` = `o`.`orderNo`) and (`o`.`menuNo` = `m`.`menuNo`)) group by `r`.`OrderNo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-29 17:55:47

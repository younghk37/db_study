CREATE DATABASE  IF NOT EXISTS `study2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `study2`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: study2
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `table1`
--

DROP TABLE IF EXISTS `table1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table1` (
  `t1_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `visible` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`t1_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table1`
--

LOCK TABLES `table1` WRITE;
/*!40000 ALTER TABLE `table1` DISABLE KEYS */;
INSERT INTO `table1` VALUES (1,1,'김준일의 자기소개',0),(2,2,'김준일의 자기소개',0),(3,3,'김준일의 자기소개',0);
/*!40000 ALTER TABLE `table1` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `table1_AFTER_INSERT` AFTER INSERT ON `table1` FOR EACH ROW BEGIN
	insert into table2
    values(0, new.t1_id, '자기소개를 입력하세요.', 1);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `table1_AFTER_UPDATE` AFTER UPDATE ON `table1` FOR EACH ROW BEGIN
	update table2
    set visible = 0
    where
		t1_id = old.t1_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `table2`
--

DROP TABLE IF EXISTS `table2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table2` (
  `t2_id` int NOT NULL AUTO_INCREMENT,
  `t1_id` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `visible` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`t2_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table2`
--

LOCK TABLES `table2` WRITE;
/*!40000 ALTER TABLE `table2` DISABLE KEYS */;
INSERT INTO `table2` VALUES (1,'1','자기소개를 입력하세요.',0),(2,'2','자기소개를 입력하세요.',0),(3,'3','자기소개를 입력하세요.',0);
/*!40000 ALTER TABLE `table2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tb`
--

DROP TABLE IF EXISTS `user_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_tb` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tb`
--

LOCK TABLES `user_tb` WRITE;
/*!40000 ALTER TABLE `user_tb` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_tb` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `user_tb_AFTER_INSERT` AFTER INSERT ON `user_tb` FOR EACH ROW BEGIN
	insert into table1
    values(0, new.user_id, concat(new.name, '의 자기소개'), 1);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `user_tb_BEFORE_DELETE` BEFORE DELETE ON `user_tb` FOR EACH ROW BEGIN
	update table1
    set visible = 0
    where
		user_id = old.user_id;
        
	insert into user_withdraw_tb
    values(0, old.user_id, old.name);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user_withdraw_tb`
--

DROP TABLE IF EXISTS `user_withdraw_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_withdraw_tb` (
  `user_withdraw_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_withdraw_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_withdraw_tb`
--

LOCK TABLES `user_withdraw_tb` WRITE;
/*!40000 ALTER TABLE `user_withdraw_tb` DISABLE KEYS */;
INSERT INTO `user_withdraw_tb` VALUES (1,3,'김준일');
/*!40000 ALTER TABLE `user_withdraw_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `user_withdraw_view`
--

DROP TABLE IF EXISTS `user_withdraw_view`;
/*!50001 DROP VIEW IF EXISTS `user_withdraw_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_withdraw_view` AS SELECT 
 1 AS `user_withdraw_id`,
 1 AS `user_id`,
 1 AS `name`,
 1 AS `title`,
 1 AS `content`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'study2'
--

--
-- Dumping routines for database 'study2'
--

--
-- Final view structure for view `user_withdraw_view`
--

/*!50001 DROP VIEW IF EXISTS `user_withdraw_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_withdraw_view` AS select `uwt`.`user_withdraw_id` AS `user_withdraw_id`,`uwt`.`user_id` AS `user_id`,`uwt`.`name` AS `name`,`t1`.`title` AS `title`,`t2`.`content` AS `content` from ((`user_withdraw_tb` `uwt` left join `table1` `t1` on((`t1`.`user_id` = `uwt`.`user_id`))) left join `table2` `t2` on((`t2`.`t1_id` = `t1`.`t1_id`))) */;
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

-- Dump completed on 2023-07-21 17:03:33
CREATE DATABASE  IF NOT EXISTS `androg` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `androg`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: androg
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address_tb`
--

DROP TABLE IF EXISTS `address_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_tb` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `address_detail` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `address_sido` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `address_sigungu` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `address_bname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `address_zonecode` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ponenumber` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `address_flag` int NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_tb`
--

LOCK TABLES `address_tb` WRITE;
/*!40000 ALTER TABLE `address_tb` DISABLE KEYS */;
INSERT INTO `address_tb` VALUES (31,14,'경기 성남시 분당구 대왕판교로 373','2층','경기','성남시 분당구','백현동','13543','010-3558-9631',1),(40,15,'경기 성남시 분당구 판교역로 4','111호','경기','성남시 분당구','백현동','13536','000-0000-0000',0),(41,15,'부산 부산진구 중앙대로 668','코리아아이티아카데미','부산','부산진구','부전동','47296','000-0000-0000',0),(43,36,'부산 강서구 가달1로 7','1','부산','강서구','생곡동','46729','111-1111-1111',1),(44,36,'경기 성남시 분당구 미금로 246','1','경기','성남시 분당구','금곡동','13617','111-1111-1111',0),(45,45,'충남 서천군 판교면 금덕길 9','5층 503호','충남','서천군','현암리','33615','010-6554-2381',0),(46,45,'서울 강동구 성내로 32','1층 305호','서울','강동구','성내동','05399','010-6554-2381',0),(48,27,'부산 부산진구 동성로 17','3층','부산','부산진구','전포동','47306','010-9705-2709',0),(49,14,'부산 동구 망양로945번길 19','11','부산','동구','범일동','48719','010-9705-2709',0),(50,14,'서울 강남구 가로수길 5','2층','서울','강남구','신사동','06035','010-9705-2709',0),(51,3,'경기 성남시 분당구 대왕판교로 477','1층','경기','성남시 분당구','판교동','13480','010-4758-8028',0),(52,43,'서울 성동구 마조로 15-16','ㅇㅇ','서울','성동구','행당동','04760','010-6417-1383',0),(53,49,'부산 남구 진남로69번길 17-6','502호','부산','남구','대연동','48438','000-0000-0000',0);
/*!40000 ALTER TABLE `address_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminreview_tb`
--

DROP TABLE IF EXISTS `adminreview_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminreview_tb` (
  `adminreview_id` int NOT NULL AUTO_INCREMENT,
  `review_id` int NOT NULL,
  `review_content` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`adminreview_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminreview_tb`
--

LOCK TABLES `adminreview_tb` WRITE;
/*!40000 ALTER TABLE `adminreview_tb` DISABLE KEYS */;
INSERT INTO `adminreview_tb` VALUES (4,9,'너무나도 감사합니다~'),(5,10,'감사합니담');
/*!40000 ALTER TABLE `adminreview_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authority_tb`
--

DROP TABLE IF EXISTS `authority_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authority_tb` (
  `authority_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`authority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authority_tb`
--

LOCK TABLES `authority_tb` WRITE;
/*!40000 ALTER TABLE `authority_tb` DISABLE KEYS */;
INSERT INTO `authority_tb` VALUES (1,1,2),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,1),(15,15,1),(16,16,2),(17,17,2),(18,18,1),(19,19,1),(20,20,1),(21,21,1),(22,22,2),(23,23,2),(24,24,2),(25,25,2),(26,26,2),(27,27,2),(28,28,2),(29,29,2),(30,30,2),(31,31,2),(32,32,2),(33,33,2),(34,34,2),(35,35,2),(36,36,2),(37,37,2),(38,38,2),(39,39,2),(40,40,2),(41,41,2),(42,42,2),(43,43,2),(44,44,2),(45,45,2),(46,46,2),(47,47,2),(48,48,2),(49,49,2);
/*!40000 ALTER TABLE `authority_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_tb`
--

DROP TABLE IF EXISTS `cart_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_tb` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `size_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `count_number` int NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_tb`
--

LOCK TABLES `cart_tb` WRITE;
/*!40000 ALTER TABLE `cart_tb` DISABLE KEYS */;
INSERT INTO `cart_tb` VALUES (31,45,166,'ONE SIZE',1),(36,15,258,'XXL',1);
/*!40000 ALTER TABLE `cart_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_tb`
--

DROP TABLE IF EXISTS `category_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_tb` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_tb`
--

LOCK TABLES `category_tb` WRITE;
/*!40000 ALTER TABLE `category_tb` DISABLE KEYS */;
INSERT INTO `category_tb` VALUES (1,'tees'),(2,'sweats'),(3,'pants'),(4,'outer'),(5,'headwear'),(6,'shoes');
/*!40000 ALTER TABLE `category_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color_tb`
--

DROP TABLE IF EXISTS `color_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color_tb` (
  `color_id` int NOT NULL AUTO_INCREMENT,
  `color_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color_tb`
--

LOCK TABLES `color_tb` WRITE;
/*!40000 ALTER TABLE `color_tb` DISABLE KEYS */;
INSERT INTO `color_tb` VALUES (1,'artichoke'),(2,'keylime'),(3,'coral'),(4,'tea'),(5,'black'),(6,'white'),(7,'mauv'),(8,'gren'),(9,'purp'),(10,'natural'),(11,'brow'),(12,'navy'),(13,'grape'),(14,'tomato'),(15,'heather'),(16,'grapge'),(17,'ashh'),(18,'blue'),(19,'oran'),(20,'crem'),(21,'azur'),(22,'wasb'),(23,'oliv'),(24,'vcam'),(25,'vino'),(26,'ghea'),(27,'khak'),(28,'bone'),(29,'salm'),(30,'wine'),(31,'sage'),(32,'rust'),(33,'royl'),(34,'bolv'),(35,'lbrw'),(36,'grey'),(37,'stwa'),(38,'burg'),(39,'lime'),(40,'char'),(41,'vinb'),(42,'wanv'),(43,'fadr'),(44,'rose'),(45,'fore'),(46,'slat'),(47,'lolv'),(48,'army'),(49,'fogr'),(50,'card'),(51,'hunt'),(52,'must'),(53,'deer'),(54,'dora'),(55,'dgre'),(56,'darp'),(57,'pink'),(58,'hotp'),(59,'yellow'),(60,'sand'),(61,'sagr'),(62,'cumi'),(63,'beige');
/*!40000 ALTER TABLE `color_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquiry_resp_tb`
--

DROP TABLE IF EXISTS `inquiry_resp_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inquiry_resp_tb` (
  `inquiry_resp_id` int NOT NULL AUTO_INCREMENT,
  `inquiry_id` int NOT NULL,
  `answer` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`inquiry_resp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiry_resp_tb`
--

LOCK TABLES `inquiry_resp_tb` WRITE;
/*!40000 ALTER TABLE `inquiry_resp_tb` DISABLE KEYS */;
INSERT INTO `inquiry_resp_tb` VALUES (1,4,'주소를 알려주세요 ㅎㅎ'),(2,5,'문의답변 테스트입니다.');
/*!40000 ALTER TABLE `inquiry_resp_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquiry_tb`
--

DROP TABLE IF EXISTS `inquiry_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inquiry_tb` (
  `inquiry_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `order_detail_id` int NOT NULL,
  `inquiry_category` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `inquiry_content` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `inquiry_date` date NOT NULL,
  PRIMARY KEY (`inquiry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiry_tb`
--

LOCK TABLES `inquiry_tb` WRITE;
/*!40000 ALTER TABLE `inquiry_tb` DISABLE KEYS */;
INSERT INTO `inquiry_tb` VALUES (1,14,1,'반품','반품 할래요','2023-06-07'),(2,14,2,'배송조회','어디까지 왔나요..?','2023-06-07'),(3,27,5,'주문상태','주문이 되었나요..?','2023-06-07'),(4,14,1,'주소변경','이사를 했어요','2023-06-07'),(5,15,11,'주문상태','문의테스트입니다.','2023-06-21');
/*!40000 ALTER TABLE `inquiry_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice_tb`
--

DROP TABLE IF EXISTS `notice_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice_tb` (
  `notice_id` int NOT NULL,
  `subject` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `notice_date` date NOT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_tb`
--

LOCK TABLES `notice_tb` WRITE;
/*!40000 ALTER TABLE `notice_tb` DISABLE KEYS */;
INSERT INTO `notice_tb` VALUES (1,'공지랍니다','테스트입니다','2023-06-05');
/*!40000 ALTER TABLE `notice_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail_tb`
--

DROP TABLE IF EXISTS `order_detail_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail_tb` (
  `order_detail_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `size_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `count_number` int NOT NULL,
  PRIMARY KEY (`order_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail_tb`
--

LOCK TABLES `order_detail_tb` WRITE;
/*!40000 ALTER TABLE `order_detail_tb` DISABLE KEYS */;
INSERT INTO `order_detail_tb` VALUES (1,1,258,'S',1),(2,1,251,'XL',1),(3,1,120,'XL',1),(4,1,155,'ONE SIZE',1),(5,2,59,'XL',1),(6,2,162,'ONE SIZE',1),(7,2,156,'ONE SIZE',1),(8,2,191,'250',1),(9,2,185,'260',2),(10,3,30,'XL',1),(11,3,120,'XXL',1),(12,3,187,'240',1),(13,3,114,'XXL',1),(14,4,110,'XXL',1),(15,5,107,'M',8),(16,5,136,'ONE SIZE',3),(17,5,120,'XXL',5),(18,6,38,'XXL',1),(19,6,122,'M',1),(20,7,251,'M',1),(21,8,258,'XL',1),(22,9,120,'XL',1),(23,9,123,'M',1),(24,10,121,'XL',1),(25,10,258,'XXL',1),(26,11,74,'M',1),(27,11,122,'XXL',1),(28,12,255,'M',1),(29,12,120,'XXL',1),(30,12,251,'XL',1),(31,12,242,'XL',1),(32,13,260,'XXL',1);
/*!40000 ALTER TABLE `order_detail_tb` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `order_detail_tb_AFTER_INSERT` AFTER INSERT ON `order_detail_tb` FOR EACH ROW BEGIN
	delete from
		cart_tb
		where 
			product_id = new.product_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `order_tb`
--

DROP TABLE IF EXISTS `order_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_tb` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `order_date` date NOT NULL,
  `address_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_tb`
--

LOCK TABLES `order_tb` WRITE;
/*!40000 ALTER TABLE `order_tb` DISABLE KEYS */;
INSERT INTO `order_tb` VALUES (1,14,'2023-06-01',29),(2,14,'2023-06-02',47),(3,27,'2023-06-03',48),(4,27,'2023-06-04',48),(5,27,'2023-06-05',48),(6,27,'2023-06-06',48),(7,14,'2023-06-07',29),(8,27,'2023-06-07',48),(9,14,'2023-06-07',49),(10,14,'2023-06-07',31),(11,43,'2023-06-09',52),(12,14,'2023-06-10',31),(13,49,'2023-06-14',53);
/*!40000 ALTER TABLE `order_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `popup_tb`
--

DROP TABLE IF EXISTS `popup_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `popup_tb` (
  `popup_id` int NOT NULL,
  `content` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`popup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `popup_tb`
--

LOCK TABLES `popup_tb` WRITE;
/*!40000 ALTER TABLE `popup_tb` DISABLE KEYS */;
INSERT INTO `popup_tb` VALUES (1,'버버리 협상중');
/*!40000 ALTER TABLE `popup_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_tb`
--

DROP TABLE IF EXISTS `product_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_tb` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `product_price` int NOT NULL,
  `category_id` int NOT NULL,
  `product_img` varchar(900) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `size_s` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `size_m` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `size_l` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `size_xl` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `size_xxl` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `color_id` int NOT NULL,
  `soldout_flag` int DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tb`
--

LOCK TABLES `product_tb` WRITE;
/*!40000 ALTER TABLE `product_tb` DISABLE KEYS */;
INSERT INTO `product_tb` VALUES (1,'BLOCK SPORT PIGMENT DYED TEE',68000,1,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1904910H_ARTI_1_b4b2cb97-2fbf-4127-8548-e792913b3b7e.jpg?v=1683052312&width=480','S','M','L','XL','XXL',1,1),(2,'NO.4 TEE',68000,1,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1904901_KEYL_1_54116695-4959-4995-9158-f64748c71b7b.jpg?v=1683052268&width=480','S','M','L','XL','XXL',2,1),(3,'GOLD LION LS TEE',82000,1,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1994916_CORA_1_476ac993-fee8-47a7-b61c-8419f9fcc0e0.jpg?v=1683052708&width=480','S','M','L','XL','XXL',3,1),(4,'PITSTOP LS TEE',82000,1,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1994917_TEAA_1_14a298e5-0b92-4f1c-9d7a-3678fe5e7285.jpg?v=1683052776&width=480','S','M','L','XL','XXL',4,1),(5,'PROPERTY OF TEE',68000,1,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1904872_BLAC_1.jpg?v=1683050502&width=480','S','M','L','XL','XXL',5,1),(6,'PROPERTY OF TEE',68000,1,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1904872_WHIT_1_55bc0fd5-08cc-464b-89cd-79ba20f8a8a3.jpg?v=1683050517&width=480','S','M','L','XL','XXL',6,1),(7,'PROPERTY OF TEE',68000,1,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1904872_KEYL_1_514eb611-a265-41b9-97de-e8f3656d5156.jpg?v=1683050506&width=480','S','M','L','XL','XXL',2,1),(8,'WHATCHU NEED TEE',68000,1,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1904955_KEYL_1_4a353add-c97c-4f9e-999b-585219665cac.jpg?v=1683050728&width=480','S','M','L','XL','XXL',2,1),(9,'BASIC ST?SSY TEE',68000,1,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1904870_KEYL_1.jpg?v=1683066793&width=480','S','M','L','XL','XXL',2,1),(10,'BASIC ST?SSY TEE',68000,1,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/1904870_MAUV_1_868d8ac5-a125-4817-a107-54e83e54fb48.jpg?v=1683321326','S','M','L','XL','XXL',7,1),(11,'BASIC ST?SSY LS TEE',82000,1,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1994870_TEAA_1_aa370f2e-a830-4c17-b278-5059e3fcd36b.jpg?v=1683051559&width=480','S','M','L','XL','XXL',4,1),(12,'BASIC ST?SSY LS TEE',82000,1,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1994870_CORA_1.jpg?v=1683051535&width=480','S','M','L','XL','XXL',3,1),(13,'BASIC ST?SSY PIGMENT DYED LS TEE',82000,1,'https://cdn.shopify.com/s/files/1/0087/6193/3920/files/1994879_ARTI_1.jpg?v=1683863233','S','M','L','XL','XXL',1,1),(14,'HEAVYWEIGHT PIGMENT DYED CREW',86000,1,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1140320_BLAC_1_999c96c5-043b-420a-b473-5d16afcc5792.jpg?v=1683148562&width=480','S','M','L','XL','XXL',5,1),(15,'HEAVYWEIGHT PIGMENT DYED CREW',86000,1,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1140320_GREN_1_966d39d1-fe04-4c03-9205-1c500c67982d.jpg?v=1683049683&width=480','S','M','L','XL','XXL',8,1),(16,'HEAVYWEIGHT PIGMENT DYED CREW',86000,1,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1140320_PURP_1_249a8dd6-6612-4ec9-99aa-c65bfd57c07a.jpg?v=1683049698&width=480','S','M','L','XL','XXL',9,1),(17,'HEAVYWEIGHT PIGMENT DYED CREW',86000,1,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1140320_NATL_1_b4f33779-1b8b-48c0-8d8c-ea0c0cc601c4.jpg?v=1683148560&width=480','S','M','L','XL','XXL',10,1),(18,'HEAVYWEIGHT PIGMENT DYED LS CREW',102000,1,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1140319_BLAC_1.jpg?v=1683049662&width=480','S','M','L','XL','XXL',5,1),(19,'HEAVYWEIGHT PIGMENT DYED LS CREW',102000,1,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1140319_BROW_1_0a2411ff-4d1f-48ea-9e2e-fccade92235e.jpg?v=1683049661&width=480','S','M','L','XL','XXL',11,1),(20,'HEAVYWEIGHT PIGMENT DYED LS CREW',102000,1,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1140319_GREN_1_c7f8c2eb-b079-42c8-bbe8-8f0392317188.jpg?v=1683049664&width=480','S','M','L','XL','XXL',8,1),(21,'HEAVYWEIGHT PIGMENT DYED LS CREW',102000,1,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1140319_PURP_1_a07c1190-dfef-430c-bf5b-a8e88a8a29cf.jpg?v=1683049675&width=480','S','M','L','XL','XXL',9,1),(22,'OVERDYED LS TEE',92000,1,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1140242_WHIT_1_2d6fe033-6348-4739-af60-73a7dc34f0dd.jpg?v=1683049592&width=480','S','M','L','XL','XXL',6,1),(23,'CHECKER STOCK HOODIE',182000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1924987_BLAC_1_46205b9e-0875-4c26-a94c-533731a5f93d.jpg?v=1683052023&width=480','S','M','L','XL','XXL',5,1),(24,'CHECKER STOCK HOODIE',182000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1924987_NAVY_1_cee3489a-4db0-4640-b3f1-6d8dce30e1df.jpg?v=1683052037&width=480','S','M','L','XL','XXL',12,1),(25,'BLOCK SPORT ZIP HOODIE',189000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1974910_BLAC_1.jpg?v=1683052063&width=480','S','M','L','XL','XXL',5,1),(26,'BLOCK SPORT ZIP HOODIE',189000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1974910_GRPE_1_a415ccc8-820f-4a71-ac33-3592eebf97b4.jpg?v=1683052079&width=480','S','M','L','XL','XXL',13,1),(27,'BLOCK SPORT ZIP HOODIE',189000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1974910_KEYL_1_6e416c13-d57c-4404-9702-4c0ae705ca6a.jpg?v=1683052093&width=480','S','M','L','XL','XXL',2,1),(28,'CROWN WREATH PIGMENT DYED HOODIE',182000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1924911_BLAC_1_b15c1fbc-4714-43ba-990d-1b7a638440ba.jpg?v=1683052010&width=480','S','M','L','XL','XXL',5,1),(29,'CROWN WREATH PIGMENT DYED HOODIE',182000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1924911_NATL_1.jpg?v=1683051256&width=480','S','M','L','XL','XXL',10,1),(30,'BLOCK SPORT PIGMENT DYED HOODIE',182000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1924910_BLAC_1_ea1ebc94-295b-4865-9d65-90e27c82fb53.jpg?v=1683051997&width=480','S','M','L','XL','XXL',5,1),(31,'BLOCK SPORT PIGMENT DYED HOODIE',182000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1924910_NATL_1.jpg?v=1683051236&width=480','S','M','L','XL','XXL',10,1),(32,'BLOCK SPORT PIGMENT DYED HOODIE',182000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1924910_ARTI_1_80cf2823-dfcc-4824-8d17-bb01c24a1720.jpg?v=1683051223&width=480','S','M','L','XL','XXL',1,1),(33,'BLOCK SPORT PIGMENT DYED HOODIE',182000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1924910_TOMA_1_a698a025-c0ec-4d0f-beec-07943bb08510.jpg?v=1683051245&width=480','S','M','L','XL','XXL',14,1),(34,'NO.4 CREW',167000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1914901_BLAC_1_4d5c881e-0290-43e0-9af2-7176e89d08c4.jpg?v=1683052546&width=480','S','M','L','XL','XXL',5,1),(35,'NO.4 CREW',167000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1914901_ASHH_1_efce0aaf-424a-44a4-bfc4-6e4bb7932784.jpg?v=1683052530&width=480','S','M','L','XL','XXL',15,1),(36,'NO.4 CREW',167000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1914901_GRPE_1.jpg?v=1683052559&width=480','S','M','L','XL','XXL',13,1),(37,'NO.4 CREW',167000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1914901_KEYL_1_6c61d0a5-64b1-4ab8-b5aa-b06b1cba5e7b.jpg?v=1683052577&width=480','S','M','L','XL','XXL',2,1),(38,'NO.4 HOODIE',182000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1924901_BLAC_1_c0ae7f24-1ef4-4e2c-9b97-9c9eefd063a5.jpg?v=1683052612&width=480','S','M','L','XL','XXL',5,1),(39,'NO.4 HOODIE',182000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1924901_ASHH_1_c88557c3-0431-4298-b3fe-fbb95a794b8e.jpg?v=1683052594&width=480','S','M','L','XL','XXL',15,1),(40,'NO.4 HOODIE',182000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1924901_NAVY_1.jpg?v=1683052643&width=480','S','M','L','XL','XXL',12,1),(41,'NO.4 HOODIE',182000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1924901_KEYL_1_83f44d65-656b-4cb1-80a7-9bb9a62ad9d6.jpg?v=1683052626&width=480','S','M','L','XL','XXL',2,1),(42,'BARB HOODIE',182000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1924960_REDD_1.jpg?v=1683051308&width=480','S','M','L','XL','XXL',14,1),(43,'DICE PIGMENT DYED CREW',174000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1914883_ARTI_1_1f4a4485-b3b2-4b7f-874b-1e2d442068d5.jpg?v=1683050978&width=480','S','M','L','XL','XXL',1,1),(44,'DICE PIGMENT DYED CREW',174000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1914883_NATL_2_99df291d-2249-495b-90fc-12869b77b4e2.jpg?v=1683050997&width=480','S','M','L','XL','XXL',10,1),(45,'BASIC ST?SSY CREW',174000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1914870_GRPE_1_da9d5147-5728-4a03-a11c-99ceda0c5c5c.jpg?v=1683050935&width=480','S','M','L','XL','XXL',16,1),(46,'BASIC ST?SSY CREW',174000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1914762M_WHIT_1.jpg?v=1683066806&width=480','S','M','L','XL','XXL',6,1),(47,'BASIC ST?SSY CREW',174000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1914870_ASHH_1.jpg?v=1683148473&width=480','S','M','L','XL','XXL',17,1),(48,'BASIC ST?SSY CREW',174000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1914870_NAVY_1.jpg?v=1683148470&width=480','S','M','L','XL','XXL',12,1),(49,'BASIC ST?SSY HOODIE',182000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1924870_KEYL_1.jpg?v=1683051104&width=480','S','M','L','XL','XXL',2,1),(50,'BASIC ST?SSY PIGMENT DYED CREW',174000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1914879_BLAC_1.jpg?v=1683148470&width=480','S','M','L','XL','XXL',5,1),(51,'BASIC ST?SSY PIGMENT DYED CREW',174000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1914879_TOMA_1.jpg?v=1683050971&width=480','S','M','L','XL','XXL',14,1),(52,'BASIC ST?SSY PIGMENT DYED CREW',174000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1914879_NATL_1_e25b2d8c-ec8b-43c9-8883-cc42ef358998.jpg?v=1683148473&width=480','S','M','L','XL','XXL',10,1),(53,'BASIC ST?SSY PIGMENT DYED HOODIE',182000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1924879_NATL_1_f410c70f-7b13-4907-a725-00d67d1d2527.jpg?v=1683148467&width=480','S','M','L','XL','XXL',10,1),(54,'OVERDYED STOCK LOGO HOODIE',182000,2,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/118469_LTPI_1_75eceaf3-b72f-49e7-b9bc-aad849574169.jpg?v=1683139304','S','M','L','XL','XXL',57,1),(55,'OVERDYED STOCK LOGO CREW',167000,2,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/118480_LTPI_1_faf6d275-860c-456d-9fd3-916e71b3a01c.jpg?v=1683139293','S','M','L','XL','XXL',57,1),(58,'OVERDYED STOCK LOGO HOODIE',182000,2,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/118469_ORAN_1_17b0f936-1680-4f44-8b94-2215cff7abee.jpg?v=1683032914','S','M','L','XL','XXL',19,1),(59,'STOCK LOGO ZIP HOODIE',196000,2,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/118471_ORAN_1_ac8d13f1-188d-4acf-a6b4-a7f3b0f07255.jpg?v=1683246456','S','M','L','XL','XXL',19,1),(60,'OVERDYED STOCK LOGO CREW',167000,2,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/118480_ORAN_1.jpg?v=1683246461','S','M','L','XL','XXL',19,1),(63,'RIPSTOP CARGO BEACH PANT',234000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/116608_OLIV_1_025c1589-9968-4350-a168-3c33418461a9.jpg?v=1683139328','S','M','L','XL','XXL',11,1),(64,'RIPSTOP CARGO BEACH PANT',234000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/116608_PURP_1_86cd22f5-c9f6-4551-ab05-fbaf08876f6e.jpg?v=1683246440','S','M','L','XL','XXL',9,1),(65,'RIPSTOP CARGO BEACH PANT',234000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116608_CREM_1_c60a71f3-3c68-4221-bbdb-5d70fd291121.jpg?v=1683148655&width=480','S','M','L','XL','XXL',20,1),(66,'RIPSTOP CARGO BEACH PANT',234000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116608_BLAC_1_b6e2be7a-6833-47ab-b6d8-7c8d7f6a8e88.jpg?v=1683148655&width=480','S','M','L','XL','XXL',5,1),(67,'POLY TRACK PANT',210000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/116585_AZUR_1.jpg?v=1683246421','S','M','L','XL','XXL',21,1),(68,'POLY TRACK PANT',210000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/116585_BROW_1_4cb373d0-3a1f-4d96-9495-9d692d0f280b.jpg?v=1683246428','S','M','L','XL','XXL',11,1),(69,'POLY TRACK PANT',210000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116585_NATL_1.jpg?v=1683049300&width=480','S','M','L','XL','XXL',10,1),(70,'POLY TRACK PANT',210000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/116585_BLAC_1.jpg?v=1683246421','S','M','L','XL','XXL',5,1),(71,'RIPSTOP SURPLUS CARGO',288000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/116586_WASB_1.jpg?v=1683246432','S','M','L','XL','XXL',22,1),(72,'RIPSTOP SURPLUS CARGO',288000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116586_BLAC_1_9dc3622d-ee90-4af9-b117-f87b8be06f72.jpg?v=1683148655&width=480','S','M','L','XL','XXL',5,1),(73,'RIPSTOP SURPLUS CARGO',288000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116586_OLIV_1_3a8ff40c-7a2a-4f9b-b66c-7d64bafde6d2.jpg?v=1683148660&width=480','S','M','L','XL','XXL',23,1),(74,'RIPSTOP SURPLUS CARGO',288000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116586_VCAM_1_2c37081a-3099-4e82-a7c4-574dac71d546.jpg?v=1683049305&width=480','S','M','L','XL','XXL',24,1),(75,'RIPSTOP SURPLUS CARGO',288000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116586_VINO_1.jpg?v=1683049305&width=480','S','M','L','XL','XXL',25,1),(76,'SPORT CARGO FLEECE PANT',195000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/116578_BLAC_1.jpg?v=1683246423','S','M','L','XL','XXL',5,1),(77,'SPORT CARGO FLEECE PANT',195000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/116578_BLUE_1.jpg?v=1683246425','S','M','L','XL','XXL',18,1),(78,'SPORT CARGO FLEECE PANT',195000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/116578_GREN_1.jpg?v=1683246424','S','M','L','XL','XXL',8,1),(79,'SPORT CARGO FLEECE PANT',195000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116578_GHEA_1.jpg?v=1683049294&width=480','S','M','L','XL','XXL',26,1),(80,'SPORT CARGO FLEECE PANT',195000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116578_KHAK_1.jpg?v=1683049297&width=480','S','M','L','XL','XXL',27,1),(81,'CANVAS WORK PANT',226000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116496_BONE_1_51750c00-431e-4c83-b448-133827d1ca98.jpg?v=1683148664&width=480','S','M','L','XL','XXL',28,1),(82,'CANVAS WORK PANT',226000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116496_ORAN_1_7faeb67a-862f-471b-aa69-6c96902482c8.jpg?v=1683049259&width=480','S','M','L','XL','XXL',19,1),(83,'CANVAS WORK  PANT',226000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/116496_SALM_1_4b19f734-7168-4214-bf76-f36843743468.jpg?v=1683246421','S','M','L','XL','XXL',29,1),(84,'CANVAS WORK PANT',226000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116496_BLAC_1_e6c0304b-e7bc-46ad-8b5c-d40f362691d0.jpg?v=1683148670&width=480','S','M','L','XL','XXL',5,1),(85,'DENIM WORK PANT',216000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116482_BLUE_1.jpg?v=1683148666&width=480','S','M','L','XL','XXL',18,0),(86,'BRUSHED BEACH PANT',210000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/116553_WINE_1.jpg?v=1683246415','S','M','L','XL','XXL',30,1),(87,'BRUSHED BEACH PANT',210000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116553_BONE_1.jpg?v=1683148652&width=480','S','M','L','XL','XXL',28,1),(88,'BRUSHED BEACH PANT',210000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/116553_SAGE_1.jpg?v=1683246421','S','M','L','XL','XXL',31,1),(89,'BRUSHED BEACH PANT',210000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116553_BLAC_1.jpg?v=1683148658&width=480','S','M','L','XL','XXL',5,1),(90,'BRUSHED BEACH PANT',210000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116553_NAVY_1.jpg?v=1683148655&width=480','S','M','L','XL','XXL',12,1),(91,'BRUSHED BEACH PANT',210000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/116553_RUST_1.jpg?v=1683246416','S','M','L','XL','XXL',32,1),(92,'BRUSHED BEACH PANT',210000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116553_ROYL_1.jpg?v=1683049286&width=480','S','M','L','XL','XXL',33,1),(93,'BRUSHED BEACH PANT',210000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116553_BOLV_1.jpg?v=1683049282&width=480','S','M','L','XL','XXL',34,1),(94,'TWILL VOLUME PLEATED TROUSER',226000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116587_BLAC_1_9d23f305-250b-4553-affc-90693691f1d8.jpg?v=1683049306&width=480','S','M','L','XL','XXL',5,1),(95,'TWILL VOLUME PLEATED TROUSER',226000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116587_BONE_1_65fe4ac0-b2d4-49f4-8b82-57b2c46096ea.jpg?v=1683049308&width=480','S','M','L','XL','XXL',28,1),(96,'STRIPED VOLUME PLEATED TROUSER',220000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116538_LBRW_1.jpg?v=1683049267&width=480','S','M','L','XL','XXL',35,1),(97,'STRIPED VOLUME PLEATED TROUSER',220000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116538_GREY_1_5020f85c-6118-414a-9eb2-4c211b2b7c97.jpg?v=1683148665&width=480','S','M','L','XL','XXL',36,1),(98,'VOLUME PLEATED TROUSER',226000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116537_GREY_1_259ae1bf-8240-4b1e-8ee3-f9b094b2cabe.jpg?v=1683049265&width=480','S','M','L','XL','XXL',36,1),(99,'VOLUME PLEATED TROUSER',226000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116537_NAVY_1.jpg?v=1683049266&width=480','S','M','L','XL','XXL',12,1),(100,'VOLUME PLEATED TROUSER',226000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116537_BLAC_1_59a67db0-866b-4955-b933-3650d6a02252.jpg?v=1683049264&width=480','S','M','L','XL','XXL',5,1),(101,'DENIM DOUBLE KNEE PANT',200000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116500_STWA_1_18b8158c-775f-4c8f-a928-1a1e9774d48a.jpg?v=1683049263&width=480','S','M','L','XL','XXL',37,1),(102,'OVERDYED BIG OL\' JEAN',249000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116577_BLAC_1.jpg?v=1683049290&width=480','S','M','L','XL','XXL',5,1),(103,'OVERDYED BIG OL\' JEAN',249000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116577_BONE_1.jpg?v=1683049292&width=480','S','M','L','XL','XXL',28,1),(104,'OVERDYED CLASSIC JEAN',249000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116596_BLAC_2_15ebe323-67ca-4399-9969-6ca49f92ea2e.jpg?v=1683069087&width=480','S','M','L','XL','XXL',5,1),(105,'OVERDYED CLASSIC JEAN',249000,3,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/116596_BONE_2_1d963e7b-60e3-431c-92f7-4a8fbaabaff7.jpg?v=1683069071&width=480','S','M','L','XL','XXL',28,1),(106,'REVERSIBLE QUILTED VEST',304000,4,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/115695_CREM_1_a32b5529-9f60-4f37-90ad-31ecdcb71160.jpg?v=1683246429','S','M','L','XL','XXL',20,1),(107,'PYTHON REVERSIBLE VEST',296000,4,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/115669_BONE_1.jpg?v=1683049243&width=480','S','M','L','XL','XXL',28,1),(108,'PYTHON REVERSIBLE VEST',296000,4,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/115669_BURG_1.jpg?v=1683049243&width=480','S','M','L','XL','XXL',38,1),(110,'WASHED CANVAS SHOP JACKET',405000,4,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/115589_LIME_1_8db9fa44-2aea-47a6-b94b-b48bcea7ea87.jpg?v=1683049228&width=480','S','M','L','XL','XXL',39,1),(111,'S QUILTED LINER JACKET',312000,4,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/115670_BLAC_1.jpg?v=1683246410','S','M','L','XL','XXL',5,1),(112,'S QUILTED LINER JACKET',312000,4,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/115670_ORAN_1_b5a01be1-e6d6-4807-a33a-3db168d5a505.jpg?v=1683049239&width=480','S','M','L','XL','XXL',19,1),(113,'OVERDYED ZIP WORK JACKET',289000,4,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/115680_BONE_1.jpg?v=1683321215','S','M','L','XL','XXL',28,1),(114,'PLAID SHERPA SHIRT',249000,4,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/118511_GREN_1_5a8109be-b0eb-49e6-bc5f-8d3e5d1a90ce.jpg?v=1683246469','S','M','L','XL','XXL',8,1),(115,'PLAID SHERPA SHIRT',249000,4,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/118511_BLAC_1.jpg?v=1683246464','S','M','L','XL','XXL',5,1),(116,'DYED NYLON BOMBER',460000,4,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/115618_PINK_1.jpg?v=1683321230','S','M','L','XL','XXL',57,1),(117,'DYED NYLON BOMBER',460000,4,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/115618_CHAR_2.jpg?v=1683848166','S','M','L','XL','XXL',40,1),(118,'DYED NYLON BOMBER',460000,4,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/115618_OLIV_1.jpg?v=1683246399','S','M','L','XL','XXL',23,1),(119,'RECYCLED NYLON DOWN PUFFER',460000,4,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/115673_VINB_1_12507342-d498-4b96-9ea2-84ce1c387df5.jpg?v=1683049241&width=480','S','M','L','XL','XXL',41,1),(120,'RECYCLED NYLON DOWN PUFFER',460000,4,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/115673_WANV_1.jpg?v=1683049242&width=480','S','M','L','XL','XXL',42,1),(121,'RECYCLED NYLON DOWN PUFFER',460000,4,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/115673_FADR_1.jpg?v=1683049239&width=480','S','M','L','XL','XXL',43,1),(122,'RIPSTOP DOWN PUFFER JACKET',460000,4,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/115656_ROSE_1_f3972cbc-1caa-4420-917e-988a24362451.jpg?v=1683049234&width=480','S','M','L','XL','XXL',44,1),(123,'RIPSTOP DOWN PUFFER JACKET',460000,4,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/115656_OLIV_1.jpg?v=1683049233&width=480','S','M','L','XL','XXL',23,1),(126,'VINTAGE S LOW PRO CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311047_BLA7_1.jpg?v=1683049766&width=480','ONE SIZE',NULL,NULL,NULL,NULL,5,1),(127,'BASIC STRAPBACK CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311104_BLAC_1.jpg?v=1683148503&width=480','ONE SIZE',NULL,NULL,NULL,NULL,5,1),(128,'BASIC STRAPBACK CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311104_FORE_1_7c9f3438-c12b-4502-a2d8-0a206a63688f.jpg?v=1683049995&width=480','50','51','52','53','54',45,1),(129,'BASIC STRAPBACK CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311104_SLAT_1_01dd1f5e-07d6-489c-b27a-8fa4ae0c9fe6.jpg?v=1683049999&width=480','ONE SIZE',NULL,NULL,NULL,NULL,46,1),(130,'BIG STOCK POINT CROWN CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311052_WHIT_1_362bd526-521f-49d2-be3c-1200d7cca13a.jpg?v=1683049802&width=480','ONE SIZE',NULL,NULL,NULL,NULL,6,1),(131,'BIG STOCK POINT CROWN CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311052_SLAT_1_18f1b5e8-87c3-4b31-8d2d-a532557a3006.jpg?v=1683049800&width=480','ONE SIZE',NULL,NULL,NULL,NULL,46,1),(132,'BIG STOCK POINT CROWN CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311052_LOLV_1_edcc86a8-db27-430d-aade-cb1652e671c2.jpg?v=1683049793&width=480','ONE SIZE',NULL,NULL,NULL,NULL,47,1),(133,'BIG STOCK POINT CROWN CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311052_BROW_1_8584ab8b-4edf-462c-a215-15abb22f62c5.jpg?v=1683049786&width=480','ONE SIZE',NULL,NULL,NULL,NULL,11,1),(134,'BIG STOCK POINT CROWN CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311052_BLAC_1_851a42ad-f878-4e8f-b12e-c18382d6f2be.jpg?v=1683148535&width=480','ONE SIZE',NULL,NULL,NULL,NULL,5,1),(135,'BIG STOCK POINT CROWN CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311052_GREY_1_27f65833-f51a-434e-8940-fb8a0daa5dcc.jpg?v=1683049789&width=480','ONE SIZE',NULL,NULL,NULL,NULL,36,1),(136,'SWIRLY S LOW PRO CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311092_BROW_1_b43359b8-7df1-4585-8fc8-6aab439faef3.jpg?v=1683049964&width=480','ONE SIZE',NULL,NULL,NULL,NULL,11,1),(137,'SWIRLY S LOW PRO CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311092_KHAK_1_c418214a-5197-440b-9d21-621054cb4790.jpg?v=1683049966&width=480','ONE SIZE',NULL,NULL,NULL,NULL,27,1),(138,'WORLD TOUR NEW ERA CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311077_BLAC_1_aa16d6f1-a614-455b-8b2f-345fa17810a3.jpg?v=1683049915&width=480','ONE SIZE',NULL,NULL,NULL,NULL,5,1),(139,'WORLD TOUR NEW ERA CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311077_ORAN_1_caeb437c-7ed3-4ba8-81de-f936e77e79d6.jpg?v=1683049926&width=480','ONE SIZE',NULL,NULL,NULL,NULL,19,1),(140,'WORLD TOUR NEW ERA CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311077_GRPE_1.jpg?v=1683049921&width=480','ONE SIZE',NULL,NULL,NULL,NULL,16,1),(141,'WISH YOU WERE HERE NEW ERA CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311074_ARMY_1.jpg?v=1683049902&width=480','ONE SIZE',NULL,NULL,NULL,NULL,48,1),(143,'CURLY S NEW ERA CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311008_FOGR_1_93845ce0-52a4-4dc2-bde2-7e1cc7de7c93.jpg?v=1683148547&width=480','ONE SIZE',NULL,NULL,NULL,NULL,49,1),(144,'CURLY S NEW ERA CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311008_ORAN_1.jpg?v=1683049746&width=480','ONE SIZE',NULL,NULL,NULL,NULL,19,1),(145,'AUTHENTIC NEW ERA CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311038_BLAC_1_ab7becd8-8695-4608-837e-deecdd17ac4c.jpg?v=1683148545&width=480','ONE SIZE',NULL,NULL,NULL,NULL,5,1),(146,'AUTHENTIC NEW ERA CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311038_CARD_1.jpg?v=1683049755&width=480','ONE SIZE',NULL,NULL,NULL,NULL,50,1),(147,'AUTHENTIC NEW ERA CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311038_HUNT_1.jpg?v=1683148546&width=480','ONE SIZE',NULL,NULL,NULL,NULL,51,1),(148,'NO. 4 POINT CROWN CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311064_BLAC_1_23e007fc-e401-41f8-aff8-8e47189eb25c.jpg?v=1683049823&width=480','ONE SIZE',NULL,NULL,NULL,NULL,5,1),(149,'NO. 4 POINT CROWN CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311064_WHIT_1_dd5ad532-cb98-46cc-968a-e084eb4ad94c.jpg?v=1683049825&width=480','ONE SIZE',NULL,NULL,NULL,NULL,6,1),(150,'BIG STOCK HIGH CROWN CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311062_MUST_1.jpg?v=1683049819&width=480','ONE SIZE',NULL,NULL,NULL,NULL,52,1),(151,'BIG STOCK HIGH CROWN CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311062_DEER_1_738da2e6-b69f-45ed-874e-9822e79aa661.jpg?v=1683049812&width=480','ONE SIZE',NULL,NULL,NULL,NULL,53,1),(152,'BASIC STOCK LOW PRO CAP',65000,5,'https://cdn.shopify.com/s/files/1/0087/6193/3920/files/1311070_NATL_1_2aaec859-8783-45c8-843c-f3980ebafaf6.jpg?v=1683906551','ONE SIZE',NULL,NULL,NULL,NULL,10,1),(153,'BASIC STRAPBACK CAP',65000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1311104_DORA_1_937dfb59-8160-4b99-8ef0-bb23c5c4c168.jpg?v=1683049992&width=480','ONE SIZE',NULL,NULL,NULL,NULL,54,1),(154,'STOCK BUCKET HAT',78000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321023_NATL_1.jpg?v=1683050098&width=480','ONE SIZE',NULL,NULL,NULL,NULL,10,1),(155,'STOCK BUCKET HAT',78000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321023_BLAC_1.jpg?v=1683050093&width=480','ONE SIZE',NULL,NULL,NULL,NULL,5,1),(156,'BIG STOCK BUCKET HAT',78000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321132_WHIT_1.jpg?v=1683148469&width=480','ONE SIZE',NULL,NULL,NULL,NULL,6,1),(157,'BIG STOCK BUCKET HAT',78000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321132_DGRE_1.jpg?v=1683050278&width=480','ONE SIZE',NULL,NULL,NULL,NULL,55,1),(158,'BIG STOCK BUCKET HAT',78000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321132_BURG_1_412cbcf1-67d6-4916-a6b4-d26ef573d8d2.jpg?v=1683050273&width=480','ONE SIZE',NULL,NULL,NULL,NULL,38,1),(159,'BIG STOCK BUCKET HAT',78000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321132_ORAN_1_37e8dcb5-6702-4436-998a-648771fc6e6c.jpg?v=1683050296&width=480','ONE SIZE',NULL,NULL,NULL,NULL,19,1),(160,'BIG STOCK BUCKET HAT',78000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321132_LIME_1.jpg?v=1683050288&width=480','ONE SIZE',NULL,NULL,NULL,NULL,39,1),(161,'BIG STOCK BUCKET HAT',78000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321129_FORE_1.jpg?v=1683050252&width=480','ONE SIZE',NULL,NULL,NULL,NULL,45,1),(162,'BIG STOCK BUCKET HAT',78000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321129_MUST_1_400ed729-8466-40df-9b6b-d03ca33abafe.jpg?v=1683050253&width=480','ONE SIZE',NULL,NULL,NULL,NULL,52,1),(163,'BIG STOCK BUCKET HAT',78000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321129_DEER_1.jpg?v=1683050247&width=480','ONE SIZE',NULL,NULL,NULL,NULL,53,1),(164,'BASIC SKULLCAP BEANIE',58000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321085_DARP_1_2e748fae-1fc7-48d5-8c45-4f340d42a212.jpg?v=1683050146&width=480','ONE SIZE',NULL,NULL,NULL,NULL,56,1),(165,'THERMOCHROMATIC BUCKET HAT',78000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321120_GREY_1.jpg?v=1683050231&width=480','ONE SIZE',NULL,NULL,NULL,NULL,36,1),(166,'THERMOCHROMATIC BUCKET HAT',78000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321120_PINK_1.jpg?v=1683050236&width=480','ONE SIZE',NULL,NULL,NULL,NULL,57,1),(167,'BASIC SKULLCAP BEANIE',58000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321085_MUST_1.jpg?v=1683050161&width=480','ONE SIZE',NULL,NULL,NULL,NULL,52,1),(168,'BASIC SKULLCAP BEANIE',58000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321085_GREN_1.jpg?v=1683050151&width=480','ONE SIZE',NULL,NULL,NULL,NULL,8,1),(169,'HELVETICA SPORT SKULLCAP',58000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321101_BLAC_1_cb0ce5c7-a939-41d3-a4e7-1e82a1adae8f.jpg?v=1683148479&width=480','ONE SIZE',NULL,NULL,NULL,NULL,5,1),(170,'BASIC CUFF BEANIE',58000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321019_HOTP_1_d5d32c99-f7e5-405d-a173-32bda56197ea.jpg?v=1683050027&width=480','ONE SIZE',NULL,NULL,NULL,NULL,58,1),(171,'BASIC CUFF BEANIE',58000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321019_YELO_1_60705767-07f9-4290-9dd5-830313570d3e.jpg?v=1683050053&width=480','ONE SIZE',NULL,NULL,NULL,NULL,59,1),(172,'BASIC CUFF BEANIE',58000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321019_SAND_1.jpg?v=1683050046&width=480','ONE SIZE',NULL,NULL,NULL,NULL,60,1),(173,'BASIC CUFF BEANIE',58000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321019_GREY_1.jpg?v=1683050022&width=480','ONE SIZE',NULL,NULL,NULL,NULL,36,1),(174,'BASIC CUFF BEANIE',58000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321019_BURG_1.jpg?v=1683050008&width=480','ONE SIZE',NULL,NULL,NULL,NULL,38,1),(175,'CROWN JACQUARD CUFF BEANIE',58000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321159_SAGR_1.jpg?v=1683050372&width=480','ONE SIZE',NULL,NULL,NULL,NULL,61,1),(176,'CROWN JACQUARD CUFF BEANIE',58000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321159_ORAN_1_b6849f71-8993-4129-bbdd-e56684e8cca1.jpg?v=1683050366&width=480','ONE SIZE',NULL,NULL,NULL,NULL,19,1),(177,'CROWN JACQUARD CUFF BEANIE',58000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321159_BERR_1.jpg?v=1683050352&width=480','ONE SIZE',NULL,NULL,NULL,NULL,14,1),(178,'STOCK CUFF BEANIE',58000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321020_CUMI_1_af6b884e-0bcb-4a4f-8acc-c46328c940aa.jpg?v=1683050076&width=480','ONE SIZE',NULL,NULL,NULL,NULL,62,1),(179,'STOCK CUFF BEANIE',58000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321020_GHEA_1_13a83bec-2090-454d-ab56-21468e1d3cd3.jpg?v=1683148489&width=480','ONE SIZE',NULL,NULL,NULL,NULL,26,1),(180,'BIG BASIC THINSULATE BEANIE',58000,5,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1321111_ORAN_1_04b9b5ff-4fe5-4547-b0ae-bff0114ce2a6.jpg?v=1683050222&width=480','ONE SIZE',NULL,NULL,NULL,NULL,19,1),(181,'나이키 덩크 로우 레트로',129000,6,'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/a3e7dead-1ad2-4c40-996d-93ebc9df0fca/%EB%8D%A9%ED%81%AC-%EB%A1%9C%EC%9A%B0-%EB%A0%88%ED%8A%B8%EB%A1%9C-%EB%82%A8%EC%84%B1-%EC%8B%A0%E','240','250','260','270','280',5,1),(182,'나이키 에어 포스 1 \'07',139000,6,'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/%EC%97%90%EC%96%B4-%ED%8F%AC%EC%8A%A4-1-07-%EB%82%A8%EC%84%B1-%EC%8B%A0%EB%B0%9C-TttlGpDb.png','240','250','260','270','280',6,1),(183,'나이키 에어 베이퍼맥스 2023 플라이니트',249000,6,'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/ea9e14ef-1953-41b5-9cda-c53b9079d3d6/%EC%97%90%EC%96%B4-%EB%B2%A0%EC%9D%B4%ED%8D%BC%EB%A7%A5%EC%8A%A4-2023-%ED%94%8C%EB%9D%BC%EC%9D%B','240','250','260','270','280',5,1),(184,'나이키 덩크 로우 레트로 SE',118100,6,'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/856b44ab-0c1f-4001-9f89-f95e699470d0/%EB%8D%A9%ED%81%AC-%EB%A1%9C%EC%9A%B0-%EB%A0%88%ED%8A%B8%EB%A1%9C-se-%EB%82%A8%EC%84%B1-%EC%8B%A','240','250','260','270','280',18,1),(185,'나이키 에어 포스 1 \'07',139000,6,'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/a42a5d53-2f99-4e78-a081-9d07a2d0774a/%EC%97%90%EC%96%B4-%ED%8F%AC%EC%8A%A4-1-07-%EB%82%A8%EC%84%B1-%EC%8B%A0%EB%B0%9C-a2W0K4QH.png','240','250','260','270','280',6,1),(186,'나이키 에어 포스 1 \'07 프레시',169000,6,'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/4b24bc11-4ea0-4ee5-8d16-aa58b518475b/%EC%97%90%EC%96%B4-%ED%8F%AC%EC%8A%A4-1-07-%ED%94%84%EB%A0%88%EC%8B%9C-%EB%82%A8%EC%84%B1-%EC%8B','240','250','260','270','280',6,1),(187,'나이키 에어맥스 펄스',179000,6,'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/d0b94722-d603-4e66-829c-51f1801ec3fa/%EC%97%90%EC%96%B4%EB%A7%A5%EC%8A%A4-%ED%8E%84%EC%8A%A4-%EB%82%A8%EC%84%B1-%EC%8B%A0%EB%B0%9C-Ak','240','250','260','270','280',63,1),(188,'나이키 인빈서블 3',209000,6,'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/268e5f54-aee3-4c21-a7df-fa8c2067694a/%EC%9D%B8%EB%B9%88%EC%84%9C%EB%B8%94-3-%EB%82%A8%EC%84%B1-%EB%A1%9C%EB%93%9C-%EB%9F%AC%EB%8B%9D%','240','250','260','270','280',63,1),(189,'나이키 페가수스 40',149000,6,'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/bc26760f-9fd1-456b-9e60-47def7cec2d6/%ED%8E%98%EA%B0%80%EC%88%98%EC%8A%A4-40-%EB%82%A8%EC%84%B1-%EB%A1%9C%EB%93%9C-%EB%9F%AC%EB%8B%9D','240','250','260','270','280',63,1),(190,'나이키 페가수스 40 프리미엄',159000,6,'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/370a6fc5-7c2f-47e3-a5a2-fb29a80d3e65/%ED%8E%98%EA%B0%80%EC%88%98%EC%8A%A4-40-%ED%94%84%EB%A6%AC%EB%AF%B8%EC%97%84-%EB%82%A8%EC%84%B1-','240','250','260','270','280',6,1),(191,'나이키 메트콘 8',159000,6,'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/7b27c12e-2b98-4685-b86e-cf2731ac3d33/%EB%A9%94%ED%8A%B8%EC%BD%98-8-%EB%82%A8%EC%84%B1-%ED%8A%B8%EB%A0%88%EC%9D%B4%EB%8B%9D%ED%99%94-Q','240','250','260','270','280',5,1),(192,'나이키 페가수스 트레일 4 GORE-TEX',189000,6,'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/357cf26a-26a1-4ff0-8cde-d46249051eff/%ED%8E%98%EA%B0%80%EC%88%98%EC%8A%A4-%ED%8A%B8%EB%A0%88%EC%9D%BC-4-gore-tex-%EB%82%A8%EC%84%B1-%','240','250','260','270','280',5,1),(193,'나이키 에어 포스 1 \'07',139000,6,'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/2f9e087d-1f0f-4b72-8576-b7b7b64e73ae/%EC%97%90%EC%96%B4-%ED%8F%AC%EC%8A%A4-1-07-%EB%82%A8%EC%84%B1-%EC%8B%A0%EB%B0%9C-EJLt1dnh.png','240','250','260','270','280',6,1),(194,'ACG 에어 데슈츠+',89000,6,'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/d7a785a1-713a-4d03-8532-a361c6572f59/acg-%EC%97%90%EC%96%B4-%EB%8D%B0%EC%8A%88%EC%B8%A0-%EC%83%8C%EB%93%A4-iQExmtCM.png','240','250','260','270','280',5,1),(195,'나이키 덩크 로우 레트로',129000,6,'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/b93b8a0f-5891-4e52-813a-503044c04580/%EB%8D%A9%ED%81%AC-%EB%A1%9C%EC%9A%B0-%EB%A0%88%ED%8A%B8%EB%A1%9C-%EB%82%A8%EC%84%B1-%EC%8B%A0%E','240','250','260','270','280',6,1),(196,'나이키 덩크 로우 레트로',129000,6,'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/9c9308fc-1651-40b2-9f2e-d85697d05027/%EB%8D%A9%ED%81%AC-%EB%A1%9C%EC%9A%B0-%EB%A0%88%ED%8A%B8%EB%A1%9C-%EB%82%A8%EC%84%B1-%EC%8B%A0%E','240','250','260','270','280',59,1),(197,'나이키 에어 덩크 점보',149000,6,'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/84c1d4c8-5085-4a4f-ab64-40148664d6b4/%EC%97%90%EC%96%B4-%EB%8D%A9%ED%81%AC-%EC%A0%90%EB%B3%B4-%EB%82%A8%EC%84%B1-%EC%8B%A0%EB%B0%9C-n','240','250','260','270','280',36,1),(198,'나이키 에어 포스 1 \'07 LX NBHD',159000,6,'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/af1044d2-0e04-4181-9822-9a81181b9f07/%EC%97%90%EC%96%B4-%ED%8F%AC%EC%8A%A4-1-07-lx-nbhd-%EB%82%A8%EC%84%B1-%EC%8B%A0%EB%B0%9C-yecctAA','240','250','260','270','280',36,1),(199,'나이키 덩크 로우 레트로 프리미엄',139000,6,'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/3a727ff4-9bb2-471c-8ee0-80e0e8148f77/%EB%8D%A9%ED%81%AC-%EB%A1%9C%EC%9A%B0-%EB%A0%88%ED%8A%B8%EB%A1%9C-%ED%94%84%EB%A6%AC%EB%AF%B8%EC','240','250','260','270','280',5,1),(215,'DOLLIE PIGMENT DYED TEE',68000,1,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/1904912_NATL_1.jpg?v=1683152626','S','M','L','XL','XXL',10,1),(216,'DOLLIE PIGMENT DYED TEE',68000,1,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/1904912_BLAC_1.jpg?v=1683152624&width=1024','S','M','L','XL','XXL',5,1),(217,'DOLLIE PIGMENT DYED TEE',68000,1,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/1904912H_ARTI_1.jpg?v=1683154150&width=1024','S','M','L','XL','XXL',1,1),(218,'S64 PIGMENT DYED TEE',68000,1,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/1904913_BLAC_1.jpg?v=1683152628&width=1024','S','M','L','XL','XXL',5,1),(219,'S64 PIGMENT DYED TEE',68000,1,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/1904913_NATL_1.jpg?v=1683152629&width=1024','S','M','L','XL','XXL',10,1),(220,'S64 PIGMENT DYED TEE',68000,1,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/1904913H_ARTI_1.jpg?v=1683150490&width=1024','S','M','L','XL','XXL',1,1),(221,'S64 PIGMENT DYED TEE',68000,1,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/1904913H_SKYB_1.jpg?v=1683150493&width=1024','S','M','L','XL','XXL',18,1),(222,'STÜSSY & NIKE BENASSI SLIDE',54000,6,'https://cdn.shopify.com/s/files/1/0087/6193/3920/files/CW2787-001_OFFN_1_39ed35da-5a9a-4a62-b15c-201afc0b53bb.jpg?v=1683818051&width=1024','240','250','260','270','280',5,1),(223,'STÜSSY & NIKE BENASSI SLIDE',54000,6,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/DC5239100_SAIL_1_dd2e32c2-36f6-4dbe-a20f-b11e921814d1.jpg?v=1683321391&width=1024','240','250','260','270','280',6,1),(224,'STOCK WATER SHORT',84000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/113155_BLAC_1.jpg?v=1683139368&width=1024','S','M','L','XL','XXL',5,1),(225,'STOCK WATER SHORT',84000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/113155_COYO_1_ce59c7c7-bbaf-497c-a57f-971ecd282752.jpg?v=1683139363&width=1024','S','M','L','XL','XXL',19,1),(226,'STOCK WATER SHORT',84000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/113155_CLGR_1.jpg?v=1683139371&width=1024','S','M','L','XL','XXL',8,1),(227,'STOCK WATER SHORT',84000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/113155_CLAY_1.jpg?v=1683139366&width=1024','S','M','L','XL','XXL',14,1),(228,'STOCK WATER SHORT',84000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/113155_COBA_1_27226e44-3bf0-4373-afaf-7b03186dcf2e.jpg?v=1683139365&width=1024','S','M','L','XL','XXL',18,1),(229,'STOCK WATER SHORT',84000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/113155_NAVY_1_10448acb-798a-4bf9-b780-f21e261523de.jpg?v=1683139129&width=1024','S','M','L','XL','XXL',12,1),(230,'STOCK WATER SHORT',84000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/113155_AQUA_1_4bbcb18e-6b7d-48b3-9d63-9fc57b06b329.jpg?v=1683139369&width=1024','S','M','L','XL','XXL',18,1),(231,'STOCK WATER SHORT',84000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/113155_GUMP_1_54861460-7421-45fe-a735-f7ed16a9ade8.jpg?v=1683139363&width=1024','S','M','L','XL','XXL',57,1),(232,'STOCK WATER SHORT',84000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/113155_TANG_1_b941a367-bf04-4bea-9b50-0e415f382374.jpg?v=1683139360&width=1024','S','M','L','XL','XXL',59,1),(233,'LINEN BEACH BOMBER',284000,4,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/115703_NATL_1.jpg?v=1683139348&width=1024','S','M','L','XL','XXL',10,1),(234,'LINEN BEACH BOMBER',284000,4,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/115703_BLAC_1_c2efeb40-84cf-4f00-b4d1-2f1387cf8acc.jpg?v=1683139356&width=1024','S','M','L','XL','XXL',5,1),(235,'CHENILLE S LOW PRO CAP',57000,5,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/1311061_BLAC_1_2144a324-31b9-404b-8b11-ff4614d6098e.jpg?v=1683139193&width=1024','ONESIZE',NULL,NULL,NULL,NULL,5,1),(236,'CHENILLE S LOW PRO CAP',57000,5,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/1311061_BROW_2_95460561-fdd9-4b78-86f9-929839e251ea.jpg?v=1683300879&width=1024','ONESIZE','','','','',11,1),(237,'CHENILLE S LOW PRO CAP',57000,5,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/1311061_SMOK_1.jpg?v=1683139194&width=1024','ONESIZE',NULL,NULL,NULL,NULL,14,1),(238,'CHENILLE S LOW PRO CAP',57000,5,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/1311061_MUST_1.jpg?v=1683139194&width=1024','ONESIZE','','','','',59,1),(239,'SUN FADED OVERSIZED CREW',162000,1,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/118525_NAVY_1_b7d9e37d-caa4-4287-b615-317db1ac11de.jpg?v=1683139283&width=1024','S','M','L','XL','XXL',12,1),(240,'SUN FADED OVERSIZED CREW',162000,1,'https://cdn.shopify.com/s/files/1/0087/6193/3920/files/118525_BLAC_1.jpg?v=1683903937&width=1024','S','M','L','XL','XXL',5,1),(241,'SUN FADED OVERSIZED CREW',162000,1,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/118525_YELO_1_dc7b6cef-dd9e-4b56-9560-3f010b2354e9.jpg?v=1683139285&width=1024','S','M','L','XL','XXL',59,1),(242,'LIGHTWEIGHT FOOTBALL CREW',168000,1,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/117181_LBLU_2_49aaa816-4045-4cd1-b7de-7d411d2219ba.jpg?v=1683932835&width=1024','S','M','L','XL','XXL',18,1),(243,'LIGHTWEIGHT FOOTBALL CREW',168000,1,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/117181_BLAC_2_244fd205-ddd5-481c-a9e8-c57c35626532.jpg?v=1683932815&width=1024','S','M','L','XL','XXL',5,1),(244,'LIGHTWEIGHT FOOTBALL CREW',168000,1,'https://cdn.shopify.com/s/files/1/0087/6193/3920/files/117181_BONE_2.jpg?v=1684926739','S','M','L','XL','XXL',28,1),(245,'RIPSTOP SURPLUS CARGO',222000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/116586_BLAC_1.jpg?v=1683139331&width=1024','S','M','L','XL','XXL',5,1),(246,'RIPSTOP SURPLUS CARGO',222000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/116586_OLIV_1.jpg?v=1683139338&width=1024','S','M','L','XL','XXL',23,1),(247,'RIPSTOP SURPLUS CARGO',222000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/116586_VCAM_1_72c8b3c8-2971-492b-acca-9d727c969656.jpg?v=1683032853&width=1024','S','M','L','XL','XXL',24,1),(248,'RIPSTOP SURPLUS CARGO',222000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/116586_VINO_1_b3f77505-0e07-4ddd-9ac5-50bd0cc6452a.jpg?v=1683032854&width=1024','S','M','L','XL','XXL',25,1),(249,'RIPSTOP SURPLUS CARGO',222000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/116586_STON_1_ead7f030-87e2-4584-ad71-044e4f522461.jpg?v=1683032852&width=1024','S','M','L','XL','XXL',6,1),(250,'RIPSTOP SURPLUS CARGO',222000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/116586_WASB_1.jpg?v=1683246432&width=1024','S','M','L','XL','XXL',22,1),(251,'RIPSTOP SURPLUS CARGO',222000,3,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/116586_SULP_1_8a58eac9-ec98-47ed-b199-02f6ec1dd070.jpg?v=1683139335&width=1024','S','M','L','XL','XXL',59,1),(252,'PIGMENT DYED LOOSE GAUGE SWEATER',168000,1,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/117105_SOBL_1.jpg?v=1683139134&width=1024','S','M','L','XL','XXL',5,1),(253,'PIGMENT DYED LOOSE GAUGE SWEATER',168000,1,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/117105_TIEB_1.jpg?v=1682974225&width=1024','S','M','L','XL','XXL',18,1),(254,'PIGMENT DYED LOOSE GAUGE SWEATER',168000,1,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/117105_GOLD_1_d68911a9-420e-43a3-90dc-19d9a9c6ba6f.jpg?v=1683032883&width=1024','S','M','L','XL','XXL',59,1),(255,'BIG MESH POLO SWEATER',168000,1,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/117178_LIME_1_a27fa89c-8b43-4f24-b6e1-51448e5523a8.jpg?v=1683139308&width=1024','S','M','L','XL','',2,1),(256,'BIG MESH POLO SWEATER',168000,1,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/117178_BLAC_1_de0b397d-73a6-46ec-bc6d-ebd7a37a2681.jpg?v=1683139309&width=1024','S','M','L','XL','XXL',5,1),(258,'SPRAY DYE HOODED WORK JACKET',234000,2,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/115705_ORAC_1_0caadfb8-016b-43ee-ad04-02315ba4f953.jpg?v=1683139350&width=1024','S','M','L','XL','XXL',19,1),(259,'SPRAY DYE HOODED WORK JACKET',234000,2,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/115705_FADP_1_f86a7e8c-2131-43c2-8ff7-c5d25322afd0.jpg?v=1683139347&width=1024','S','M','L','XL','XXL',57,1),(260,'SPRAY DYE HOODED WORK JACKET',234000,2,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/115705_BLAC_1_d43e2789-b5ba-45df-a72c-3a5600c9f12c.jpg?v=1683139350&width=1024','S','M','L','XL','XXL',5,1),(261,'SKULL CREST HOODIE',156000,2,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/1924904_BLAC_1_03467657-7a2e-4936-8f1f-aac531c7a4b6.jpg?v=1682716141&width=1024','S','M','L','XL','XXL',5,1),(262,'SKULL CREST HOODIE',156000,2,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/1924904_STON_1_47f71181-3def-42ed-8542-b7ab7020f68a.jpg?v=1682716142&width=1024','S','M','L','XL','XXL',6,1),(263,'SKULL CREST HOODIE',156000,2,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/1924904_GRPE_1_3e92abca-e111-41a0-a251-59d61485b781.jpg?v=1682716141&width=1024','S','M','L','XL','XXL',9,1),(264,'STOCK BOX HOODIE',156000,2,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/1924906_BLAC_1_72958bf0-3b7f-4d94-8f45-0450c5704c90.jpg?v=1682716144&width=1024','S','M','L','XL','XXL',5,1),(265,'STOCK BOX HOODIE',156000,2,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/1924906_ASHH_1_6c0ce77c-518f-40c4-b8e8-636ded29ffd9.jpg?v=1682716143&width=1024','S','M','L','XL','XXL',17,1),(266,'STOCK BOX HOODIE',156000,2,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/1924906_GRPE_1_b8ce4301-9c9e-4dd7-a0e8-2f322e6eb1c9.jpg?v=1682716148&width=1024','S','M','L','XL','XXL',9,1),(267,'STOCK BOX HOODIE',156000,2,'https://cdn.shopify.com/s/files/1/0087/6193/3920/products/1924906_KEYL_1.jpg?v=1682716152&width=1024','S','M','L','XL','XXL',2,1),(300,'신상 셔츠',100000,2,'//cdn.shopify.com/s/files/1/0099/5708/1143/products/1904910H_ARTI_1_b4b2cb97-2fbf-4127-8548-e792913b3b7e.jpg?v=1683052312&width=480','S','','','','',5,1),(302,'빨간 옷',15000,1,'https://mblogthumb-phinf.pstatic.net/MjAyMDA1MTJfMTQ5/MDAxNTg5MjE1ODQxMzgx.HnQ0p-dUWsiA5YiTXtyrUwt9teYckNJ-K94ulF5cQwUg.sqhba8DgtuVJpm3jjvFrtWZ1IrYovLrswU7pon8Tf6Ug.JPEG.z12wow/A43A89A9-58F6-4C4B-99F1-5403B55327B0-14234-000004148ADE9589_file.jpg?type=w800','S','M','L','XL','XXL',1,0);
/*!40000 ALTER TABLE `product_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_tb`
--

DROP TABLE IF EXISTS `review_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_tb` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `order_detail_id` int NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `review_date` date NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_tb`
--

LOCK TABLES `review_tb` WRITE;
/*!40000 ALTER TABLE `review_tb` DISABLE KEYS */;
INSERT INTO `review_tb` VALUES (2,2,'바지가 너무 쪼여요','2023-06-07'),(4,7,'모자가 구려요','2023-06-07'),(5,8,'신발이 머쪄요','2023-06-07'),(8,1,'너무구려용','2023-06-07'),(9,21,'옷이 너무 이쁘네용ㅎ','2023-06-07'),(10,3,'옷이 이쁘네요 ㅎㅎ','2023-06-07');
/*!40000 ALTER TABLE `review_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_tb`
--

DROP TABLE IF EXISTS `role_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_tb` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(45) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_tb`
--

LOCK TABLES `role_tb` WRITE;
/*!40000 ALTER TABLE `role_tb` DISABLE KEYS */;
INSERT INTO `role_tb` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_USER');
/*!40000 ALTER TABLE `role_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tb`
--

DROP TABLE IF EXISTS `user_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_tb` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL,
  `password` varchar(200) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `provider` varchar(45) DEFAULT NULL,
  `profile_img` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tb`
--

LOCK TABLES `user_tb` WRITE;
/*!40000 ALTER TABLE `user_tb` DISABLE KEYS */;
INSERT INTO `user_tb` VALUES (3,'test@testmail.com','$2a$10$44y9pnJXsExVP5BbzU354.b3TNRSxpnjb89SIFtBiUuneVGSlZcyC','정성현',NULL,'113e57707a9e4edca2892a6c650d380b.jpg'),(5,'ccc@mail.com','$2a$10$q4HAPd6ugLqB1F6fVbHn8uqshUDGzD63/MXRSI5sruq2bMiwCoez.','테스트유저',NULL,'default.png'),(11,'bbb@gmail.com','$2a$10$xy/FvhqMpnfwkAF6w2V5s./9x4Lwp6kRJarDgZRo4QbgOAhZjZY7e','강의진',NULL,'default.png'),(14,'sang@naver.com','$2a$10$OOPcQCFFS9BSCjMSXStZgey1TBOuKqxausUVp425jRTy/uAd7gqr.','상구',NULL,'95122e0d3a6148529e01ba19958017d6.jpg'),(15,'vvv@gmail.com','$2a$10$q0KkQl09mq21.jkWLdIBE.ggd7TAJzS/swL0FwWNeB92XQkXgc1hK','강의진',NULL,'4afa0985d70b4320ae4d7a8504d3e531.jpg'),(16,'roleuser@mail.com','$2a$10$EhS9T4IvIG6nHgqudmAb9O0VH7cXabSMz.Ypw3zfEtJacDvy7Yp9K','유저권한',NULL,'default.png'),(27,'bagume6191@naver.com','$2a$10$V2d5WUA64TDsPG9v1WoGYeu6BGULFapgXkNmE0Bqi5TNXBpa0ANRy','이상현','naver','default.png'),(43,'bagume61@naver.com','$2a$10$Qbfpsh47J251Jvx8iGCgGeWjTb/P/w53/xGDf.L7Gf1QcE.T./rqW','이상현',NULL,'default.png'),(44,'bagume619@gmail.com','$2a$10$./nJsTbT7A/MDmeF4j02qe5r6nzvBoUl7/UiAvuhpWmuBb9WQ4ksO','이상현','google','default.png'),(45,'wheretogobro@naver.com','$2a$10$h.yr9RVa2Dx5WhhlTeOY4eCTbYuJcV2qdFsfNLWjEB7AHDYW6Axu2','강의진','naver','a9a8e4d004c7420f93b10a51a2dbbc87.jpg'),(46,'dmlwlstnvj@nate.com','$2a$10$EtbcQSiosgNiWhqHdkhgYOi4MU20ZE4F52lku786exTSMAi48RzCu','강의진','kakao','default.png'),(47,'skjil1218@gmail.com','$2a$10$5zlMyHtD40dWh7W3NcTRKeCULrhdzxX5z.gNIACRQ6uhZ7H335BK.','김준일',NULL,'default.png'),(49,'motgolking@gmail.com','$2a$10$gmLYE8WpFnEyC06UuwVCvuROd.4ME0YtdJZnQwA7Ct/Enn9Z500Mq','uijin “MotgolKing” kang','google','666a12a03a18408781106a6d101e7e3b.jpg'),(50,'ddd@gmail.com','1234','김준일','google',NULL),(51,'aaa1@gmail.com','1234','김준일',NULL,NULL),(52,'aaa2@gmail.com','1234','김준일',NULL,NULL),(53,'aaa3@gmail.com','1234','김준일',NULL,NULL),(54,'aaa4@gmail.com','1234','김준일',NULL,NULL),(55,'aaa5@gmail.com','1234','김준일',NULL,NULL);
/*!40000 ALTER TABLE `user_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'androg'
--

--
-- Dumping routines for database 'androg'
--
/*!50003 DROP FUNCTION IF EXISTS `create_name_and_age` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `create_name_and_age`(
	vs_name varchar(50),
    vn_age int
) RETURNS varchar(50) CHARSET utf8mb4 COLLATE utf8mb4_bin
BEGIN

RETURN concat(vs_name, '(', vn_age, ')');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_product_by_category` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_product_by_category`(
	in vs_category_name varchar(50)
)
BEGIN
	if vs_category_name = 'tees' then
		select
			'티셔츠';
	elseif vs_category_name = 'outer' then
		select
			'외투';
	else
		select
			'옷';
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_product_by_category_case` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_product_by_category_case`(
	in vs_category_name varchar(50)
)
BEGIN
	case
		when vs_category_name = 'tees' then
			select '티셔츠';
		when vs_category_name = 'outer' then
			select '외투';
		else
			select '옷';
            
	end case;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_product_total_count` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_product_total_count`(
	in vs_color varchar(50),
    out vn_total_count int,
    inout vs_color_name varchar(50)
)
BEGIN
	set vs_color_name = 'red';
	select
		count(*) into vn_total_count
	from
		product_tb pt
        left outer join color_tb ct on(ct.color_id = pt.color_id)
	where
		ct.color_name = vs_color;
        
	set vs_color = 'green';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `save_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `save_user`(
	IN vs_email varchar(50),
    IN vs_password varchar(50),
    IN vs_name varchar(50),
    IN vs_provider varchar(50),
    IN vs_profile_img varchar(200))
BEGIN
	insert into user_tb
    values(0, vs_email, vs_password, vs_name, vs_provider, vs_profile_img);
    select
		user_id,
        email,
        password,
        name,
        provider,
        profile_img
	from
		user_tb;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `save_user_many` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `save_user_many`(
	in vs_email varchar(50),
    in vs_password varchar(50),
    in vs_name varchar(50),
    in vs_provider varchar(50),
    in vs_profile_img varchar(200),
    in vn_count int
)
BEGIN
	declare i int;
    declare vn_ai int;
    set i = 0;
    while i < vn_count do
        select
			auto_increment into vn_ai
		from
			information_schema.tables
		where
			table_name = 'user_tb'
		limit 1;
            
		insert into user_tb
        values(0,
			concat(vs_email, i + 1, '@gmail.com'),
            vs_password,
            concat(vs_name, last_insert_id() + 1),
            null,
            null
		);
		set i = i + 1;
    end while;
    select
		*
	from
		user_tb;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-21 17:03:33
CREATE DATABASE  IF NOT EXISTS `study1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `study1`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: study1
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `student_tb`
--

DROP TABLE IF EXISTS `student_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_tb` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(45) NOT NULL,
  `student_age` int DEFAULT NULL,
  `student_score` int DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_tb`
--

LOCK TABLES `student_tb` WRITE;
/*!40000 ALTER TABLE `student_tb` DISABLE KEYS */;
INSERT INTO `student_tb` VALUES (1,'김준일',20,10),(2,'김준이',21,0),(3,'김준삼',20,10),(4,'김준사',22,NULL),(5,'김준오',21,0);
/*!40000 ALTER TABLE `student_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_tb`
--

DROP TABLE IF EXISTS `test_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_tb` (
  `test_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_tb`
--

LOCK TABLES `test_tb` WRITE;
/*!40000 ALTER TABLE `test_tb` DISABLE KEYS */;
INSERT INTO `test_tb` VALUES (1,'김준일','1994-09-07'),(2,'김준이','1994-09-08'),(4,'김준사','1994-09-10'),(5,'김준오','1994-09-11'),(6,'김준육','1994-09-12'),(7,'김준칠','1994-09-13'),(8,'김준구','1994-09-15');
/*!40000 ALTER TABLE `test_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'study1'
--

--
-- Dumping routines for database 'study1'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-21 17:03:33

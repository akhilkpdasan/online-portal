-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: TESTDB2
-- ------------------------------------------------------
-- Server version	5.7.16-0ubuntu0.16.04.1

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
-- Table structure for table `CATEGORIES`
--

DROP TABLE IF EXISTS `CATEGORIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CATEGORIES` (
  `CNAME` varchar(50) DEFAULT NULL,
  `CID` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CATEGORIES`
--

LOCK TABLES `CATEGORIES` WRITE;
/*!40000 ALTER TABLE `CATEGORIES` DISABLE KEYS */;
INSERT INTO `CATEGORIES` VALUES ('FOOTWEAR','C1');
/*!40000 ALTER TABLE `CATEGORIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FOOTWEAR`
--

DROP TABLE IF EXISTS `FOOTWEAR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FOOTWEAR` (
  `PID` varchar(50) DEFAULT NULL,
  `PNAME` varchar(100) DEFAULT NULL,
  `CNAME` varchar(50) DEFAULT NULL,
  `SUB_CATEGORY` varchar(50) DEFAULT NULL,
  `BRAND` varchar(50) DEFAULT NULL,
  `GENDER` varchar(3) DEFAULT NULL,
  `SIZE` varchar(3) DEFAULT NULL,
  `DISCOUNT` int(11) DEFAULT NULL,
  `RATING` int(11) DEFAULT NULL,
  `PRICE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FOOTWEAR`
--

LOCK TABLES `FOOTWEAR` WRITE;
/*!40000 ALTER TABLE `FOOTWEAR` DISABLE KEYS */;
INSERT INTO `FOOTWEAR` VALUES ('P1','Bata SA 05 Lace Up shoes','FOOTWEAR','FORMAL SHOES','BATA','M','L',0,4,999),('P2','Lee Cooper Lace Up  (Black)','FOOTWEAR','FORMAL SHOES','LEE COOPER','M','S',0,3,2429),('P3','Louis Philippe Lace up shoes','FOOTWEAR','FORMAL SHOES','Louis Philippe','M','M',0,5,3598),('P4','Adidas TRACEROCKER Outdoor Shoes  (Navy)','FOOTWEAR','CASUAL SHOES','ADIDAS','M','M',0,2,4093),('P5','Levi\'s DENIM SLIP ON Men Loafers  (Blue)','FOOTWEAR','CASUAL SHOES','LEVIS','M','S',0,4,2143),('P6','Reebok CLASSIC TENSTALL Men Canvas Sneakers  (Green, Grey, White)','FOOTWEAR','CASUAL SHOES','REBOOK','M','L',0,3,1514);
/*!40000 ALTER TABLE `FOOTWEAR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FOOTWEAR1`
--

DROP TABLE IF EXISTS `FOOTWEAR1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FOOTWEAR1` (
  `PID` varchar(50) DEFAULT NULL,
  `PNAME` varchar(100) DEFAULT NULL,
  `CNAME` varchar(50) DEFAULT NULL,
  `SUB_CATEGORY` varchar(50) DEFAULT NULL,
  `BRAND` varchar(50) DEFAULT NULL,
  `GENDER` varchar(3) DEFAULT NULL,
  `SIZE` varchar(3) DEFAULT NULL,
  `DISCOUNT` int(11) DEFAULT NULL,
  `RATING` int(11) DEFAULT NULL,
  `PRICE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FOOTWEAR1`
--

LOCK TABLES `FOOTWEAR1` WRITE;
/*!40000 ALTER TABLE `FOOTWEAR1` DISABLE KEYS */;
INSERT INTO `FOOTWEAR1` VALUES ('P1','Bata SA 05 Lace Up shoes','SHOES','FORMAL SHOES','BATA','M','S',0,3,999);
/*!40000 ALTER TABLE `FOOTWEAR1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCTS`
--

DROP TABLE IF EXISTS `PRODUCTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCTS` (
  `PID` varchar(10) DEFAULT NULL,
  `PNAME` varchar(100) DEFAULT NULL,
  `CNAME` varchar(50) DEFAULT NULL,
  `SUB_CATEGORY` varchar(50) DEFAULT NULL,
  `GENDER` varchar(3) DEFAULT NULL,
  `SIZE` varchar(3) DEFAULT NULL,
  `BRAND` varchar(50) DEFAULT NULL,
  `DISCRIPTION` varchar(1000) DEFAULT NULL,
  `PRICE` int(11) DEFAULT NULL,
  `DISCOUNT` int(11) DEFAULT NULL,
  `RATING` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCTS`
--

LOCK TABLES `PRODUCTS` WRITE;
/*!40000 ALTER TABLE `PRODUCTS` DISABLE KEYS */;
INSERT INTO `PRODUCTS` VALUES ('P1','Bata SA 05 Lace Up shoes','FOOTWEAR','FORMAL SHOES','M','L','BATA',NULL,999,NULL,4.2),('P2','Lee Cooper Lace Up  (Black)','FOOTWEAR','FORMAL SHOES','M','S','LEE COOPER',NULL,2429,NULL,3.6),('P3','Louis Philippe Lace up shoes','FOOTWEAR','FORMAL SHOES','M','M','LOUIS PHILIPPE',NULL,3598,NULL,4),('P4','Levi\'s DENIM SLIP ON Men Loafers (Blue)','FOOTWEAR','CASUAL SHOES','M','L','LEVIS',NULL,4093,NULL,2.5),('P5','Reebok CLASSIC TENSTALL Men Canvas Sneakers  (Green, Grey, White)','FOOTWEAR','CASUAL SHOES','M','S','REBOOK',NULL,2143,NULL,4.3);
/*!40000 ALTER TABLE `PRODUCTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USERS`
--

DROP TABLE IF EXISTS `USERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USERS` (
  `NAME` varchar(50) DEFAULT NULL,
  `EMAIL_ID` varchar(75) NOT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(600) DEFAULT NULL,
  `PIN` int(11) DEFAULT NULL,
  `PHONE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EMAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERS`
--

LOCK TABLES `USERS` WRITE;
/*!40000 ALTER TABLE `USERS` DISABLE KEYS */;
INSERT INTO `USERS` VALUES ('Akhil','akhilkpdasan@gmail.com','123','sakinaka',400072,'9000'),('ashish','ashishawale@gmail.com','123','wadala',1111,'100');
/*!40000 ALTER TABLE `USERS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-15 23:14:25

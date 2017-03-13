-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: TESTDB2
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
INSERT INTO `PRODUCTS` VALUES ('P1','Bata SA 05 Lace Up shoes','FOOTWEAR','FORMAL SHOES','M','L','BATA',NULL,999,NULL,4.2),('P2','Lee Cooper Lace Up  (Black)','FOOTWEAR','FORMAL SHOES','M','S','LEE COOPER',NULL,2429,NULL,3.6),('P3','Louis Philippe Lace up shoes','FOOTWEAR','FORMAL SHOES','M','M','LOUIS PHILIPPE',NULL,3598,NULL,4),('P4','Levi\'s DENIM SLIP ON Men Loafers (Blue)','FOOTWEAR','CASUAL SHOES','M','L','LEVIS',NULL,4093,NULL,2.5),('P5','Reebok CLASSIC TENSTALL Men Canvas Sneakers  (Green, Grey, White)','FOOTWEAR','CASUAL SHOES','M','S','REBOOK',NULL,2143,NULL,4.3),('P6','CARLTON LONDON CLL-3305 WOMEN WOMEN FLATS','FOOTWEAR','FLATS','F','M','CARLTON LONDON',NULL,647,0,4.1),('P7','CARLTON LONDON CASUAL WOMEN FLATS','FOOTWEAR','FLATS','F','L','CARLTON LONDON',NULL,2995,0,4.2),('P8','BATA WOMEN HEELS','FOOTWEAR','HEELS','F','M','BATA',NULL,899,0,4.3),('P9','BATA WOMEN BLACK HEELS','FOOTWEAR','HEELS','F','S','BATA',NULL,809,0,4.6),('P10','PUMA AXIS II WN S DP RUNNING SHOES','FOOTWEAR','SPORTS SHOES','F','M','PUMA',NULL,1948,0,4.8),('P11','CAMPUS WALKING SHOES','FOOTWEAR','SPORTS SHOES','F','L','CAMPUS',NULL,470,0,4.6),('P12','NUMBRAVE CASUAL SOLID WOMEN\'S KURTI','CLOTHING','KURTIS','F','M','NUMBRAVE',NULL,1449,0,4.9),('P16','SayItLoud Solid Men\'s Round Neck Black, Grey T-Shirt','CLOTHING','TSHIRT','M','L','SAYITLOUD',NULL,439,0,3.5),('P17','Peter England Printed Men\'s Polo Neck Dark Blue T-Shirt','CLOTHING','TSHIRT','M','S','PETER ENGLAND',NULL,599,0,4),('P18','Levi\'s Solid Men\'s Round Neck Green T-Shirt','CLOTHING','TSHIRT','M','M','LEVIS',NULL,899,0,3.5),('P19','Peter England Men\'s Solid Formal Grey Shirt','CLOTHING','FORMAL SHIRT','M','L','PETER ENGLAND',NULL,947,0,4.5),('P20','Louis Philippe Men\'s Self Design Formal Blue Shirt','CLOTHING','FORMAL SHIRT','M','S','LOUIS PHILIPPE',NULL,439,0,3.5),('P21','Raymond Men\'s Solid Formal Linen White Shirt','CLOTHING','FORMAL SHIRT','M','L','RAYMOND',NULL,1649,0,4.5),('P22','Pepe Jeans Men\'s Casual Shirt','CLOTHING','CASUAL SHIRT','M','M','PEPE JEANS',NULL,849,0,3.5),('P23','Levi\'s Men\'s Casual Shirt','CLOTHING','CASUAL SHIRT','M','S','LEVIS',NULL,1119,0,4.5),('P24','Rodid Men\'s Solid Casual Denim Blue Shirt','CLOTHING','CASUAL SHIRT','M','S','RODID',NULL,746,0,3.5),('P25','United Colors of Benetton Men\'s Casual Shirt','CLOTHING','CASUAL SHIRT','M','S','UNITED COLORS OF BENETTON',NULL,1439,0,4.5),('P26','HomeTown Bali Bolton Engineered Wood King Bed With Storage  (Finish Color -Wenge)','FURNITURE','BED',NULL,NULL,'HOMETOWN',NULL,15990,0,3.8),('P27','Furnicity Engineered Wood King Bed With Storage  (Finish Color - Walnut)\n\n','FURNITURE','BED',NULL,NULL,'FURNICITY',NULL,26975,0,3),('P28','Urban Living Rio Solid Wood 2 Seater Sofa  (Finish Color - Light Yellow)','FURNITURE','SOFA',NULL,NULL,'URBAN LIVING',NULL,17955,0,3.78),('P29','FabHomeDecor Fabric 4 Seater Sofa  (Finish Color - Blue)','FURNITURE','SOFA',NULL,NULL,'FAB HOME DECOR',NULL,25565,0,3.6),('P31','iMusi XXL Bean Bag With Bean Filling  (Red)','FURNITURE','BEANBAGS',NULL,NULL,'IMUSI',NULL,1599,0,4.22),('P32','Royal Oak Berlin Engineered Wood Entertainment Unit  (Finish Color - Dark)','FURNITURE','TV CABINETS',NULL,NULL,'ROYAL OAK BERLIN',NULL,12000,0,3.66),('P33','HomeTown Greta Engineered Wood Entertainment Unit  (Finish Color - Teak)','FURNITURE','TV CABINETS',NULL,NULL,'HOMETOWN',NULL,17077,0,4.87),('P34','Housefull Metal Dining Set  (Finish Color - BLACK)','FURNITURE','DINIG TABLES',NULL,NULL,'HOUSEFULL',NULL,16546,0,4.98),('P35','Urban Ladder Brighton Square - Oribi Solid Wood Dining Set  (Finish Color - Teak)','FURNITURE','DINIG TABLES',NULL,NULL,'URBAN LADDER',NULL,31999,0,3.69),('P30','HomeTown Venus Engineered Wood Study Table  (Free Standing, Finish Color - Walnut)','FURNITURE','STUDYTABLES',NULL,NULL,'HOMETOWN',NULL,5290,0,4.56),('P36','Moto E3 Power (Black, 16 GB)','MOBILE',NULL,NULL,NULL,'MOTOROLA',NULL,7999,0,4.7),('P37','Lenovo P2 (Gold, 32 GB)','MOBILE',NULL,NULL,NULL,'LENEVO',NULL,17999,0,3.9),('P38','Apple iPhone 6 (Silver, 16 GB)\n\n','MOBILE',NULL,NULL,NULL,'APPLE',NULL,36990,0,4.7),('P39','SAMSUNG Galaxy On5 (Gold, 8 GB)\n\n','MOBILE',NULL,NULL,NULL,'SAMSUNG',NULL,7490,0,2.7),('P40','XOLO Era 2X (2GB) (Black and Gun, 16 GB)\n\n','MOBILE',NULL,NULL,NULL,'XOLO',NULL,6666,0,2.4),('P41','Moto M (Gold, 64 GB)','MOBILE',NULL,NULL,NULL,'MOTO M',NULL,17999,0,3.7),('P42','Micromax Canvas Mega 4G (Blue, 16 GB)','MOBILE',NULL,NULL,NULL,'MICROMAX',NULL,6999,0,1.7),('P43','Apple iPhone 5S (Space Grey, 16 GB)','MOBILE',NULL,NULL,NULL,'APPLE',NULL,19999,0,3.7),('P44','OPPO F1s (Grey, 64 GB)','MOBILE',NULL,NULL,NULL,'OPPO',NULL,18990,0,4.2),('P45','OPPO A37f (Gold, 16 GB)','MOBILE',NULL,NULL,NULL,'OPPO',NULL,10990,0,3.2),('P56','@home by Nilkamal Ursa Metal Queen Bed','FURNITURE','BED',NULL,NULL,'@HOME',NULL,14555,51,4.5),('P57','Royal Oak Scout Solid Wood Bunk Bed','FURNITURE','BED',NULL,NULL,'ROYAL OAK SCOUT',NULL,39231,39,4.42),('P58','Royal Oak Remo Engineered Wood Bunk Bed  (Finish Color - White & Orange)','FURNITURE','BED',NULL,NULL,'ROYAL OAK SCOUT',NULL,69000,35,3.97),('P59','Urban Living Fabric 1 Seater Sofa  (Finish Color - Greenish Blue)','FURNITURE','SOFA',NULL,NULL,'URBAN LIVING',NULL,9060,0,3.99),('P60','Durian FERRIS/3 Leather 3 Seater Sofa  (Finish Color - Fire Brick)','FURNITURE','SOFA',NULL,NULL,'DURIAN FERRIS',NULL,103399,0,3.25),('P61','Godrej Interio PARTO PLUS 3ST IN S1N LTH BLA Solid Wood 3 Seater Sofa  (Finish Color - Black)','FURNITURE','SOFA',NULL,NULL,'GODREJ',NULL,26190,2,3.8),('P63','Housefull Engineered Wood Study Table  (Free Standing, Finish Color - Black)','FURNITURE','STUDYTABLES',NULL,NULL,'HOUSEFULL',NULL,14250,59,3.55),('P62','Table Mate Beige Platinum Tablemate With Double Foot Rest(Finish Color - Beige)','FURNITURE','STUDYTABLES',NULL,NULL,'TABLE MATE',NULL,3499,57,4.76),('P64','HomeTown Simply Engineered Wood Study Table  (Free Standing, Finish Color - Walnut)','FURNITURE','STUDYTABLES',NULL,NULL,'HOMETOWN',NULL,3045,0,3.9),('P65','HomeTown Rhombus Engineered Wood Study Table  (Free Standing, Finish Color - Walnut)','FURNITURE','STUDYTABLES',NULL,NULL,'HOMETOWN',NULL,4990,0,3.55),('P66','Star XXL Bean Bag With Bean Filling  (Black)','FURNITURE','BEANBAGS',NULL,NULL,'STAR',NULL,1949,0,5),('P46','U.S. Polo Assn. sneakers  (Navy)','FOOTWEAR','CASUAL SHOES','M','L','US POLO',NULL,1439,0,3.5),('P47','United Colors of Benetton 16A8CORE1001I Canvas Sneakers','FOOTWEAR','CASUAL SHOES','M','M','UNITED COLORS OF BENETTON',NULL,1498,0,4),('P48','Sparx Sneakers  (Black)','FOOTWEAR','CASUAL SHOES','M','L','SPARX SNEAKERS',NULL,879,0,2.8),('P49','Lee Cooper Men Sneakers  (Black, Blue)','FOOTWEAR','CASUAL SHOES','M','L','LEE COOPER',NULL,1373,0,4.3),('P50','Puma Carme Mid IDP Mid Ankle Sneakers  (Blue, Grey)','FOOTWEAR','CASUAL SHOES','M','M','PUMA',NULL,2249,0,3.4),('P51','Bata','FOOTWEAR','FORMAL SHOES','M','L','BATA',NULL,999,0,3.8),('P52','Louis Philippe Lace Up shoes','FOOTWEAR','CASUAL SHOES','M','L','LOUIS PHILIPPE',NULL,2999,0,4.5),('P53','Bata Officewear','FOOTWEAR','FORMAL SHOES','M','L','BATA',NULL,1699,0,3.5),('P54','Candle Genuine Leather Slip On  (Black)','FOOTWEAR','FORMAL SHOES','M','M','CANDLE GENUINE',NULL,1294,0,3.9),('P55','Hush Puppies NEW FRED MONK Monk strap shoes','FOOTWEAR','FORMAL SHOES','M','L','HUSH PUPPIES',NULL,3599,0,4.3);
/*!40000 ALTER TABLE `PRODUCTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REVIEW`
--

DROP TABLE IF EXISTS `REVIEW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REVIEW` (
  `RID` int(11) NOT NULL AUTO_INCREMENT,
  `PID` varchar(10) DEFAULT NULL,
  `REVIEW` text,
  PRIMARY KEY (`RID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REVIEW`
--

LOCK TABLES `REVIEW` WRITE;
/*!40000 ALTER TABLE `REVIEW` DISABLE KEYS */;
INSERT INTO `REVIEW` VALUES (3,'None','None'),(4,'None','None'),(5,'None','None'),(25,'P17','Very good quality'),(26,'P17','Satisfied with the product'),(27,'P17','Recieved wrong size'),(28,'P17','Delivery was delayed for some reason'),(29,'P4','Not worth the price'),(30,'P3','Happy with the product'),(31,'P4','Recieved duplicate product'),(32,'P21','4.5 stars out of 5\r\nExcellent quality...delivered in 2 days only...very happy with service'),(33,'P21','Color does not match with the one shown in the pic\r\n'),(34,'P203','Picture quality is not that great.'),(35,'P205','Excellent for the price.\r\nThe screen quality is not that great but at this price range you cant expect any better.'),(36,'P300','Shraddha ka favourite. '),(37,'P54','good'),(38,'P53','ekdam pakav product he plese dont buy ........'),(39,'P206','fff'),(40,'P1','Very nice shoes\r\n'),(41,'P13','i liked it very much');
/*!40000 ALTER TABLE `REVIEW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USERS`
--

DROP TABLE IF EXISTS `USERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USERS` (
  `NAME` varchar(100) NOT NULL,
  `EMAIL_ID` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `ADDRESS` text,
  `PIN` int(11) DEFAULT NULL,
  `PHONE` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`EMAIL_ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERS`
--

LOCK TABLES `USERS` WRITE;
/*!40000 ALTER TABLE `USERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `USERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `CNAME` varchar(50) DEFAULT NULL,
  `CID` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('FOOTWEAR','C1'),('FURNITURE','C2'),('HOME APPLIANCES','C3'),('LAPTOPS','C4'),('CLOTHING','C5'),('KITCHENWARE AND CUTLERY','C5'),('SHOES','C6');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footwear`
--

DROP TABLE IF EXISTS `footwear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `footwear` (
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
-- Dumping data for table `footwear`
--

LOCK TABLES `footwear` WRITE;
/*!40000 ALTER TABLE `footwear` DISABLE KEYS */;
INSERT INTO `footwear` VALUES ('P1','Bata SA 05 Lace Up shoes','FOOTWEAR','FORMAL SHOES','BATA','M','L',0,4,999),('P2','Lee Cooper Lace Up  (Black)','FOOTWEAR','FORMAL SHOES','LEE COOPER','M','S',0,3,2429),('P3','Louis Philippe Lace up shoes','FOOTWEAR','FORMAL SHOES','Louis Philippe','M','M',0,5,3598),('P4','Adidas TRACEROCKER Outdoor Shoes  (Navy)','FOOTWEAR','CASUAL SHOES','ADIDAS','M','M',0,2,4093),('P5','Levi\'s DENIM SLIP ON Men Loafers  (Blue)','FOOTWEAR','CASUAL SHOES','LEVIS','M','S',0,4,2143),('P6','Reebok CLASSIC TENSTALL Men Canvas Sneakers  (Green, Grey, White)','FOOTWEAR','CASUAL SHOES','REBOOK','M','L',0,3,1514);
/*!40000 ALTER TABLE `footwear` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footwear1`
--

DROP TABLE IF EXISTS `footwear1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `footwear1` (
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
-- Dumping data for table `footwear1`
--

LOCK TABLES `footwear1` WRITE;
/*!40000 ALTER TABLE `footwear1` DISABLE KEYS */;
INSERT INTO `footwear1` VALUES ('P1','Bata SA 05 Lace Up shoes','SHOES','FORMAL SHOES','BATA','M','S',0,3,999);
/*!40000 ALTER TABLE `footwear1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__bookmark`
--

DROP TABLE IF EXISTS `pma__bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__bookmark`
--

LOCK TABLES `pma__bookmark` WRITE;
/*!40000 ALTER TABLE `pma__bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__central_columns`
--

DROP TABLE IF EXISTS `pma__central_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin,
  PRIMARY KEY (`db_name`,`col_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__central_columns`
--

LOCK TABLES `pma__central_columns` WRITE;
/*!40000 ALTER TABLE `pma__central_columns` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__central_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__column_info`
--

DROP TABLE IF EXISTS `pma__column_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__column_info`
--

LOCK TABLES `pma__column_info` WRITE;
/*!40000 ALTER TABLE `pma__column_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__column_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__designer_settings`
--

DROP TABLE IF EXISTS `pma__designer_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__designer_settings`
--

LOCK TABLES `pma__designer_settings` WRITE;
/*!40000 ALTER TABLE `pma__designer_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__designer_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__export_templates`
--

DROP TABLE IF EXISTS `pma__export_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__export_templates` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__export_templates`
--

LOCK TABLES `pma__export_templates` WRITE;
/*!40000 ALTER TABLE `pma__export_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__export_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__favorite`
--

DROP TABLE IF EXISTS `pma__favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__favorite`
--

LOCK TABLES `pma__favorite` WRITE;
/*!40000 ALTER TABLE `pma__favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__history`
--

DROP TABLE IF EXISTS `pma__history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__history`
--

LOCK TABLES `pma__history` WRITE;
/*!40000 ALTER TABLE `pma__history` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__navigationhiding`
--

DROP TABLE IF EXISTS `pma__navigationhiding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__navigationhiding`
--

LOCK TABLES `pma__navigationhiding` WRITE;
/*!40000 ALTER TABLE `pma__navigationhiding` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__navigationhiding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__pdf_pages`
--

DROP TABLE IF EXISTS `pma__pdf_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__pdf_pages`
--

LOCK TABLES `pma__pdf_pages` WRITE;
/*!40000 ALTER TABLE `pma__pdf_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__pdf_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__recent`
--

DROP TABLE IF EXISTS `pma__recent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__recent`
--

LOCK TABLES `pma__recent` WRITE;
/*!40000 ALTER TABLE `pma__recent` DISABLE KEYS */;
INSERT INTO `pma__recent` VALUES ('root','[{\"db\":\"phptrialdb\",\"table\":\"users\"}]');
/*!40000 ALTER TABLE `pma__recent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__relation`
--

DROP TABLE IF EXISTS `pma__relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__relation`
--

LOCK TABLES `pma__relation` WRITE;
/*!40000 ALTER TABLE `pma__relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__savedsearches`
--

DROP TABLE IF EXISTS `pma__savedsearches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__savedsearches` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__savedsearches`
--

LOCK TABLES `pma__savedsearches` WRITE;
/*!40000 ALTER TABLE `pma__savedsearches` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__savedsearches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__table_coords`
--

DROP TABLE IF EXISTS `pma__table_coords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__table_coords`
--

LOCK TABLES `pma__table_coords` WRITE;
/*!40000 ALTER TABLE `pma__table_coords` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__table_coords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__table_info`
--

DROP TABLE IF EXISTS `pma__table_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__table_info`
--

LOCK TABLES `pma__table_info` WRITE;
/*!40000 ALTER TABLE `pma__table_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__table_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__table_uiprefs`
--

DROP TABLE IF EXISTS `pma__table_uiprefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__table_uiprefs`
--

LOCK TABLES `pma__table_uiprefs` WRITE;
/*!40000 ALTER TABLE `pma__table_uiprefs` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__table_uiprefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__tracking`
--

DROP TABLE IF EXISTS `pma__tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__tracking`
--

LOCK TABLES `pma__tracking` WRITE;
/*!40000 ALTER TABLE `pma__tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__userconfig`
--

DROP TABLE IF EXISTS `pma__userconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__userconfig`
--

LOCK TABLES `pma__userconfig` WRITE;
/*!40000 ALTER TABLE `pma__userconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__userconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__usergroups`
--

DROP TABLE IF EXISTS `pma__usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N',
  PRIMARY KEY (`usergroup`,`tab`,`allowed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__usergroups`
--

LOCK TABLES `pma__usergroups` WRITE;
/*!40000 ALTER TABLE `pma__usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__users`
--

DROP TABLE IF EXISTS `pma__users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`,`usergroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__users`
--

LOCK TABLES `pma__users` WRITE;
/*!40000 ALTER TABLE `pma__users` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `PID` varchar(10) NOT NULL,
  `PNAME` varchar(100) DEFAULT NULL,
  `CNAME` varchar(50) DEFAULT NULL,
  `SUB_CATEGORY` varchar(50) DEFAULT NULL,
  `GENDER` varchar(3) DEFAULT NULL,
  `SIZE` varchar(3) DEFAULT NULL,
  `BRAND` varchar(50) DEFAULT NULL,
  `DISCRIPTION` varchar(1000) DEFAULT NULL,
  `PRICE` int(11) DEFAULT NULL,
  `DISCOUNT` int(11) DEFAULT NULL,
  `RATING` float DEFAULT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('P1','Bata SA 05 Lace Up shoes','FOOTWEAR','FORMAL SHOES','M','L','BATA',NULL,999,0,4.2),('P10','PUMA AXIS II WN S DP RUNNING SHOES','FOOTWEAR','SPORTS SHOES','F','M','PUMA',NULL,1948,0,4.8),('P100','Panasonic P77 (Grey, 8 GB)','MOBILES',NULL,NULL,'5','PANASONIC',NULL,5299,0,1.5),('P101','LeEco Le 2 (Gold, 32 GB)','MOBILES',NULL,NULL,'5.5','LEECO',NULL,11999,0,3.9),('P102','Apple iPhone 7 (Gold, 32 GB)','MOBILES',NULL,NULL,'4.7','APPLE',NULL,60000,0,4.5),('P103','Lava A97 4G with VoLTE (Black Grey, 8 GB)','MOBILES',NULL,NULL,'5','LAVA',NULL,5425,0,1.5),('P104','OPPO F1 Plus (Gold, 64 GB)','MOBILES',NULL,NULL,'5.5','OPPO',NULL,23999,0,4),('P105','Google Pixel (Very Silver, 32 GB)','MOBILES',NULL,NULL,'5','MOTOROLA',NULL,57000,0,4),('P106','Google Pixel XL (Quite Black, 32 GB)','MOBILES',NULL,NULL,'5.5','MOTOROLA',NULL,67000,0,4.5),('P107','OnePlus 3 (Soft Gold, 64 GB)','MOBILES',NULL,NULL,'5.5','ONE PLUS',NULL,27999,0,3.5),('P108','OnePlus One (Silk White, 16 GB)','MOBILES',NULL,NULL,'5.5','ONE PLUS',NULL,18998,0,3),('P109','Apple iPhone 4S (White, 32 GB)','MOBILES',NULL,NULL,'3.5','APPLE',NULL,12999,0,2.5),('P11','CAMPUS WALKING SHOES','FOOTWEAR','SPORTS SHOES','F','L','CAMPUS',NULL,470,0,4.6),('P12','NUMBRAVE CASUAL SOLID WOMEN\'S KURTI','CLOTHING','KURTIS','F','M','NUMBRAVE',NULL,1449,0,4.9),('P13','GLOBAL DESI SOLID WOMEN\'S STRAIGHT KURTA','CLOTHING','KURTAS','F','L','GLOBAL DESI',NULL,1549,0,4.5),('P14','MIMOSA WOVEN KANJIVARAM TUSSAR SILK SARI','CLOTHING','SAREES','F',NULL,'MIMOSA',NULL,1099,0,4.7),('P15','FASHION FOREVER EMBELLISHED FASHION VELVET SAREE','CLOTHING','SAREES','F',NULL,'FASHION FOREVER',NULL,699,0,4.8),('P16','SayItLoud Solid Men\'s Round Neck Black, Grey T-Shirt','CLOTHING','TSHIRT','M','L','SAYITLOUD',NULL,439,0,3.5),('P17','Peter England Printed Men\'s Polo Neck Dark Blue T-Shirt','CLOTHING','TSHIRT','M','S','PETER ENGLAND',NULL,599,0,4),('P18','Levi\'s Solid Men\'s Round Neck Green T-Shirt','CLOTHING','TSHIRT','M','M','LEVIS',NULL,899,0,3.5),('P19','Peter England Men\'s Solid Formal Grey Shirt','CLOTHING','FORMAL SHIRT','M','L','PETER ENGLAND',NULL,947,0,4.5),('P2','Lee Cooper Lace Up  (Black)','FOOTWEAR','FORMAL SHOES','M','S','LEE COOPER',NULL,2429,0,3.6),('P20','Louis Philippe Men\'s Self Design Formal Blue Shirt','CLOTHING','FORMAL SHIRT','M','S','LOUIS PHILIPPE',NULL,439,0,3.5),('P201','LeEco 138.8cm (55) Ultra HD (4K) Smart LED TV  (L553L2, 3 x HDMI, 3 x USB)','HOUSEHOLD APPLIANCES','TELEVISION SETS',NULL,NULL,'LEECO',NULL,59790,3,4.82),('P202','LG 80cm (32) HD Ready LED TV  (32LH516A, 1 x HDMI, 1 x USB)','HOUSEHOLD APPLIANCES','TELEVISION SETS',NULL,NULL,'LG',NULL,23500,13,4.26),('P203','SAMSUNG 59cm (24) HD Ready LED TV  (24K4100, 2 x HDMI, 2 x USB)','HOUSEHOLD APPLIANCES','TELEVISION SETS',NULL,NULL,'SAMSUNG',NULL,16500,27,3.99),('P204','Sony 54.6cm (22) Full HD LED TV  (BRAVIA KLV-22P413D, 1 x HDMI, 1 x USB)','HOUSEHOLD APPLIANCES','TELEVISION SETS',NULL,NULL,'SONY',NULL,14400,2,4.35),('P205','BPL 60cm (24) HD Ready LED TV  (BPL060A35J, 1 x HDMI, 1 x USB)','HOUSEHOLD APPLIANCES','TELEVISION SETS',NULL,NULL,'BPL',NULL,13990,27,4.59),('P206','Bajaj 17 L Solo Microwave Oven  (1701MT, White)','HOUSEHOLD APPLIANCES','MICROWAVE OVEN',NULL,NULL,'BAJAJ',NULL,5290,26,5),('P207','IFB 23 L Convection Microwave Oven  (23SC3, Silver)','HOUSEHOLD APPLIANCES','MICROWAVE OVEN',NULL,NULL,'IFB',NULL,13250,31,5),('P208','SAMSUNG 21 L Convection Microwave Oven  (CE77JD-LB/TL, Black)','HOUSEHOLD APPLIANCES','MICROWAVE OVEN',NULL,NULL,'SAMSUNG',NULL,14090,8,4.59),('P209','Onida 23 L Convection Microwave Oven  (MO23CJS11B, Black Beauty)','HOUSEHOLD APPLIANCES','MICROWAVE OVEN',NULL,NULL,'ONIDA',NULL,11690,15,5),('P21','Raymond Men\'s Solid Formal Linen White Shirt','CLOTHING','FORMAL SHIRT','M','L','RAYMOND',NULL,1649,0,4.5),('P210','IFB 25 L Convection Microwave Oven  (25BC4, Black)','HOUSEHOLD APPLIANCES','MICROWAVE OVEN',NULL,NULL,'IFB',NULL,15590,24,5),('P211','Eureka Forbes Trendy Zip Dry Vacuum Cleaner  (Red & Black)','HOUSEHOLD APPLIANCES','VACUUM CLEANERS',NULL,NULL,'EUREKA FORBES',NULL,3699,13,5),('P212','Eureka Forbes Vogue Dry Vacuum Cleaner  (Red and Silver)','HOUSEHOLD APPLIANCES','VACUUM CLEANERS',NULL,NULL,'EUREKA FORBES',NULL,8999,18,5),('P213','Nova VC 766 Hand-held Vacuum Cleaner  (Silver)','HOUSEHOLD APPLIANCES','VACUUM CLEANERS',NULL,NULL,'NOVA',NULL,2695,38,4.89),('P214','Eureka Forbes Tornado Dry Vacuum Cleaner  (Red, Black)','HOUSEHOLD APPLIANCES','VACUUM CLEANERS',NULL,NULL,'EUREKA FORBES',NULL,6999,11,4.89),('P215','Dealcrox EN-453 Home & Car Washer  (Multicolor)','HOUSEHOLD APPLIANCES','VACUUM CLEANERS',NULL,NULL,'DEALCROX',NULL,599,10,5),('P22','Pepe Jeans Men\'s Casual Shirt','CLOTHING','CASUAL SHIRT','M','M','PEPE JEANS',NULL,849,0,3.5),('P23','Levi\'s Men\'s Casual Shirt','CLOTHING','CASUAL SHIRT','M','S','LEVIS',NULL,1119,0,4.5),('P24','Rodid Men\'s Solid Casual Denim Blue Shirt','CLOTHING','CASUAL SHIRT','M','S','RODID',NULL,746,0,3.5),('P25','United Colors of Benetton Men\'s Casual Shirt','CLOTHING','CASUAL SHIRT','M','S','UNITED COLORS OF BENETTON',NULL,1439,0,4.5),('P26','HomeTown Bali Bolton Engineered Wood King Bed With Storage  (Finish Color -Wenge)','FURNITURE','BED',NULL,NULL,'HOMETOWN',NULL,15990,0,3.8),('P261','HP Core i5 5th GenNotebook ','LAPTOPS',NULL,NULL,'15','HP',NULL,39990,0,3.5),('P262','Lenovo G50-80 Core i5 5th Gen - 80E503CMIH G50-80 Notebook \n\n','LAPTOPS',NULL,NULL,'15','LENOVO',NULL,38990,0,3.1),('P263','HP Core i3 5th Gen - W6T33PA 15-ay019TU Notebook \n\n','LAPTOPS',NULL,NULL,'15','HP',NULL,27490,0,4.1),('P264','Apple MacBook Air Core i5 5th Gen -  MMGF2HN/A A1466 Ultrabook \n\n','LAPTOPS',NULL,NULL,'13','APPLE',NULL,62400,0,3.8),('P265','HP Core i5 6th Gen - W6T28PA 15-be001TX Notebook \n\n','LAPTOPS',NULL,NULL,'15','HP',NULL,43990,0,4.5),('P266','Dell Inspiron 7000 Core i5 7th Gen - Z561502SIN9G 7560 \n\nNotebook','LAPTOPS',NULL,NULL,'15','DELL',NULL,70190,0,3.7),('P267','Dell Inspiron 5000 Core i5 7th Gen - Z563504SIN9B 5567 Notebook \n\n','LAPTOPS',NULL,NULL,'15','DELL',NULL,56290,0,3.2),('P268','Dell Inspiron Core i3 5th Gen - Z565155HIN9/Z565155UIN9 3558 Notebook \n\n','LAPTOPS',NULL,NULL,'15','DELL',NULL,27490,0,2.9),('P269','Lenovo Core i7 6th Gen - 80Q30058IN IP 500s Notebook \n\n','LAPTOPS',NULL,NULL,'14','LENOVO',NULL,60190,0,3.3),('P27','Furnicity Engineered Wood King Bed With Storage  (Finish Color - Walnut)\n\n','FURNITURE','BED',NULL,NULL,'FURNICITY',NULL,26975,0,3),('P270','Apple Macbook Pro Core i5 -MD101HN/A A1278 Notebook \n\n','LAPTOPS',NULL,NULL,'13','APPLE',NULL,52490,0,3.1),('P28','Urban Living Rio Solid Wood 2 Seater Sofa  (Finish Color - Light Yellow)','FURNITURE','SOFA',NULL,NULL,'URBAN LIVING',NULL,17955,0,3.78),('P29','FabHomeDecor Fabric 4 Seater Sofa  (Finish Color - Blue)','FURNITURE','SOFA',NULL,NULL,'FAB HOME DECOR',NULL,25565,0,3.6),('P3','Louis Philippe Lace up shoes','FOOTWEAR','FORMAL SHOES','M','M','LOUIS PHILIPPE',NULL,3598,0,4),('P30','HomeTown Venus Engineered Wood Study Table  (Free Standing, Finish Color - Walnut)','FURNITURE','STUDYTABLES',NULL,NULL,'HOMETOWN',NULL,5290,0,4.56),('P300','Milky Bar','CHOCOLATE',NULL,NULL,NULL,'NESTLE',NULL,10,0,5),('P31','iMusi XXL Bean Bag With Bean Filling  (Red)','FURNITURE','BEANBAGS',NULL,NULL,'IMUSI',NULL,1599,0,4.22),('P32','Royal Oak Berlin Engineered Wood Entertainment Unit  (Finish Color - Dark)','FURNITURE','TV CABINETS',NULL,NULL,'ROYAL OAK BERLIN',NULL,12000,0,3.66),('P33','HomeTown Greta Engineered Wood Entertainment Unit  (Finish Color - Teak)','FURNITURE','TV CABINETS',NULL,NULL,'HOMETOWN',NULL,17077,0,4.87),('P34','Housefull Metal Dining Set  (Finish Color - BLACK)','FURNITURE','DINIG TABLES',NULL,NULL,'HOUSEFULL',NULL,16546,0,4.98),('P35','Urban Ladder Brighton Square - Oribi Solid Wood Dining Set  (Finish Color - Teak)','FURNITURE','DINIG TABLES',NULL,NULL,'URBAN LADDER',NULL,31999,0,3.69),('P36','Moto E3 Power (Black, 16 GB)','MOBILES',NULL,NULL,'5','MOTOROLA',NULL,7999,0,4.7),('P37','Lenovo P2 (Gold, 32 GB)','MOBILES',NULL,NULL,'5.5','LENEVO',NULL,17999,0,3.9),('P38','Apple iPhone 6 (Silver, 16 GB)\n\n','MOBILES',NULL,NULL,'4.7','APPLE',NULL,36990,0,4.7),('P39','SAMSUNG Galaxy On5 (Gold, 8 GB)\n\n','MOBILES',NULL,NULL,'5','SAMSUNG',NULL,7490,0,2.7),('P4','Levi\'s DENIM SLIP ON Men Loafers (Blue)','FOOTWEAR','CASUAL SHOES','M','L','LEVIS',NULL,4093,0,2.5),('P40','XOLO Era 2X (2GB) (Black and Gun, 16 GB)\n\n','MOBILES',NULL,NULL,'5','XOLO',NULL,6666,0,2.4),('P400','Autopilot System for Unmanned Aerial Vehicle','SOFTWARE','PROJECT',NULL,NULL,NULL,NULL,25000,0,4.5),('P401','GESTURE CONTROLLED ROVER','SOFTWARE','PROJECT',NULL,NULL,NULL,NULL,30000,0,4),('P402','Gesture Controlled Rover','SOFTWARE','PROJECT',NULL,NULL,NULL,NULL,7000,0,3),('P41','Moto M (Gold, 64 GB)','MOBILES',NULL,NULL,'5.5','MOTOROLA',NULL,17999,0,3.7),('P42','Micromax Canvas Mega 4G (Blue, 16 GB)','MOBILES',NULL,NULL,'5.5','MICROMAX',NULL,6999,0,1.7),('P43','Apple iPhone 5S (Space Grey, 16 GB)','MOBILES',NULL,NULL,'4','APPLE',NULL,19999,0,3.7),('P44','OPPO F1s (Grey, 64 GB)','MOBILES',NULL,NULL,'5.5','OPPO',NULL,18990,0,4.2),('P45','OPPO A37f (Gold, 16 GB)','MOBILES',NULL,NULL,'5','OPPO',NULL,10990,0,3.2),('P46','U.S. Polo Assn. sneakers  (Navy)','FOOTWEAR','CASUAL SHOES','M','L','US POLO',NULL,1439,0,3.5),('P47','United Colors of Benetton 16A8CORE1001I Canvas Sneakers','FOOTWEAR','CASUAL SHOES','M','M','UNITED COLORS OF BENETTON',NULL,1498,0,4),('P48','Sparx Sneakers  (Black)','FOOTWEAR','CASUAL SHOES','M','L','SPARX SNEAKERS',NULL,879,0,2.8),('P49','Lee Cooper Men Sneakers  (Black, Blue)','FOOTWEAR','CASUAL SHOES','M','L','LEE COOPER',NULL,1373,0,4.3),('P5','Reebok CLASSIC TENSTALL Men Canvas Sneakers  (Green, Grey, White)','FOOTWEAR','CASUAL SHOES','M','S','REBOOK',NULL,2143,0,4.3),('P50','Puma Carme Mid IDP Mid Ankle Sneakers  (Blue, Grey)','FOOTWEAR','CASUAL SHOES','M','M','PUMA',NULL,2249,0,3.4),('P51','Bata','FOOTWEAR','FORMAL SHOES','M','L','BATA',NULL,999,0,3.8),('P52','Louis Philippe Lace Up shoes','FOOTWEAR','CASUAL SHOES','M','L','LOUIS PHILIPPE',NULL,2999,0,4.5),('P53','Bata Officewear','FOOTWEAR','FORMAL SHOES','M','L','BATA',NULL,1699,0,3.5),('P54','Candle Genuine Leather Slip On  (Black)','FOOTWEAR','FORMAL SHOES','M','M','CANDLE GENUINE',NULL,1294,0,3.9),('P55','Hush Puppies NEW FRED MONK Monk strap shoes','FOOTWEAR','FORMAL SHOES','M','L','HUSH PUPPIES',NULL,3599,0,4.3),('P56','@home by Nilkamal Ursa Metal Queen Bed','FURNITURE','BED',NULL,NULL,'@HOME',NULL,14555,51,4.5),('P57','Royal Oak Scout Solid Wood Bunk Bed','FURNITURE','BED',NULL,NULL,'ROYAL OAK SCOUT',NULL,39231,39,4.42),('P58','Royal Oak Remo Engineered Wood Bunk Bed  (Finish Color - White & Orange)','FURNITURE','BED',NULL,NULL,'ROYAL OAK SCOUT',NULL,69000,35,3.97),('P59','Urban Living Fabric 1 Seater Sofa  (Finish Color - Greenish Blue)','FURNITURE','SOFA',NULL,NULL,'URBAN LIVING',NULL,9060,0,3.99),('P6','CARLTON LONDON CLL-3305 WOMEN WOMEN FLATS','FOOTWEAR','FLATS','F','M','CARLTON LONDON',NULL,647,0,4.1),('P60','Durian FERRIS/3 Leather 3 Seater Sofa  (Finish Color - Fire Brick)','FURNITURE','SOFA',NULL,NULL,'DURIAN FERRIS',NULL,103399,0,3.25),('P61','Godrej Interio PARTO PLUS 3ST IN S1N LTH BLA Solid Wood 3 Seater Sofa  (Finish Color - Black)','FURNITURE','SOFA',NULL,NULL,'GODREJ',NULL,26190,2,3.8),('P62','Table Mate Beige Platinum Tablemate With Double Foot Rest(Finish Color - Beige)','FURNITURE','STUDYTABLES',NULL,NULL,'TABLE MATE',NULL,3499,57,4.76),('P63','Housefull Engineered Wood Study Table  (Free Standing, Finish Color - Black)','FURNITURE','STUDYTABLES',NULL,NULL,'HOUSEFULL',NULL,14250,59,3.55),('P64','HomeTown Simply Engineered Wood Study Table  (Free Standing, Finish Color - Walnut)','FURNITURE','STUDYTABLES',NULL,NULL,'HOMETOWN',NULL,3045,0,3.9),('P65','HomeTown Rhombus Engineered Wood Study Table  (Free Standing, Finish Color - Walnut)','FURNITURE','STUDYTABLES',NULL,NULL,'HOMETOWN',NULL,4990,0,3.55),('P66','Star XXL Bean Bag With Bean Filling  (Black)','FURNITURE','BEANBAGS',NULL,NULL,'STAR',NULL,1949,0,5),('P67','ONLY CASUAL FULL SLEEVES SOLID WOMEN\'S GREY TOP','CLOTHING','TOPS/TSHIRTS','F','L','ONLY',NULL,1347,0,4.5),('P68','YEPME PRINTED KURTI AND PATIYALA','CLOTHING','DRESSES','F','L','YEPME',NULL,959,0,4.7),('P69','YEPME STRIPPED KURTA AND CHURIDAR','CLOTHING','DRESSES','F','M','YEPME',NULL,1289,0,4.9),('P7','CARLTON LONDON CASUAL WOMEN FLATS','FOOTWEAR','FLATS','F','L','CARLTON LONDON',NULL,2995,0,4.2),('P70','YEPME EMBROIDERED KURTA AND CHURIDAR','CLOTHING','DRESSES','F','L','YEPME',NULL,5099,0,4.6),('P72','Star XXL Classic Teardrop Bean Bag With Bean Filling  (Multicolor)','FURNITURE','BEANBAGS',NULL,NULL,'STAR',NULL,3399,41,3.69),('P73','Fun ON XL Teardrop Bean Bag Cover (Without Filling)  (Red, White)','FURNITURE','BEANBAGS',NULL,NULL,'FUN ON',NULL,999,0,3.33),('P74','Star XXXL Rester Lounger Bean Bag With Bean Filling  (Beige)','FURNITURE','BEANBAGS',NULL,NULL,'STAR',NULL,2999,0,4.5),('P75','Housefull Engineered Wood TV Stand  (Finish Color - Brown)','FURNITURE','TV CABINETS',NULL,NULL,'HOUSEFULL',NULL,6760,0,4.32),('P76','HomeTown Lauren Engineered Wood Entertainment Unit  (Finish Color - White)','FURNITURE','TV CABINETS',NULL,NULL,'HOMETOWN',NULL,10395,0,3.26),('P77','HomeTown Clovar Engineered Wood Entertainment Unit  (Finish Color - Pickled oak)','FURNITURE','TV CABINETS',NULL,NULL,'HOMETOWN',NULL,25025,0,4.55),('P78','Mobel Vinton Solid Wood Dining Set  (Finish Color - Red)','FURNITURE','TV CABINETS',NULL,NULL,'MOBEL VINTON',NULL,55300,0,5),('P79','Urban Ladder Vanalen 6 - to - 8 Extendable - Leon Solid Wood Dining Set','FURNITURE','DINING TABLES',NULL,NULL,'URBAN LADDER',NULL,64999,0,2.3),('P8','BATA WOMEN HEELS','FOOTWEAR','HEELS','F','M','BATA',NULL,899,0,4.3),('P80','@home by Nilkamal Contemporary & Modern Metal Dining Set  (Finish Color - Mocha Brown)','FURNITURE','DINING TABLES',NULL,NULL,'@HOME',NULL,31030,0,4.63),('P81','Durian NAPLES Engineered Wood Dining Set  (Finish Color - Cappuccino)','FURNITURE','DINING TABLES',NULL,NULL,'DURIAN',NULL,29199,0,4.29),('P82','Haier 6 kg Fully Automatic Top Load Washing Machine  (HWM 60-10)','HOUSEHOLD APPLIANCES','WASHING MACHINES',NULL,NULL,'HAIER',NULL,12590,0,4.38),('P83','IFB 6 kg Fully Automatic Front Load Washing Machine  (Diva Aqua VX)','HOUSEHOLD APPLIANCES','WASHING MACHINES',NULL,NULL,'IFB',NULL,22990,4,4.89),('P84','Whirlpool 6.2 kg Fully Automatic Top Load Washing Machine  (Stainwash D Clean DC62)','HOUSEHOLD APPLIANCES','WASHING MACHINES',NULL,NULL,'WHIRLPOOL',NULL,17990,0,4.99),('P85','Whirlpool 7.2 kg Fully Automatic Top Load Washing Machine  (Stainwash Ultra UL72H)','HOUSEHOLD APPLIANCES','WASHING MACHINES',NULL,NULL,'WHIRLPOOL',NULL,20000,23,4.53),('P86','LG 7.5 kg Semi Automatic Top Load Washing Machine  (P8539R3SM)','HOUSEHOLD APPLIANCES','WASHING MACHINES',NULL,NULL,'LG',NULL,12990,0,5),('P87','Whirlpool 245 L Frost Free Double Door Refrigerator  (NEO FR258 CLS PLUS 2S, Wine Titanium,2016)','HOUSEHOLD \n\nAPPLIANCES','REFRIGERATORS',NULL,NULL,'REFRIGERATORS',NULL,16029,0,4.53),('P88','Kelvinator 235 L Frost Free Double Door Refrigerator  (KA242PMX, Maroon Pixel, 2016)','HOUSEHOLD APPLIANCES','REFRIGERATORS',NULL,NULL,'KELVINATOR',NULL,17930,0,5),('P89','LG 255 L Frost Free Double Door Refrigerator  (GL-Q282SGSR, Graphite Steel, 2016)','HOUSEHOLD APPLIANCES','REFRIGERATORS',NULL,NULL,'LG',NULL,21056,0,4.65),('P9','BATA WOMEN BLACK HEELS','FOOTWEAR','HEELS','F','S','BATA',NULL,809,0,4.6),('P90','Whirlpool 240 L Frost Free Triple Door Refrigerator  (FP 263D PROTTON ROY, Mirror Black, 2016)','HOUSEHOLD \n\nAPPLIANCES','REFRIGERATORS',NULL,NULL,'WHIRLPOOL',NULL,28250,15,4.56),('P91','Hitachi 510 L Frost Free Side by Side Refrigerator  (R-WB550PND2, Glass Black, 2016)','HOUSEHOLD APPLIANCES','REFRIGERATORS',NULL,NULL,'HITACHI',NULL,70890,0,4.29),('P94','Moto E3 Power (White, 16 GB)','MOBILES',NULL,NULL,'5','MOTO',NULL,7999,0,3.7),('P99','Asus Zenfone 2 Laser ZE550KL (Black, 16 GB)','MOBILES',NULL,NULL,'5.5','ASUS',NULL,8499,0,2.9);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `PID` varchar(10) DEFAULT NULL,
  `ABSTRACT` mediumtext,
  `CONCLUSION` mediumtext,
  `INTRODUCTION` mediumtext,
  `RESULT` mediumtext,
  `SCOPE` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES ('P400','This paper aims at implementing autopilot systems for small or micro unmanned aerial vehicles. The UAV flight control basics are introduced first. The radio control system and autopilot control system are then explained from both the hardware and software viewpoints. A UAV is a radio controlled Aircraft which will have flying range of 500 meters radius. It can be equipped with a camera and an autopilot which will be useful for surveillance purpose. The UAV can also be used in rescue mission to provide food, medicines and other utility products in areas affected by natural calamities, where it is out of human reach. The advantage of the same is safety as no human is involved and also because of its low cost of running and manufacturing. The autopilot is extremely small and lightweight allowing it to fit in aircraft of this size. The autopilot features an advanced, highly autonomous flight control system with auto-launch and auto-landing functions. Whenever UAV goes out the specified range it becomes unstable and there is risk of crashing. It is very difficult to detect the device when it is goes out the range. Due to this device cant be land securely and is usually lost. Device cant find the nearest ground station when it is out of range. All the info transmitted from autopilot will be access through web portal. These features allow the autopilot to be operated by a wide spectrum of skilled and unskilled users. Innovative control techniques implemented in software, coupled with light weight, robust, and inexpensive hardware components were used in the design of the autopilot.','This project will offer the chance to gain a hands-on experience of how decisions are taken in the real world. The alternative yielding the highest price cost reduction with least sacrifice for the optimal design is the most favorable solution. All factors affecting the overall performance of a given part are taken into consideration and the perfect balance between efficiency and strength are what determine the best result.\nThe project was bit challenging due to that none of the team members ever worked with aerial vehicles and they all had to read about it to get the basic background needed to proceed with the project while also the project advisor was very passionate and helpful in all situations and always illustrated what was not clear to any of the members.','Automatic pilots, or autopilots, are devices for controlling spacecraft, aircraft, watercraft, missiles and vehicles without constant human intervention. Multi-purpose, compact unmanned aerial vehicles are important due to their abilities to replace manned aircrafts in many routine and dangerous missions. These aerial robots can be utilized in a variety of civilian missions such as surveillance in disasters, traffic monitoring, military purposes. An autopilot can refer specifically to aircraft, self-steering gear for boats, or auto guidance of space craft and missiles',NULL,'The material has moved on from autopilots, which are basically systems to maintain straight and level flight, to inertial navigation, which serves to navigate specified classes of flightpath by generating autopilot commands.\nIn short, the autopilot is responsible for controlling the handling modes of the aircraft , but control of the trajectory is the responsibility of the navigation.\nThe various categories of autopilot presented are different flight path controllers, all of which potentially employ the same innermost loops e.g. autopilot proper, and are limited in scope to aviation.\n'),('P401','With the emergence of robots in many industries, various tasks that were once considered complex for humans are now effortless.This project presents the design of a rover employing a rocker bogie mechanism with a bell crank lever mechanism for chassis stabilization and a 5 degree of freedom robotic arm for manipulation.The movements of the rover are controlled by gestures using Myo armband, Leap Motion Technology, Arduino, etc.','The gesture recognition system is indeed the most effective method for interactions with rover and manipulator.With the Myo armband and Leap Motion Controller, a single user is capable of controlling the rover\'s motion and the robotic arms movements at the same time.','To develop a safe and reliable interactions between human being and robots by the means of gesture.Make an effective gesture control system to control the rovers translational motion and the movements of the robotic arm at the same time.To create a system to interact with a situations where human cannot easily interact.','The Myo Armband is programmed for gestures such as Fingerspread for Forward direction of rover, Fist for backward, PalmWave for Right and Left directions respectively.The Leap Motion Controller controls the Robotic Arm movements which are gripping and picking the objects.',NULL),('P402','Capacity:Light itself has 10000 times wider bandwidth than radio waves.Due to which the transfer of data is more effectively possible.So li-fi has better capacity.Efficiency:LED lights consume less energy and very efficient.As it uses less energy it is cheap and easy to use.Security:Light waves cannnot penetrate through walls.So they cannot be misused.Avalability:As light is present everywhere,Li-fi is available everywhere.But for more efficient use of li-fi technology LED bulbs mus tbe placed for proper transmission.Data Density:Li-Fi can achieve about 1000 times the data density of Wi-Fi because visible light can be well contained in the illumintaion area.','Bulbs can be used as an alternative to hotspots.It Provides simple,faster and efficient wireless data communication.Li-Fi will make us to proceed toward the cleaner and brighter safer future.','With the vast growing gadgets,their usage and their developments led to the advancement in the wifi which provides a technology so called Li-Fi.LiFI is a technology that makes use of LED light which helps in the transmission of data much faster and flexible than data transmitted through Wifi.Light fidelity is a branch of optical wireless communication which is emerging technology.',NULL,NULL);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
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
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Akhil','akhilkpdasan@gmail.com','123','sakinaka',400072,'9000'),('ashish','ashishawale@gmail.com','123','wadala',1111,'100'),('KP AKhil Dasan','myemailid@email.com','123','Reni Nivas,ab comp,kherani road,sakinaka',400072,'9004982467'),('shraddha','shraddhapatil2502@gmail.com','shraddha','abc',410210,'767647'),('shubham','shubham@gmail.com','123','wadala',400015,'1000'),('siddharth','siddharthkirti990@gmail.com','123','tilak nagar',4000,'10000');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_info`
--

DROP TABLE IF EXISTS `users_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_info` (
  `NAME` varchar(100) DEFAULT NULL,
  `EMAIL_ID` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `ADDRESS` text,
  `PIN` int(11) DEFAULT NULL,
  `PHONE` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`EMAIL_ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_info`
--

LOCK TABLES `users_info` WRITE;
/*!40000 ALTER TABLE `users_info` DISABLE KEYS */;
INSERT INTO `users_info` VALUES ('akhil','akhilkpdasan@gmail.com','123','sakinaka',400072,'9004982467'),('asdas','asd@adsadasd.com','123','adsadads asdsad adasd\r\nasdasd\r\nsad',4000022,'9004982467'),('wdsd','sa@gmail.com','qwe','scsdc',23343,'233456'),('shraddha','shraddhapatil2502@gmail.com','123','khoparkhairne',4000709,'7208107840'),('shubham','shubhampatil626274@gmail.com','123456','mangaon',402104,''),('siddharth','siddharthkirti990@gmail.com','8879944929s','police station wadala ',400089,'8879944929');
/*!40000 ALTER TABLE `users_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-13 21:24:53

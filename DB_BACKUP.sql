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
INSERT INTO `PRODUCTS` VALUES ('P1','Bata SA 05 Lace Up shoes','FOOTWEAR','FORMAL SHOES','M','L','BATA',NULL,999,NULL,4.2),('P2','Lee Cooper Lace Up  (Black)','FOOTWEAR','FORMAL SHOES','M','S','LEE COOPER',NULL,2429,NULL,3.6),('P3','Louis Philippe Lace up shoes','FOOTWEAR','FORMAL SHOES','M','M','LOUIS PHILIPPE',NULL,3598,NULL,4),('P4','Levi\'s DENIM SLIP ON Men Loafers (Blue)','FOOTWEAR','CASUAL SHOES','M','L','LEVIS',NULL,4093,NULL,2.5),('P5','Reebok CLASSIC TENSTALL Men Canvas Sneakers  (Green, Grey, White)','FOOTWEAR','CASUAL SHOES','M','S','REBOOK',NULL,2143,NULL,4.3),('P6','CARLTON LONDON CLL-3305 WOMEN WOMEN FLATS','FOOTWEAR','FLATS','F','M','CARLTON LONDON',NULL,647,0,4.1),('P7','CARLTON LONDON CASUAL WOMEN FLATS','FOOTWEAR','FLATS','F','L','CARLTON LONDON',NULL,2995,0,4.2),('P8','BATA WOMEN HEELS','FOOTWEAR','HEELS','F','M','BATA',NULL,899,0,4.3),('P9','BATA WOMEN BLACK HEELS','FOOTWEAR','HEELS','F','S','BATA',NULL,809,0,4.6),('P10','PUMA AXIS II WN S DP RUNNING SHOES','FOOTWEAR','SPORTS SHOES','F','M','PUMA',NULL,1948,0,4.8),('P11','CAMPUS WALKING SHOES','FOOTWEAR','SPORTS SHOES','F','L','CAMPUS',NULL,470,0,4.6),('P12','NUMBRAVE CASUAL SOLID WOMEN\'S KURTI','CLOTHING','KURTIS','F','M','NUMBRAVE',NULL,1449,0,4.9),('P16','SayItLoud Solid Men\'s Round Neck Black, Grey T-Shirt','CLOTHING','TSHIRT','M','L','SAYITLOUD',NULL,439,0,3.5),('P17','Peter England Printed Men\'s Polo Neck Dark Blue T-Shirt','CLOTHING','TSHIRT','M','S','PETER ENGLAND',NULL,599,0,4),('P18','Levi\'s Solid Men\'s Round Neck Green T-Shirt','CLOTHING','TSHIRT','M','M','LEVIS',NULL,899,0,3.5),('P19','Peter England Men\'s Solid Formal Grey Shirt','CLOTHING','FORMAL SHIRT','M','L','PETER ENGLAND',NULL,947,0,4.5),('P20','Louis Philippe Men\'s Self Design Formal Blue Shirt','CLOTHING','FORMAL SHIRT','M','S','LOUIS PHILIPPE',NULL,439,0,3.5),('P21','Raymond Men\'s Solid Formal Linen White Shirt','CLOTHING','FORMAL SHIRT','M','L','RAYMOND',NULL,1649,0,4.5),('P22','Pepe Jeans Men\'s Casual Shirt','CLOTHING','CASUAL SHIRT','M','M','PEPE JEANS',NULL,849,0,3.5),('P23','Levi\'s Men\'s Casual Shirt','CLOTHING','CASUAL SHIRT','M','S','LEVIS',NULL,1119,0,4.5),('P24','Rodid Men\'s Solid Casual Denim Blue Shirt','CLOTHING','CASUAL SHIRT','M','S','RODID',NULL,746,0,3.5),('P25','United Colors of Benetton Men\'s Casual Shirt','CLOTHING','CASUAL SHIRT','M','S','UNITED COLORS OF BENETTON',NULL,1439,0,4.5),('P26','HomeTown Bali Bolton Engineered Wood King Bed With Storage  (Finish Color -Wenge)','FURNITURE','BED',NULL,NULL,'HOMETOWN',NULL,15990,0,3.8),('P27','Furnicity Engineered Wood King Bed With Storage  (Finish Color - Walnut)\n\n','FURNITURE','BED',NULL,NULL,'FURNICITY',NULL,26975,0,3),('P28','Urban Living Rio Solid Wood 2 Seater Sofa  (Finish Color - Light Yellow)','FURNITURE','SOFA',NULL,NULL,'URBAN LIVING',NULL,17955,0,3.78),('P29','FabHomeDecor Fabric 4 Seater Sofa  (Finish Color - Blue)','FURNITURE','SOFA',NULL,NULL,'FAB HOME DECOR',NULL,25565,0,3.6),('P31','iMusi XXL Bean Bag With Bean Filling  (Red)','FURNITURE','BEANBAGS',NULL,NULL,'IMUSI',NULL,1599,0,4.22),('P32','Royal Oak Berlin Engineered Wood Entertainment Unit  (Finish Color - Dark)','FURNITURE','TV CABINETS',NULL,NULL,'ROYAL OAK BERLIN',NULL,12000,0,3.66),('P33','HomeTown Greta Engineered Wood Entertainment Unit  (Finish Color - Teak)','FURNITURE','TV CABINETS',NULL,NULL,'HOMETOWN',NULL,17077,0,4.87),('P34','Housefull Metal Dining Set  (Finish Color - BLACK)','FURNITURE','DINIG TABLES',NULL,NULL,'HOUSEFULL',NULL,16546,0,4.98),('P35','Urban Ladder Brighton Square - Oribi Solid Wood Dining Set  (Finish Color - Teak)','FURNITURE','DINIG TABLES',NULL,NULL,'URBAN LADDER',NULL,31999,0,3.69),('P30','HomeTown Venus Engineered Wood Study Table  (Free Standing, Finish Color - Walnut)','FURNITURE','STUDYTABLES',NULL,NULL,'HOMETOWN',NULL,5290,0,4.56),('P36','Moto E3 Power (Black, 16 GB)','MOBILE',NULL,NULL,NULL,'MOTOROLA',NULL,7999,0,4.7),('P37','Lenovo P2 (Gold, 32 GB)','MOBILE',NULL,NULL,NULL,'LENEVO',NULL,17999,0,3.9),('P38','Apple iPhone 6 (Silver, 16 GB)\n\n','MOBILE',NULL,NULL,NULL,'APPLE',NULL,36990,0,4.7),('P39','SAMSUNG Galaxy On5 (Gold, 8 GB)\n\n','MOBILE',NULL,NULL,NULL,'SAMSUNG',NULL,7490,0,2.7),('P40','XOLO Era 2X (2GB) (Black and Gun, 16 GB)\n\n','MOBILE',NULL,NULL,NULL,'XOLO',NULL,6666,0,2.4),('P41','Moto M (Gold, 64 GB)','MOBILE',NULL,NULL,NULL,'MOTO M',NULL,17999,0,3.7),('P42','Micromax Canvas Mega 4G (Blue, 16 GB)','MOBILE',NULL,NULL,NULL,'MICROMAX',NULL,6999,0,1.7),('P43','Apple iPhone 5S (Space Grey, 16 GB)','MOBILE',NULL,NULL,NULL,'APPLE',NULL,19999,0,3.7),('P44','OPPO F1s (Grey, 64 GB)','MOBILE',NULL,NULL,NULL,'OPPO',NULL,18990,0,4.2),('P45','OPPO A37f (Gold, 16 GB)','MOBILE',NULL,NULL,NULL,'OPPO',NULL,10990,0,3.2),('P56','@home by Nilkamal Ursa Metal Queen Bed','FURNITURE','BED',NULL,NULL,'@HOME',NULL,14555,51,4.5),('P57','Royal Oak Scout Solid Wood Bunk Bed','FURNITURE','BED',NULL,NULL,'ROYAL OAK SCOUT',NULL,39231,39,4.42),('P58','Royal Oak Remo Engineered Wood Bunk Bed  (Finish Color - White & Orange)','FURNITURE','BED',NULL,NULL,'ROYAL OAK SCOUT',NULL,69000,35,3.97),('P59','Urban Living Fabric 1 Seater Sofa  (Finish Color - Greenish Blue)','FURNITURE','SOFA',NULL,NULL,'URBAN LIVING',NULL,9060,0,3.99),('P60','Durian FERRIS/3 Leather 3 Seater Sofa  (Finish Color - Fire Brick)','FURNITURE','SOFA',NULL,NULL,'DURIAN FERRIS',NULL,103399,0,3.25),('P61','Godrej Interio PARTO PLUS 3ST IN S1N LTH BLA Solid Wood 3 Seater Sofa  (Finish Color - Black)','FURNITURE','SOFA',NULL,NULL,'GODREJ',NULL,26190,2,3.8),('P63','Housefull Engineered Wood Study Table  (Free Standing, Finish Color - Black)','FURNITURE','STUDYTABLES',NULL,NULL,'HOUSEFULL',NULL,14250,59,3.55),('P62','Table Mate Beige Platinum Tablemate With Double Foot Rest(Finish Color - Beige)','FURNITURE','STUDYTABLES',NULL,NULL,'TABLE MATE',NULL,3499,57,4.76),('P64','HomeTown Simply Engineered Wood Study Table  (Free Standing, Finish Color - Walnut)','FURNITURE','STUDYTABLES',NULL,NULL,'HOMETOWN',NULL,3045,0,3.9),('P65','HomeTown Rhombus Engineered Wood Study Table  (Free Standing, Finish Color - Walnut)','FURNITURE','STUDYTABLES',NULL,NULL,'HOMETOWN',NULL,4990,0,3.55),('P66','Star XXL Bean Bag With Bean Filling  (Black)','FURNITURE','BEANBAGS',NULL,NULL,'STAR',NULL,1949,0,5),('P46','U.S. Polo Assn. sneakers  (Navy)','FOOTWEAR','CASUAL SHOES','M','L','US POLO',NULL,1439,0,3.5),('P47','United Colors of Benetton 16A8CORE1001I Canvas Sneakers','FOOTWEAR','CASUAL SHOES','M','M','UNITED COLORS OF BENETTON',NULL,1498,0,4),('P48','Sparx Sneakers  (Black)','FOOTWEAR','CASUAL SHOES','M','L','SPARX SNEAKERS',NULL,879,0,2.8),('P49','Lee Cooper Men Sneakers  (Black, Blue)','FOOTWEAR','CASUAL SHOES','M','L','LEE COOPER',NULL,1373,0,4.3),('P50','Puma Carme Mid IDP Mid Ankle Sneakers  (Blue, Grey)','FOOTWEAR','CASUAL SHOES','M','M','PUMA',NULL,2249,0,3.4),('P51','Bata','FOOTWEAR','FORMAL SHOES','M','L','BATA',NULL,999,0,3.8),('P52','Louis Philippe Lace Up shoes','FOOTWEAR','CASUAL SHOES','M','L','LOUIS PHILIPPE',NULL,2999,0,4.5),('P53','Bata Officewear','FOOTWEAR','FORMAL SHOES','M','L','BATA',NULL,1699,0,3.5),('P54','Candle Genuine Leather Slip On  (Black)','FOOTWEAR','FORMAL SHOES','M','M','CANDLE GENUINE',NULL,1294,0,3.9),('P55','Hush Puppies NEW FRED MONK Monk strap shoes','FOOTWEAR','FORMAL SHOES','M','L','HUSH PUPPIES',NULL,3599,0,4.3);
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
INSERT INTO `USERS` VALUES ('Akhil','akhilkpdasan@gmail.com','123','sakinaka',400072,'9000'),('ashish','ashishawale@gmail.com','123','wadala',1111,'100'),('shraddha','shraddhapatil2502@gmail.com','shraddha','abc',410210,'767647'),('shubham','shubham@gmail.com','123','wadala',400015,'1000'),('siddharth','siddharthkirti990@gmail.com','123','tilak nagar',4000,'10000');
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

-- Dump completed on 2017-01-20 14:47:33

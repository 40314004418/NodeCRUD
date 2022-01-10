-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 172.16.1.19    Database: escrowdb
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `Utilities`
--

DROP TABLE IF EXISTS `Utilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Utilities` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Quantity` int(11) DEFAULT '0',
  `Status` int(11) NOT NULL DEFAULT '1',
  `createdBy` varchar(255) NOT NULL DEFAULT '1',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` varchar(255) NOT NULL DEFAULT '1',
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Utilities`
--

LOCK TABLES `Utilities` WRITE;
/*!40000 ALTER TABLE `Utilities` DISABLE KEYS */;
INSERT INTO `Utilities` VALUES (15,'Bed(s)',0,1,'1','2021-01-19 13:02:07','1','2021-01-19 13:02:07'),(17,'Sofa(s)',0,1,'1','2021-01-19 13:02:07','1','2021-01-19 13:02:07'),(18,'Cupboard(s)',0,1,'1','2021-01-19 13:02:07','1','2021-01-19 13:02:07'),(19,'AC(s)',0,1,'1','2021-01-19 13:02:07','1','2021-01-19 13:02:07'),(20,'Electric Geyser(s)',0,1,'1','2021-01-19 13:02:07','1','2021-01-19 13:02:07'),(21,'Refrigerator(s)',0,1,'1','2021-01-19 13:02:07','1','2021-01-19 13:02:07'),(22,'TV(s)',0,1,'1','2021-01-19 13:02:07','1','2021-01-19 13:02:07'),(23,'Washing Machine(s)',0,1,'1','2021-01-19 13:02:07','1','2021-01-19 13:02:07'),(24,'Gas Geyser(s)',0,1,'1','2021-01-19 13:02:07','1','2021-01-19 13:02:07'),(25,'Aircooler(s)',0,1,'1','2021-01-19 13:02:07','1','2021-01-19 13:02:07'),(26,'Watercooler(s)',0,1,'1','2021-01-19 13:02:07','1','2021-01-19 13:02:07'),(27,'Chair(s)',0,1,'1','2021-01-19 13:02:07','1','2021-01-19 13:02:07'),(28,'Table(s)',0,1,'1','2021-01-19 13:02:07','1','2021-01-19 13:02:07'),(29,'Curtain(s)',0,1,'1','2021-01-19 13:02:07','1','2021-01-19 13:02:07'),(32,'Bulb(s)',0,1,'1','2021-01-19 13:02:07','1','2021-01-19 13:02:07'),(33,'Tube Light(s)',0,1,'1','2021-01-19 13:02:07','1','2021-01-19 13:02:07'),(34,'Fan(s)',0,1,'1','2021-04-06 05:08:07','1','2021-04-06 05:08:07');
/*!40000 ALTER TABLE `Utilities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-10 22:21:28

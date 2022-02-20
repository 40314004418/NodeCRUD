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
-- Table structure for table `EsignConfigs`
--

DROP TABLE IF EXISTS `EsignConfigs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EsignConfigs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `esign` enum('DIGIO','LEGALITY') NOT NULL,
  `isPrdEnv` int(11) NOT NULL DEFAULT '0',
  `clientId` varchar(255) DEFAULT NULL,
  `clientSecret` varchar(255) DEFAULT NULL,
  `apiBaseURL` varchar(255) DEFAULT NULL,
  `expiryDays` int(11) DEFAULT NULL,
  `signType` enum('aadhaar','dsc','electronic') NOT NULL DEFAULT 'electronic',
  `status` int(11) NOT NULL DEFAULT '1',
  `createdBy` int(11) NOT NULL DEFAULT '1',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EsignConfigs`
--

LOCK TABLES `EsignConfigs` WRITE;
/*!40000 ALTER TABLE `EsignConfigs` DISABLE KEYS */;
INSERT INTO `EsignConfigs` VALUES (1,'DIGIO',0,'AI33DX3DRQGOE3RFR2VSMGE7OLLOOX92','Z8UKDV55WDCWIDA531VRVMMCERDDFZ9J','https://ext.digio.in:444',30,'aadhaar',1,1,'2021-01-22 10:03:35','2021-01-22 15:29:24'),(2,'LEGALITY',0,'DE9slkn','qlr5uuqYfxY3HxiYevy96OWRw9bsl9eN','https://sandbox.leegality.com',30,'electronic',1,1,'2021-02-09 07:50:08','2021-02-09 13:20:08');
/*!40000 ALTER TABLE `EsignConfigs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-10 22:21:23
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
-- Table structure for table `Biometrics`
--

DROP TABLE IF EXISTS `Biometrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Biometrics` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `TransactionId` int(11) NOT NULL,
  `BiometricStatus` tinyint(1) NOT NULL DEFAULT '0',
  `PartyType` varchar(255) NOT NULL,
  `PartyName` varchar(255) NOT NULL,
  `CountryCode` varchar(255) NOT NULL,
  `Number` varchar(255) NOT NULL,
  `Email` text NOT NULL,
  `AddressLine1` text,
  `AddressLine2` text,
  `City` varchar(255) NOT NULL,
  `Pincode` int(11) NOT NULL,
  `PreferredDate` text NOT NULL,
  `PreferredTime` varchar(255) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '1',
  `createdBy` int(11) NOT NULL DEFAULT '1',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` int(11) NOT NULL DEFAULT '1',
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  KEY `TransactionId` (`TransactionId`),
  KEY `createdBy` (`createdBy`),
  CONSTRAINT `Biometrics_ibfk_1` FOREIGN KEY (`TransactionId`) REFERENCES `AgreementsInfos` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Biometrics_ibfk_2` FOREIGN KEY (`createdBy`) REFERENCES `Users` (`Id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Biometrics`
--

LOCK TABLES `Biometrics` WRITE;
/*!40000 ALTER TABLE `Biometrics` DISABLE KEYS */;
INSERT INTO `Biometrics` VALUES (1,201,0,'Landlord','qwfq','+91','4545454545','vivekrgbh@gmail.com','chini mill colony ghosi mau room no-E-3','Vill-Jahidipur Post-Kazipur Dist-Ballia','Mau',454545,'2021-03-17T05:12:00.000Z','11:00:00',1,1,'2021-03-09 05:24:40',1,'2021-03-09 05:24:40');
/*!40000 ALTER TABLE `Biometrics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-10 22:20:40

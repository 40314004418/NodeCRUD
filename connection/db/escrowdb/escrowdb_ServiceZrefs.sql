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
-- Table structure for table `ServiceZrefs`
--

DROP TABLE IF EXISTS `ServiceZrefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ServiceZrefs` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RefId` int(11) NOT NULL,
  `RefName` varchar(255) NOT NULL,
  `RefParentId` varchar(255) DEFAULT NULL,
  `RefType` varchar(255) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '1',
  `createdBy` varchar(255) NOT NULL DEFAULT '1',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` varchar(255) NOT NULL DEFAULT '1',
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ServiceZrefs`
--

LOCK TABLES `ServiceZrefs` WRITE;
/*!40000 ALTER TABLE `ServiceZrefs` DISABLE KEYS */;
INSERT INTO `ServiceZrefs` VALUES (1,1,'Agreement','','Service',1,'1','2021-01-05 04:57:31','1','2021-01-05 04:57:31'),(2,2,'Escrow','','Service',1,'1','2021-01-05 04:58:31','1','2021-01-05 04:58:31'),(3,1,'Rent','','Type',1,'1','2021-01-05 04:59:50','1','2021-01-05 04:59:50'),(4,2,'Sale','','Type',1,'1','2021-01-05 05:00:11','1','2021-01-05 05:00:11'),(6,1,'Landlord','','Roles',1,'1','2021-01-05 05:18:45','1','2021-01-05 05:18:45'),(7,2,'Tenant','','Roles',1,'1','2021-01-05 05:18:52','1','2021-01-05 05:18:52'),(8,3,'Broker','','Roles',1,'1','2021-01-05 05:19:04','1','2021-01-05 05:19:04'),(9,1,'Owner','1','PartyType',1,'1','2021-01-06 12:28:19','1','2021-01-06 12:28:19'),(10,2,'Witness','1','PartyType',1,'1','2021-01-06 12:28:46','1','2021-01-06 12:28:46'),(11,3,'POA','1','PartyType',1,'1','2021-01-06 12:29:56','1','2021-01-06 12:29:56'),(12,4,'Witness','2','PartyType',1,'1','2021-01-06 12:30:19','1','2021-01-06 12:30:19'),(13,1,'Cheque','','PaymentMode',1,'1','2021-01-11 12:41:52','1','2021-01-11 12:41:52'),(14,2,'Demand Draft','','PaymentMode',1,'1','2021-01-11 12:42:25','1','2021-01-11 12:42:25'),(15,3,'Internet Banking','','PaymentMode',1,'1','2021-01-11 12:42:41','1','2021-01-11 12:42:41'),(16,4,'Cash','','PaymentMode',1,'1','2021-01-11 12:42:52','1','2021-01-11 12:42:52'),(17,1,'Flat','','PropertyType',1,'1','2021-01-13 06:23:16','1','2021-01-13 06:23:16'),(18,2,'Independent House','','PropertyType',1,'1','2021-01-13 06:23:44','1','2021-01-13 06:23:44'),(19,1,'BHK 1','','BHKType',1,'1','2021-01-13 06:31:05','1','2021-01-13 06:31:05'),(20,2,'BHK 2','','BHKType',1,'1','2021-01-13 06:31:13','1','2021-01-13 06:31:13'),(21,3,'BHK 3','','BHKType',1,'1','2021-01-13 06:31:19','1','2021-01-13 06:31:19'),(22,1,'House Number','','PropertyNumType',1,'1','2021-01-13 06:35:53','1','2021-01-13 06:35:53'),(23,2,'Survery Number','','PropertyNumType',1,'1','2021-01-13 06:36:16','1','2021-01-13 06:36:16'),(24,3,'Plot Number','','PropertyNumType',1,'1','2021-01-13 06:36:40','1','2021-01-13 06:36:40'),(25,4,'Final Plot Number','','PropertyNumType',1,'1','2021-01-13 06:37:10','1','2021-01-13 06:37:10'),(26,5,'CTS Number','','PropertyNumType',1,'1','2021-01-13 06:37:26','1','2021-01-13 06:37:26'),(27,5,'Tenant','2','PartyType',1,'1','2021-01-20 07:52:45','1','2021-01-20 07:52:45'),(28,1,'Broker','3','PartyType',1,'1','2021-01-27 07:30:13','1','2021-01-27 07:30:13'),(29,5,'RTGS','','PaymentMode',1,'1','2021-02-15 05:02:12','1','2021-02-15 05:02:12'),(30,6,'NEFT','','PaymentMode',1,'1','2021-02-15 05:02:20','1','2021-02-15 05:02:20'),(31,7,'UPI','','PaymentMode',1,'1','2021-02-17 09:17:46','1','2021-02-17 09:17:46'),(32,5,'Tenant','2','PartyType',1,'1','2021-02-18 07:10:32','1','2021-02-18 07:10:32'),(33,0,'Deleted','','AgreementInfoType',1,'1','2021-02-26 06:54:53','1','2021-02-26 06:54:53'),(35,1,'Draft','','AgreementInfoStatus',1,'1','2021-02-26 07:24:52','1','2021-02-26 07:24:52'),(36,2,'Submitted','','AgreementInfoStatus',1,'1','2021-02-26 07:25:02','1','2021-02-26 07:25:02'),(37,3,'Paid','','AgreementInfoStatus',1,'1','2021-02-26 07:25:25','1','2021-02-26 07:25:25'),(38,4,'EsignRequested/BioMetricScheduled','','AgreementInfoStatus',1,'1','2021-02-26 08:09:00','1','2021-02-26 08:09:00'),(39,5,'Agreement Generated','','AgreementInfoStatus',1,'1','2021-02-26 08:09:17','1','2021-02-26 08:09:17');
/*!40000 ALTER TABLE `ServiceZrefs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-10 22:17:26

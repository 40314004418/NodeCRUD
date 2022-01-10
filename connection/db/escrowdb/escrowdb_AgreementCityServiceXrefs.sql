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
-- Table structure for table `AgreementCityServiceXrefs`
--

DROP TABLE IF EXISTS `AgreementCityServiceXrefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AgreementCityServiceXrefs` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AgreementId` int(11) NOT NULL,
  `CityId` int(11) NOT NULL,
  `ServiceId` int(11) NOT NULL,
  `ServiceTypeId` int(11) NOT NULL,
  `Isrequired_stamp` tinyint(1) NOT NULL DEFAULT '0',
  `Amount` int(11) DEFAULT NULL,
  `DiscountAmount` int(11) DEFAULT NULL,
  `Description` text,
  `Status` int(11) NOT NULL DEFAULT '1',
  `createdBy` varchar(255) NOT NULL DEFAULT '1',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` varchar(255) NOT NULL DEFAULT '1',
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AgreementCityServiceXrefs`
--

LOCK TABLES `AgreementCityServiceXrefs` WRITE;
/*!40000 ALTER TABLE `AgreementCityServiceXrefs` DISABLE KEYS */;
INSERT INTO `AgreementCityServiceXrefs` VALUES (1,1,737,1,1,1,400,50,'<li>Affordable rent agreement starting from Rs 300 </li> <li>\r\nDigital Stamping and e-signing of agreement </li> <li>\r\nAgreement delivered to the mailbox</li>',1,'1','2021-01-05 05:07:32','1','2021-01-05 05:07:32'),(2,1,3426,1,1,1,400,50,'<li>Affordable rent agreement starting from Rs 300 </li> <li>\n Digital Stamping and e-signing of agreement </li> <li>\n Agreement delivered to the mailbox</li>',1,'1','2021-01-05 05:13:25','1','2021-01-05 05:13:25'),(3,1,3486,1,1,0,799,100,'<li>Prices starting from Rs 799 + Stamp duty + Registration charges </li> <li> Biometric appointment at your preferred location </li> <li>\r\nAgreement delivered to the mailbox</li>',1,'1','2021-01-05 05:14:15','1','2021-01-05 05:14:15'),(4,2,3486,1,1,0,999,100,'<li>Prices starting from Rs 999+ Stamp duty + Registration charges </li>  <li> Biometric appointment at your preferred location </li> <li>\r\nAgreement delivered to the mailbox</li>',1,'1','2021-05-13 07:42:53','1','2021-05-13 07:42:53'),(10,1,3441,1,1,1,400,50,'<li>Affordable rent agreement starting from Rs 300 </li> <li>\n Digital Stamping and e-signing of agreement </li> <li>\n Agreement delivered to the mailbox</li>',1,'1','2021-02-18 07:04:41','1','2021-02-18 07:04:41'),(11,1,3643,1,1,1,400,50,'<li>Affordable rent agreement starting from Rs 300 </li> <li>\n Digital Stamping and e-signing of agreement </li> <li>\n Agreement delivered to the mailbox</li>',1,'1','2021-02-18 07:05:30','1','2021-02-18 07:05:30'),(12,1,3335,1,1,1,400,50,'<li>Affordable rent agreement starting from Rs 300 </li> <li>\n Digital Stamping and e-signing of agreement </li> <li>\n Agreement delivered to the mailbox</li>',1,'1','2021-02-18 07:51:20','1','2021-02-18 07:51:20'),(13,1,3488,1,1,0,799,100,'<li>Prices starting from Rs 799 + Stamp duty + Registration charges </li> <li>Biometric appointment at your preferred location </li><li>Agreement delivered to the mailbox</li>',1,'1','2021-04-20 08:44:02','1','2021-04-20 08:44:02'),(14,2,3488,1,1,0,899,100,'<li>Prices starting from Rs 899 + Stamp duty + Registration charges </li> <li>Biometric appointment at your preferred location </li><li> Agreement delivered to the mailbox</li>',1,'1','2021-04-20 08:44:02','1','2021-04-20 08:44:02'),(15,1,3425,1,1,1,400,50,'<li>Affordable rent agreement starting from Rs 300 </li> <li>\r\n Digital Stamping and e-signing of agreement </li> <li>\r\n Agreement delivered to the mailbox</li>',1,'1','2021-06-07 09:00:14','1','2021-06-07 09:00:14'),(16,1,3421,1,1,1,400,50,'<li>Affordable rent agreement starting from Rs 300 </li> <li>\r\n Digital Stamping and e-signing of agreement </li> <li>\r\n Agreement delivered to the mailbox</li>',1,'1','2021-06-07 09:00:58','1','2021-06-07 09:00:58'),(17,1,3420,1,1,1,400,50,'<li>Affordable rent agreement starting from Rs 300 </li> <li>\r\n Digital Stamping and e-signing of agreement </li> <li>\r\n Agreement delivered to the mailbox</li>',1,'1','2021-06-07 09:01:27','1','2021-06-07 09:01:27'),(18,1,9149,1,1,1,400,50,'<li>Affordable rent agreement starting from Rs 300 </li> <li>\r\n Digital Stamping and e-signing of agreement </li> <li>\r\n Agreement delivered to the mailbox</li>',1,'1','2021-06-07 09:02:25','1','2021-06-07 09:02:25'),(19,1,3423,1,1,1,400,50,'<li>Affordable rent agreement starting from Rs 300 </li> <li>\r\n Digital Stamping and e-signing of agreement </li> <li>\r\n Agreement delivered to the mailbox</li>',1,'1','2021-06-07 09:02:46','1','2021-06-07 09:02:46'),(20,1,3428,1,1,1,400,50,'<li>Affordable rent agreement starting from Rs 300 </li> <li>\r\n Digital Stamping and e-signing of agreement </li> <li>\r\n Agreement delivered to the mailbox</li>',1,'1','2021-06-07 09:03:14','1','2021-06-07 09:03:14'),(21,1,3422,1,1,1,400,50,'<li>Affordable rent agreement starting from Rs 300 </li> <li>\r\n Digital Stamping and e-signing of agreement </li> <li>\r\n Agreement delivered to the mailbox</li>',1,'1','2021-06-07 09:03:30','1','2021-06-07 09:03:30'),(22,1,3631,1,1,1,400,50,'<li>Affordable rent agreement starting from Rs 300 </li> <li>\r\n Digital Stamping and e-signing of agreement </li> <li>\r\n Agreement delivered to the mailbox</li>',1,'1','2021-06-07 09:04:08','1','2021-06-07 09:04:08'),(23,1,3627,1,1,1,400,50,'<li>Affordable rent agreement starting from Rs 400 </li> <li>\r\n Digital Stamping and e-signing of agreement </li> <li>\r\n Agreement delivered to the mailbox</li>',1,'1','2021-06-07 09:04:31','1','2021-06-07 09:04:31'),(24,1,3623,1,1,1,400,50,'<li>Affordable rent agreement starting from Rs 300 </li> <li>\r\n Digital Stamping and e-signing of agreement </li> <li>\r\n Agreement delivered to the mailbox</li>',1,'1','2021-06-07 09:04:56','1','2021-06-07 09:04:56'),(25,1,3419,1,1,1,400,50,'<li>Affordable rent agreement starting from Rs 300 </li> <li>\r\n Digital Stamping and e-signing of agreement </li> <li>\r\n Agreement delivered to the mailbox</li>',1,'1','2021-06-07 09:05:19','1','2021-06-07 09:05:19'),(26,1,9161,1,1,1,400,50,'<li>Affordable rent agreement starting from Rs 300 </li> <li>\r\n Digital Stamping and e-signing of agreement </li> <li>\r\n Agreement delivered to the mailbox</li>',1,'1','2021-06-07 09:06:07','1','2021-06-07 09:06:07'),(27,1,9165,1,1,1,400,50,'<li>Affordable rent agreement starting from Rs 300 </li> <li> Digital Stamping and e-signing of agreement </li> <li>Agreement delivered to the mailbox</li>',1,'1','2021-08-11 06:23:27','1','2021-08-11 06:23:27'),(28,1,735,1,1,1,400,50,'<li>Affordable rent agreement starting from Rs 300 </li> <li> Digital Stamping and e-signing of agreement </li> <li>Agreement delivered to the mailbox</li>',1,'1','2021-09-09 05:51:50','1','2021-09-09 05:51:50'),(29,1,27715,1,1,0,799,100,'<li>Prices starting from Rs 799 + Stamp duty + Registration charges </li> <li> Biometric appointment at your preferred location </li> <li>\r\nAgreement delivered to the mailbox</li>',1,'1','2021-12-06 06:10:21','1','2021-12-06 06:10:21'),(30,2,27715,1,1,0,999,100,'<li>Prices starting from Rs 999 + Stamp duty + Registration charges </li> <li> Biometric appointment at your preferred location </li> <li>\r\nAgreement delivered to the mailbox</li>',1,'1','2021-12-06 06:10:21','1','2021-12-06 06:10:21');
/*!40000 ALTER TABLE `AgreementCityServiceXrefs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-10 22:17:47

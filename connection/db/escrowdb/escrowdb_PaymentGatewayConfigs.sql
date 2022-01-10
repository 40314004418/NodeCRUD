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
-- Table structure for table `PaymentGatewayConfigs`
--

DROP TABLE IF EXISTS `PaymentGatewayConfigs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PaymentGatewayConfigs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paymentGateway` enum('RAZORPAY') NOT NULL,
  `isPrdEnv` int(11) NOT NULL DEFAULT '0',
  `merchantId` varchar(255) DEFAULT NULL,
  `clientId` varchar(255) DEFAULT NULL,
  `clientKey` varchar(255) DEFAULT NULL,
  `clientSecret` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `authHeaders` varchar(255) DEFAULT NULL,
  `apiOauthURL` varchar(255) DEFAULT NULL,
  `apiBaseURL` varchar(255) DEFAULT NULL,
  `callbackSuccess` varchar(255) DEFAULT NULL,
  `callbackFailure` varchar(255) DEFAULT NULL,
  `callbackMethod` enum('GET','POST') DEFAULT NULL,
  `testingAmount` decimal(10,2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `createdBy` int(11) NOT NULL DEFAULT '1',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PaymentGatewayConfigs`
--

LOCK TABLES `PaymentGatewayConfigs` WRITE;
/*!40000 ALTER TABLE `PaymentGatewayConfigs` DISABLE KEYS */;
INSERT INTO `PaymentGatewayConfigs` VALUES (1,'RAZORPAY',0,NULL,NULL,'rzp_test_OwIieKNq4WY0EX','GVMEIMTGvwekC1KXQi0fpRmL','deepak.kushwaha@squareyards.in','Gl0b@lH13st','Basic cnpwX3Rlc3RfT3dJaWVLTnE0V1kwRVg6R1ZNRUlNVEd2d2VrQzFLWFFpMGZwUm1M',NULL,'https://api.razorpay.com','https://uat-escrow.squareyards.com/backend/payment/razorpay-callback',NULL,'GET',NULL,1,1,'2021-01-16 14:45:35','2021-01-16 20:11:21');
/*!40000 ALTER TABLE `PaymentGatewayConfigs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-10 22:21:41

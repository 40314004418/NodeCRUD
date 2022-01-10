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
-- Table structure for table `supporting_addresses`
--

DROP TABLE IF EXISTS `supporting_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supporting_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `pinCode` varchar(255) NOT NULL,
  `localityId` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `createdBy` int(11) NOT NULL DEFAULT '1',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supporting_addresses`
--

LOCK TABLES `supporting_addresses` WRITE;
/*!40000 ALTER TABLE `supporting_addresses` DISABLE KEYS */;
INSERT INTO `supporting_addresses` VALUES (1,'Unit No. A/401, A/402, A/403 B/406, 4th Floor, Wing A & B, Rustomjee Central Park, Chakala, Andheri (E)',' 400069','1',1,1,'2021-06-14 06:25:51'),(2,'503, Squareyards Diamoda, Tanvi Complex, Next to HP Petrol Pump, Dahisar East','400068','2',1,1,'2021-06-14 06:26:25'),(3,' Unit No - 704/705, 7th floor, E Wing, Atul Projects - Corporate Avenue, Chakala, Andheri (East)','400093','1',1,1,'2021-06-14 06:27:31'),(4,'Rosa classique, Kasarvadavali, Thane West,','400615','3',1,1,'2021-06-14 06:29:53'),(5,' 601/602 6th floor, pride house, shivaji nagar, opp pune University main gate','411016','4',1,1,'2021-06-14 06:32:46'),(6,'Unit No. A/401, A/402, A/403 B/406, 4th Floor, Wing A & B, Rustomjee Central Park, Chakala, Andheri (E)',' 400069','14',1,1,'2021-06-14 06:32:46'),(7,'503, Squareyards Diamoda, Tanvi Complex, Next to HP Petrol Pump, Dahisar East','400068','15',1,1,'2021-12-06 07:08:46'),(8,'Rosa classique, Kasarvadavali, Thane West,','400615','16',1,1,'2021-12-06 07:09:18');
/*!40000 ALTER TABLE `supporting_addresses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-10 22:18:02

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
-- Table structure for table `esignCityStamps`
--

DROP TABLE IF EXISTS `esignCityStamps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `esignCityStamps` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `stampGroup` varchar(255) DEFAULT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esignCityStamps`
--

LOCK TABLES `esignCityStamps` WRITE;
/*!40000 ALTER TABLE `esignCityStamps` DISABLE KEYS */;
INSERT INTO `esignCityStamps` VALUES (1,'Noida','UP01','2021-07-06 12:37:46'),(2,'Hyderabad','TL01','2021-07-06 12:38:15'),(3,'Bangalore','KR01','2021-07-06 12:38:39'),(4,'Gurgaon','HR01','2021-07-06 12:39:07'),(5,'Delhi','DL01','2021-07-06 12:39:52'),(6,'Sonipat','HR01','2021-07-06 12:40:20'),(7,'Panipat','HR01','2021-07-06 12:40:49'),(8,'Rohtak','HR01','2021-07-06 12:41:12'),(9,'Bahadurgarh','HR01','2021-07-06 12:41:36'),(10,'Hisar','HR01','2021-07-06 12:41:57'),(11,'Ambala','HR01','2021-07-06 12:42:42'),(12,'Karnal','HR01','2021-07-06 12:43:09'),(13,'Faridabad','HR01','2021-07-06 12:43:31'),(14,'Kurukshetra','HR01','2021-07-06 12:43:57'),(15,'Ghaziabad','UP01','2021-07-06 12:44:21'),(16,'Meerut','UP01','2021-07-06 12:44:49'),(17,'Lucknow','UP01','2021-07-06 12:45:18'),(18,'Panchkula','HR01','2021-08-11 06:19:20'),(19,'Chandigarh','CH01','2021-09-09 05:52:56');
/*!40000 ALTER TABLE `esignCityStamps` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-10 22:20:03

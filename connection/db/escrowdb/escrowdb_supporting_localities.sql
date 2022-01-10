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
-- Table structure for table `supporting_localities`
--

DROP TABLE IF EXISTS `supporting_localities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supporting_localities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `cityId` int(11) NOT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `createdBy` int(11) NOT NULL DEFAULT '1',
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supporting_localities`
--

LOCK TABLES `supporting_localities` WRITE;
/*!40000 ALTER TABLE `supporting_localities` DISABLE KEYS */;
INSERT INTO `supporting_localities` VALUES (1,'Andheri East',3486,'vendorLocation',1,1,'2021-06-14 06:12:54'),(2,'Dahisar East',3486,'vendorLocation',1,1,'2021-06-14 06:13:45'),(3,'Thane West',3486,'vendorLocation',1,1,'2021-06-14 06:14:42'),(4,'shivaji nagar',3488,'vendorLocation',1,1,'2021-06-14 06:22:35'),(5,'Mumbai',3486,'doorstepBiometric',1,1,'2021-06-19 10:59:39'),(6,'Navi Mumbai',3486,'doorstepBiometric',1,1,'2021-06-19 10:59:58'),(7,'Thane',3486,'doorstepBiometric',1,1,'2021-06-19 11:01:56'),(8,'Pune',3486,'doorstepBiometric',1,1,'2021-06-19 11:02:49'),(9,'Pune',3488,'doorstepBiometric',1,1,'2021-06-19 11:03:08'),(10,'Pimpri Chinchwad',3488,'doorstepBiometric',1,1,'2021-06-19 11:03:34'),(11,'Navi Mumbai',3488,'doorstepBiometric',1,1,'2021-08-02 07:14:14'),(12,'Thane',3488,'doorstepBiometric',1,1,'2021-08-02 07:14:40'),(13,'Mumbai',3488,'doorstepBiometric',1,1,'2021-08-02 07:15:17'),(14,'Andheri East',27715,'vendorLocation',1,1,'2021-12-06 06:23:58'),(15,'Dahisar East',27715,'vendorLocation',1,1,'2021-12-06 06:23:58'),(16,'Thane West',27715,'vendorLocation',1,1,'2021-12-06 06:23:58'),(17,'Mumbai',27715,'doorstepBiometric',1,1,'2021-12-06 06:23:58'),(18,'Navi Mumbai',27715,'doorstepBiometric',1,1,'2021-12-06 06:23:58'),(19,'Thane',27715,'doorstepBiometric',1,1,'2021-12-06 06:23:58'),(20,'Pune',27715,'doorstepBiometric',1,1,'2021-12-06 06:23:58');
/*!40000 ALTER TABLE `supporting_localities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-10 22:20:26

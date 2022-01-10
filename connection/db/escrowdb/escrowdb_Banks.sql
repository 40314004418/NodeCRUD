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
-- Table structure for table `Banks`
--

DROP TABLE IF EXISTS `Banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Banks` (
  `BankId` int(11) NOT NULL DEFAULT '0',
  `BankName` varchar(250) DEFAULT NULL,
  `Type` enum('Bank','NBFC') DEFAULT NULL,
  `IsActive` int(11) DEFAULT '1',
  `BankLogo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Banks`
--

LOCK TABLES `Banks` WRITE;
/*!40000 ALTER TABLE `Banks` DISABLE KEYS */;
INSERT INTO `Banks` VALUES (1,'AXIS BANK','Bank',1,'axis-bank.jpg'),(2,'ICICI BANK','Bank',1,'icici-bank.jpg'),(3,'HDFC BANK','Bank',1,'hdfc-bank.jpg'),(4,'STANDARD CHARTERED BANK','Bank',1,'standard-chartered-bank.jpg'),(5,'CITI BANK','Bank',1,'citi-bank.jpg'),(6,'DBS','Bank',1,'dbs.jpg'),(7,'DCB','Bank',1,'dcb.jpg'),(8,'RBL','Bank',1,'rbl.jpg'),(9,'DEUTSCHE BANK','Bank',1,'deutsche-bank.jpg'),(10,'KOTAK BANK','Bank',1,'kotak-bank.jpg'),(11,'L&T','NBFC',1,'larsen-toubro.jpg'),(12,'DHFL','NBFC',1,'dhfl.jpg'),(13,'RELIANCE','NBFC',1,'reliance.jpg'),(14,'IIFL','NBFC',1,'iifl.jpg'),(15,'INDIABULLS','NBFC',1,'indiabulls.jpg'),(16,'EDELWEISS','NBFC',1,'edelweiss.jpg'),(17,'CAPITAL FIRST','NBFC',1,'capital-first.jpg'),(18,'TATA CAPITAL HOUSING FINANCE LIMITED','NBFC',1,'tata-capital-housing-finance-limited.jpg'),(19,'RELIGARE','NBFC',1,'religare.jpg'),(21,'HDB','NBFC',1,'hdb.jpg'),(22,'HDFC LTD','NBFC',1,'hdfc-ltd.jpg'),(23,'CAPRI GLOBAL','NBFC',1,'capri-global.jpg'),(24,'ESSEL FINANCE','NBFC',1,'essel-finance.jpg'),(25,'BAJAJ','NBFC',1,'bajaj.jpg'),(26,'NEO GROWTH','NBFC',1,'neo-growth.jpg'),(27,'SHRIRAM','NBFC',1,'shriram.jpg'),(28,'PNB HOUSING','NBFC',1,'pnb-housing.jpg'),(29,'KOTAK PRIME','NBFC',1,'kotak-prime.jpg'),(30,'ORIX','NBFC',1,'orix.jpg'),(31,'FULLERTON','NBFC',1,'fullerton.jpg'),(32,'MAGMA','NBFC',1,'magma.jpg'),(33,'HERO FINCORP','NBFC',1,'hero-fincorp.jpg'),(34,'CAPITAL FLOAT','NBFC',1,'capital-float.jpg'),(35,'KARVY','NBFC',1,'karvy.jpg'),(37,'INDUSIND BANK','Bank',1,'indusind-bank.jpg'),(39,'AU HOUSING FINANCE','NBFC',1,'au-housing-finance.jpg'),(43,'TATA CAPITAL FINANCIAL SERVICES LTD','NBFC',1,'tata-capital-financial-services-ltd.jpg'),(45,'HSBC','Bank',1,'hsbc.jpg'),(47,'CHOLA MANDALAM BANK','Bank',1,'chola-mandalam-bank.jpg'),(49,'INDOSTAR','NBFC',1,'indostar.jpg'),(51,'NOOR BANK','Bank',1,'noor-bank.jpg'),(55,'YES','Bank',1,'yes.jpg'),(57,'SBI CAPS','Bank',1,'sbi-caps.jpg'),(59,'BANK OF BARODA','Bank',1,'bank-of-baroda.jpg'),(61,'UPF(UNITED PETRO FINANCE LIMITED) ','NBFC',1,'upf-united-petro-finance-limited.jpg'),(63,'SOUTH INDIAN BANK','Bank',1,'south-indian-bank.jpg'),(65,'EMIRATES NBD','Bank',1,'emirates-nbd.jpg'),(67,'UNION BANK OF INDIA','Bank',1,'union-bank-of-india.jpg'),(69,'COMMONWEALTH BANK','Bank',1,'commonwealth-bank.jpg'),(71,'FAIRCENT','Bank',1,'faircent.jpg'),(73,'FULLERTON','Bank',1,'fullerton.jpg'),(77,'BANK OF MASHREQ','Bank',1,'bank-of-mashreq.jpg'),(79,'Fedbank Financial Services Ltd','NBFC',1,'federal-financial-service.jpg'),(81,'ASPIRE HOME FINANCE','NBFC',1,'aspire-home-finance.jpg'),(83,'Charge To Customer','NBFC',1,NULL),(85,'EQUITAS FINANCE','NBFC',1,'equitas-finance.jpg'),(89,'INDIAN OVERSEAS BANK','Bank',1,'indian-overseas-bank.jpg'),(91,'CAPRI FINANCE','NBFC',1,'capri-finance.jpg'),(97,'JAN LAXMI ','Bank',1,'jan-laxmi.jpg'),(99,'HINDUJA LEYLAND FINANCE','Bank',1,'hinduja-leyland-finance.jpg'),(105,'INTELLECASH MICROFINANCE NETWORK PVT LTD','Bank',1,'intellecash-microfinance-network-pvt-ltd.jpg'),(107,'GCC','NBFC',1,'gcc.jpg\r\n'),(109,'RAAS AFFORDABLE HOUSING FINANCE INDIA LTD ','NBFC',1,'raas-affordable-housing-finance-india-ltd-.jpg'),(111,'LENDING KART-NBFC','NBFC',1,'lending-kart-nbfc.jpg'),(113,'ADITYA BIRLA FINANCE LIMITED','NBFC',1,'aditya-birla-finance-limited.jpg'),(115,'ADITYA BIRLA HOUSING FINANCE','NBFC',1,'aditya-birla-housing-finance.jpg'),(117,'HDFC SALES','Bank',1,'hdfc-sales.jpg'),(119,'AVANSE FINANCIAL SERVICES LTD','NBFC',1,'avanse-financial-services-ltd.jpg'),(121,'IDFC','Bank',1,'idfc.jpg'),(123,'INCRED FINANCE','NBFC',1,'incred-finance.jpg'),(125,'FLEXILOANS','NBFC',1,'flexiloans.jpg'),(127,'VASTU HOUSING FINANCE','NBFC',1,NULL),(129,'SMC FINANCE','NBFC',1,NULL),(131,'HOME SHREE HOUSING FINANCE LTD','NBFC',1,NULL),(133,'Fast Track Housing Finance Pvt. Ltd.','NBFC',1,NULL),(135,'Piramal Housing Finance','NBFC',1,'piramal-housing-finance.jpg'),(137,'Sister concern of Intelecash','NBFC',1,NULL),(139,'ART Affordable Housing Finance Limited','NBFC',1,NULL),(141,'Cointribe Technologies Private Limited','NBFC',1,NULL),(143,'CBI BANK','Bank',1,NULL),(145,'TribeTech Private Ltd','NBFC',1,NULL),(147,'Aadhar housing Finance','NBFC',1,NULL),(151,'Abu Dhabi Islamic Bank','Bank',1,NULL),(155,'Clix Capital','NBFC',1,NULL),(157,'Loan Singh','NBFC',1,NULL),(161,'Digikredit-SME Corner','NBFC',1,NULL),(163,'Zip Loan','NBFC',1,NULL),(167,'Greenwoods','NBFC',1,NULL),(169,'Future General Insurance','NBFC',1,NULL),(171,'Social worth Technologies pvt ltd','Bank',1,NULL),(175,'Federal Bank','Bank',1,''),(177,'Great Western Bank','Bank',1,''),(179,'Royal Bank Of Canada','Bank',1,''),(181,'Toronto Dominion Bank','Bank',1,''),(183,'Bank of Nova Scotia','Bank',1,''),(185,'Bank of Montreal','Bank',1,''),(187,'Canadian Imperial Bank of Commerce','Bank',1,''),(189,'Bank of America','Bank',1,''),(191,'Chase','Bank',1,''),(193,'First Midwest Bank','Bank',1,''),(195,'First Niagara Bank','Bank',1,''),(197,'UCO Bank','Bank',1,''),(199,'Anand Rati','NBFC',1,NULL),(201,'National Bank of Kuwait','Bank',1,''),(203,'Commercial Bank of Kuwait','Bank',1,''),(205,'Gulf Bank','Bank',1,''),(207,'Al Ahli Bank of Kuwait','Bank',1,''),(209,'Al Ahli United Bank','Bank',1,''),(211,'Burgan Bank','Bank',1,''),(213,'Kuwait International Bank','Bank',1,''),(215,'The Industrial Bank of Kuwait','Bank',1,''),(217,'Kuwait Finance House','Bank',1,''),(219,'Boubyan Bank','Bank',1,''),(221,'Warba Bank','Bank',1,''),(223,'Punjab National Bank','Bank',1,''),(225,'Vijaya Bank','Bank',1,''),(227,'State Bank of India','Bank',1,''),(229,'Northern Arc Capital','NBFC',1,''),(231,'National Bank of Fujairah','Bank',1,''),(233,'Rattan India Finance Pvt Ltd','NBFC',1,''),(235,'I2IFUNDING','NBFC',1,''),(237,'Inditrade Capital Limited','NBFC',1,''),(239,'Niyogin Fintech Ltd','NBFC',1,''),(241,'Commercial bank of Qatar','Bank',1,''),(243,'IBQ','Bank',1,''),(245,'QNB','Bank',1,''),(247,'QIIB','Bank',1,''),(249,'Doha Bank','Bank',1,''),(251,'Masraf Al rayan','Bank',1,''),(253,'Mashreeq Bank','Bank',1,''),(255,'Canara Bank','Bank',1,''),(257,'Volition Credit & Holdings Pvt Ltd','NBFC',1,''),(259,'JM Financial Products Limited','NBFC',1,''),(261,'Ujjivan Small Finance Bank','NBFC',1,''),(263,'Omkar Builder Business','Bank',1,''),(265,'Fintree Finance','NBFC',1,''),(267,'Paysence Service Pvt Ltd','NBFC',1,''),(269,'FT Cash','NBFC',1,''),(271,'Sustainable Agro-Commercial Finance Limited ( Safl )','NBFC',1,''),(273,'Hero Housing Finance','NBFC',1,''),(275,'Home First Finance Company','NBFC',1,''),(277,'HDFC Life Insurance Company Limited','NBFC',1,''),(279,'Max Bupa Health Insurance Co. Ltd.','NBFC',1,''),(281,'Allahabad Bank','Bank',1,''),(283,'Muthoot Finance Ltd','NBFC',1,''),(285,'Poonawalla Credit Pvt Ltd','NBFC',1,''),(287,'Loantap Credit Products Private Limited','NBFC',1,''),(289,'INDIFI','NBFC',1,''),(291,'Oriental Bank Of Commerce','Bank',1,''),(293,'Oxyzo Financial Services Pvt. Ltd','NBFC',1,''),(295,'EQX Analytics Private Limited','NBFC',1,''),(297,'APAC Financial Services Pvt Ltd','NBFC',1,''),(299,'Indium Finance','NBFC',1,''),(301,'Kubiz Capital Pvt. Ltd','NBFC',1,''),(303,'Shubh loan','NBFC',1,''),(305,'IDBI Bank','Bank',1,''),(307,'Jana Small Finance Bank Ltd','NBFC',1,''),(351,'INTELLEGROW','NBFC',1,''),(353,'Karur Vysya Bank Ltd','Bank',1,''),(369,'Dubai Islamic Bank','Bank',1,''),(375,'Shinhan Bank India','NBFC',1,''),(377,'Profectus Capital Pvt Ltd','NBFC',1,''),(381,'TD Canada Bank','Bank',1,NULL);
/*!40000 ALTER TABLE `Banks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-10 22:22:48

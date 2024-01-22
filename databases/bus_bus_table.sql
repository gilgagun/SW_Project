-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bus
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `bus_table`
--

DROP TABLE IF EXISTS `bus_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_table` (
  `start` varchar(45) DEFAULT NULL,
  `end` varchar(45) DEFAULT NULL,
  `starttime` varchar(45) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `class` varchar(45) DEFAULT NULL,
  `seats` int DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_table`
--

LOCK TABLES `bus_table` WRITE;
/*!40000 ALTER TABLE `bus_table` DISABLE KEYS */;
INSERT INTO `bus_table` VALUES ('군산','서울','08:00','전북고속','우등',24,'9400','2021-12-01'),('군산','서울','09:00','전북고속','우등',25,'9400','2021-12-01'),('군산','서울','10:00','전북고속','우등',25,'9400','2021-12-01'),('군산','서울','11:00','전북고속','우등',25,'9400','2021-12-01'),('군산','서울','12:00','전북고속','우등',25,'9400','2021-12-01'),('군산','서울','13:00','전북고속','우등',25,'9400','2021-12-01'),('군산','서울','14:00','전북고속','우등',25,'9400','2021-12-01'),('군산','서울','15:00','전북고속','우등',25,'9400','2021-12-01'),('군산','서울','16:00','전북고속','우등',25,'9400','2021-12-01'),('군산','서울','17:00','전북고속','우등',25,'9400','2021-12-01'),('군산','서울','18:00','전북고속','우등',25,'9400','2021-12-01'),('인천','서울','08:00','인천고속','우등',25,'9400','2021-12-01'),('인천','서울','09:00','인천고속','우등',25,'9400','2021-12-01'),('인천','서울','10:00','인천고속','우등',25,'9400','2021-12-01'),('인천','서울','11:00','인천고속','우등',25,'9400','2021-12-01'),('인천','서울','12:00','인천고속','우등',25,'9400','2021-12-01'),('인천','서울','13:00','인천고속','우등',25,'9400','2021-12-01'),('인천','서울','14:00','인천고속','우등',25,'9400','2021-12-01'),('인천','서울','15:00','인천고속','우등',25,'9400','2021-12-01'),('인천','서울','16:00','인천고속','우등',25,'9400','2021-12-01'),('인천','서울','17:00','인천고속','우등',25,'9400','2021-12-01'),('인천','서울','18:00','인천고속','우등',25,'9400','2021-12-01'),('목포','서울','16:00','목포고속','우등',25,'9400','2021-12-01'),('목포','서울','18:00','목포고속','우등',25,'9400','2021-12-01'),('부산','서울','18:00','부산고속','우등',25,'9400','2021-12-01'),('부산','서울','18:00','부산고속','우등',23,'9400','2021-12-05'),('전주','서울','10:00','전주고속','우등',25,'2000','2021-12-01'),('부산','서울','10:00','부산고속','우등',24,'9400','2021-12-01');
/*!40000 ALTER TABLE `bus_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-10 20:40:20

CREATE DATABASE  IF NOT EXISTS `lattice_innovations` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lattice_innovations`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: lattice_innovations
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `psychiatrists`
--

DROP TABLE IF EXISTS `psychiatrists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `psychiatrists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `hospital_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hospital_id` (`hospital_id`),
  CONSTRAINT `psychiatrists_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psychiatrists`
--

LOCK TABLES `psychiatrists` WRITE;
/*!40000 ALTER TABLE `psychiatrists` DISABLE KEYS */;
INSERT INTO `psychiatrists` VALUES (1,'Dr. Ravi Sharma',1),(2,'Dr. Priya Verma',1),(3,'Dr. Rajesh Patel',1),(4,'Dr. Neha Singh',1),(5,'Dr. Ashish Gupta',1),(6,'Dr. Pooja Bhatnagar',2),(7,'Dr. Vikram Singh',2),(8,'Dr. Megha Agrawal',2),(9,'Dr. Ramesh Patel',2),(10,'Dr. Sangeeta Srivastava',2),(11,'Dr. Manish Sharma',3),(12,'Dr. Anjali Chaudhary',3),(13,'Dr. Abhishek Gupta',3),(14,'Dr. Priyanka Agarwal',3),(15,'Dr. Rohit Kumar',3),(16,'Dr. Aarti Singh',4),(17,'Dr. Mohit Singh',4),(18,'Dr. Priya Singh',4),(19,'Dr. Amit Kumar',4),(20,'Dr. Goyal Robin',4);
/*!40000 ALTER TABLE `psychiatrists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-12 23:57:12

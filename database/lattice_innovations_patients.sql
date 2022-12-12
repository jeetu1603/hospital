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
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `patient_photo` blob,
  `psychiatrist_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `psychiatrist_id` (`psychiatrist_id`),
  CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`psychiatrist_id`) REFERENCES `psychiatrists` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Ravi Kumar','123, Rajat Avenue, Pune, Maharashtra','ravi@kumar.com','9876543210','$2a$10$2zbxWG3DV8IZyYEk.P1KlOdu3avua2LJHcsaXzTYW7jgeDP/Y5zju',_binary 'ravi.png',1),(2,'Priya Sharma','34/6, Gandhi Nagar, Delhi','priya@sharma.com','9876543211','$2a$10$KT96pzWoTGVNpy11pBxjqeZBgo0NvlK/ZxLRy6qfTsBd2hnNmB0KC',_binary 'priya.png',2),(3,'Anand Patel','45/B, Ramkrishna Street, Kolkata, West Bengal','anand@patel.com','9876543212','$2a$10$/7zGrxeuXkaOMIYkblUxsOQomscu2BlSqv3rBrrISVOVz7VdckNzu',_binary 'anand.png',3),(4,'Pooja Singh','6/2, Laxmi Nagar, Mumbai, Maharashtra','pooja@singh.com','9876543213','$2a$10$6O/zNeh1.UhQxTiyCmatlu.BETZRh1x503UepQJc2QVWbGKQikUk6',_binary 'pooja.png',4),(5,'Vikram Singh','78/9, Jayaraj Road, Chennai, Tamil Nadu','vikram@singh.com','9876543214','$2a$10$3vcIUjslKuJqagjK7ucxDubmG3z7td58BYpLIVVu2GycdAxZ8UhhG',_binary 'vikram.png',4),(6,'Ramesh Kumar','89/4, Gandhi Road, Ahmedabad, Gujarat','ramesh@kumar.com','9876543215','$2a$10$tojs487VLC/DcQcNNEiht.DhtbzhEI5DWz0F0mx07WJ5zPC0ZZzly',_binary 'ramesh.png',1),(7,'Sita Rani','90/3, Nehru Nagar, Bangalore, Karnataka','sita@rani.com','9876543216','$2a$10$WsxNrF56PfiaM3o.aePvZue2k4lzMQM2IKZlk9iIE.jccbOpZG1kG',_binary 'sita.png',2),(8,'Kajal Singh','12/7, Patel Avenue, Hyderabad, Telangana','kajal@singh.com','9876543217','$2a$10$g8qVUKu1f3kebcGOVll2rOfR89V7nFmjGi/mu2f1COeh3YGDn78Mm',_binary 'kajal.png',3),(9,'Jyoti Patel','45/6, Surya Nagar, Lucknow, Uttar Pradesh','jyoti@patel.com','9876543218','$2a$10$IKHRt/2mVn2ccBSSMB3lc.kSv2LhX2nqQ5bzNXO7YPumibvWQoecC',_binary 'jyoti.png',1),(10,'Rakesh Sharma','67/9, Ravi Street, Patna, Bihar','rakesh@sharma.com','9876543219','$2a$10$1JKNsxn7fDfRsJxLGIoiluqZrVpeqTxObt9cnWr6i.og8eT/KPVc.',_binary 'rakesh.png',2),(11,'Anjali Singh','90/8, Subhash Road, Ranchi, Jharkhand','anjali@singh.com','9876543220','$2a$10$sZqXmQEYZ2UZav4qIhARaO3x2pi4hdXIPMRGmOr30MIf.vlRBsUm2',_binary 'anjali.png',3),(12,'Mahesh Kumar','8/9, Indira Nagar, Bhopal, Madhya Pradesh','mahesh@kumar.com','9876543221','$2a$10$Bewe5/y03urNuoikcYF2/euQjryY8PVJfWUVOCcJl0Xk6MZUY/3Ua',_binary 'mahesh.png',4),(13,'Mahesh Kumar','34/5, Rajendra Nagar, Jaipur, Rajasthan','mahesh@kumar.com','9876543222','$2a$10$ZWJA5O3FzQVDtnwydP1VLOvEWag85ykYkIEZX7.JuBWt6VQ.hOJqq',_binary 'mahesh.png',20),(14,'Priyanka Sharma','7/6, Amit Nagar, Dehradun, Uttarakhand','priyanka@sharma.com','9876543223','$2a$10$38d95w6Ch6Gk79Pn6NVNyOX4N.NzyOaW3UL5xaTxBbKvwFatlRYTe',_binary 'priyanka.png',19),(15,'Hari Singh','56/7, Ramnagar, Srinagar, Jammu and Kashmir','hari@singh.com','9876543224','$2a$10$u7yDJexUss3MuI0z660CFeu81ILBGXfpsyhKFDCoj27IDV5D2Mk4m',_binary 'hari.png',18),(16,'Sunita Rani','78/4, Dev Nagar, Thiruvananthapuram, Kerala','sunita@rani.com','9876543225','$2a$10$wTqpfj3PRWqqgmP/FKsPkeh.bTUK5VeOWaJQEGDNnpmDDAEN5TF4S',_binary 'sunita.png',17),(17,'Deepak Sharma','23/6, Shivaji Nagar, Panaji, Goa','deepak@sharma.com','9876543226','$2a$10$/jWbfNQ8UDG6LU3RYCsSFe3y8QU6Nu.KCrvFlV3vp0Fr0dTztOtRq',_binary 'deepak.png',16),(18,'Geeta Singh','45/7, Guru Nagar, Shimla, Himachal Pradesh','geeta@singh.com','9876543227','$2a$10$rH5INwY0X3yOkpPrgwtA7.pj5vCgb9sdZLk9yVoiWlmFi8Nu6yL5C',_binary 'geeta.png',15),(19,'Rajesh Kumar','67/8, Vivekananda Road, Gangtok, Sikkim','rajesh@kumar.com','9876543228','$2a$10$9dTAXkE7Y1DrMUVEu3Gvw.uq2gI0nm30Po1WOyJ2zsnFX3fKBSJgW',_binary 'rajesh.png',14),(20,'Sangeeta Patel','67/8, Vivekananda Road, Gangtok, Sikkim','sangeeta@patel.com','9876543229','$2a$10$QAm92tJu9yLcx0Ziq95ZyOTZIVf7PKG8W234L8/0RG2rwDZ3eLDbq',_binary 'sangeeta.png',13),(21,'Neha Rani','90/9, Bose Road, Bhubaneswar, Odisha','neha@rani.com','9876543220','$2a$10$iCu2MLdm0I6dp3JttFTIfuCBmquirvj9MLed.KKhl.tKGqN1G.fam',_binary 'neha.png',12);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
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

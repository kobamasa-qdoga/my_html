-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: ImagePathDB
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `image_path_table`
--

DROP TABLE IF EXISTS `image_path_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image_path_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_path_table`
--

LOCK TABLES `image_path_table` WRITE;
/*!40000 ALTER TABLE `image_path_table` DISABLE KEYS */;
INSERT INTO `image_path_table` VALUES (7,'/home/kobamasa/my_html/public/img_file/2_low.jpg'),(9,'/home/kobamasa/my_html/public/img_file/3_low.jpg'),(10,'/home/kobamasa/my_html/public/img_file/4_low.jpg'),(11,'/home/kobamasa/my_html/public/img_file/5_low.jpg'),(12,'/home/kobamasa/my_html/public/img_file/6_low.jpg'),(13,'/home/kobamasa/my_html/public/img_file/7_low.jpg'),(14,'/home/kobamasa/my_html/public/img_file/8_low.jpg'),(15,'/home/kobamasa/my_html/public/img_file/9_low.jpg'),(16,'/home/kobamasa/my_html/public/img_file/10_low.jpg'),(17,'/home/kobamasa/my_html/public/img_file/11_low.jpg'),(18,'/home/kobamasa/my_html/public/img_file/12_low.jpg'),(19,'/home/kobamasa/my_html/public/img_file/13_low.jpg'),(20,'/home/kobamasa/my_html/public/img_file/14_low.jpg'),(21,'/home/kobamasa/my_html/public/img_file/15_low.jpg'),(22,'/home/kobamasa/my_html/public/img_file/16_low.jpg'),(34,'/img_file/IMG_0793.jpeg');
/*!40000 ALTER TABLE `image_path_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-25 10:17:21

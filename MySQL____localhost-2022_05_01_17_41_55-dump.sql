-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: school
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class_subject` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `grade_num` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (1,100),(2,88),(3,90),(4,72),(5,100),(6,88),(7,90),(8,72),(9,67),(10,89),(11,77),(12,61),(13,88),(14,55),(15,98);
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `gradeId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `gradeId` (`gradeId`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`gradeId`) REFERENCES `grade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Rigby','R','rbone67@gmail.com',1),(2,'Mordeci','M','mbird44@gmail.com',2),(3,'Skips','S','sgorrila23@gmail.com',3),(4,'Benson','B','bbubble77@gmail.com',4),(8,'Pops','P','phead88@gmail.com',4),(10,'MuscleMan','M','meat55@gmail.com',4),(11,'HyFiveGhost','H','hghost89@gmail.com',2),(12,'CJ','C','ccloud12@gmail.com',3),(13,'Margaret','M','mred34@gmail.com',1),(14,'Starla','S','scap99@gmail.com',4),(15,'Rigby','R','rbone67@gmail.com',1),(16,'Mordeci','M','mbird44@gmail.com',2),(17,'Skips','S','sgorrila23@gmail.com',3),(18,'Benson','B','bbubble77@gmail.com',4),(19,'Pops','P','phead88@gmail.com',5),(20,'MuscleMan','M','meat55@gmail.com',6),(21,'HyFiveGhost','H','hghost89@gmail.com',7),(22,'CJ','C','ccloud12@gmail.com',8),(23,'Margaret','M','mred34@gmail.com',9),(24,'Starla','S','scap99@gmail.com',10);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_address`
--

DROP TABLE IF EXISTS `student_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `street` varchar(15) NOT NULL,
  `num` int NOT NULL,
  `town` varchar(20) NOT NULL,
  `zip` int NOT NULL,
  `studentId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `studentId` (`studentId`),
  CONSTRAINT `student_address_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_address`
--

LOCK TABLES `student_address` WRITE;
/*!40000 ALTER TABLE `student_address` DISABLE KEYS */;
INSERT INTO `student_address` VALUES (1,'Adams',22,'Maple',21558,1),(2,'Union',88,'Green',78995,2),(3,'Market',13,'Spring',45770,3),(4,'Bridge',190,'Ville',80335,4),(6,'West',852,'LosSantos',18665,4),(7,'Corn',85,'Custom',89114,4),(8,'Broad',52,'Paleto-Bay',89647,2),(9,'Main',2,'Zancudo',3440,1),(10,'Jackson',8,'Chiliad',89405,3),(11,'Pearl',78,'Rockford',98710,4),(12,'Adams',22,'Maple',21558,1),(13,'Union',88,'Green',78995,2),(14,'Market',13,'Spring',45770,3),(15,'Bridge',190,'Ville',80335,4),(16,'West',852,'LosSantos',18665,3),(17,'Corn',85,'Custom',89114,4),(18,'Broad',52,'Paleto-Bay',89647,2),(19,'Main',2,'Zancudo',3440,1),(20,'Jackson',8,'Chiliad',89405,3),(21,'Pearl',78,'Rockford',98710,4),(22,'Adams',22,'Maple',21558,1),(23,'Union',88,'Green',78995,2),(24,'Market',13,'Spring',45770,3),(25,'Bridge',190,'Ville',80335,4),(31,'Main',2,'Zancudo',3440,8),(35,'Corn',85,'Custom',89114,4),(37,'Broad',52,'PaletoBay',89647,3),(38,'Main',2,'Zancudo',3440,8),(40,'Jackson',8,'Chiliad',89405,2),(41,'Pearl',78,'Rockford',98710,10),(42,'West',852,'LosSantos',18665,1);
/*!40000 ALTER TABLE `student_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_class_association`
--

DROP TABLE IF EXISTS `student_class_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_class_association` (
  `studentId` int NOT NULL,
  `classId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_class_association`
--

LOCK TABLES `student_class_association` WRITE;
/*!40000 ALTER TABLE `student_class_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_class_association` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-01 17:41:55

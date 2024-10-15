-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: trailerflix
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `contenidosgeneros`
--

DROP TABLE IF EXISTS `contenidosgeneros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contenidosgeneros` (
  `idContenido` int NOT NULL,
  `idGenero` int NOT NULL,
  KEY `ContenidosGeneros_fk1` (`idGenero`),
  KEY `ContenidosGeneros_fk0` (`idContenido`),
  CONSTRAINT `ContenidosGeneros_fk0` FOREIGN KEY (`idContenido`) REFERENCES `contenidos` (`idContenido`),
  CONSTRAINT `ContenidosGeneros_fk1` FOREIGN KEY (`idGenero`) REFERENCES `generos` (`idGenero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenidosgeneros`
--

LOCK TABLES `contenidosgeneros` WRITE;
/*!40000 ALTER TABLE `contenidosgeneros` DISABLE KEYS */;
INSERT INTO `contenidosgeneros` VALUES (3,1),(3,2),(4,1),(4,2),(5,3),(5,4),(5,5),(2,3),(2,6),(2,4),(1,3),(1,7),(6,4),(6,3),(6,6),(7,8),(7,9),(7,3),(8,10),(8,1),(8,11),(9,10),(9,2),(9,3),(10,1),(10,2),(11,12),(11,2),(11,4),(12,12),(12,13),(12,3),(13,3),(13,13),(13,14),(14,3),(14,1),(15,3),(15,7),(16,14),(16,1),(17,4),(17,3),(17,15),(18,11),(18,3),(18,9),(19,11),(19,4),(19,12),(20,11),(20,1),(20,9),(21,12),(21,4),(21,10),(22,1),(22,9),(23,16),(23,9),(23,2),(24,11),(24,10),(24,2),(25,3),(25,17),(25,10),(26,3),(26,9),(26,18),(27,11),(27,1),(27,16),(28,3),(28,9),(28,4),(29,3),(29,11),(29,10),(30,3),(30,1),(30,10),(31,3),(31,1),(31,9),(32,9),(32,10),(32,4),(33,3),(33,16),(33,4),(34,3),(34,7),(35,11),(35,2),(35,1);
/*!40000 ALTER TABLE `contenidosgeneros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-15 16:59:01

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
-- Table structure for table `contenidosactores`
--

DROP TABLE IF EXISTS `contenidosactores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contenidosactores` (
  `idContenido` int NOT NULL,
  `idActor` int NOT NULL,
  KEY `ContenidosActores_fk1` (`idActor`),
  KEY `ContenidosActores_fk0` (`idContenido`),
  CONSTRAINT `ContenidosActores_fk0` FOREIGN KEY (`idContenido`) REFERENCES `contenidos` (`idContenido`),
  CONSTRAINT `ContenidosActores_fk1` FOREIGN KEY (`idActor`) REFERENCES `actores` (`idActor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenidosactores`
--

LOCK TABLES `contenidosactores` WRITE;
/*!40000 ALTER TABLE `contenidosactores` DISABLE KEYS */;
INSERT INTO `contenidosactores` VALUES (3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(5,13),(5,14),(5,15),(5,16),(5,17),(5,18),(2,19),(2,20),(2,21),(2,22),(2,23),(2,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(6,31),(6,32),(6,33),(6,30),(6,34),(6,35),(7,36),(7,37),(7,38),(7,39),(7,40),(7,41),(8,42),(8,43),(8,44),(8,45),(8,46),(8,47),(9,48),(9,49),(9,50),(9,51),(9,52),(9,53),(10,54),(10,55),(10,56),(10,57),(10,58),(10,59),(11,60),(11,61),(11,62),(11,63),(11,64),(11,65),(11,66),(12,67),(12,68),(12,69),(12,70),(12,71),(12,72),(13,73),(13,74),(13,75),(13,76),(13,77),(13,78),(14,79),(14,80),(14,81),(14,82),(14,83),(14,84),(15,85),(15,86),(15,87),(15,88),(15,89),(15,90),(16,91),(16,92),(16,93),(16,94),(16,95),(16,96),(17,97),(17,98),(17,99),(17,100),(17,101),(17,102),(18,103),(18,104),(18,105),(18,106),(18,107),(18,108),(19,109),(19,110),(19,111),(19,112),(19,113),(19,114),(20,115),(20,116),(20,117),(20,118),(20,119),(20,120),(21,121),(21,122),(21,123),(21,124),(21,125),(21,126),(22,127),(22,128),(22,129),(22,130),(22,131),(22,132),(23,133),(23,103),(23,134),(23,135),(23,136),(23,137),(24,138),(24,139),(24,140),(24,141),(24,142),(24,143),(25,144),(25,145),(25,146),(25,147),(25,148),(25,149),(26,150),(26,151),(26,152),(26,153),(27,154),(27,155),(27,156),(27,157),(27,158),(27,159),(28,160),(28,145),(28,161),(28,162),(28,163),(28,164),(28,165),(29,46),(29,166),(29,167),(29,168),(29,169),(29,170),(29,171),(30,145),(30,103),(30,172),(30,173),(30,174),(30,175),(30,176),(31,177),(31,178),(31,179),(31,180),(31,181),(31,182),(31,183),(32,184),(32,185),(32,186),(32,187),(32,188),(32,189),(32,190),(33,191),(33,192),(33,193),(33,194),(33,195),(33,196),(33,197),(34,198),(34,199),(34,200),(34,201),(34,202),(34,203),(35,204),(35,205),(35,206),(35,207),(35,208),(35,209);
/*!40000 ALTER TABLE `contenidosactores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-15 16:59:03

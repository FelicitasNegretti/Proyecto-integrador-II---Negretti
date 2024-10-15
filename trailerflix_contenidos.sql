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
-- Table structure for table `contenidos`
--

DROP TABLE IF EXISTS `contenidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contenidos` (
  `idContenido` int NOT NULL AUTO_INCREMENT,
  `poster` varchar(100) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `idCategoria` int NOT NULL,
  `resumen` varchar(255) NOT NULL,
  `temporadas` varchar(10) NOT NULL,
  `trailer` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idContenido`),
  UNIQUE KEY `idContenido` (`idContenido`),
  KEY `Contenidos_fk3` (`idCategoria`),
  CONSTRAINT `Contenidos_fk3` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenidos`
--

LOCK TABLES `contenidos` WRITE;
/*!40000 ALTER TABLE `contenidos` DISABLE KEYS */;
INSERT INTO `contenidos` VALUES (1,'/posters/1.jpg','The Crown',1,'Este drama narra las rivalidades políticas y el romance de la reina Isabel II...','4',NULL),(2,'/posters/2.jpg','Riverdale',1,'El paso a la edad adulta incluye sexo, romance, escuela y familia...','5',NULL),(3,'/posters/3.jpg','The Mandalorian',1,'Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden...','2','https://www.youtube.com/embed/aOC8E8z_ifw'),(4,'/posters/4.jpg','The Umbrella Academy',1,'La muerte de su padre reúne a unos hermanos distanciados...','1',NULL),(5,'/posters/5.jpg','Gambito de Dama',1,'En los cincuenta, una joven de un orfanato descubre...','1',NULL),(6,'/posters/6.jpg','Enola Holmes',2,'La hermana menor de Sherlock, descubre que su madre ha desaparecido...','N/A',NULL),(7,'/posters/7.jpg','Guasón',2,'Arthur Fleck es un hombre ignorado por la sociedad...','N/A','https://www.youtube.com/embed/zAGVQLHvwOY'),(8,'/posters/8.jpg','Avengers: End Game',2,'Después de los devastadores eventos de los Vengadores: Infinity War...','N/A',NULL),(9,'/posters/9.jpg','Juego de tronos',1,'En un mundo fantástico y en un contexto medieval varias familias se disputan el poder...','8',NULL),(10,'/posters/10.jpg','The Flash',1,'Sigue las veloces aventuras de Barry Allen...','6',NULL),(11,'/posters/11.jpg','The Big Bang Theory',1,'Leonard y Sheldon son dos físicos que comparten trabajo y apartamento...','12','https://www.youtube.com/embed/WBb3fojgW0Q'),(12,'/posters/12.jpg','Friends',1,'Friends narra las aventuras y desventuras de seis jóvenes de Nueva York...','10',NULL),(13,'/posters/13.jpg','Anne with an \'E\'',1,'Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea...','2',NULL),(14,'/posters/14.jpg','Expedientes Secretos \'X\'',1,'Fox Mulder y Dana Scully son dos investigadores del FBI...','11','https://www.youtube.com/embed/KKziOmsJxzE'),(15,'/posters/15.jpg','Chernobyl',1,'Sigue la verdadera historia de una de las peores catástrofes provocadas por el hombre...','1','https://www.youtube.com/embed/s9APLXM9Ei8'),(16,'/posters/16.jpg','Westworld',1,'Westworld es una oscura odisea acerca del amanecer de la conciencia artificial...','3','https://www.youtube.com/embed/qLFBcdd6Qw0'),(17,'/posters/17.jpg','Halt and Catch Fire',1,'Situada en los inicios de la década de 1980, un visionario ficticio...','4','https://www.youtube.com/embed/pWrioRji60A'),(18,'/posters/18.jpg','Ava',2,'Ava es una mortífera asesina a sueldo...','N/A',NULL),(19,'/posters/19.jpg','Aves de presa y la fantabulosa emancipación de una Harley Quinn',2,'Después de separarse de Joker, Harley Quinn y otras tres heroínas...','N/A',NULL),(20,'/posters/20.jpg','Archivo',2,'2038: George Almore está trabajando en una verdadera IA equivalente a la humana...','N/A','https://www.youtube.com/embed/VHSoCnDioAo'),(21,'/posters/21.jpg','Jumanji - The next level',2,'Las aventuras continúan en el fantástico mundo del video juego Jumanji...','N/A','https://www.youtube.com/embed/rBxcF-r9Ibs'),(22,'/posters/22.jpg','3022',2,'La película está ambientada en una estación espacial en el futuro...','N/A','https://www.youtube.com/embed/AGQ7OkmIx4Q'),(23,'/posters/23.jpg','IT - Capítulo 2',2,'Han pasado 27 años desde que el \"Club de los Perdedores\" se enfrentara a Pennywise...','N/A','https://www.youtube.com/embed/hZeFeYSmBcg'),(24,'/posters/24.jpg','Pantera Negra',2,'T’Challa regresa a su hogar en la apartada nación africana de Wakanda...','N/A','https://www.youtube.com/embed/BE6inv8Xh4A'),(25,'/posters/25.jpg','Contra lo imposible (Ford versus Ferrari)',2,'Matt Damon y Christian Bale protagonizan CONTRA LO IMPOSIBLE...','N/A','https://www.youtube.com/embed/SOVb0-2g1Q0'),(26,'/posters/26.jpg','Centígrados',2,'Una joven pareja estadounidense viaja a las montañas árticas de Noruega...','N/A',NULL),(27,'/posters/27.jpg','DOOM: Aniquilación',2,'Doom: Aniquilación sigue a un grupo de marines espaciales...','N/A','https://www.youtube.com/embed/nat3u3gAVLE'),(28,'/posters/28.jpg','Contagio',2,'Un virus mortal comienza a propagarse por todo el mundo...','N/A','https://www.youtube.com/embed/4sYSyuuLk5g'),(29,'/posters/29.jpg','Viuda Negra',2,'Primera película individual de la Viuda Negra en el universo cinematográfico de Marvel...','N/A','https://www.youtube.com/embed/BIn8iANwEog'),(30,'/posters/30.jpg','The Martian',2,'Durante una misión a Marte de la nave tripulada Ares III...','N/A','https://www.youtube.com/embed/XvB58bCVfng'),(31,'/posters/31.jpg','Ex-Machina',2,'Un programador multimillonario selecciona a Caleb para participar en un test...','N/A','https://www.youtube.com/embed/XRYL5spvEcI'),(32,'/posters/32.jpg','Jurassic World',2,'La isla Nublar ha sido transformada en un enorme parque temático...','N/A',NULL),(33,'/posters/33.jpg','Soy leyenda',2,'Años después de que una plaga mate a la mayoría de la humanidad...','N/A','https://www.youtube.com/embed/dtKMEAXyPkg'),(34,'/posters/34.jpg','El primer hombre en la luna',2,'Cuenta la historia de la misión de la NASA que llevó al primer hombre a la luna...','N/A',NULL),(35,'/posters/35.jpg','Titanes del pacífico - La insurrección',2,'El planeta vuelve a ser asediado por los Kaiju...','N/A',NULL);
/*!40000 ALTER TABLE `contenidos` ENABLE KEYS */;
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

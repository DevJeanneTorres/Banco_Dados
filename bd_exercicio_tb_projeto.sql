-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_exercicio
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `tb_projeto`
--

DROP TABLE IF EXISTS `tb_projeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_projeto` (
  `proj_codigo` int(11) NOT NULL,
  `proj_numero` int(11) DEFAULT NULL,
  `depto_cod` int(11) DEFAULT NULL,
  `local_cod` int(11) DEFAULT NULL,
  PRIMARY KEY (`proj_codigo`),
  KEY `fk_local_proj_cod_idx` (`local_cod`),
  CONSTRAINT `fk_proj_local_cod` FOREIGN KEY (`local_cod`) REFERENCES `tb_local` (`local_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_projeto`
--

LOCK TABLES `tb_projeto` WRITE;
/*!40000 ALTER TABLE `tb_projeto` DISABLE KEYS */;
INSERT INTO `tb_projeto` VALUES (1,11,1,1),(2,22,2,2),(4,44,4,1),(5,55,5,2),(6,66,6,3),(7,77,1,1),(8,88,2,2),(9,99,3,3),(10,100,4,1),(11,111,5,2),(12,122,6,3),(13,133,1,1),(14,144,2,2),(15,155,3,3),(16,166,4,1),(17,177,5,2),(18,188,6,3),(19,199,1,1),(20,200,2,2),(21,211,3,3),(22,222,4,1),(23,233,5,2),(24,244,6,3),(25,255,1,1),(26,266,2,2),(27,277,3,3),(28,288,4,1),(29,299,5,2),(30,300,6,3),(31,311,1,1),(32,322,2,2),(33,333,3,3),(34,344,4,1),(35,355,5,2),(36,366,6,3),(37,377,1,1),(38,388,2,2),(39,399,3,3),(40,400,4,1),(41,411,5,2),(42,422,6,3),(43,433,1,1),(44,444,2,2),(45,455,3,3),(46,466,4,1),(47,477,5,2),(48,488,6,3),(49,499,1,1),(50,500,2,2);
/*!40000 ALTER TABLE `tb_projeto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-19 14:22:03

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: odontovida
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
-- Table structure for table `tratamento`
--

DROP TABLE IF EXISTS `tratamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tratamento` (
  `tratamento_id` int(11) NOT NULL AUTO_INCREMENT,
  `consulta_id` int(11) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  PRIMARY KEY (`tratamento_id`),
  KEY `consulta_id` (`consulta_id`),
  CONSTRAINT `tratamento_ibfk_1` FOREIGN KEY (`consulta_id`) REFERENCES `consulta` (`consulta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tratamento`
--

LOCK TABLES `tratamento` WRITE;
/*!40000 ALTER TABLE `tratamento` DISABLE KEYS */;
INSERT INTO `tratamento` VALUES (21,1,'Limpeza e Polimento','2024-09-10','2024-09-10'),(22,2,'Tratamento de Canal','2024-09-11','2024-09-25'),(23,3,'Aplicação de Flúor','2024-09-12','2024-09-12'),(24,4,'Extração de Dente','2024-09-13','2024-09-13'),(25,5,'Colocação de Aparelho','2024-09-14','2024-12-14'),(26,6,'Implante Dentário','2024-09-15','2024-10-15'),(27,7,'Clareamento Dental','2024-09-16','2024-09-16'),(28,8,'Prótese Parcial','2024-09-17','2024-10-17'),(29,9,'Tratamento de Gengiva','2024-09-18','2024-09-25'),(30,10,'Reparo de Prótese','2024-09-19','2024-09-19');
/*!40000 ALTER TABLE `tratamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-19 14:22:04

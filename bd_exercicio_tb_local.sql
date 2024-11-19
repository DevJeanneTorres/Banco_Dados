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
-- Table structure for table `tb_local`
--

DROP TABLE IF EXISTS `tb_local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_local` (
  `local_codigo` int(11) NOT NULL,
  `local_desc` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`local_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_local`
--

LOCK TABLES `tb_local` WRITE;
/*!40000 ALTER TABLE `tb_local` DISABLE KEYS */;
INSERT INTO `tb_local` VALUES (1,'Sao Paulo'),(2,'Minas Gerais'),(3,'Rio de Janeiro'),(4,'Bahia'),(5,'Rio Grande do Sul'),(6,'Paraná'),(7,'Ceará'),(8,'Pernambuco'),(9,'Santa Catarina'),(10,'Paraíba'),(11,'Espírito Santo'),(12,'Acre'),(13,'Amazonas'),(14,'Bahia'),(15,'Maranhão'),(16,'Tocantins'),(17,'Alagoas'),(18,'Sergipe'),(19,'Rondônia'),(20,'Roraima'),(21,'Piauí'),(22,'Amapá'),(23,'Distrito Federal'),(24,'Goiás'),(25,'Mato Grosso'),(26,'Mato Grosso do Sul'),(27,'São Paulo - Interior'),(28,'Rio de Janeiro - Interior'),(29,'Minas Gerais - Interior'),(30,'Bahia - Interior'),(31,'Santa Catarina - Interior'),(32,'Paraná - Interior'),(33,'Sergipe - Interior'),(34,'Alagoas - Interior'),(35,'Maranhão - Interior'),(36,'Ceará - Interior'),(37,'Pernambuco - Interior'),(38,'Tocantins - Interior'),(39,'Rondônia - Interior'),(40,'Roraima - Interior'),(41,'Amapá - Interior'),(42,'Distrito Federal - Centro'),(43,'Goiás - Interior'),(44,'Mato Grosso - Interior'),(45,'Mato Grosso do Sul - Interior'),(46,'São Paulo - Capital'),(47,'Rio de Janeiro - Capital'),(48,'Minas Gerais - Capital'),(49,'Bahia - Capital'),(50,'Santa Catarina - Capital');
/*!40000 ALTER TABLE `tb_local` ENABLE KEYS */;
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

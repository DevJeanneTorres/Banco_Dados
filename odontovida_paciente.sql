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
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `paciente_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `data_nascimento` date NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`paciente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'Ana Silva','1995-08-05','11987654321','Rua das Flores, 123, São Paulo','ana.silva@email.com'),(2,'Carlos Oliveira','1990-12-03','11987654322','Avenida Paulista, 456, São Paulo','carlos.oliveira@email.com'),(3,'Fernanda Costa','1985-07-19','31987654323','Rua das Acácias, 789, Belo Horizonte','fernanda.costa@email.com'),(4,'João Santos','1992-11-24','31987654324','Praça da Liberdade, 101, Belo Horizonte','joao.santos@email.com'),(5,'Maria Souza','1988-09-13','21987654325','Rua das Palmeiras, 456, Rio de Janeiro','maria.souza@email.com'),(6,'Pedro Lima','1991-04-17','21987654326','Avenida Atlântica, 789, Rio de Janeiro','pedro.lima@email.com'),(7,'Paula Ferreira','1990-10-25','41987654327','Rua dos Pinheiros, 456, Porto Alegre','paula.ferreira@email.com'),(8,'Roberto Almeida','1987-06-30','41987654328','Rua dos Andradas, 666, Porto Alegre','roberto.almeida@email.com'),(9,'Sofia Martins','1993-02-14','41987654329','Rua dos Orquídeas, 666, Curitiba','sofia.martins@email.com'),(10,'Tiago Pereira','1995-05-09','41987654330','Rua dos Lírios, 789, Curitiba','tiago.pereira@email.com');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
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

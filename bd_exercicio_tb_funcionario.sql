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
-- Table structure for table `tb_funcionario`
--

DROP TABLE IF EXISTS `tb_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_funcionario` (
  `func_codigo` int(11) NOT NULL,
  `func_nome` varchar(60) DEFAULT NULL,
  `func_cpf` varchar(13) DEFAULT NULL,
  `forn_end` varchar(90) DEFAULT NULL,
  `forn_salario` decimal(10,0) DEFAULT NULL,
  `ger_depto_cod` int(11) DEFAULT NULL,
  `trab_depto_cod` int(11) DEFAULT NULL,
  `proj_cod` int(11) DEFAULT NULL,
  PRIMARY KEY (`func_codigo`),
  KEY `fk_ger_depto_cod_idx` (`ger_depto_cod`),
  KEY `fk_trab_depto_cod_idx` (`trab_depto_cod`),
  KEY `fk_proj_cod_idx` (`proj_cod`),
  CONSTRAINT `fk_ger_depto_cod` FOREIGN KEY (`ger_depto_cod`) REFERENCES `tb_departamento` (`depto_codigo`),
  CONSTRAINT `fk_proj_cod` FOREIGN KEY (`proj_cod`) REFERENCES `tb_projeto` (`proj_codigo`),
  CONSTRAINT `fk_trab_depto_cod` FOREIGN KEY (`trab_depto_cod`) REFERENCES `tb_departamento` (`depto_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_funcionario`
--

LOCK TABLES `tb_funcionario` WRITE;
/*!40000 ALTER TABLE `tb_funcionario` DISABLE KEYS */;
INSERT INTO `tb_funcionario` VALUES (1,'Jose Silva','12312312344','Endereco 1',2000,NULL,1,1),(2,'Maria Souza','23423423455','Endereco 2',2100,NULL,1,1),(3,'Carlos Santos','34534534566','Endereco 3',2200,NULL,1,1),(4,'Fernanda Lima','45645645677','Endereco 4',2300,NULL,1,1),(5,'Joao Oliveira','56756756788','Endereco 5',2400,NULL,1,1),(6,'Camila Araujo','67867867899','Endereco 6',2500,NULL,1,1),(7,'Rafael Correia','78978978911','Endereco 7',2600,NULL,1,1),(8,'Paula Almeida','89089089022','Endereco 8',2700,NULL,1,1),(9,'Tiago Pinto','90190190133','Endereco 9',2800,NULL,1,1),(10,'Renata Costa','01201201244','Endereco 10',2900,NULL,1,1),(11,'Lucas Gomes','12312312355','Endereco 11',3000,NULL,1,1),(12,'Isabela Martins','23423423466','Endereco 12',3100,NULL,1,1),(13,'Leonardo Rocha','34534534577','Endereco 13',3200,NULL,1,1),(14,'Juliana Santos','45645645688','Endereco 14',3300,NULL,1,1),(15,'Gabriel Cardoso','56756756799','Endereco 15',3400,NULL,1,1),(16,'Bianca Ribeiro','67867867811','Endereco 16',3500,NULL,1,1),(17,'Felipe Silva','78978978922','Endereco 17',3600,NULL,1,1),(18,'Daniela Mendes','89089089033','Endereco 18',3700,NULL,1,1),(19,'Ricardo Souza','90190190144','Endereco 19',3800,NULL,1,1),(20,'Amanda Lopes','01201201255','Endereco 20',3900,NULL,1,1),(21,'Bruno Machado','12312312366','Endereco 21',4000,NULL,1,1),(22,'Larissa Dias','23423423477','Endereco 22',4100,NULL,1,1),(23,'Eduardo Teixeira','34534534588','Endereco 23',4200,NULL,1,1),(24,'Patricia Ramos','45645645699','Endereco 24',4300,NULL,1,1),(25,'Marcelo Faria','56756756711','Endereco 25',4400,NULL,1,1),(26,'Sabrina Fonseca','67867867822','Endereco 26',4500,NULL,1,1),(27,'Vinicius Nunes','78978978933','Endereco 27',4600,NULL,1,1),(28,'Mariana Carvalho','89089089044','Endereco 28',4700,NULL,1,1),(29,'Roberto Silva','90190190155','Endereco 29',4800,NULL,1,1),(30,'Julio Pereira','01201201266','Endereco 30',4900,NULL,1,1),(31,'Carla Santos','12312312377','Endereco 31',5000,NULL,1,1),(32,'Antonio Barros','23423423488','Endereco 32',5100,NULL,1,1),(33,'Vitor Alves','34534534599','Endereco 33',5200,NULL,1,1),(34,'Cristina Dias','45645645611','Endereco 34',5300,NULL,1,1),(35,'Pedro Silva','56756756722','Endereco 35',5400,NULL,1,1),(36,'Michele Pires','67867867833','Endereco 36',5500,NULL,1,1),(37,'Caio Campos','78978978944','Endereco 37',5600,NULL,1,1),(38,'Aline Castro','89089089055','Endereco 38',5700,NULL,1,1),(39,'Otavio Santana','90190190166','Endereco 39',5800,NULL,1,1),(40,'Monica Rezende','01201201277','Endereco 40',5900,NULL,1,1),(41,'Renato Braga','12312312388','Endereco 41',6000,NULL,1,1),(42,'Nathalia Vieira','23423423499','Endereco 42',6100,NULL,1,1),(43,'Anderson Costa','34534534511','Endereco 43',6200,NULL,1,1),(44,'Flavia Rocha','45645645622','Endereco 44',6300,NULL,1,1),(45,'Alex Ribeiro','56756756733','Endereco 45',6400,NULL,1,1),(46,'Elaine Borges','67867867844','Endereco 46',6500,NULL,1,1),(47,'Rodrigo Mendes','78978978955','Endereco 47',6600,NULL,1,1),(48,'Luciana Duarte','89089089066','Endereco 48',6700,NULL,1,1),(49,'Thiago Ferreira','90190190177','Endereco 49',6800,NULL,1,1),(50,'Sonia Silva','01201201288','Endereco 50',6900,NULL,1,1),(51,'Ana Silva','12345678944','Endereco 1',3000,2,2,2),(52,'Luis Santos','23456789155','Endereco 2',3100,2,2,2),(53,'Rita Pereira','34567891266','Endereco 3',3200,2,2,2),(54,'Marcos Alves','45678912377','Endereco 4',3300,2,2,2),(55,'Sara Costa','56789123488','Endereco 5',3400,2,2,2),(56,'Mario Souza','67891234599','Endereco 6',3500,2,2,2),(57,'Andre Silva','78912345611','Endereco 7',3600,2,2,2),(58,'Vera Santos','89012346722','Endereco 8',3700,2,2,2),(59,'Adriana Souza','90123457833','Endereco 9',3800,2,2,2),(60,'Joana Rocha','01234568944','Endereco 10',3900,2,2,2),(61,'Henrique Lima','12345679955','Endereco 11',4000,2,2,2),(62,'Claudia Mendes','23456781066','Endereco 12',4100,2,2,2),(63,'Paulo Barreto','34567892177','Endereco 13',4200,2,2,2),(64,'Fabiana Torres','45678903288','Endereco 14',4300,2,2,2),(65,'Gustavo Pinto','56789124399','Endereco 15',4400,2,2,2),(66,'Helena Nunes','67891235411','Endereco 16',4500,2,2,2),(67,'Felipe Moreira','78912346522','Endereco 17',4600,2,2,2),(68,'Cecilia Antunes','89012347633','Endereco 18',4700,2,2,2),(69,'Rodrigo Martins','90123458744','Endereco 19',4800,2,2,2),(70,'Fernanda Dias','01234569855','Endereco 20',4900,2,2,2),(71,'Marcelo Cardoso','12345670966','Endereco 21',5000,2,2,2),(72,'Lilian Araújo','23456781077','Endereco 22',5100,2,2,2),(73,'Alex Teixeira','34567892188','Endereco 23',5200,2,2,2),(74,'Rafaela Sousa','45678903299','Endereco 24',5300,2,2,2),(75,'Miguel Santos','56789124311','Endereco 25',5400,2,2,2),(76,'Tatiana Gomes','67891235422','Endereco 26',5500,2,2,2),(77,'Lucas Rocha','78912346533','Endereco 27',5600,2,2,2),(78,'Beatriz Carvalho','89012347644','Endereco 28',5700,2,2,2),(79,'Julio Costa','90123458755','Endereco 29',5800,2,2,2),(80,'Camila Faria','01234569866','Endereco 30',5900,2,2,2),(81,'Renan Almeida','12345670977','Endereco 31',6000,2,2,2),(82,'Priscila Oliveira','23456781088','Endereco 32',6100,2,2,2),(83,'Fábio Ribeiro','34567892199','Endereco 33',6200,2,2,2),(84,'Simone Rezende','45678903211','Endereco 34',6300,2,2,2),(85,'Elias Sousa','56789124322','Endereco 35',6400,2,2,2),(86,'Juliana Tavares','67891235433','Endereco 36',6500,2,2,2),(87,'Danilo Freitas','78912346544','Endereco 37',6600,2,2,2),(88,'Letícia Santos','89012347655','Endereco 38',6700,2,2,2),(89,'Joaquim Costa','90123458766','Endereco 39',6800,2,2,2),(90,'Marina Almeida','01234569877','Endereco 40',6900,2,2,2),(91,'Emanuel Pinto','12345670988','Endereco 41',7000,2,2,2),(92,'Patricia Silva','23456781099','Endereco 42',7100,2,2,2),(93,'Renato Barros','34567892111','Endereco 43',7200,2,2,2),(94,'Marta Oliveira','45678903222','Endereco 44',7300,2,2,2),(95,'Ivan Ferreira','56789124333','Endereco 45',7400,2,2,2),(96,'Diana Sousa','67891235444','Endereco 46',7500,2,2,2),(97,'Eduarda Lima','78912346555','Endereco 47',7600,2,2,2),(98,'Gustavo Cunha','89012347666','Endereco 48',7700,2,2,2),(99,'Clara Mello','90123458777','Endereco 49',7800,2,2,2),(100,'Leonardo Batista','01234569888','Endereco 50',7900,2,2,2);
/*!40000 ALTER TABLE `tb_funcionario` ENABLE KEYS */;
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

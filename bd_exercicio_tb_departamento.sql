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
-- Table structure for table `tb_departamento`
--

DROP TABLE IF EXISTS `tb_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_departamento` (
  `depto_codigo` int(11) NOT NULL,
  `depto_nome` varchar(60) DEFAULT NULL,
  `local_cod` int(11) DEFAULT NULL,
  PRIMARY KEY (`depto_codigo`),
  KEY `fk_local_depto_cod_idx` (`local_cod`),
  CONSTRAINT `fk_depto_local_cod` FOREIGN KEY (`local_cod`) REFERENCES `tb_local` (`local_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_departamento`
--

LOCK TABLES `tb_departamento` WRITE;
/*!40000 ALTER TABLE `tb_departamento` DISABLE KEYS */;
INSERT INTO `tb_departamento` VALUES (1,'TI',1),(2,'RH',2),(3,'ADM',3),(4,'Financeiro',1),(5,'Marketing',2),(6,'Vendas',3),(7,'Suporte',1),(8,'Logística',2),(9,'Pesquisa e Desenvolvimento',3),(10,'Qualidade',1),(11,'Atendimento ao Cliente',2),(12,'Desenvolvimento',3),(13,'Gestão de Projetos',1),(14,'Jurídico',2),(15,'Compliance',3),(16,'Treinamento',1),(17,'Infraestrutura',2),(18,'Serviços Gerais',3),(19,'Relações Públicas',1),(20,'E-commerce',2),(21,'Estratégia',3),(22,'Desenvolvimento de Produto',1),(23,'Dados e Análise',2),(24,'Manutenção',3),(25,'Segurança da Informação',1),(26,'Suprimentos',2),(27,'Relacionamento com Fornecedores',3),(28,'Expansão',1),(29,'Inteligência de Mercado',2),(30,'Projetos Especiais',3),(31,'Análise Financeira',1),(32,'Planejamento Estratégico',2),(33,'Eventos',3),(34,'Sustentabilidade',1),(35,'Capacitação',2),(36,'Administração de Contratos',3),(37,'Comunicação Interna',1),(38,'Desenvolvimento Organizacional',2),(39,'Gestão de Talentos',3),(40,'Pesquisa de Mercado',1),(41,'Experiência do Cliente',2),(42,'Gestão de Risco',3),(43,'Engenharia',1),(44,'Gestão de Crise',2),(45,'Desenvolvimento Sustentável',3),(46,'Atividades Culturais',1),(47,'Desempenho e Resultados',2),(48,'Gestão de Fornecedores',3),(49,'Inovação',1),(50,'Empreendedorismo',2);
/*!40000 ALTER TABLE `tb_departamento` ENABLE KEYS */;
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

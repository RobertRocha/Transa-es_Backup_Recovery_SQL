-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: oficina
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `autorizacao`
--

DROP TABLE IF EXISTS `autorizacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autorizacao` (
  `idAutorizacao` int NOT NULL AUTO_INCREMENT,
  `pagamento` enum('Dinheiro','Cartao') DEFAULT 'Dinheiro',
  `id_Cliente` int DEFAULT NULL,
  PRIMARY KEY (`idAutorizacao`),
  KEY `fk_autorizacao_cliente` (`id_Cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autorizacao`
--

LOCK TABLES `autorizacao` WRITE;
/*!40000 ALTER TABLE `autorizacao` DISABLE KEYS */;
INSERT INTO `autorizacao` VALUES (1,'Cartao',1),(2,'Dinheiro',1),(3,'Dinheiro',2),(4,'Cartao',3),(5,'Cartao',2),(6,'Dinheiro',4);
/*!40000 ALTER TABLE `autorizacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `telefone` varchar(12) DEFAULT NULL,
  `endereço` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Anderson Pereira','123456987','rua mogi 45, florestal, ilheus'),(2,'Joana Mattos','987456214','rua cotti 87, centro, Rio de Janeiro'),(3,'Daniel Amorim','852146789','rua manganes 587, centro, Congonhas'),(4,'Fernanda Albano','375649870','rua helium 125, centro, Belo Horizonte');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clienteveiculo`
--

DROP TABLE IF EXISTS `clienteveiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clienteveiculo` (
  `id_Cliente` int DEFAULT NULL,
  `id_Veiculo` int DEFAULT NULL,
  KEY `fk_clienteVeiculo_cliente` (`id_Cliente`),
  KEY `fk_clienteVeiculo_veiculo` (`id_Veiculo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clienteveiculo`
--

LOCK TABLES `clienteveiculo` WRITE;
/*!40000 ALTER TABLE `clienteveiculo` DISABLE KEYS */;
INSERT INTO `clienteveiculo` VALUES (1,1),(1,2),(2,3),(3,4),(2,5),(4,6);
/*!40000 ALTER TABLE `clienteveiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conserto`
--

DROP TABLE IF EXISTS `conserto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conserto` (
  `idConserto` int NOT NULL AUTO_INCREMENT,
  `relatoProblema` varchar(100) DEFAULT NULL,
  `pecasTroca` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idConserto`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conserto`
--

LOCK TABLES `conserto` WRITE;
/*!40000 ALTER TABLE `conserto` DISABLE KEYS */;
INSERT INTO `conserto` VALUES (1,'motor falhando','velas e cabo de velas'),(2,'falha de frenagem','pastilha de freio'),(3,'vazamento de água','bomba d\"agua'),(4,'vazamento de óleo','tampa do reservatório'),(5,'vazamento de água','radiador'),(6,'amortecedor vazando',' par de amortecedor dianteiro');
/*!40000 ALTER TABLE `conserto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_v2`
--

DROP TABLE IF EXISTS `customer_v2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_v2` (
  `customer_id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` tinyint unsigned NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address_id` smallint unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`customer_id`),
  KEY `idx_fk_store_id` (`store_id`),
  KEY `idx_fk_address_id` (`address_id`),
  KEY `idx_last_name` (`last_name`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_v2`
--

LOCK TABLES `customer_v2` WRITE;
/*!40000 ALTER TABLE `customer_v2` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_v2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mecanico`
--

DROP TABLE IF EXISTS `mecanico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mecanico` (
  `idMecanico` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `especialidade` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idMecanico`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mecanico`
--

LOCK TABLES `mecanico` WRITE;
/*!40000 ALTER TABLE `mecanico` DISABLE KEYS */;
INSERT INTO `mecanico` VALUES (1,'Michael Felix','rua paru 54, centro, Belo Horizonte','mecânico'),(2,'Rodrigo Leal','rua augusto 98, centro, Belo Horizonte','mecânico'),(3,'bento césar','rua mosaico 125, centro, Belo Horizonte','revisão');
/*!40000 ALTER TABLE `mecanico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mecanicoordemservico`
--

DROP TABLE IF EXISTS `mecanicoordemservico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mecanicoordemservico` (
  `id_Mecanico` int DEFAULT NULL,
  `id_OrdemServico` int DEFAULT NULL,
  KEY `fk_mecanicoOrdemServico_mecanico` (`id_Mecanico`),
  KEY `fk_mecanicoOrdemServico_ordemServico` (`id_OrdemServico`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mecanicoordemservico`
--

LOCK TABLES `mecanicoordemservico` WRITE;
/*!40000 ALTER TABLE `mecanicoordemservico` DISABLE KEYS */;
INSERT INTO `mecanicoordemservico` VALUES (1,1),(1,2),(1,3),(2,4),(2,5),(2,6),(3,7),(3,8);
/*!40000 ALTER TABLE `mecanicoordemservico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordemservico`
--

DROP TABLE IF EXISTS `ordemservico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordemservico` (
  `idOrdemServico` int NOT NULL AUTO_INCREMENT,
  `dataEmissao` date DEFAULT NULL,
  `tipoServico` varchar(45) DEFAULT NULL,
  `valorServico` varchar(45) DEFAULT NULL,
  `valorPeca` varchar(45) DEFAULT NULL,
  `statuss` varchar(45) DEFAULT NULL,
  `dataEntrega` date DEFAULT NULL,
  PRIMARY KEY (`idOrdemServico`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordemservico`
--

LOCK TABLES `ordemservico` WRITE;
/*!40000 ALTER TABLE `ordemservico` DISABLE KEYS */;
INSERT INTO `ordemservico` VALUES (1,'2024-05-19','motor falhando','300,00','140,00','fase de teste','2024-05-20'),(2,'2024-05-19','falha de frenagem','400,00','200,00','teste final','2024-05-20'),(3,'2024-05-19','vazamento de água','700,00','250,00','finalizado','2024-05-21'),(4,'2024-05-19','vazamento de óleo','550,00','150,00','fase de teste','2024-05-22'),(5,'2024-05-19','vazamento de água','1500,00','800,00','fase de teste','2024-05-22'),(6,'2024-05-19','amortecedor vazando','2000,00','950,00','finalizado','2024-05-23'),(7,'2024-05-19','revisao','200,00',NULL,NULL,'2024-05-20'),(8,'2024-05-19','revisao','200,00',NULL,NULL,'2024-05-20');
/*!40000 ALTER TABLE `ordemservico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisao`
--

DROP TABLE IF EXISTS `revisao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisao` (
  `idRevisao` int NOT NULL AUTO_INCREMENT,
  `servicosRealizados` varchar(100) DEFAULT NULL,
  `pecasTroca` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idRevisao`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisao`
--

LOCK TABLES `revisao` WRITE;
/*!40000 ALTER TABLE `revisao` DISABLE KEYS */;
INSERT INTO `revisao` VALUES (1,'revisao no câmbio',NULL),(2,'revisao na suspensão',NULL);
/*!40000 ALTER TABLE `revisao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculo` (
  `idVeiculo` int NOT NULL AUTO_INCREMENT,
  `nomeVeiculo` varchar(15) DEFAULT NULL,
  `montadora` varchar(10) DEFAULT NULL,
  `placa` char(7) DEFAULT NULL,
  PRIMARY KEY (`idVeiculo`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo`
--

LOCK TABLES `veiculo` WRITE;
/*!40000 ALTER TABLE `veiculo` DISABLE KEYS */;
INSERT INTO `veiculo` VALUES (1,'Uno','Fiat','IVX4H97'),(2,'Gol','VW','CRF7Y98'),(3,'Fiesta','Ford','RUI8E65'),(4,'S10','GM','PUI3Q12'),(5,'Palio','Fiat','LKJ5N49'),(6,'Tiguan','VW','FRE2M21');
/*!40000 ALTER TABLE `veiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculoconserto`
--

DROP TABLE IF EXISTS `veiculoconserto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculoconserto` (
  `id_Veiculo` int DEFAULT NULL,
  `id_Conserto` int DEFAULT NULL,
  KEY `fk_veiculoConserto_veiculo` (`id_Veiculo`),
  KEY `fk_veiculoConserto_conserto` (`id_Conserto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculoconserto`
--

LOCK TABLES `veiculoconserto` WRITE;
/*!40000 ALTER TABLE `veiculoconserto` DISABLE KEYS */;
INSERT INTO `veiculoconserto` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6);
/*!40000 ALTER TABLE `veiculoconserto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculomecanico`
--

DROP TABLE IF EXISTS `veiculomecanico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculomecanico` (
  `id_Veiculo` int DEFAULT NULL,
  `id_Mecanico` int DEFAULT NULL,
  KEY `fk_veiculoMecanico_veiculo` (`id_Veiculo`),
  KEY `fk_veiculoMecanico_mecanico` (`id_Mecanico`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculomecanico`
--

LOCK TABLES `veiculomecanico` WRITE;
/*!40000 ALTER TABLE `veiculomecanico` DISABLE KEYS */;
INSERT INTO `veiculomecanico` VALUES (1,1),(2,1),(3,1),(4,2),(5,2),(6,2),(1,3),(2,3);
/*!40000 ALTER TABLE `veiculomecanico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculorevisao`
--

DROP TABLE IF EXISTS `veiculorevisao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculorevisao` (
  `id_Veiculo` int DEFAULT NULL,
  `id_Revisao` int DEFAULT NULL,
  KEY `fk_veiculoRevisao_veiculo` (`id_Veiculo`),
  KEY `fk_veiculoRevisao_revisao` (`id_Revisao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculorevisao`
--

LOCK TABLES `veiculorevisao` WRITE;
/*!40000 ALTER TABLE `veiculorevisao` DISABLE KEYS */;
INSERT INTO `veiculorevisao` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `veiculorevisao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'oficina'
--

--
-- Dumping routines for database 'oficina'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-02 23:08:59

-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: starwars
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Current Database: `starwars`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `starwars` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `starwars`;

--
-- Table structure for table `personagem`
--

DROP TABLE IF EXISTS `personagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personagem` (
  `id` int DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `altura` decimal(4,2) DEFAULT NULL,
  `em_destaque` tinyint(1) DEFAULT NULL,
  `nascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personagem`
--

LOCK TABLES `personagem` WRITE;
/*!40000 ALTER TABLE `personagem` DISABLE KEYS */;
INSERT INTO `personagem` VALUES (1,'LukeSkywalker',1.75,1,'3091-10-25'),(6,'Leia Organa',1.60,1,'3093-08-11');
/*!40000 ALTER TABLE `personagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planeta`
--

DROP TABLE IF EXISTS `planeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planeta` (
  `id` int DEFAULT NULL,
  `nome` varchar(120) DEFAULT NULL,
  `raio` decimal(8,2) DEFAULT NULL,
  `qtde_luas` int DEFAULT NULL,
  `habitado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planeta`
--

LOCK TABLES `planeta` WRITE;
/*!40000 ALTER TABLE `planeta` DISABLE KEYS */;
INSERT INTO `planeta` VALUES (2,'Alderaan',6250.00,0,1),(4,'Sullust',NULL,3,1);
/*!40000 ALTER TABLE `planeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `juncoes`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `juncoes` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `juncoes`;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'Ana Silva'),(2,'Maria Oliveira'),(3,'Carlos Santos');
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL,
  `nome_completo` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(50) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Brinn Lory','blory0@friendfeed.com','343-625-8493','76 Meadow Valley Place'),(2,'Fitz Bradburne','fbradburne1@time.com','373-927-8626','05 Carpenter Crossing'),(3,'Ina Pilkinton','ipilkinton2@sun.com','618-380-4933','6 Bultman Junction'),(4,'Jeanie Brenton','jbrenton3@gov.uk','278-394-8290','89 Kenwood Junction'),(5,'Dorri Erdes','derdes4@vinaora.com','275-685-8126','891 Esch Way'),(6,'Tabbitha Ivain','tivain5@vistaprint.com','886-392-5849','0314 Elgar Alley'),(7,'Julieta McKibbin','jmckibbin6@nyu.edu','862-954-3702','14344 Schlimgen Park'),(8,'Laural Mauvin','lmauvin7@msn.com','358-462-8107','15 Service Court'),(9,'Sean Pardon','spardon8@cocolog-nifty.com','574-793-6823','103 North Terrace'),(10,'Mahmoud Mingard','mmingard9@sohu.com','435-155-1715','7 Randy Way');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
  `id_produto` int NOT NULL,
  `id_cliente` int NOT NULL,
  `quantidade` int NOT NULL,
  `frete` decimal(5,2) NOT NULL,
  `data` date DEFAULT NULL,
  `metodo_pagamento` enum('pix','crédito','débito') DEFAULT NULL,
  `status` enum('em processamento','a caminho','entregue') DEFAULT NULL,
  PRIMARY KEY (`id_cliente`,`id_produto`),
  KEY `id_produto` (`id_produto`),
  CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id_produto`),
  CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (4,1,2,82.11,'2022-06-29','pix','entregue'),(2,3,6,73.82,'2022-02-11','débito','entregue'),(10,4,9,97.14,'2022-10-11','pix','entregue'),(10,5,1,85.32,'2022-11-13','débito','em processamento'),(4,6,9,42.52,'2022-06-01','crédito','a caminho'),(6,6,1,18.70,'2022-04-10','débito','entregue'),(4,7,4,21.50,'2022-05-09','débito','a caminho'),(5,7,4,46.99,'2022-12-01','débito','a caminho'),(6,8,4,75.54,'2022-11-15','pix','entregue'),(10,8,3,14.30,'2022-12-22','pix','em processamento');
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,'Matematica'),(2,'História'),(3,'Inglês');
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empregado`
--

DROP TABLE IF EXISTS `empregado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empregado` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `id_supervisor` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_supervisor` (`id_supervisor`),
  CONSTRAINT `empregado_ibfk_1` FOREIGN KEY (`id_supervisor`) REFERENCES `empregado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empregado`
--

LOCK TABLES `empregado` WRITE;
/*!40000 ALTER TABLE `empregado` DISABLE KEYS */;
INSERT INTO `empregado` VALUES (1,'Patricia','Gerente de projeto',NULL),(2,'Gisele','Desenvolvedora',1),(3,'Mariana','Analista de qualidade',1);
/*!40000 ALTER TABLE `empregado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme`
--

DROP TABLE IF EXISTS `filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `ano_lancamento` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme`
--

LOCK TABLES `filme` WRITE;
/*!40000 ALTER TABLE `filme` DISABLE KEYS */;
INSERT INTO `filme` VALUES (1,'Filme A',2010),(2,'Filme B',2015),(3,'Filme c',2012);
/*!40000 ALTER TABLE `filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matricula` (
  `id_aluno` int NOT NULL,
  `id_disciplina` int NOT NULL,
  `quantidade_credito` int DEFAULT '4',
  PRIMARY KEY (`id_aluno`,`id_disciplina`),
  KEY `id_disciplina` (`id_disciplina`),
  CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id`),
  CONSTRAINT `matricula_ibfk_2` FOREIGN KEY (`id_disciplina`) REFERENCES `disciplina` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
INSERT INTO `matricula` VALUES (1,1,4),(1,2,4),(2,1,4);
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `idade` int NOT NULL,
  `filme_preferido` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filme_preferido` (`filme_preferido`),
  CONSTRAINT `pessoa_ibfk_1` FOREIGN KEY (`filme_preferido`) REFERENCES `filme` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,'João',25,1),(2,'Maria',30,1),(3,'Carlos',25,NULL),(4,'Antonio',35,2);
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id_produto` int NOT NULL,
  `nome_produto` varchar(8) NOT NULL,
  `preco` decimal(6,2) NOT NULL,
  `descricao` text NOT NULL,
  `cor` varchar(50) NOT NULL,
  `tamanho` varchar(2) NOT NULL,
  `estacao` varchar(9) NOT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'calça',215.73,'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.','Violet','M','inverno'),(2,'camiseta',852.07,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.','Teal','GG','primavera'),(3,'tênis',970.26,'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.','Fuscia','GG','primavera'),(4,'chapéu',91.98,'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.','Pink','GG','inverno'),(5,'moletom',510.69,'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.','Pink','GG','outono'),(6,'camiseta',922.63,'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','Aquamarine','GG','outono'),(7,'sapato',779.52,'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.','Yellow','G','outono'),(8,'camiseta',967.05,'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.','Turquoise','M','verao'),(9,'chapéu',280.29,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.','Indigo','P','outono'),(10,'camiseta',742.80,'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.','Indigo','M','outono');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-21 21:31:10

-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: TRABALHO_BD1
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ENDERECO`
--

DROP TABLE IF EXISTS `ENDERECO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ENDERECO` (
  `IDENDERECO` int(11) NOT NULL AUTO_INCREMENT,
  `RUA` varchar(30) NOT NULL,
  `BAIRRO` varchar(30) NOT NULL,
  `CIDADE` varchar(30) NOT NULL,
  `ESTADO` char(2) NOT NULL,
  `ID_VENDEDOR` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDENDERECO`),
  UNIQUE KEY `ID_VENDEDOR` (`ID_VENDEDOR`),
  CONSTRAINT `ENDERECO_ibfk_1` FOREIGN KEY (`ID_VENDEDOR`) REFERENCES `VENDEDOR` (`IDVENDEDOR`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ENDERECO`
--

LOCK TABLES `ENDERECO` WRITE;
/*!40000 ALTER TABLE `ENDERECO` DISABLE KEYS */;
INSERT INTO `ENDERECO` VALUES (1,'RUA A','CENTRO','B. HORIZONTE','MG',4),(2,'RUA B','CENTRO','RIO DE JANEIRO','RJ',1),(3,'RUA C','JARDINS','SAO PAULO','SP',3),(4,'RUA B','ESTACIO','RIO DE JANEIRO','RJ',8),(5,'RUA Z','CRUZEIRO','B. HORIZONTE','MG',2),(6,'RUA X','FLAMENGO','RIO DE JANEIRO','RJ',7),(7,'RUA Z','CRUZEIRO','B. HORIZONTE','MG',5),(8,'RUA X','CENTRO','JOSE BONIFACIO','MS',6),(9,'RUA X','CENTRO','JOSE BONIFACIO','SP',11),(10,'RUA X','CENTRO','B. HORIZONTE','MG',9),(11,'RUA X','CENTRO','PONTA PORA','MS',10);
/*!40000 ALTER TABLE `ENDERECO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TELEFONE`
--

DROP TABLE IF EXISTS `TELEFONE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TELEFONE` (
  `IDTELEFONE` int(11) NOT NULL AUTO_INCREMENT,
  `TIPO` enum('COM','RES','CEL') DEFAULT NULL,
  `NUMERO` varchar(10) DEFAULT NULL,
  `ID_VENDEDOR` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDTELEFONE`),
  KEY `ID_VENDEDOR` (`ID_VENDEDOR`),
  CONSTRAINT `TELEFONE_ibfk_1` FOREIGN KEY (`ID_VENDEDOR`) REFERENCES `VENDEDOR` (`IDVENDEDOR`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TELEFONE`
--

LOCK TABLES `TELEFONE` WRITE;
/*!40000 ALTER TABLE `TELEFONE` DISABLE KEYS */;
INSERT INTO `TELEFONE` VALUES (1,'CEL','9955331',1),(2,'COM','6574565',3),(3,'CEL','8864566',2),(4,'CEL','5557798',7),(5,'COM','6765768',1),(6,'RES','5676765',6),(7,'CEL','5765547',1),(8,'CEL','8865645',7),(9,'RES','7555446',7),(10,'CEL','5788654',3),(11,'CEL','7865644',6),(12,'RES','5754644',8),(13,'RES','1231231',9),(14,'RES','5751235',10),(15,'RES','9998888',11),(16,'RES','6668887',11),(17,'RES','2987512',8),(18,'COM','1574565',3);
/*!40000 ALTER TABLE `TELEFONE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VENDEDOR`
--

DROP TABLE IF EXISTS `VENDEDOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VENDEDOR` (
  `IDVENDEDOR` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(30) NOT NULL,
  `SEXO` enum('M','F') NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `CPF` varchar(15) DEFAULT NULL,
  `JANEIRO` float(10,2) NOT NULL,
  `FEVEREIRO` float(10,2) NOT NULL,
  `MARCO` float(10,2) NOT NULL,
  PRIMARY KEY (`IDVENDEDOR`),
  UNIQUE KEY `EMAIL` (`EMAIL`),
  UNIQUE KEY `CPF` (`CPF`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VENDEDOR`
--

LOCK TABLES `VENDEDOR` WRITE;
/*!40000 ALTER TABLE `VENDEDOR` DISABLE KEYS */;
INSERT INTO `VENDEDOR` VALUES (1,'JOAO','M','JOAO@IG.COM','98547-6',76234.78,88346.87,5756.90),(2,'CARLOS','M','CARLOS@TERA.COM','86664-7',5865.78,6768.87,4467.90),(3,'ANA','F','ANA@GLOBO.COM','75658-5',78769.78,6685.87,6664.90),(4,'JORGE','M','JORGE@IG.COM','88657-5',5779.78,446886.88,8965.90),(5,'CLARA','F','CLARA@IG.COM','99754-7',676545.75,77544.87,578665.88),(6,'CELIA','F','JOAO@TERRA.COM','77558-5',57789.78,44774.87,68665.90),(7,'DANIEL','M','DANIEL@GMAIL.COM','1123-7',4785.78,66478.87,6887.90),(8,'JOSUE','M','JOSUE@TERRA.COM','91212-2',89667.78,57654.87,5755.90),(9,'GIULIANO','M','GIULIANO@HOTMAIL.COM','21346-5',45000.50,84523.22,4500.89),(10,'LUCAS','M','LUCAS@TERRA.COM','523400-0',9850.80,77889.20,8570.58),(11,'THIAGO','M','THIAGO@GMAIL.COM','51233-5',8505.98,87951.52,4789.52);
/*!40000 ALTER TABLE `VENDEDOR` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-25 16:09:01
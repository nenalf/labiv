-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: energia
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `fato_energia`
--

DROP TABLE IF EXISTS `fato_energia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fato_energia` (
  `Qtde Coletada` decimal(12,3) DEFAULT NULL,
  `Qtde Programada` decimal(12,3) DEFAULT NULL,
  `Fator de Geração` decimal(6,2) DEFAULT NULL,
  `Tempo_idTempo` int(11) NOT NULL,
  `Localidade_idLocalidade` int(11) NOT NULL,
  `Fonte de Energia_idTipo de Energia` int(11) NOT NULL,
  `Qtde Verificada` decimal(12,3) DEFAULT NULL,
  `Fato - Energiacol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Tempo_idTempo`,`Localidade_idLocalidade`,`Fonte de Energia_idTipo de Energia`),
  KEY `fk_Fato - Energia_Tempo_idx` (`Tempo_idTempo`),
  KEY `fk_Fato - Energia_Localidade1_idx` (`Localidade_idLocalidade`),
  KEY `fk_Fato - Energia_Fonte de Energia1_idx` (`Fonte de Energia_idTipo de Energia`),
  CONSTRAINT `fk_Fato - Energia_Fonte de Energia1` FOREIGN KEY (`Fonte de Energia_idTipo de Energia`) REFERENCES `fonte de energia` (`idTipo de Energia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fato - Energia_Localidade1` FOREIGN KEY (`Localidade_idLocalidade`) REFERENCES `localidade` (`idLocalidade`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fato - Energia_Tempo` FOREIGN KEY (`Tempo_idTempo`) REFERENCES `tempo` (`idTempo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fato_energia`
--

LOCK TABLES `fato_energia` WRITE;
/*!40000 ALTER TABLE `fato_energia` DISABLE KEYS */;
/*!40000 ALTER TABLE `fato_energia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-19 19:59:36

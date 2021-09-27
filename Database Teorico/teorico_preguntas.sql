-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: teorico
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `preguntas`
--

DROP TABLE IF EXISTS `preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preguntas` (
  `id_pregunta` int NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(250) NOT NULL,
  `tipo` int NOT NULL,
  PRIMARY KEY (`id_pregunta`),
  KEY `tipo` (`tipo`),
  CONSTRAINT `preguntas_ibfk_1` FOREIGN KEY (`tipo`) REFERENCES `tipo_pregunta` (`id`),
  CONSTRAINT `preguntas_ibfk_2` FOREIGN KEY (`tipo`) REFERENCES `tipo_pregunta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntas`
--

LOCK TABLES `preguntas` WRITE;
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
INSERT INTO `preguntas` VALUES (24,'Los funcionarios del cuerpo de inspectores de tránsito, no están facultados para modificar las preferencias establecidas o los sentidos de circulación.',1),(25,'Ante irregularidades en la documentación o estado del vehículo, este puede ser detenido por funcionario de tránsito, igual que la documentación (del conductor y del vehículo) previa entrega del recibo pertinente',1),(26,'Al reventarse una neumático se debe:',1),(27,'Cuando un automóvil al salir de un garaje cruza la vereda, ¿obtiene la preferencia sobre los peatones que circulan por ella?',1),(28,'El peatón: ¿tiene preferencia de cruce en cualquier lugar de la calzada?',1),(29,'Cruce peatonal es:',1),(30,'¿Se puede adelantar a un vehículo que está dando paso a peatones?',1),(31,'Ante la proximidad de un vehículo de emergencia usted:',1),(32,'¿Qué luces deben llevar encendidas un vehículo durante la noche en las áreas urbanas?',1),(33,'Las luces altas ¿deben sustituirse por las de alcance medio cuando hay riesgo de encandilamiento?',1),(34,'Cuando va detrás de un vehículo durante la noche deben usarse las luces cortas',1),(35,'¿Cuál es la edad mínima para poder viajar en el asiento delantero del vehículo?',1),(36,'  Donde ?',1),(37,'  La preferencia de paso del vehículo de la derecha no regirá:',1),(38,'  Un conductor al enfrentar una señal de PARE debe:',1),(39,'  Un conductor al enfrentar una señal de PARE debe:',1),(40,'  Un cruce regulado:',1);
/*!40000 ALTER TABLE `preguntas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-27 14:02:23

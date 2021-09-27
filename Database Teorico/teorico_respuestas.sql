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
-- Table structure for table `respuestas`
--

DROP TABLE IF EXISTS `respuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respuestas` (
  `id_respuesta` int NOT NULL AUTO_INCREMENT,
  `respuesta` varchar(250) NOT NULL,
  `pregunta_id` int NOT NULL,
  PRIMARY KEY (`id_respuesta`),
  KEY `pregunta_id` (`pregunta_id`),
  CONSTRAINT `respuestas_ibfk_1` FOREIGN KEY (`pregunta_id`) REFERENCES `preguntas` (`id_pregunta`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuestas`
--

LOCK TABLES `respuestas` WRITE;
/*!40000 ALTER TABLE `respuestas` DISABLE KEYS */;
INSERT INTO `respuestas` VALUES (19,'Verdadero',24),(20,'Falso',24),(21,'Verdadero',25),(22,'Falso',25),(23,'Tomar fuertemente el volante y frenar tan suavemente como le sea posible',26),(24,'Frenar bruscamente',26),(25,'Quitar el pie del acelerador y girar para el lado que reventó el neumático',26),(26,'Frenar suavemente, arrimando el auto al borde derecho hasta detenerse',26),(27,'Apagar el motor',26),(28,'Si',27),(29,'No',27),(30,'Si',28),(31,'No',28),(32,'Parte de la calle habilitada para ser atravesada por peatones',29),(33,'La senda de seguridad formada por la prolongación (imaginaria o demarcada) del eje de calzada',29),(34,'Parte de la vereda donde se debe esperar hasta poder cruzar',29),(35,'Los llamados “lomos de burro',29),(36,'Las señalizadas con franjas blancas paralelas',29),(37,'Sí, pero reduciendo la velocidad',30),(38,'No',30),(39,'Aumenta la velocidad',31),(40,'Despeja rápidamente la calzada permaneciendo detenido donde no moleste',31),(41,'Hace cambio de luces y toca la bocina para avisar al resto de los conductores',31),(42,'Ninguna es correcta',31),(43,'Luces altas o bajas de acuerdo a la situación del tránsito',32),(44,'Cualquiera indistintamente',32),(45,'Luces de posición',32),(46,'Solo A y C son correctas',32),(47,'Si',33),(48,'No',33),(49,'En ningún momento',34),(50,'Cuando la distancia haga innecesarias las luces largas',34),(51,'Cuando la visibilidad sea muy buena',34),(52,'Ninguna de las anteriores es correcta',34),(53,'1 año',35),(54,'6 años\r\n       ',35),(55,'12 años',35),(56,'Ninguna es correcta',35),(57,'esp 1',36),(58,'resp 2',36),(59,'resp 3',36),(60,'En los cruces regulados con semáforos o agentes de tránsito',37),(61,'En las vías de doble tránsito',37),(62,'En los cruces no regulados',37),(63,'Seguir su marcha a la misma velocidad',38),(64,'Reducir un poco la velocidad y continuar',38),(65,'Detener totalmente la marcha',38),(66,'Reducir la velocidad y detenerse si fuera necesario',38),(67,'Seguir su marcha a la misma velocidad',39),(68,'Reducir un poco la velocidad y continuar',39),(69,'Detener totalmente la marcha',39),(70,'Reducir la velocidad y detenerse si fuera necesario',39),(71,'Es aquel en que existe semáforos funcionando regularmente, un inspector o un agente de tránsito',40),(72,'En el que existe cualquier tipo de señal vertical o horizontal',40),(73,'Ninguna es correcta',40);
/*!40000 ALTER TABLE `respuestas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-27 14:02:21

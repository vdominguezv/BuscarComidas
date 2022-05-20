-- MariaDB dump 10.19  Distrib 10.6.7-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: BuscarComidas
-- ------------------------------------------------------
-- Server version	10.6.7-MariaDB-3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tFavorito`
--

DROP TABLE IF EXISTS `tFavorito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tFavorito` (
  `id_favorito` int(11) NOT NULL AUTO_INCREMENT,
  `restaurante_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_favorito`),
  KEY `restaurante_id` (`restaurante_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `tFavorito_ibfk_1` FOREIGN KEY (`restaurante_id`) REFERENCES `tRestaurante` (`id_restaurante`),
  CONSTRAINT `tFavorito_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `tUsuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tFavorito`
--

LOCK TABLES `tFavorito` WRITE;
/*!40000 ALTER TABLE `tFavorito` DISABLE KEYS */;
/*!40000 ALTER TABLE `tFavorito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tRestaurante`
--

DROP TABLE IF EXISTS `tRestaurante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tRestaurante` (
  `id_restaurante` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `latitud` decimal(10,5) DEFAULT NULL,
  `longitud` decimal(10,5) DEFAULT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_restaurante`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tRestaurante`
--

LOCK TABLES `tRestaurante` WRITE;
/*!40000 ALTER TABLE `tRestaurante` DISABLE KEYS */;
INSERT INTO `tRestaurante` VALUES (1,'La Caseta de Aurora','Se caracteriza por ser una pulperia 100% tradicional y de gran calidad',43.35642,-8.41455,'Rua Igualdad, 1, 15008 A Coruna'),(2,'O Silandeiro','Ofrece amplia variedad de carnes y pescados de primera calidad',43.35293,-8.40481,'Rua Chile, 8, 15009 A Coruna'),(3,'Culuca cocina-bar','Platos innovadores de picoteo y cocteles creativos',43.36435,-8.40897,'Av. de Arteixo, 10, 15004 A Coruna'),(4,'Parrillada Buenos Aires','Parrillada argentina especializada en carnes y pescados',43.36085,-8.41584,'Rua San Leandro, 5, 15007 A Coruna'),(5,'Raxaria As Neves','Ambiente familiar y amplios comedores con cocina gallega y especialidad en raxo',43.36581,-8.42390,'Rda. de Outeiro, 300, 15011 A Coruna'),(6,'El De Alberto','Platos vanguardistas en sofisticado restaurante con cocina de autor',43.37012,-8.40515,'Rua Comandante Fontanes, 1, 15003 A Coruna'),(7,'Gloria Bendita','Restaurante de estilo rustico chic con platos de marisco, chuletones y paella',43.36843,-8.41064,'Rua Riazor, 2, 15004 A Coruna'),(8,'Mediterraneo Basilico','Muebles blancos y decoracion cuidada con cocina mediterranea',43.36971,-8.41931,'Rua Manuel Murguia, 34, 15011 A Coruna'),(9,'La Sarten de Coruna','Restaurante moderno de marisco con platos de bogavante y cangrejo',43.37324,-8.39657,'Praza de Espana, 11, 15001 A Coruna'),(10,'La Masia','Platos de marisco y de carne fritos o a la brasa',43.35506,-8.41495,'Av. de Arteixo, 88, 15008 A Coruna');
/*!40000 ALTER TABLE `tRestaurante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tUsuario`
--

DROP TABLE IF EXISTS `tUsuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tUsuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contrasena` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tUsuario`
--

LOCK TABLES `tUsuario` WRITE;
/*!40000 ALTER TABLE `tUsuario` DISABLE KEYS */;
INSERT INTO `tUsuario` VALUES (1,'prueba','prueba','$2y$10$G3dByOMf5bqbBEUcqD/RM.YtN4TvvVdN8DU0VySO5enCRX8cttlXy');
/*!40000 ALTER TABLE `tUsuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-20 18:19:09

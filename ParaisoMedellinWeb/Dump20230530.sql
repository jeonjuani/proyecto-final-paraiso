-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: base
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `line`
--

DROP TABLE IF EXISTS `line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `line` (
  `id_line` char(1) NOT NULL,
  `official_name` varchar(30) NOT NULL,
  `status_percentage` float NOT NULL,
  `length_in_km` float NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'Tren Metropolitano',
  `amount_of_stations` int NOT NULL,
  PRIMARY KEY (`id_line`),
  UNIQUE KEY `official_name` (`official_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `line`
--

LOCK TABLES `line` WRITE;
/*!40000 ALTER TABLE `line` DISABLE KEYS */;
INSERT INTO `line` VALUES ('1','Línea 1 de Buses',0,11.5,'Autobús de tránsito rápido',10),('2','Línea 2 de Buses',0,12.1,'Autobús de tránsito rápido',11),('A','Línea A',60.2,13.5,'Tren Metropolitano',19),('B','Línea B',78.5,7.2,'Tren Metropolitano',6),('C','Vía de Enlace',95.2,8,'Tren Metropolitano',0),('H','Metrocable Villa Linda',0,1.4,'Cable aerosuspendido',3),('J','Metrocable Atardeceres',85.2,2.6,'Cable aerosuspendido',4),('K','Metrocable Santa Sevilla',0,1.8,'Cable aerosuspendido',3),('L','Metrocable Arví',0,3.2,'Cable aerosuspendido',2),('O','Línea O de Buses',1.5,13.7,'Autobús de servicio rápido',9),('P','Metrocable El Bosque',0,2.8,'Cable aerosuspendido',3),('T','Tranvía de La Villa',0,9.2,'Translohr',6);
/*!40000 ALTER TABLE `line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station` (
  `id_station` varchar(3) NOT NULL,
  `id_line` char(1) DEFAULT NULL,
  `commercial_name` varchar(30) DEFAULT NULL,
  `build_percentage` float DEFAULT NULL,
  `neighborhood_name` varchar(30) DEFAULT NULL,
  `municipality_name` varchar(15) DEFAULT NULL,
  `amount_of_entrances` int DEFAULT NULL,
  PRIMARY KEY (`id_station`),
  UNIQUE KEY `unique_id_station` (`id_station`),
  UNIQUE KEY `unique_commercial_name` (`commercial_name`),
  KEY `id_line` (`id_line`),
  CONSTRAINT `station_ibfk_1` FOREIGN KEY (`id_line`) REFERENCES `line` (`id_line`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES ('ATD','J','Atardeceres',85.2,'Pajarito','Paraíso',1),('AYU','A','Ayurá',0,'Ayurá','Las Vegas',1),('BC1','1','Barrio Colombia 1',0,'Guayabal','Paraíso',1),('BC2','2','Barrio Colombia 2',0,'Guayabal','Paraíso',1),('BCA','A','Barrio Colombia A',85.2,'Barrio Colombia','Paraíso',1),('BEA','A','Bellavista A',15,'Bellavista','Paraíso',2),('BEK','K','Bellavista K',0,'Bellavista','Paraíso',2),('BEP','P','Bellavista P',0,'Héctor Abad Gómez','Paraíso',2),('CAB','A','Cabañas',0,'Ciudad Central','Fabricato',1),('CEM','O','Cementerio',0,'Villasanjuan','Paraíso',2),('CIU','O','Ciudadela Universitaria',0,'Palenque','Paraíso',2),('COA','A','Colina Real A',0,'El Castillo','Paraíso',2),('COO','O','Colina Real O',0,'El Castillo','Paraíso',1),('DOO','P','Dos de Octubre',0,'Dos de Octubre','Paraíso',1),('EH1','1','El Hueco 1',0,'El Hueco','Paraíso',1),('EHU','B','El Hueco B',35.7,'El Hueco','Paraíso',2),('ELB','P','El Bosque',0,'El Bosque','Fabricato',1),('EM1','1','Esmeraldas 1',0,'Las Esmeraldas','Paraíso',1),('EM2','2','Esmeraldas 2',0,'Las Esmeraldas','Paraíso',1),('ESH','H','Este H',0,'Verona Caicedonia','Paraíso',1),('EST','T','Este T',0,'Verona Caicedonia','Paraíso',1),('EXP','A','Exposiciones (sin asignar)',0,'Barrio Triste','Paraíso',2),('FAB','A','Fabricato',89.5,'Manchester','Fabricato',1),('GU1','1','Guayacán 1',0,'Palo Verde','Paraíso',1),('GU2','2','Guayacán 2',0,'Palo Verde','Paraíso',1),('HO1','1','Hospital 1',0,'Pradera','Paraíso',3),('HOA','A','Hospital A',35.7,'Pradera','Paraíso',3),('IBI','B','Ibiza',35.7,'Corazón de Jesús','Paraíso',1),('IGU','J','La Iguaná',90.5,'La Iguaná','Paraíso',1),('JAR','H','Jardín',0,'Pan de Azúcar','Paraíso',1),('JER','O','Jerusalén',0,'San Lorenzo','Paraíso',2),('LAB','B','La América B',35.7,'La América','Paraíso',1),('LAO','O','La América O',0,'La América','Paraíso',2),('LAP','A','La Perla',91.5,'Calle Nueva','Tres Esquinas',1),('LL1','1','Los Lirios 1',0,'Guayabal','Paraíso',1),('LL2','2','Los Lirios 2',0,'Guayabal','Paraíso',1),('LPL','2','La Planta',0,'Barrio Triste','Paraíso',2),('LVA','A','La Villa A',90.5,'La Candelaria','Paraíso',4),('LVB','B','La Villa B',90.5,'La Candelaria','Paraíso',2),('LVG','A','Las Vegas',85.2,'Alcalá','Las Vegas',2),('LVT','T','La Villa T',0,'La Candelaria','Paraíso',1),('MIL','A','Milán',83.5,'Mayorca','Tres Esquinas',2),('NOV','A','Novaterra',58.5,'Novaterra','Fabricato',4),('NVL','O','Nueva Villa',0,'Nueva Villa de Paraíso','Paraíso',2),('OR2','2','Oriental 2',0,'La Candelaria','Paraíso',1),('ORT','T','Oriental T',0,'La Candelaria','Paraíso',4),('PA1','1','Parque de las Acacias 1',0,'Las Acacias','Paraíso',1),('PA2','2','Parque de las Acacias 2',0,'Las Acacias','Paraíso',1),('PAB','B','Paraíso B',58.5,'Paraíso','Paraíso',2),('PAJ','J','Paraíso J',85.2,'Paraíso','Paraíso',2),('PBO','A','Patio Bonito',63.4,'Patio Bonito','Paraíso',2),('PIO','J','Pio XII',90.5,'Pio XII','Paraíso',1),('PLZ','1','Plaza Mayor',0,'Parques del Rio','Paraíso',1),('POP','K','Popular',0,'Moscú','Paraíso',1),('PQC','A','Parque Colón',0,'La Candelaria','Paraíso',2),('PR2','2','Prado',0,'Pradera','Paraíso',2),('PRA','A','Prado (sin ajustar)',0,'Pradera','Paraíso',2),('PRT','T','La Pradera',0,'Buenos Aires','Paraíso',4),('PS1','1','Palmaseca 1',0,'Molinos','Paraíso',1),('PS2','2','Palmaseca 2',0,'Molinos','Paraíso',1),('PSO','O','Palmaseca O',0,'Molinos','Paraíso',2),('RIO','L','Oriente',0,'Quintas del Carretero','Rionegro',3),('RNU','1','Ruta N - UdeA',0,'El Naranjo','Paraíso',1),('SCL','O','Santa Clara',0,'Santa Clara','Paraíso',2),('SMT','T','San Martín',0,'La Candelaria','Paraíso',4),('STK','K','Santa Sevilla K',0,'Santa Sevilla','Paraíso',1),('STL','L','Santa Sevilla L',0,'Santa Sevilla','Paraíso',1),('TRE','A','Tres Esquinas',72.1,'Calle Larga','Tres Esquinas',1),('TRI','A','Tricentenario (sin ajustar)',0,'El Castillo','Paraíso',2),('UDA','A','UdeA',85.2,'El Naranjo','Paraíso',2),('UDE','B','Unidad Deportiva',35.7,'La América','Paraíso',2),('UP1','1','Universidad de Paraíso 1',0,'Aguas Frías','Paraíso',2),('UP2','2','Universidad de Paraíso 2',0,'Aguas Frías','Paraíso',2),('VER','T','Verona',0,'Verona La Playa','Paraíso',4),('VES','2','Versalles',0,'La Candelaria','Paraíso',1),('VIS','O','Villasanjuan',0,'Villasanjuan','Paraíso',2),('VLI','H','Villa Linda',0,'La Linda','Paraíso',1);
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-30 13:04:40

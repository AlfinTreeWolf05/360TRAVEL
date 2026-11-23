-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: agenciadeviajes
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `ID_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `pasaporte` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_cliente`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `pasaporte` (`pasaporte`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Ezequiel','Ramirez','Ordinario','66999999','nosexd@hotmail.com',NULL,'2026-11-11 00:03:20'),(2,'Anabel','Monserrat','MXFICT199999991','556497979','Monse@gmail.com',NULL,'2026-11-11 00:03:20'),(3,'Carlos','Hernandez','MXFICT00000001','6691000001','cliente03@gmail.com',NULL,'2026-11-11 00:03:20'),(5,'Jose','Martinez','MXFICT00000003','6691000003','JoMa05@gmail.com',NULL,'2026-11-11 00:03:20'),(6,'Ana','Lopez','MXFICT00000004','6691000004','Anais@gmail.com',NULL,'2026-11-11 00:03:20'),(7,'Luis','Gonzalez','MXFICT00000005','6691000005','LuiGo@gmail.com',NULL,'2026-11-11 00:03:20'),(8,'Sofia','Perez','MXFICT00000006','6691000006','SopE12@gmail.com',NULL,'2026-11-11 00:03:20'),(9,'Miguel','Rodriguez','MXFICT00000007','6691000007','MiguRo@gmail.com',NULL,'2026-11-11 00:03:20'),(10,'Valeria','Sanchez','MXFICT00000008','6691000008','ValeChan@hotmail.com',NULL,'2026-11-11 00:03:20'),(11,'Fernando','Ramirez','MXFICT00000009','6691000009','FerEz456547@hotmail.com',NULL,'2026-11-11 00:03:20'),(12,'Daniela','Cruz','MXFICT00000010','6691000010','CruDaniela@gmail.com',NULL,'2026-11-11 00:03:20'),(13,'Alejandro','Flores','MXFICT00000011','6691000011','AleFlore6743@hotmail.com',NULL,'2026-11-11 00:03:20'),(14,'Gabriela','Gomez','MXFICT00000012','6691000012','Gomememe@hotmail.com',NULL,'2026-11-11 00:03:20'),(15,'Diego','Diaz','MXFICT00000013','6691000013','DiDi54@gmail.com',NULL,'2026-11-11 00:03:20'),(16,'Camila','Reyes','MXFICT00000014','6691000014','L0v3546@gmail.com',NULL,'2026-11-11 00:03:20'),(17,'Jorge','Morales','MXFICT00000015','6691000015','JoJo343@yahoo.com',NULL,'2026-11-11 00:03:20'),(18,'Andrea','Torres','MXFICT00000016','6691000016','Andrei453@gmail.com',NULL,'2026-11-11 00:03:20'),(19,'Ricardo','Ortiz','MXFICT00000017','6691000017','Ortizzz123@hotmail.com',NULL,'2026-11-11 00:03:20'),(20,'Lucia','Gutierrez','MXFICT00000018','6691000018','Luci123@yahoo.com',NULL,'2026-11-11 00:03:20'),(21,'Gustavo','Ceralti',NULL,NULL,'ceralti1234@gmail.com',NULL,'2026-11-11 03:54:47'),(22,'Gustavo','Hernandez',NULL,'6681496516','GH123@gmail.com','$2y$12$GpUr1wKpYMbgnzyQc50O9uebXDgtbcQDb45R.Q2V7KCUKAfNHaKtC','2026-11-11 05:00:14'),(23,'Andres','Villavicencio',NULL,'6689456411','ER1234@gmail.com','$2y$12$ibm0owlhzFFmDBSaO477T.K1Y2Jduntt38yHabyrX4.hBk/zOPX7q','2026-11-12 16:33:07');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destino`
--

DROP TABLE IF EXISTS `destino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `destino` (
  `ID_destino` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(150) DEFAULT NULL,
  `precio_desde` decimal(10,2) NOT NULL DEFAULT '0.00',
  `duracion_dias` tinyint unsigned NOT NULL DEFAULT '5',
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destino`
--

LOCK TABLES `destino` WRITE;
/*!40000 ALTER TABLE `destino` DISABLE KEYS */;
INSERT INTO `destino` VALUES (1,'Berlin','Alemania','Viaje pagado','berlin.jpg',0.00,5,0),(2,'Londres','United Kingdom','Viaje medio tiempo','londres.jpg',0.00,5,0),(3,'París','Francia','Visita a la Torre Eiffel y recorridos por la ciudad.','destinos/THIpwVaOQJbeQXKZoHOLf2rCWQrIqLBVN68DYbST.jpg',12500.00,5,1),(4,'Tokio','Japón','Experiencia cultural y gastronómica japonesa.','destinos/8FAXahx7lTeb7SJJKX9yM70hPozJoWet1zSLPv2H.jpg',2200.00,5,1),(5,'Madrid','España','Recorrido por museos, plazas y monumentos históricos.','destinos/RLS05RgU2GUr3SBDLmOY4wSOTihsIM7vInQpBNAj.jpg',850.00,5,1),(6,'Roma','Italia','Visita al Coliseo y otros sitios históricos.','destinos/ly7Fc43EFtsdNkBYr2r3SW6v57CxUJz9M92M6iJw.jpg',950.00,5,1),(7,'Londres','Reino Unido','Recorrido por el Big Ben y museos.','destinos/15CwWOkIzp4scLsm8sTagT4wHQCQIHTcL3SRuLTG.jpg',15800.00,5,1),(8,'Nueva York','Estados Unidos','Visita a Times Square y Central Park.','destinos/qL6ji8kSpFmfPBscU5HaysjNs58TvXPkZELt753e.jpg',3800.00,5,1),(9,'Cancún','México','Vacaciones de playa y actividades acuáticas.','destinos/04b1se7nrXnEo7pzu5gsItzGYFTm0gjZ0mqg5hn6.jpg',1200.00,5,1),(10,'Barcelona','España','Recorrido por la arquitectura y las playas.','destinos/dtcBpdrOcofq6mNV6GN88HakAOM4ZHZyiiMZqzL9.jpg',1100.00,5,1),(11,'Berlín','Alemania','Visita a monumentos y museos de la ciudad.','destinos/oZYbgePWIbDBFZ2aq0tHXXGqey4NXLfYAy9erOce.jpg',13900.00,5,1),(12,'Ámsterdam','Países Bajos','Paseos por canales y zonas culturales.','destinos/JhO5EA6er0AIc1OCWBvKzoFy1rp5Bed7gsCACF20.jpg',2700.00,5,1),(13,'Punta Cana','República Dominicana','Estancia en playas tropicales.','destinos/Bu2hUmvfYoreRGP6A1KpmiSFo2sUM3pjkOfwmc5z.jpg',1600.00,5,1),(14,'Los Cabos','México','Actividades de playa y paseos en barco.','destinos/rdfwK6M7YlYJy6ri3BIYHfnQXPBQTnfhboxC6fR3.jpg',1800.00,5,1),(15,'Buenos Aires','Argentina','Recorridos urbanos y espectáculos de tango.','destinos/dsf6u9YnZKhzPmA3vpnvAyIiPOKdKxuzHbOoEeQh.jpg',14500.00,5,1),(16,'Río de Janeiro','Brasil','Visita al Cristo Redentor y playas.','destinos/COi0kvpnVB5AfmHPzpCJfsLqMAPNPxX9WkwzSDwr.jpg',2100.00,5,1),(17,'Seúl','Corea del Sur','Experiencias culturales y gastronómicas.','destinos/t0acCcVF6EPJBFYc3pBgRGUndXov2nevNtzrpU9u.jpg',950.00,5,1),(18,'Bangkok','Tailandia','Visita a templos y mercados tradicionales.','destinos/FWdQgV2MDuC0631VOs03LLZ4OsZUED8F0DaV7RcW.jpg',800.00,5,1),(19,'Estambul','Turquía','Recorridos por bazares y sitios históricos.','destinos/wPgiPuFiInmmqtisbWMYDCfaBEv1QYUR9gMZwzsl.jpg',15200.00,5,1),(20,'Atenas','Grecia','Visita a la Acrópolis y museos.','destinos/xbKX5mcINyYCYxTfdgahgOTXwo0AOw0EfkklZG6u.jpg',1900.00,5,1),(21,'Los Mochis','México','Lugares típicos y gastronomía.','destinos/jC9hSEcCT6FtLlQg2OUss7HqSi7NorXeeDEtKm30.png',1500.00,5,1);
/*!40000 ALTER TABLE `destino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_reservas`
--

DROP TABLE IF EXISTS `detalle_reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_reservas` (
  `ID_detalleReserva` int NOT NULL AUTO_INCREMENT,
  `ID_reserva` int NOT NULL,
  `ID_servicio` int NOT NULL,
  `ID_destino` int NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID_detalleReserva`),
  KEY `ID_reserva` (`ID_reserva`),
  KEY `ID_servicio` (`ID_servicio`),
  KEY `ID_destino` (`ID_destino`),
  CONSTRAINT `detalle_reservas_ibfk_1` FOREIGN KEY (`ID_reserva`) REFERENCES `reservas` (`ID_reserva`),
  CONSTRAINT `detalle_reservas_ibfk_2` FOREIGN KEY (`ID_servicio`) REFERENCES `servicios` (`ID_servicio`),
  CONSTRAINT `detalle_reservas_ibfk_3` FOREIGN KEY (`ID_destino`) REFERENCES `destino` (`ID_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_reservas`
--

LOCK TABLES `detalle_reservas` WRITE;
/*!40000 ALTER TABLE `detalle_reservas` DISABLE KEYS */;
INSERT INTO `detalle_reservas` VALUES (1,1,3,3,'2026-05-01','2026-05-06',12500.00),(2,2,4,4,'2026-05-03','2026-05-08',2200.00),(3,3,5,5,'2026-05-05','2026-05-10',850.00),(4,4,6,6,'2026-05-07','2026-05-12',950.00),(5,5,7,7,'2026-05-09','2026-05-14',15800.00),(6,6,8,8,'2026-05-11','2026-05-16',3800.00),(7,7,9,9,'2026-05-13','2026-05-18',1200.00),(8,8,10,10,'2026-05-15','2026-05-20',1100.00),(9,9,11,11,'2026-05-17','2026-05-22',13900.00),(10,10,12,12,'2026-05-19','2026-05-24',2700.00),(11,11,13,13,'2026-05-21','2026-05-26',1600.00),(12,12,14,14,'2026-05-23','2026-05-28',1800.00),(13,13,15,15,'2026-05-25','2026-05-30',14500.00),(14,14,16,16,'2026-05-27','2026-06-01',2100.00),(15,15,17,17,'2026-05-29','2026-06-03',950.00),(16,16,18,18,'2026-05-31','2026-06-05',800.00),(17,17,19,19,'2026-06-02','2026-06-07',15200.00),(18,18,20,20,'2026-06-04','2026-06-09',1900.00),(19,19,1,1,'2026-06-06','2026-06-11',780.00),(20,20,3,3,'2026-06-08','2026-06-13',1700.00),(21,21,6,6,'2026-11-10','2026-11-15',4750.00),(22,22,12,12,'2026-11-18','2026-11-23',13500.00),(23,23,5,5,'2026-11-11','2026-11-16',8500.00),(24,24,7,7,'2026-11-24','2026-11-29',31600.00),(25,25,14,14,'2026-12-13','2026-12-31',32400.00),(26,26,19,19,'2026-11-26','2026-12-01',60800.00),(27,27,4,4,'2026-12-24','2027-01-10',37400.00),(28,28,15,15,'2026-11-17','2026-12-31',43500.00),(29,29,6,6,'2026-11-16','2026-11-21',4750.00);
/*!40000 ALTER TABLE `detalle_reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `ID_empleado` int NOT NULL AUTO_INCREMENT,
  `ID_sucursales` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `rol` enum('agente','gerente','admin') NOT NULL DEFAULT 'agente',
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `salario` decimal(10,2) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_empleado`),
  UNIQUE KEY `email` (`email`),
  KEY `ID_sucursales` (`ID_sucursales`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`ID_sucursales`) REFERENCES `sucursales` (`ID_sucursales`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,1,'Roberto','Castillo','Agente de viajes','agente','6683000001','empleado01@company.com','$2y$12$eFYqPvrzuivDOFKkPTCUZefnAAHmRg7s5fgpDu3KEYvmG/pzYdsvO',10500.00,1),(2,2,'Patricia','Mendoza','Gerente de sucursal','gerente','6683000002','empleado02@company.com','$2y$12$eFYqPvrzuivDOFKkPTCUZefnAAHmRg7s5fgpDu3KEYvmG/pzYdsvO',18000.00,1),(3,5,'Alberto','Vargas','Asesor turistico','agente','6683000003','empleado03@company.com','$2y$12$eFYqPvrzuivDOFKkPTCUZefnAAHmRg7s5fgpDu3KEYvmG/pzYdsvO',12000.00,1),(4,6,'Monica','Jimenez','administrador','admin','6683000004','empleado04@company.com','$2y$12$eFYqPvrzuivDOFKkPTCUZefnAAHmRg7s5fgpDu3KEYvmG/pzYdsvO',16000.00,1),(5,7,'Francisco','Ramos','Ejecutivo de ventas','agente','6683000005','empleado05@company.com','$2y$12$eFYqPvrzuivDOFKkPTCUZefnAAHmRg7s5fgpDu3KEYvmG/pzYdsvO',11500.00,1),(6,8,'Elena','Silva','Agente de viajes','agente','6683000006','empleado06@company.com','$2y$12$eFYqPvrzuivDOFKkPTCUZefnAAHmRg7s5fgpDu3KEYvmG/pzYdsvO',10800.00,1),(7,9,'Raul','Delgado','Asesor turistico','agente','6683000007','empleado07@company.com','$2y$12$eFYqPvrzuivDOFKkPTCUZefnAAHmRg7s5fgpDu3KEYvmG/pzYdsvO',12200.00,1),(8,10,'Veronica','Medina','Gerente de sucursal','gerente','6683000008','empleado08@company.com','$2y$12$eFYqPvrzuivDOFKkPTCUZefnAAHmRg7s5fgpDu3KEYvmG/pzYdsvO',18500.00,1),(9,11,'Oscar','Aguilar','Ejecutivo de ventas','agente','6683000009','empleado09@company.com','$2y$12$eFYqPvrzuivDOFKkPTCUZefnAAHmRg7s5fgpDu3KEYvmG/pzYdsvO',11700.00,1),(10,12,'Diana','Contreras','administrador','admin','6683000010','empleado10@company.com','$2y$12$eFYqPvrzuivDOFKkPTCUZefnAAHmRg7s5fgpDu3KEYvmG/pzYdsvO',15800.00,1),(11,13,'Hector','Santos','Agente de viajes','agente','6683000011','empleado11@company.com','$2y$12$eFYqPvrzuivDOFKkPTCUZefnAAHmRg7s5fgpDu3KEYvmG/pzYdsvO',10600.00,1),(12,14,'Adriana','Cortes','Asesor turistico','agente','6683000012','empleado12@company.com','$2y$12$eFYqPvrzuivDOFKkPTCUZefnAAHmRg7s5fgpDu3KEYvmG/pzYdsvO',12300.00,1),(13,15,'Eduardo','Salazar','Ejecutivo de ventas','agente','6683000013','empleado13@company.com','$2y$12$eFYqPvrzuivDOFKkPTCUZefnAAHmRg7s5fgpDu3KEYvmG/pzYdsvO',11900.00,1),(14,16,'Fernanda','Acosta','Gerente de sucursal','gerente','6683000014','empleado14@company.com','$2y$12$eFYqPvrzuivDOFKkPTCUZefnAAHmRg7s5fgpDu3KEYvmG/pzYdsvO',19000.00,1),(15,17,'Manuel','Campos','Agente de viajes','agente','6683000015','empleado15@company.com','$2y$12$eFYqPvrzuivDOFKkPTCUZefnAAHmRg7s5fgpDu3KEYvmG/pzYdsvO',11000.00,1),(16,18,'Isabel','Fuentes','administrador','admin','6683000016','empleado16@company.com','$2y$12$eFYqPvrzuivDOFKkPTCUZefnAAHmRg7s5fgpDu3KEYvmG/pzYdsvO',16200.00,1),(17,19,'Andres','Carrillo','Asesor turistico','agente','6683000017','empleado17@company.com','$2y$12$eFYqPvrzuivDOFKkPTCUZefnAAHmRg7s5fgpDu3KEYvmG/pzYdsvO',12400.00,1),(18,20,'Paola','Navarro','Ejecutivo de ventas','agente','6683000018','empleado18@company.com','$2y$12$eFYqPvrzuivDOFKkPTCUZefnAAHmRg7s5fgpDu3KEYvmG/pzYdsvO',11800.00,1),(19,3,'Arturo','Rios','Agente de viajes','agente','6683000025','empleado25@company.com','$2y$12$eFYqPvrzuivDOFKkPTCUZefnAAHmRg7s5fgpDu3KEYvmG/pzYdsvO',11200.00,1),(20,4,'Ximena','Leon','Asesor turistico','agente','6683000026','empleado26@company.com','$2y$12$eFYqPvrzuivDOFKkPTCUZefnAAHmRg7s5fgpDu3KEYvmG/pzYdsvO',12500.00,1);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `ID_empresa` int NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(150) NOT NULL,
  `rfc` varchar(13) NOT NULL,
  `direccion_fiscal` varchar(200) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_empresa`),
  UNIQUE KEY `rfc` (`rfc`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'Fisicamente','EHRAHR884','Cuauhtemoc','558416247','company@company.com'),(2,'Viajes del Pacifico','FICT00000001','Av. Reforma 101, Culiacan','6671000001','empresa01@company.com'),(3,'Turismo Internacional','FICT00000002','Av. Juarez 202, Mazatlan','6671000002','empresa02@ejemplo.com'),(4,'Mundo Viajero','FICT00000003','Calle Hidalgo 303, Los Mochis','6671000003','empresa03@company.com'),(5,'Aventuras Globales','FICT00000004','Av. Independencia 404, Guadalajara','6671000004','empresa04@ejemplo.com'),(7,'Rutas Turisticas','FICT00000006','Av. Mexico 606, Puebla','6671000006','empresa06@ejemplo.com'),(8,'Viajes del Sol','FICT00000007','Calle Zaragoza 707, Merida','6671000007','empresa07@ejemplo.com'),(9,'Destinos Perfectos','FICT00000008','Av. Central 808, Tijuana','6671000008','empresa08@ejemplo.com'),(10,'Turismo Moderno','FICT00000009','Calle Benito Juarez 909, Queretaro','6671000009','empresa09@ejemplo.com'),(11,'Viajes Express','FICT00000010','Av. Universidad 110, Ciudad de Mexico','6671000010','empresa10@ejemplo.com'),(12,'Horizonte Viajero','FICT00000011','Calle Reforma 111, Culiacan','6671000011','empresa11@ejemplo.com'),(13,'Turismo del Norte','FICT00000012','Av. Insurgentes 112, Mazatlan','6671000012','empresa12@ejemplo.com'),(14,'Aero Viajes','FICT00000013','Calle Sonora 113, Los Mochis','6671000013','empresa13@ejemplo.com'),(15,'Viajes Premium','FICT00000014','Av. Patria 114, Guadalajara','6671000014','empresa14@ejemplo.com'),(16,'Mundo Turistico','FICT00000015','Calle Allende 115, Monterrey','6671000015','empresa15@ejemplo.com'),(17,'Travel Plus','FICT00000016','Av. Hidalgo 116, Puebla','6671000016','empresa16@ejemplo.com'),(18,'Rumbo al Mundo','FICT00000017','Calle Morelos 117, Merida','6671000017','empresa17@ejemplo.com'),(19,'Viajes del Horizonte','FICT00000018','Av. Juarez 118, Tijuana','6671000018','empresa18@ejemplo.com'),(20,'Turismo Selecto','FICT00000019','Calle Reforma 119, Queretaro','6671000019','empresa19@ejemplo.com');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturas` (
  `ID_facturas` int NOT NULL AUTO_INCREMENT,
  `ID_reserva` int NOT NULL,
  `cantidad_pagada` decimal(10,2) NOT NULL,
  `fecha` timestamp NOT NULL,
  PRIMARY KEY (`ID_facturas`),
  KEY `ID_reserva` (`ID_reserva`),
  CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`ID_reserva`) REFERENCES `reservas` (`ID_reserva`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (1,1,12500.00,'2026-01-02 17:30:00'),(2,2,2200.00,'2026-01-04 18:30:00'),(3,3,850.00,'2026-01-06 19:30:00'),(4,4,950.00,'2026-01-08 20:30:00'),(5,5,15800.00,'2026-01-10 21:30:00'),(6,6,3800.00,'2026-01-12 22:30:00'),(7,7,1200.00,'2026-01-14 17:30:00'),(8,8,1100.00,'2026-01-16 18:30:00'),(9,9,13900.00,'2026-01-18 19:30:00'),(10,10,2700.00,'2026-01-20 20:30:00'),(11,11,1600.00,'2026-01-22 21:30:00'),(12,12,1800.00,'2026-01-24 22:30:00'),(13,13,14500.00,'2026-01-26 17:30:00'),(14,14,2100.00,'2026-01-28 18:30:00'),(15,15,950.00,'2026-01-30 19:30:00'),(16,16,800.00,'2026-02-01 20:30:00'),(17,17,15200.00,'2026-02-03 21:30:00'),(18,18,1900.00,'2026-02-05 22:30:00'),(19,19,780.00,'2026-02-07 17:30:00'),(20,20,1700.00,'2026-02-09 18:30:00');
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofertas`
--

DROP TABLE IF EXISTS `ofertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofertas` (
  `ID_oferta` int NOT NULL AUTO_INCREMENT,
  `ID_destino` int NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `descripcion` text,
  `descuento` decimal(5,2) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_oferta`),
  KEY `fk_oferta_destino` (`ID_destino`),
  KEY `idx_ofertas_vigencia` (`activo`,`fecha_inicio`,`fecha_fin`),
  CONSTRAINT `fk_oferta_destino` FOREIGN KEY (`ID_destino`) REFERENCES `destino` (`ID_destino`),
  CONSTRAINT `chk_descuento` CHECK (((`descuento` > 0) and (`descuento` <= 100)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofertas`
--

LOCK TABLES `ofertas` WRITE;
/*!40000 ALTER TABLE `ofertas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofertas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `ID_pagos` int NOT NULL AUTO_INCREMENT,
  `ID_reserva` int NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `metodo_pago` enum('tarjeta','transferencia','efectivo') NOT NULL,
  `fecha_pago` timestamp NOT NULL,
  PRIMARY KEY (`ID_pagos`),
  KEY `ID_reserva` (`ID_reserva`),
  CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`ID_reserva`) REFERENCES `reservas` (`ID_reserva`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,1,12500.00,'tarjeta','2026-01-02 17:00:00'),(2,2,2200.00,'transferencia','2026-01-04 18:00:00'),(3,3,850.00,'efectivo','2026-01-06 19:00:00'),(4,4,950.00,'tarjeta','2026-01-08 20:00:00'),(5,5,15800.00,'transferencia','2026-01-10 21:00:00'),(6,6,3800.00,'efectivo','2026-01-12 22:00:00'),(7,7,1200.00,'tarjeta','2026-01-14 17:00:00'),(8,8,1100.00,'transferencia','2026-01-16 18:00:00'),(9,9,13900.00,'efectivo','2026-01-18 19:00:00'),(10,10,2700.00,'tarjeta','2026-01-20 20:00:00'),(11,11,1600.00,'transferencia','2026-01-22 21:00:00'),(12,12,1800.00,'efectivo','2026-01-24 22:00:00'),(13,13,14500.00,'tarjeta','2026-01-26 17:00:00'),(14,14,2100.00,'transferencia','2026-01-28 18:00:00'),(15,15,950.00,'efectivo','2026-01-30 19:00:00'),(16,16,800.00,'tarjeta','2026-02-01 20:00:00'),(17,17,15200.00,'transferencia','2026-02-03 21:00:00'),(18,18,1900.00,'efectivo','2026-02-05 22:00:00'),(19,19,780.00,'tarjeta','2026-02-07 17:00:00'),(20,20,1700.00,'transferencia','2026-02-09 18:00:00');
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas` (
  `ID_reserva` int NOT NULL AUTO_INCREMENT,
  `ID_cliente` int NOT NULL,
  `ID_sucursales` int NOT NULL,
  `fecha_reserva` date NOT NULL,
  `num_personas` tinyint unsigned NOT NULL DEFAULT '1',
  `estado` enum('pendiente','confirmada','cancelada') NOT NULL,
  `total_pagar` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID_reserva`),
  KEY `ID_cliente` (`ID_cliente`),
  KEY `ID_sucursales` (`ID_sucursales`),
  CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`ID_cliente`) REFERENCES `clientes` (`ID_cliente`),
  CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`ID_sucursales`) REFERENCES `sucursales` (`ID_sucursales`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (1,1,2,'2026-01-01',1,'confirmada',12500.00),(2,2,4,'2026-01-03',1,'pendiente',2200.00),(3,5,5,'2026-01-05',1,'confirmada',850.00),(4,6,6,'2026-01-07',1,'cancelada',950.00),(5,7,7,'2026-01-09',1,'confirmada',15800.00),(6,8,8,'2026-01-11',1,'pendiente',3800.00),(7,9,9,'2026-01-13',1,'confirmada',1200.00),(8,10,10,'2026-01-15',1,'confirmada',1100.00),(9,11,11,'2026-01-17',1,'pendiente',13900.00),(10,12,12,'2026-01-19',1,'confirmada',2700.00),(11,13,13,'2026-01-21',1,'confirmada',1600.00),(12,14,14,'2026-01-23',1,'cancelada',1800.00),(13,15,15,'2026-01-25',1,'confirmada',14500.00),(14,16,16,'2026-01-27',1,'pendiente',2100.00),(15,17,17,'2026-01-29',1,'confirmada',950.00),(16,18,18,'2026-01-31',1,'confirmada',800.00),(17,3,19,'2026-02-02',1,'pendiente',15200.00),(18,20,20,'2026-02-04',1,'confirmada',1900.00),(19,19,20,'2026-02-06',1,'confirmada',780.00),(20,17,20,'2026-02-08',1,'cancelada',1700.00),(21,21,21,'2026-11-10',3,'pendiente',4750.00),(22,22,21,'2026-11-10',2,'cancelada',13500.00),(23,22,21,'2026-11-11',10,'cancelada',8500.00),(24,22,21,'2026-11-11',2,'pendiente',31600.00),(25,22,21,'2026-11-11',3,'pendiente',32400.00),(26,22,21,'2026-11-12',4,'cancelada',60800.00),(27,23,21,'2026-11-12',1,'cancelada',37400.00),(28,22,21,'2026-11-16',3,'confirmada',43500.00),(29,22,21,'2026-11-16',1,'confirmada',4750.00);
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios` (
  `ID_servicio` int NOT NULL AUTO_INCREMENT,
  `ID_destino` int DEFAULT NULL,
  `tipo_servicio` enum('vuelo','hotel','tour','auto') NOT NULL,
  `nombre_servicio` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `proveedor` varchar(100) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_servicio`),
  KEY `servicios_ibfk_destino` (`ID_destino`),
  CONSTRAINT `servicios_ibfk_destino` FOREIGN KEY (`ID_destino`) REFERENCES `destino` (`ID_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,NULL,'vuelo','Transporte','Viaje largo',789.95,'American Airlines',0),(2,NULL,'hotel','Transporte','Reservado',78.50,'Norwest',0),(3,3,'vuelo','Vuelo a París','Vuelo internacional de ida',12500.00,'Aeromexico',1),(4,4,'hotel','Hotel Tokio Central','Habitación doble por noche',2200.00,'Hoteles del Mundo',1),(5,5,'tour','Tour Madrid Histórico','Recorrido guiado por el centro',850.00,'Turismo Express',1),(6,6,'auto','Renta Roma Compacto','Automóvil compacto por dia',950.00,'Autos Globales',1),(7,7,'vuelo','Vuelo a Londres','Vuelo internacional redondo',15800.00,'British Airways',1),(8,8,'hotel','Hotel Nueva York','Habitación con servicios básicos',3800.00,'Travel Hotels',1),(9,9,'tour','Tour Cancún Marino','Paseo turistico en embarcacion',1200.00,'Aventuras MX',1),(10,10,'auto','Renta Barcelona Sedán','Automóvil sedan por dia',1100.00,'Renta Facil',1),(11,11,'vuelo','Vuelo a Berlin','Vuelo internacional de ida',13900.00,'Lufthansa',1),(12,12,'hotel','Hotel Ámsterdam Centro','Habitación doble por noche',2700.00,'Europa Hotels',1),(13,13,'tour','Tour Punta Cana','Excursión guiada por la costa',1600.00,'Caribe Tours',1),(14,14,'auto','Renta Los Cabos SUV','Camioneta por dia',1800.00,'Autos del Pacifico',1),(15,15,'vuelo','Vuelo Buenos Aires','Vuelo internacional redondo',14500.00,'Aerolíneas Argentinas',1),(16,16,'hotel','Hotel Río de Janeiro','Habitación con desayuno',2100.00,'Brasil Hospedaje',1),(17,17,'tour','Tour Seúl Cultural','Recorrido por sitios culturales',950.00,'Asia Tours',1),(18,18,'auto','Renta Bangkok Compacto','Automóvil por dia',800.00,'Movilidad Global',1),(19,19,'vuelo','Vuelo a Estambul','Vuelo internacional de ida',15200.00,'Turkish Airlines',1),(20,20,'hotel','Hotel Atenas Plaza','Habitación doble por noche.',1900.00,'Mediterraneo Hotels',1),(21,21,'hotel','Hote Ibis','Hospedaje en la ciudad.',2000.00,'Ibis',1);
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursales`
--

DROP TABLE IF EXISTS `sucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursales` (
  `ID_sucursales` int NOT NULL AUTO_INCREMENT,
  `ID_empresa` int NOT NULL,
  `nombre_sucursal` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_sucursales`),
  UNIQUE KEY `email` (`email`),
  KEY `ID_empresa` (`ID_empresa`),
  CONSTRAINT `sucursales_ibfk_1` FOREIGN KEY (`ID_empresa`) REFERENCES `empresa` (`ID_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursales`
--

LOCK TABLES `sucursales` WRITE;
/*!40000 ALTER TABLE `sucursales` DISABLE KEYS */;
INSERT INTO `sucursales` VALUES (1,1,'MADERO','Emiliano Zapata 3457 Centro','Culiacán','654896871','sucursal@company.com'),(2,1,'BELISARIO','Belisario 122 Jardines','Saltillo','126354684','sucursal2@company.com'),(3,1,'Sucursal Centro','Av. Reforma 101','Culiacan','667200001','sucursal03@company.com'),(4,1,'Sucursal Norte','Calle Juarez 102','Mazatlan','6674000002','sucursal04@company.com'),(5,4,'Sucursal Sur','Av. Hidalgo 103','Los Mochis','6672000003','sucursal05@company.com'),(6,5,'Sucursal Guadalajara','Calle Morelos 104','Guadalajara','6672000004','sucursal06@company.com'),(7,7,'Sucursal Monterrey','Av. Mexico 105','Monterrey','6672000005','sucursal07@company.com'),(8,7,'Sucursal Puebla','Calle Reforma 106','Puebla','6672000006','sucursal08@company.com'),(9,8,'Sucursal Merida','Av. Central 107','Merida','6672000007','sucursal09@company.com'),(10,9,'Sucursal Tijuana','Calle Sonora 108','Tijuana','6672000008','sucursal10@company.com'),(11,10,'Sucursal Queretaro','Av. Universidad 109','Queretaro','6672000009','sucursal11@company.com'),(12,11,'Sucursal Capital','Calle Juarez 110','Ciudad de Mexico','6672000010','sucursal12@company.com'),(13,12,'Sucursal Pacifico','Av. Reforma 111','Culiacan','6672000011','sucursal13@company.com'),(14,13,'Sucursal Mazatlan','Calle Hidalgo 112','Mazatlan','6672000012','sucursal14@company.com'),(15,14,'Sucursal Mochis','Av. Mexico 113','Los Mochis','6672000013','sucursal15@ejemplo.com'),(16,15,'Sucursal Patria','Calle Morelos 114','Guadalajara','6672000014','sucursal16@company.com'),(17,16,'Sucursal Norte Monterrey','Av. Central 115','Monterrey','6672000015','sucursal17@company.com'),(18,17,'Sucursal Angelopolis','Calle Reforma 116','Puebla','6672000016','sucursal18@company.com'),(19,18,'Sucursal Yucatan','Av. Juarez 117','Merida','6672000017','sucursal19@company.com'),(20,19,'Sucursal Frontera','Calle Sonora 118','Tijuana','6672000018','sucursal20@company.com'),(21,1,'En línea','Sitio web','En línea',NULL,'enlinea@company.com');
/*!40000 ALTER TABLE `sucursales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-16 17:00:54

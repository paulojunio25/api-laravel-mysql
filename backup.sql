-- MariaDB dump 10.19  Distrib 10.4.18-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: devbarber
-- ------------------------------------------------------
-- Server version	10.4.18-MariaDB

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
-- Table structure for table `barbers`
--

DROP TABLE IF EXISTS `barbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barbers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `stars` double(8,2) NOT NULL DEFAULT 0.00,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barbers`
--

LOCK TABLES `barbers` WRITE;
/*!40000 ALTER TABLE `barbers` DISABLE KEYS */;
INSERT INTO `barbers` VALUES (1,'Paulo Limiro','4.png',3.20,'-23.5730907','-46.6382759'),(2,'Francisco Diniz','3.png',3.30,'-23.5730907','-46.6982759'),(3,'Leticia Luiz','3.png',2.90,'-23.5830907','-46.6682759'),(4,'Dirce Limoeiro','4.png',2.20,'-23.5830907','-46.6982759'),(5,'Gabriela Limiro','1.png',2.10,'-23.5530907','-46.6782759'),(6,'Marcelo Diogo','4.png',2.70,'-23.5630907','-46.6082759'),(7,'Paulo Limoeiro','1.png',4.70,'-23.5130907','-46.6882759'),(8,'Francisco Santos','1.png',3.10,'-23.5430907','-46.6782759'),(9,'Gabriel Santos','4.png',2.30,'-23.5830907','-46.6882759'),(10,'Leticia Diogo','2.png',3.90,'-23.5630907','-46.6182759'),(11,'Luiz Alvaro','2.png',3.90,'-23.5830907','-46.6582759'),(12,'Luiz Josefa','4.png',4.90,'-23.5130907','-46.6182759'),(13,'Boniek Silva','3.png',2.80,'-23.5830907','-46.6582759'),(14,'Paulo Santos','3.png',4.80,'-23.5530907','-46.6182759'),(15,'Diogo Nazare','1.png',4.20,'-23.5430907','-46.6182759');
/*!40000 ALTER TABLE `barbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barbersavailability`
--

DROP TABLE IF EXISTS `barbersavailability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barbersavailability` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_barber` int(11) NOT NULL,
  `weekday` int(11) NOT NULL,
  `hours` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barbersavailability`
--

LOCK TABLES `barbersavailability` WRITE;
/*!40000 ALTER TABLE `barbersavailability` DISABLE KEYS */;
INSERT INTO `barbersavailability` VALUES (1,1,0,'07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),(2,1,1,'08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),(3,1,2,'10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),(4,1,3,'08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),(5,2,0,'10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),(6,2,1,'10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),(7,2,2,'09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),(8,2,3,'09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),(9,3,0,'10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),(10,3,1,'09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),(11,3,2,'08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),(12,3,3,'08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),(13,4,0,'07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),(14,4,1,'07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),(15,4,2,'07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),(16,4,3,'07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),(17,5,0,'08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),(18,5,1,'10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),(19,5,2,'10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),(20,5,3,'09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),(21,6,0,'08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),(22,6,1,'10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),(23,6,2,'08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),(24,6,3,'08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),(25,7,0,'07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),(26,7,1,'10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),(27,7,2,'10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),(28,7,3,'09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),(29,8,0,'07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),(30,8,1,'09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),(31,8,2,'10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),(32,8,3,'07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),(33,9,0,'09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),(34,9,1,'09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),(35,9,2,'08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),(36,9,3,'07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),(37,10,0,'07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),(38,10,1,'10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),(39,10,2,'08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),(40,10,3,'10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),(41,11,0,'10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),(42,11,1,'08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),(43,11,2,'08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),(44,11,3,'10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),(45,12,0,'08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),(46,12,1,'10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),(47,12,2,'08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),(48,12,3,'07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),(49,13,0,'09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),(50,13,1,'08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),(51,13,2,'07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),(52,13,3,'10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),(53,14,0,'09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),(54,14,1,'08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),(55,14,2,'09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),(56,14,3,'10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),(57,15,0,'10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),(58,15,1,'09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),(59,15,2,'08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),(60,15,3,'10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00');
/*!40000 ALTER TABLE `barbersavailability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barbersphotos`
--

DROP TABLE IF EXISTS `barbersphotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barbersphotos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_barber` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barbersphotos`
--

LOCK TABLES `barbersphotos` WRITE;
/*!40000 ALTER TABLE `barbersphotos` DISABLE KEYS */;
INSERT INTO `barbersphotos` VALUES (1,1,'2.png'),(2,1,'1.png'),(3,1,'1.png'),(4,1,'2.png'),(5,2,'5.png'),(6,2,'4.png'),(7,2,'3.png'),(8,2,'3.png'),(9,3,'1.png'),(10,3,'4.png'),(11,3,'5.png'),(12,3,'4.png'),(13,4,'4.png'),(14,4,'3.png'),(15,4,'4.png'),(16,4,'5.png'),(17,5,'5.png'),(18,5,'2.png'),(19,5,'5.png'),(20,5,'3.png'),(21,6,'3.png'),(22,6,'5.png'),(23,6,'1.png'),(24,6,'1.png'),(25,7,'4.png'),(26,7,'5.png'),(27,7,'2.png'),(28,7,'5.png'),(29,8,'1.png'),(30,8,'4.png'),(31,8,'4.png'),(32,8,'4.png'),(33,9,'3.png'),(34,9,'1.png'),(35,9,'3.png'),(36,9,'1.png'),(37,10,'3.png'),(38,10,'2.png'),(39,10,'2.png'),(40,10,'2.png'),(41,11,'3.png'),(42,11,'5.png'),(43,11,'2.png'),(44,11,'4.png'),(45,12,'5.png'),(46,12,'2.png'),(47,12,'5.png'),(48,12,'4.png'),(49,13,'5.png'),(50,13,'1.png'),(51,13,'3.png'),(52,13,'4.png'),(53,14,'1.png'),(54,14,'1.png'),(55,14,'3.png'),(56,14,'4.png'),(57,15,'2.png'),(58,15,'5.png'),(59,15,'2.png'),(60,15,'1.png');
/*!40000 ALTER TABLE `barbersphotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barbersreviews`
--

DROP TABLE IF EXISTS `barbersreviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barbersreviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_barber` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barbersreviews`
--

LOCK TABLES `barbersreviews` WRITE;
/*!40000 ALTER TABLE `barbersreviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `barbersreviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barbersservices`
--

DROP TABLE IF EXISTS `barbersservices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barbersservices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_barber` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barbersservices`
--

LOCK TABLES `barbersservices` WRITE;
/*!40000 ALTER TABLE `barbersservices` DISABLE KEYS */;
INSERT INTO `barbersservices` VALUES (1,1,'Aparação de Limpeza de Pele',21.26),(2,1,'Corte de Pernas',65.24),(3,1,'Corte Feminino de Unha',27.88),(4,1,'Limpeza de Pele de Limpeza de Pele',28.34),(5,1,'Limpeza de Pele de Corte Feminino',13.90),(6,1,'Corte Feminino de Corte Feminino',98.91),(7,2,'Progressiva de Progressiva',9.51),(8,2,'Aparação de Pernas',10.77),(9,2,'Corte de Pernas',21.55),(10,2,'Unha de Corte Feminino',4.33),(11,2,'Unha de Cabelo',80.75),(12,2,'Pintura de Corte Feminino',97.10),(13,3,'Unha de Pernas',42.63),(14,3,'Corte de Pernas',6.97),(15,3,'Progressiva de Corte Feminino',17.70),(16,3,'Corte de Limpeza de Pele',90.96),(17,3,'Corte Feminino de Progressiva',72.40),(18,4,'Corte de Pernas',60.20),(19,4,'Corte Feminino de Unha',10.76),(20,4,'Progressiva de Cabelo',48.91),(21,5,'Aparação de Pernas',74.61),(22,5,'Pintura de Pernas',51.31),(23,5,'Limpeza de Pele de Corte Feminino',7.15),(24,5,'Corte Feminino de Cabelo',7.83),(25,6,'Aparação de Unha',98.99),(26,6,'Corte de Unha',17.44),(27,6,'Unha de Unha',34.80),(28,6,'Progressiva de Cabelo',2.74),(29,7,'Unha de Pernas',26.57),(30,7,'Corte Feminino de Limpeza de Pele',78.92),(31,7,'Progressiva de Progressiva',80.45),(32,7,'Corte Feminino de Limpeza de Pele',90.96),(33,7,'Progressiva de Progressiva',5.23),(34,7,'Progressiva de Limpeza de Pele',75.76),(35,8,'Limpeza de Pele de Pernas',11.95),(36,8,'Pintura de Corte Feminino',30.79),(37,8,'Unha de Unha',69.50),(38,8,'Unha de Corte Feminino',72.78),(39,8,'Limpeza de Pele de Corte Feminino',25.62),(40,9,'Corte de Pernas',68.23),(41,9,'Unha de Unha',11.29),(42,9,'Corte Feminino de Unha',28.28),(43,9,'Unha de Unha',83.26),(44,9,'Limpeza de Pele de Unha',89.35),(45,9,'Progressiva de Pernas',59.18),(46,10,'Pintura de Limpeza de Pele',90.90),(47,10,'Corte Feminino de Unha',80.80),(48,10,'Progressiva de Pernas',28.25),(49,10,'Pintura de Limpeza de Pele',46.22),(50,11,'Corte de Progressiva',20.65),(51,11,'Limpeza de Pele de Corte Feminino',14.68),(52,11,'Unha de Unha',61.49),(53,12,'Pintura de Corte Feminino',40.20),(54,12,'Pintura de Pernas',5.38),(55,12,'Limpeza de Pele de Limpeza de Pele',95.59),(56,12,'Corte de Unha',32.49),(57,13,'Corte de Corte Feminino',28.70),(58,13,'Limpeza de Pele de Pernas',58.52),(59,13,'Unha de Unha',31.44),(60,13,'Corte Feminino de Pernas',70.39),(61,13,'Progressiva de Corte Feminino',52.81),(62,14,'Limpeza de Pele de Cabelo',40.90),(63,14,'Corte Feminino de Corte Feminino',56.97),(64,14,'Unha de Limpeza de Pele',10.43),(65,14,'Corte de Limpeza de Pele',45.35),(66,14,'Aparação de Pernas',71.49),(67,14,'Aparação de Corte Feminino',9.97),(68,15,'Corte Feminino de Pernas',33.46),(69,15,'Aparação de Limpeza de Pele',48.23),(70,15,'Aparação de Pernas',69.81),(71,15,'Limpeza de Pele de Corte Feminino',30.94),(72,15,'Corte Feminino de Corte Feminino',64.76),(73,15,'Limpeza de Pele de Pernas',42.47);
/*!40000 ALTER TABLE `barbersservices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barberstestimonials`
--

DROP TABLE IF EXISTS `barberstestimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barberstestimonials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_barber` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double(8,2) NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barberstestimonials`
--

LOCK TABLES `barberstestimonials` WRITE;
/*!40000 ALTER TABLE `barberstestimonials` DISABLE KEYS */;
INSERT INTO `barberstestimonials` VALUES (1,1,'Thais',4.80,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(2,1,'Diogo',2.40,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(3,1,'Dirce',4.00,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(4,2,'Francisco',4.10,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(5,2,'José',2.00,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(6,2,'Thais',3.50,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(7,3,'Gabriel',2.50,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(8,3,'Gabriela',3.30,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(9,3,'José',3.60,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(10,4,'Pedro',4.60,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(11,4,'Diogo',3.20,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(12,4,'Pedro',4.30,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(13,5,'Francisco',2.80,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(14,5,'Francisco',2.10,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(15,5,'Amanda',3.30,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(16,6,'Leticia',3.20,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(17,6,'Luiz',4.60,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(18,6,'Pedro',2.10,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(19,7,'Leticia',3.60,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(20,7,'Dirce',3.00,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(21,7,'Gabriel',4.10,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(22,8,'Diogo',2.50,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(23,8,'Gabriela',3.40,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(24,8,'Luiz',3.80,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(25,9,'Paulo',3.80,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(26,9,'Pedro',2.20,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(27,9,'Thais',4.70,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(28,10,'Boniek',3.50,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(29,10,'Francisco',3.40,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(30,10,'Pedro',2.90,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(31,11,'Luiz',3.30,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(32,11,'Thais',3.30,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(33,11,'Jeremias',3.90,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(34,12,'Paulo',4.00,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(35,12,'Paulo',2.20,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(36,12,'Leticia',2.90,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(37,13,'Leticia',3.50,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(38,13,'Luiz',2.80,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(39,13,'Jeremias',3.30,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(40,14,'Leticia',4.70,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(41,14,'Luiz',2.10,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(42,14,'Jeremias',3.10,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(43,15,'Boniek',4.70,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(44,15,'Marcelo',4.10,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.'),(45,15,'Amanda',3.10,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate consequatur tenetur facere voluptatibus iusto accusantium vero sunt, itaque nisi esse ad temporibus a rerum aperiam cum quaerat quae quasi unde.');
/*!40000 ALTER TABLE `barberstestimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2021_03_17_032539_create_all_tables',1),(2,'2021_03_19_191116_alter_appointment_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Bonieky Lacerda','e744645ede79d07c44e1d7b0e8f0ddaf.jpg','suporte@b7web.com.br','$2y$10$92Au8iUm/smiuvcjhN/LI.negZHD9mWaRvphf1elqiNolzIFwYgNC'),(2,'Nathalia Lopes','default.png','nathalia7mg@gmail.com','$2y$10$r6MczslxCpfxN8iyllbuR.Su3gaQBjSGoLAMW6OZoY4g78eVj/IK6');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersappointments`
--

DROP TABLE IF EXISTS `usersappointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersappointments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_barber` int(11) NOT NULL,
  `id_service` int(11) NOT NULL,
  `ap_datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersappointments`
--

LOCK TABLES `usersappointments` WRITE;
/*!40000 ALTER TABLE `usersappointments` DISABLE KEYS */;
INSERT INTO `usersappointments` VALUES (1,1,3,0,'2021-03-21 11:00:00'),(2,1,3,15,'2021-03-21 12:00:00'),(3,1,3,15,'2021-03-21 10:00:00'),(4,1,3,15,'2021-03-21 14:00:00'),(5,2,3,14,'2021-03-22 14:00:00');
/*!40000 ALTER TABLE `usersappointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersfavorites`
--

DROP TABLE IF EXISTS `usersfavorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usersfavorites` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_barber` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersfavorites`
--

LOCK TABLES `usersfavorites` WRITE;
/*!40000 ALTER TABLE `usersfavorites` DISABLE KEYS */;
INSERT INTO `usersfavorites` VALUES (1,1,3),(4,1,14);
/*!40000 ALTER TABLE `usersfavorites` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-23 19:13:03

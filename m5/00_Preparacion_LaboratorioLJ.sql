CREATE DATABASE  IF NOT EXISTS `LaboratorioSab01` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `LaboratorioSab01`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: LaboratorioSab01
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulos` (
  `id_articulo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_articulo`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` VALUES (1,'Yerba Mate Taragüi','Paquete de 1kg de yerba mate con palo',1250.00,100),(2,'Azúcar Ledesma 1kg','Azúcar refinada común',580.00,120),(3,'Aceite Natura 1L','Aceite de girasol',1350.00,80),(4,'Fideos Don Vicente 500g','Fideos tipo spaghetti',720.00,90),(5,'Harina 0000 Blancaflor 1kg','Harina de trigo refinada',660.00,110),(6,'Leche La Serenísima 1L','Leche entera larga vida',950.00,95),(7,'Mermelada Arcor 454g','Mermelada de durazno',850.00,50),(8,'Dulce de leche San Ignacio 400g','Dulce tradicional argentino',1320.00,60),(9,'Manteca Sancor 200g','Manteca natural',980.00,45),(10,'Pan Lactal Fargo 600g','Pan blanco en rebanadas',1150.00,70),(11,'Galletitas Criollitas','Galletitas saladas clásicas',890.00,85),(12,'Arroz Gallo Oro 1kg','Arroz doble carolina',730.00,100),(13,'Café La Virginia 250g','Café molido',1420.00,50),(14,'Té Taragüi 25u','Saquitos de té negro',610.00,80),(15,'Jabón en Pan Ala','Jabón blanco para lavar',570.00,65),(16,'Lavandina Ayudín 1L','Desinfectante y blanqueador',760.00,60),(17,'Shampoo Sedal 340ml','Shampoo para todo tipo de cabello',1320.00,40),(18,'Desodorante Rexona 150ml','Desodorante en aerosol',1240.00,55),(19,'Cerveza Quilmes 1L','Cerveza rubia',980.00,50),(20,'Vino Tinto Uxmal Malbec','Vino tinto argentino',2100.00,40),(21,'Papel Higiénico Higienol 4u','Rollo doble hoja',890.00,75),(22,'Servilletas Elite 100u','Servilletas de papel',630.00,100),(23,'Puré de Tomate La Campagnola 520g','Tomate triturado',650.00,85),(24,'Huevos Blancos x12','Maple de huevos medianos',1400.00,60),(25,'Milanesa de Soja Granja del Sol','Congelado vegetal x4',1280.00,50),(26,'Hamburguesas Paty x2','Hamburguesas congeladas',1340.00,45),(27,'Queso Cremoso Ilolay 1kg','Queso fresco argentino',2600.00,35),(28,'Sal Entrefina Dos Anclas 500g','Sal para consumo diario',430.00,120),(29,'Tomate Perita 1kg','Fruta fresca',780.00,70),(30,'Banana Ecuador 1kg','Fruta tropical importada',880.00,60);
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `cuit` char(11) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `fecha_alta` date DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `cuit` (`cuit`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Juan','Pérez','20345678901','  Av. Santa Fe 1234    ','CABA','Buenos Aires','2023-01-15'),(2,'María','González','27345678902','  Calle 9 de Julio 567    ','Rosario','Santa Fe','2022-11-20'),(3,'Carlos','Ramírez','20345678903','  Av. Colón 1010    ','Córdoba','Córdoba','2023-03-05'),(4,'Lucía','Martínez','27345678904','  Belgrano 200    ','Mendoza','Mendoza','2023-05-12'),(5,'Diego','Sánchez','20345678905','  Mitre 456    ','La Plata','Buenos Aires','2023-02-25'),(6,'Ana','López','27345678906','  Av. Pellegrini 1423    ','Rosario','Santa Fe','2023-04-10'),(7,'Hernán','Suárez','20345678907','  Ruta 2 Km 45    ','Mar del Plata','Buenos Aires','2023-06-15'),(8,'Valeria','Morales','27345678908','  Catamarca 890    ','Salta','Salta','2023-01-20'),(9,'Nicolás','Fernández','20345678909','  Rivadavia 333    ','San Juan','San Juan','2022-12-30'),(10,'Lorena','Carrizo','27345678910','  Av. Las Heras 234    ','San Luis','San Luis','2023-03-01'),(11,'Pablo','Mendoza','20345678911','  Chacabuco 678    ','Neuquén','Neuquén','2023-02-11'),(12,'Silvina','Bravo','27345678912','  Jujuy 789    ','Tucumán','Tucumán','2023-01-25'),(13,'Gabriel','Ortiz','20345678913','  San Martín 2222    ','CABA','Buenos Aires','2023-04-04'),(14,'Camila','Ríos','27345678914','  Moreno 1000    ','Corrientes','Corrientes','2023-03-19'),(15,'Javier','Luna','20345678915','  Av. Alem 600    ','Bahía Blanca','Buenos Aires','2023-03-30'),(16,'Jimena','Delgado','27345678916','  Santa Rosa 321    ','Santa Rosa','La Pampa','2023-02-28'),(17,'Bruno','Ibarra','20345678917','  Las Malvinas 234    ','CABA','Buenos Aires','2023-01-18'),(18,'Rocío','Reyes','27345678918','  Alberdi 876    ','Posadas','Misiones','2023-02-03'),(19,'Ignacio','Silva','20345678919','  Av. San Martín 55    ','San Rafael','Mendoza','2023-01-09'),(20,'Sofía','Vega','27345678920','  Laprida 712    ','CABA','Buenos Aires','2023-02-05'),(21,'Tomás','Ledesma','20345678921','  Dean Funes 678    ','Tucumán','Tucumán','2023-02-20'),(22,'Julieta','Ayala','27345678922','  España 300    ','Santa Fe','Santa Fe','2023-01-27'),(23,'Esteban','Benítez','20345678923','  Italia 99    ','Formosa','Formosa','2023-03-03'),(24,'Luz','Cabrera','27345678924','  Urquiza 450    ','Gualeguaychú','Entre Ríos','2023-01-14'),(25,'Ramiro','Quinteros','20345678925','  Hipólito Yrigoyen 700    ','CABA','Buenos Aires','2023-03-21'),(26,'Agustina','Campos','27345678926','  Av. Patricias Argentinas 1122    ','Jujuy','Jujuy','2023-01-30'),(27,'Franco','Bustamante','20345678927','  Pedro Goyena 320    ','CABA','Buenos Aires','2023-03-07'),(28,'Martina','Correa','27345678928','  Av. Pueyrredón 999    ','Salta','Salta','2023-02-14'),(29,'Lautaro','Acuña','20345678929','  Av. Libertador 5000    ','CABA','Buenos Aires','2023-02-18'),(30,'Milagros','Ruiz','27345678930','  Junín 210    ','Córdoba','Córdoba','2023-03-11');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_factura`
--

DROP TABLE IF EXISTS `detalle_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_factura` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_factura` int(11) DEFAULT NULL,
  `id_articulo` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `id_factura` (`id_factura`),
  KEY `id_articulo` (`id_articulo`),
  CONSTRAINT `detalle_factura_ibfk_1` FOREIGN KEY (`id_factura`) REFERENCES `facturas` (`id_factura`),
  CONSTRAINT `detalle_factura_ibfk_2` FOREIGN KEY (`id_articulo`) REFERENCES `articulos` (`id_articulo`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_factura`
--

LOCK TABLES `detalle_factura` WRITE;
/*!40000 ALTER TABLE `detalle_factura` DISABLE KEYS */;
INSERT INTO `detalle_factura` VALUES (1,1,1,2,1250.00),(2,1,5,1,660.00),(3,2,4,2,720.00),(4,2,2,1,580.00),(5,3,3,1,1350.00),(6,3,10,2,1150.00),(7,4,7,1,850.00),(8,4,9,1,980.00),(9,5,12,2,730.00),(10,5,14,1,610.00),(11,6,6,3,950.00),(12,6,11,2,890.00),(13,7,15,1,570.00),(14,8,16,2,760.00),(15,9,17,1,1320.00),(16,10,20,1,2100.00),(17,11,21,2,890.00),(18,12,24,1,1280.00),(19,13,25,2,1340.00),(20,14,26,1,2600.00),(21,15,27,3,430.00),(22,16,28,1,780.00),(23,17,29,1,880.00),(24,18,13,1,1420.00),(25,19,8,2,1320.00),(26,20,18,2,1240.00),(27,21,19,1,980.00),(28,22,30,1,880.00),(29,23,23,1,1400.00),(30,24,22,2,650.00);
/*!40000 ALTER TABLE `detalle_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturas` (
  `id_factura` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `fecha_emision` date DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_factura`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (1,1,'2023-01-15',2150.00),(2,2,'2023-01-20',1280.00),(3,3,'2023-01-25',3460.00),(4,4,'2023-02-01',1780.00),(5,5,'2023-02-05',2580.00),(6,6,'2023-02-10',3100.00),(7,7,'2023-02-12',890.00),(8,8,'2023-02-15',2320.00),(9,9,'2023-02-20',1950.00),(10,10,'2023-02-22',1740.00),(11,11,'2023-02-25',910.00),(12,12,'2023-03-01',2640.00),(13,13,'2023-03-03',1520.00),(14,14,'2023-03-05',1980.00),(15,15,'2023-03-10',2210.00),(16,16,'2023-03-12',1630.00),(17,17,'2023-03-14',3100.00),(18,18,'2023-03-16',990.00),(19,19,'2023-03-18',1580.00),(20,20,'2023-03-20',2750.00),(21,21,'2023-03-22',1870.00),(22,22,'2023-03-24',1190.00),(23,23,'2023-03-26',1720.00),(24,24,'2023-03-28',1360.00),(25,25,'2023-03-30',1840.00),(26,26,'2023-04-01',2070.00),(27,27,'2023-04-03',1990.00),(28,28,'2023-04-05',2420.00),(29,29,'2023-04-07',1660.00),(30,30,'2023-04-09',2550.00),(31,30,'2025-04-14',10000.00);
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `idMarca` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idMarca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (1,'Apple'),(2,'Samsung'),(3,'Huawei'),(4,'LG'),(5,'Motorola'),(6,'Google'),(7,'HP'),(8,'Epson'),(9,'Kodak');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProducto` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Precio` decimal(10,2) DEFAULT NULL,
  `Marca` int(11) DEFAULT NULL,
  `Categoria` varchar(50) DEFAULT NULL,
  `Presentacion` varchar(50) DEFAULT NULL,
  `Stock` int(11) DEFAULT NULL,
  `Disponible` enum('SI','NO') DEFAULT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'iPhone 6',499.99,1,'Smartphone','16GB',500,'SI'),(2,'iPad Pro',599.99,1,'Smartphone','128GB',300,'SI'),(3,'Nexus 7',299.99,4,'Smartphone','32GB',250,'NO'),(4,'Galaxy S7',459.99,2,'Smartphone','64GB',200,'SI'),(5,'Impresora T23',489.99,8,'Impresoras','Color',180,'NO'),(6,'Impresora T33',399.00,8,'Impresoras','Color',200,'NO'),(7,'Lavarropa 7000',1679.00,4,'Lavarropas','Automático',100,'SI'),(8,'Camara Digital 760',649.00,9,'Fotografía','Sin detalle',150,'NO'),(9,'Notebook CQ40-300',2999.00,7,'Notebooks','Intel Core i3',100,'SI');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seleccionessudamericanas`
--

DROP TABLE IF EXISTS `seleccionessudamericanas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seleccionessudamericanas` (
  `idSeleccion` int(11) NOT NULL AUTO_INCREMENT,
  `Pais` varchar(50) NOT NULL,
  `Confederacion` varchar(50) DEFAULT 'CONMEBOL',
  `TitulosMundiales` int(11) DEFAULT 0,
  PRIMARY KEY (`idSeleccion`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seleccionessudamericanas`
--

LOCK TABLES `seleccionessudamericanas` WRITE;
/*!40000 ALTER TABLE `seleccionessudamericanas` DISABLE KEYS */;
INSERT INTO `seleccionessudamericanas` VALUES (1,'Argentina','CONMEBOL',3),(2,'Brasil','CONMEBOL',5),(3,'Uruguay','CONMEBOL',2),(4,'Chile','CONMEBOL',0),(5,'Colombia','CONMEBOL',0),(6,'Ecuador','CONMEBOL',0),(7,'Paraguay','CONMEBOL',0),(8,'Perú','CONMEBOL',0),(9,'Venezuela','CONMEBOL',0),(10,'Bolivia','CONMEBOL',0);
/*!40000 ALTER TABLE `seleccionessudamericanas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-24 19:52:07

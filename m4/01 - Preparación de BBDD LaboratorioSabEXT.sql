-- Preparación de BBDD LaboratorioSabEXT

create database LaboratorioSabEXT;
use LaboratorioSabEXT;

CREATE TABLE `clientes` (
  `ClienteID` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(35) NOT NULL,
  `CUIT` char(16) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Observaciones` varchar(255) DEFAULT NULL
  );
  
  CREATE TABLE `articulos` (
  `ArticuloID` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(75) NOT NULL,
  `Precio` double unsigned NOT NULL,
  `Stock` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ArticuloID`),
  UNIQUE KEY `ArticuloID` (`ArticuloID`)
);

show tables;

select * from Clientes;
select * from Articulos;
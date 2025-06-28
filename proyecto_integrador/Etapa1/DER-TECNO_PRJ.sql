create database tecno_DB;

use tecno_DB;

CREATE TABLE IF NOT EXISTS `FACTURAS` (
	`FacturaID` int AUTO_INCREMENT NOT NULL UNIQUE,
	`Letra` char(1) NOT NULL,
	`Numero` int NOT NULL,
	`ClienteID` int NOT NULL,
	`Fecha` date NOT NULL,
	`Monto` double NOT NULL,
	PRIMARY KEY (`FacturaID`)
);

CREATE TABLE IF NOT EXISTS `ARTICULOS` (
	`ArticuloID` int AUTO_INCREMENT NOT NULL UNIQUE,
	`Nombre` varchar(50) NOT NULL,
	`Precio` double NOT NULL,
	`Stock` int NOT NULL,
	PRIMARY KEY (`ArticuloID`)
);

CREATE TABLE IF NOT EXISTS `CLIENTES` (
	`ClienteID` int AUTO_INCREMENT NOT NULL UNIQUE,
	`Nombre` varchar(25) NOT NULL,
	`Apellido` varchar(25) NOT NULL,
	`CUIT` char(16) NOT NULL,
	`Direccion` varchar(50) NOT NULL,
	`Comentarios` varchar(50) NOT NULL,
	PRIMARY KEY (`ClienteID`)
);

CREATE TABLE IF NOT EXISTS `DETALLE` (
	`DetalleID` int AUTO_INCREMENT NOT NULL UNIQUE,
	`ArticuloID` int NOT NULL,
	`FacturaID` int NOT NULL,
	`Cantidad` int NOT NULL,
	PRIMARY KEY (`DetalleID`)
);

ALTER TABLE `FACTURAS` ADD CONSTRAINT `FACTURAS_fk3` FOREIGN KEY (`ClienteID`) REFERENCES `CLIENTES`(`ClienteID`);

ALTER TABLE `DETALLE` ADD CONSTRAINT `DETALLE_fk1` FOREIGN KEY (`ArticuloID`) REFERENCES `ARTICULOS`(`ArticuloID`);

ALTER TABLE `DETALLE` ADD CONSTRAINT `DETALLE_fk2` FOREIGN KEY (`FacturaID`) REFERENCES `FACTURAS`(`FacturaID`);
CREATE TABLE IF NOT EXISTS `Productos` (
	`ProductoId` int AUTO_INCREMENT NOT NULL UNIQUE,
	`Nombre` varchar(50) NOT NULL,
	`Modelo` varchar(30) NOT NULL,
	`Stock` int NOT NULL,
	`Precio` decimal(10,0) NOT NULL,
	`CategoriaId` int NOT NULL,
	PRIMARY KEY (`ProductoId`)
);

CREATE TABLE IF NOT EXISTS `Categorias` (
	`CategoriaId` int AUTO_INCREMENT NOT NULL UNIQUE,
	`Nombre` varchar(50) NOT NULL UNIQUE,
	PRIMARY KEY (`CategoriaId`)
);

ALTER TABLE `Productos` ADD CONSTRAINT `Productos_fk5` FOREIGN KEY (`CategoriaId`) REFERENCES `Categorias`(`CategoriaId`);

-- Crea una nueva base de datos llamada 'tecno_DB'
create database tecno_DB;

-- Selecciona la base de datos 'tecno_DB' para trabajar sobre ella
use tecno_DB;

-- Crea la tabla FACTURAS si no existe
CREATE TABLE IF NOT EXISTS `FACTURAS` (
	`FacturaID` int AUTO_INCREMENT NOT NULL UNIQUE, -- Identificador único para cada factura, autoincremental
	`Letra` char(1) NOT NULL,                       -- Letra de la factura (por ej. A, B, C)
	`Numero` int NOT NULL,                          -- Número correlativo de la factura
	`ClienteID` int NOT NULL,                       -- Relaciona la factura con un cliente
	`Fecha` date NOT NULL,                          -- Fecha de emisión de la factura
	`Monto` double NOT NULL,                        -- Monto total de la factura
	PRIMARY KEY (`FacturaID`)                       -- Llave primaria de la tabla
);

-- Crea la tabla ARTICULOS si no existe
CREATE TABLE IF NOT EXISTS `ARTICULOS` (
	`ArticuloID` int AUTO_INCREMENT NOT NULL UNIQUE, -- Identificador único de cada artículo, autoincremental
	`Nombre` varchar(50) NOT NULL,                   -- Nombre del artículo
	`Precio` double NOT NULL,                        -- Precio unitario del artículo
	`Stock` int NOT NULL,                            -- Cantidad de stock disponible
	PRIMARY KEY (`ArticuloID`)                       -- Llave primaria de la tabla
);

-- Crea la tabla CLIENTES si no existe
CREATE TABLE IF NOT EXISTS `CLIENTES` (
	`ClienteID` int AUTO_INCREMENT NOT NULL UNIQUE, -- Identificador único del cliente, autoincremental
	`Nombre` varchar(25) NOT NULL,                  -- Nombre del cliente
	`Apellido` varchar(25) NOT NULL,                -- Apellido del cliente
	`CUIT` char(16) NOT NULL,                       -- Identificación fiscal (Argentina)
	`Direccion` varchar(50) NOT NULL,               -- Dirección del cliente
	`Comentarios` varchar(50) NOT NULL,             -- Campo para notas o comentarios adicionales
	PRIMARY KEY (`ClienteID`)                       -- Llave primaria de la tabla
);

-- Crea la tabla DETALLE si no existe
CREATE TABLE IF NOT EXISTS `DETALLE` (
	`DetalleID` int AUTO_INCREMENT NOT NULL UNIQUE, -- Identificador único del detalle, autoincremental
	`ArticuloID` int NOT NULL,                      -- Relaciona el detalle con un artículo vendido
	`FacturaID` int NOT NULL,                       -- Relaciona el detalle con una factura
	`Cantidad` int NOT NULL,                        -- Cantidad de unidades del artículo vendido
	PRIMARY KEY (`DetalleID`)                       -- Llave primaria de la tabla
);

-- Agrega restricción de clave foránea a FACTURAS: ClienteID debe existir en CLIENTES
ALTER TABLE `FACTURAS` 
	ADD CONSTRAINT `FACTURAS_fk3` FOREIGN KEY (`ClienteID`) REFERENCES `CLIENTES`(`ClienteID`);

-- Agrega restricción de clave foránea a DETALLE: ArticuloID debe existir en ARTICULOS
ALTER TABLE `DETALLE` 
	ADD CONSTRAINT `DETALLE_fk1` FOREIGN KEY (`ArticuloID`) REFERENCES `ARTICULOS`(`ArticuloID`);

-- Agrega restricción de clave foránea a DETALLE: FacturaID debe existir en FACTURAS
ALTER TABLE `DETALLE` 
	ADD CONSTRAINT `DETALLE_fk2` FOREIGN KEY (`FacturaID`) REFERENCES `FACTURAS`(`FacturaID`);

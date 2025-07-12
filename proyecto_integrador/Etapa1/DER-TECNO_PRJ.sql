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


-- 4. Crear una tabla con el nombre LOCALIDADES
CREATE TABLE Localidades (
  LocalidadID INT UNSIGNED NOT NULL AUTO_INCREMENT,
  Nombre      VARCHAR(40) NOT NULL,
  CP          VARCHAR(10) NOT NULL,
  Provincia   VARCHAR(20) NOT NULL,
  PRIMARY KEY (LocalidadID)
);

-- 5. Mostrar un listado de todas las bases de datos alojadas en el servidor.
show databases;

-- 6. Mostrar un listado de todas las tablas generadas anteriormente dentro de la base de datos
show tables;

-- 7. Comentar la instrucción que lista las tablas contenidas dentro de la base de datos
#  show tables;
-- show tables;
/* show tables; */

-- 8. Describir la estructura de la tabla CLIENTES.
desc Clientes;

# Paso 2
-- 1. Modificar la tabla FACTURAS tomando en cuenta las siguientes consideraciones:

desc Facturas;

-- a. 	Asignar la restricción UNSIGNED al campo Monto, manteniendo el tipo de dato 
--		ya definido para el campo.

alter table Facturas
	MODIFY Monto double UNSIGNED;
    
    
-- b. Modificar la tabla ARTICULOS tomando en cuenta las siguientes consideraciones:
-- c. Cambiar el tipo de dato del campo Nombre para que admita hasta 75 caracteres.
desc ARTICULOS;
alter table ARTICULOS
	modify Nombre	varchar(75);

-- d. Asignar las restricciones UNSIGNED y NOT NULL al campo Precio, manteniendo
-- el tipo de dato ya definido para el campo.    
alter table ARTICULOS
	modify Precio double UNSIGNED NOT NULL;

-- d. Asignar las restricciones UNSIGNED y NOT NULL al campo Stock, manteniendo
-- el tipo de dato ya definido para el campo.    
desc ARTICULOS;
alter table ARTICULOS
	modify Stock int UNSIGNED NOT NULL;
    
# 3. Modificar la tabla CLIENTES. Tomar en cuenta las siguientes consideraciones:
/* a. Cambiar el tipo de dato del campo Nombre para que admita hasta 30 caracteres y
asigne la restricción correspondiente para que su carga sea obligatoria.    
*/

desc CLIENTES;
alter table CLIENTES
	modify Nombre varchar(30) not null;
    
/* b. Cambiar el tipo de dato del campo Apellido para que admita hasta 35
caracteres y asigne la restricción correspondiente para que su carga sea obligatoria.    
*/

desc CLIENTES;
alter table CLIENTES
	modify Apellido varchar(35) not null;
    
/* c. Cambiar el nombre del campo Comentarios por Observaciones 
y su tipo de dato para que admita hasta 255 caracteres.*/    

desc CLIENTES;
alter table CLIENTES
	change Comentarios Observaciones varchar(255) null;
    
/* 4. Crear un PROMPT para que la IA modifique el código que venimos desarrollando, de tal forma que se
relacionen las tablas CLIENTES y LOCALIDAD. */

#Prompt: Dada la siguiente imagen, proporciona las sentencias SQL para relacionar Clientes y Localidades.

/* 5. Copiar y ejecutar el código generado por la IA para que se reflejen los
cambios en la base de datos. */

-- Paso 1: Agregar columna LocalidadID a clientes
ALTER TABLE clientes
ADD COLUMN LocalidadID INT(10) AFTER Observaciones;

-- Paso 2: Crear índice para la clave foránea (opcional pero recomendado)
ALTER TABLE clientes
ADD INDEX idx_LocalidadID (LocalidadID);

ALTER TABLE clientes
MODIFY COLUMN LocalidadID INT(10) UNSIGNED;

-- Paso 3: Agregar restricción de clave foránea
ALTER TABLE clientes
ADD CONSTRAINT fk_clientes_localidades
FOREIGN KEY (LocalidadID)
REFERENCES localidades(LocalidadID)
ON UPDATE CASCADE
ON DELETE SET NULL;


desc clientes;
desc Localidades;

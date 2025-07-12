use comercioit;

-- Crea la tabla ARTICULOS si no existe
CREATE TABLE IF NOT EXISTS `ARTICULOS` (
	`ArticuloID` int AUTO_INCREMENT NOT NULL UNIQUE, -- Identificador único de cada artículo, autoincremental
	`Nombre` varchar(50) NOT NULL,                   -- Nombre del artículo
	`Precio` double NOT NULL,                        -- Precio unitario del artículo
	`Stock` int NOT NULL,                            -- Cantidad de stock disponible
	PRIMARY KEY (`ArticuloID`)                       -- Llave primaria de la tabla
);

show tables;

desc Articulos;
describe Articulos;

# Alter table
-- Agregar una nueva columna
alter table Articulos
	add column observaciones varchar(50) null;
    
-- Agregar una nueva columna en la primera posicion
desc Articulos;
alter table Articulos add column primera varchar(50) null first;
desc Articulos;    

-- Agregar una nueva columna despues de una posicion
desc Articulos;
alter table Articulos add column siguiente varchar(50) null after nombre ;
desc Articulos;    

-- Agregar una nueva columna si estables la posicion
desc Articulos;
alter table Articulos add column ultima varchar(50) null;
desc Articulos;    

-- CHANGE: Cambiar el nombre de una columna
desc Articulos;
alter table Articulos change observaciones comentarios varchar(40) null;
desc Articulos;    

-- MODIFY: Cambiar columna (Tipo/Tamaño/Restriccion)
desc Articulos;
alter table Articulos modify comentarios text null;
desc Articulos;    


-- DROP: Eliminar columna(s)
desc Articulos;
alter table Articulos drop comentarios;
alter table Articulos drop primera, drop siguiente, drop ultima;
desc Articulos;    

-- Renombrar tablas
show tables;
Alter table Articulos rename OtrosProductos;
Rename table OtrosProductos to Articulos;


-- Agregar / Eliminar restricciones
desc Articulos;
ALTER TABLE Articulos MODIFY COLUMN ArticuloID INT;
Alter table Articulos drop PRIMARY KEY;

Alter table Articulos add PRIMARY KEY(ArticuloID);


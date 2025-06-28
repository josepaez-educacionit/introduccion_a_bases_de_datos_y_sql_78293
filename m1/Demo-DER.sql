# -----------------------------------------------
# Crear base de datos llamada 'demoDER'
# -----------------------------------------------
-- Crea una nueva base de datos llamada 'demoDER' si no existe.
CREATE DATABASE demoDER;

# -----------------------------------------------
# Seleccionar base de datos
# -----------------------------------------------
-- Selecciona la base de datos 'demoDER' para usarla en las siguientes operaciones.
USE demoDER;

# -----------------------------------------------
# Crear tabla 'Productos'
# -----------------------------------------------
-- Crea la tabla 'Productos' solo si no existe aún.
-- Esta tabla almacena información de productos de inventario.
CREATE TABLE IF NOT EXISTS `Productos` (
	`ProductoId` INT AUTO_INCREMENT NOT NULL UNIQUE, -- Identificador único del producto (clave primaria autoincremental)
	`Nombre` VARCHAR(50) NOT NULL,                   -- Nombre descriptivo del producto
	`Modelo` VARCHAR(30) NOT NULL,                   -- Modelo del producto
	`Stock` INT NOT NULL,                            -- Cantidad de unidades disponibles
	`Precio` DECIMAL(10,0) NOT NULL,                 -- Precio del producto, tipo DECIMAL (sin decimales)
	`CategoriaId` INT NOT NULL,                      -- Relación con la tabla 'Categorias'
	PRIMARY KEY (`ProductoId`)                       -- Llave primaria de la tabla
);

# -----------------------------------------------
# Crear tabla 'Categorias'
# -----------------------------------------------
-- Crea la tabla 'Categorias' solo si no existe aún.
-- Esta tabla almacena las categorías a las que puede pertenecer un producto.
CREATE TABLE IF NOT EXISTS `Categorias` (
	`CategoriaId` INT AUTO_INCREMENT NOT NULL UNIQUE, -- Identificador único de la categoría (clave primaria autoincremental)
	`Nombre` VARCHAR(50) NOT NULL UNIQUE,             -- Nombre único de la categoría (no se permite repetir)
	PRIMARY KEY (`CategoriaId`)                       -- Llave primaria de la tabla
);

# -----------------------------------------------
# Crear relación entre 'Productos' y 'Categorias'
# -----------------------------------------------
-- Establece una clave foránea para asegurar la integridad referencial.
-- Cada producto debe tener una categoría válida que exista en 'Categorias'.
ALTER TABLE `Productos`
	ADD CONSTRAINT `Productos_fk5` 
	FOREIGN KEY (`CategoriaId`) REFERENCES `Categorias`(`CategoriaId`);

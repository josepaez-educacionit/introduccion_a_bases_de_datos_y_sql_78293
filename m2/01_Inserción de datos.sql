-- Mostrar las Bases de Datos del servidor
show databases;

use comercioit;

-- Mostrar las tablas de la base de datos activa
show tables;

select * from productos;
select * from productos where Precio is null;
-- Insertamos un registo sin asiganar el precio, por lo queda en Null el precio
INSERT INTO Productos (Nombre, Marca, Categoria, Stock, Disponible) VALUES
('Laptop HP 17', 'HP', 'Portátiles', 2, true);


-- Consulta de datos anexados
show tables;

CREATE TABLE productos_portatiles(
	idProducto INT, 
	Nombre VARCHAR(50) NOT NULL,
	Precio DOUBLE               
);





insert into ProductosTemporal(idProducto, Nombre, Precio, Marca, Categoria, Stock, Disponible)
SELECT
  idProducto,
  -- Ofuscar Nombre: mostrar solo la primera letra y el resto como asteriscos
  CONCAT(LEFT(Nombre, 1), REPEAT('*', LENGTH(Nombre) - 1)) AS Nombre_Ofuscado,
  Precio,
  -- Ofuscar Marca: mostrar solo primera letra
  CONCAT(LEFT(Marca, 1), REPEAT('*', LENGTH(Marca) - 1)) AS Marca_Ofuscada,
  -- Ofuscar Categoría: solo primera letra
  CONCAT(LEFT(Categoria, 1), REPEAT('*', LENGTH(Categoria) - 1)) AS Categoria_Ofuscada,
  Stock,
  Disponible
FROM
  Productos;

CREATE TABLE ProductosTemporal(
	idProducto INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, -- Identificador único y autoincremental
	Nombre VARCHAR(50) NOT NULL,                                 -- Nombre descriptivo del producto
	Precio DOUBLE,                                               -- Precio del producto (en USD)
	Marca VARCHAR(30) NOT NULL,                                  -- Marca del producto
	Categoria VARCHAR(30) NOT NULL,                              -- Categoría (Portátiles, Audio, etc.)
	Stock INT NOT NULL,                                          -- Cantidad disponible en inventario
	Disponible BOOLEAN DEFAULT false                             -- Indica si está disponible para la venta
);

insert into productos_portatiles (IdProducto, Nombre, Precio) 
select IdProducto, Nombre, Precio from productos where categoria = 'Portátiles';

select * from productos_portatiles;

select * from ProductosTemporal;



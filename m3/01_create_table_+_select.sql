Use LaboratorioSAB;

-- Muestra todas las tablas existentes en la base de datos actual
SHOW TABLES;

-- Muestra todos los registros de la tabla 'articulos'
SELECT * FROM articulos;

-- Crea una nueva tabla llamada 'articulos_copia' copiando la estructura y los datos de 'articulos'
CREATE TABLE articulos_copia
SELECT * FROM articulos;

-- Muestra todos los registros de la nueva tabla 'articulos_copia'
SELECT * FROM articulos_copia;

-- Aumenta en un 10% el precio de todos los artículos en la tabla 'articulos_copia'
update articulos_copia set precio = precio * 1.10;

-- Muestra todos los registros de la nueva tabla 'articulos_copia' con el aumento del 10%
SELECT * FROM articulos_copia;

-- Muestra la estructura (columnas y tipos de datos) de la tabla 'articulos'
desc articulos;

-- Muestra la estructura de la tabla 'articulos_copia'
desc articulos_copia;
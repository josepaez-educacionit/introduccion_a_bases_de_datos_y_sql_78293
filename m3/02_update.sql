-- Seleccionamos la base de datos que vamos a usar
use laboratoriosab;

-- Mostramos todos los registros de la tabla 'articulos'
SELECT * FROM articulos;

-- Actualizamos el nombre del artículo con Id = 10
update articulos
set Nombre = 'Facturas Riquisimas x Docena'
where Id = 10;

-- Actualizamos el nombre y el precio del artículo con Id = 10
update articulos
set Nombre = 'Facturas x Docena',
    Precio = Precio * 1.10
where Id = 10;

-- Incrementamos el precio de todos los artículos en un 10%
update articulos
set Precio = Precio * 1.10;

-- Se desactiva el modo seguro de SQL para permitir actualizaciones masivas
SET sql_safe_updates = 0;

-- Se vuelve a activar el modo seguro de SQL
SET sql_safe_updates = 1;

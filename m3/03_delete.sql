-- Seleccionamos la base de datos que vamos a usar
use laboratoriosab;

-- Mostramos todos los registros de la tabla 'articulos_copia'
select * from articulos_copia;

-- Eliminamos el registro con Id = 10
delete from articulos_copia where Id = 10;

-- Eliminamos los registros con Id = 8 y 9
delete from articulos_copia where Id in (8, 9);

-- Eliminamos todos los registros de la tabla 'articulos_copia'
delete from articulos_copia;

-- Insertamos todos los registros de la tabla 'articulos' en 'articulos_copia'
insert into articulos_copia
select * from articulos;

-- Eliminamos todos los registros de la tabla 'articulos_copia' y reiniciamos el contador de AUTO_INCREMENT
truncate table articulos_copia;

-- Mostramos la estructura de la tabla 'articulos_copia'
desc articulos_copia;

-- Modificamos la columna 'ID' para que sea AUTO_INCREMENT y PRIMARY KEY
alter table articulos_copia
modify ID INT AUTO_INCREMENT PRIMARY KEY;

-- Verificamos nuevamente la estructura de la tabla para confirmar los cambios
desc articulos_copia;

-- Mostramos todos los registros de la tabla 'articulos_copia'
select * from articulos_copia;

-- Insertamos nuevamente todos los registros de la tabla 'articulos' en 'articulos_copia'
insert into articulos_copia
select * from articulos;

-- Eliminamos todos los registros de la tabla 'articulos_copia'
delete from articulos_copia;

-- Insertamos únicamente las columnas 'nombre' y 'precio' de la tabla 'articulos' en 'articulos_copia'
insert into articulos_copia (nombre, precio)
select nombre, precio from articulos;

-- Mostramos todos los registros de la tabla 'articulos_copia'
select * from articulos_copia;

-- Eliminamos todos los registros de la tabla 'articulos_copia' y reiniciamos el contador de AUTO_INCREMENT
truncate table articulos_copia;
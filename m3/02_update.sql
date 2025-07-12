use laboratoriosab;

SELECT * FROM articulos;

update articulos
set Nombre = 'Facturas Riquisimas x Docena'
where Id = 10;

update articulos
set Nombre = 'Facturas x Docena',
	Precio = Precio * 1.10
where Id = 10;

update articulos
set 	Precio = Precio * 1.10;

-- Se desactiva el modo seguro de SQL para permitir actualizaciones masivas
SET sql_safe_updates = 0;

-- Se vuelve a activar el modo seguro de SQL
SET sql_safe_updates = 1;

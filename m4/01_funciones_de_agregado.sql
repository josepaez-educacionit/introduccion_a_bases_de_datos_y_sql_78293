use LaboratorioSabEXT;

select * from Articulos;

# count()
-- Obtener la cantidad de registros en una tabla
select count(*) as Cantidad from Clientes;
select count(*) as Cantidad from Articulos;
select count(*) as Cantidad from Articulos where stock < 100;

 # sum()
 -- Obtener el total de registros en una tabla
 -- Se utiliza para sumar los valores de una columna numerica en una tabla.
 
  -- Obtener total de stock de articulos
  select sum(stock) as Total from Articulos;
  
  -- Obtener stock valorizado de articulos
  select sum(stock * precio) as Total from Articulos;
 
  select sum(stock * precio) as Total from Articulos
  where nombre in ('Manteca Sancor', 'Crema La Serenísima') ;
 
 
 select * from Articulos
  where nombre like '%Manteca%' or  nombre like '%Crema%' ;
 
 select sum(stock * precio) as Total from Articulos
  where nombre like '%Manteca%' or  nombre like '%Crema%' ;
 
 
 # min()
 -- Obtener el valor mas bajo de un conjunto de datos.
 -- Se utiliza para obtener el valor minimo de una columna en una tabla.
 
  -- Obtener el precio minimo de los articulos 
 select min(precio) as MinPrecio from articulos;
 
select * from Articulos where Precio = 222.5;
 
 -- Obtener el stock minimo de los articulos 
 select min(stock) as MinStock from articulos;
 select * from Articulos where stock = 17;

# max()
-- Obtener el valor mas alto de un conjunto de datos.
-- Se utiliza para obtener el valor maximo de una columna en una tabla.

-- Obtener el precio maximo de los articulos 
select max(precio) as MaxPrecio from articulos;
select * from Articulos where Precio = 4990.09;

-- Obtener el stock maximo de los articulos 
select max(stock) as MaxStock from articulos;
select * from Articulos where stock = 500;

 # avg
-- Obtener el promedio de un conjunto de datos.
-- Se utiliza para obtener el promedio de una columna en una tabla.
 select avg(precio) as Promedio from articulos; 
 
 select * from Articulos where Precio > 2744.8386 order by Precio;
 select * from Articulos 
	where Precio > ( select avg(precio) as Promedio from articulos ) 
    order by Precio;
 
 select 
	count(*) as Cantidad,
    sum(Stock) as CantStock,
	min(Stock) as MinStock,
    max(Stock) as MaxStock,
    avg(Stock) as PromStock 
from articulos; 
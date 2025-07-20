-- Seleccionamos la base de datos a utilizar
use LaboratorioSabEXT;

-- Mostramos todos los registros de la tabla Articulos
select * from Articulos;

# count()
-- La función COUNT() se utiliza para contar la cantidad de registros en una tabla o el número de valores en una columna.
-- Ejemplo: Contar todos los registros en la tabla Clientes
select count(*) as Cantidad from Clientes;

-- Ejemplo: Contar todos los registros en la tabla Articulos
select count(*) as Cantidad from Articulos;

-- Ejemplo: Contar los registros en la tabla Articulos donde el stock es menor a 100
select count(*) as Cantidad from Articulos where stock < 100;

# sum()
-- La función SUM() se utiliza para sumar los valores de una columna numérica en una tabla.
-- Ejemplo: Obtener el total de stock de artículos
select sum(stock) as Total from Articulos;

-- Ejemplo: Obtener el valor total del stock valorizado de artículos
select sum(stock * precio) as Total from Articulos;

-- Ejemplo: Obtener el valor total del stock valorizado de artículos específicos
select sum(stock * precio) as Total from Articulos
where nombre in ('Manteca Sancor', 'Crema La Serenísima');

-- Ejemplo: Mostrar los artículos que contienen "Manteca" o "Crema" en su nombre
select * from Articulos
where nombre like '%Manteca%' or nombre like '%Crema%';

-- Ejemplo: Obtener el valor total del stock valorizado de artículos que contienen "Manteca" o "Crema" en su nombre
select sum(stock * precio) as Total from Articulos
where nombre like '%Manteca%' or nombre like '%Crema%';

# min()
-- La función MIN() se utiliza para obtener el valor más bajo de una columna en una tabla.
-- Ejemplo: Obtener el precio mínimo de los artículos
select min(precio) as MinPrecio from articulos;

-- Ejemplo: Mostrar los artículos cuyo precio es igual al mínimo
select * from Articulos where Precio = 222.5;

-- Ejemplo: Obtener el stock mínimo de los artículos
select min(stock) as MinStock from articulos;

-- Ejemplo: Mostrar los artículos cuyo stock es igual al mínimo
select * from Articulos where stock = 17;

# max()
-- La función MAX() se utiliza para obtener el valor más alto de una columna en una tabla.
-- Ejemplo: Obtener el precio máximo de los artículos
select max(precio) as MaxPrecio from articulos;

-- Ejemplo: Mostrar los artículos cuyo precio es igual al máximo
select * from Articulos where Precio = 4990.09;

-- Ejemplo: Obtener el stock máximo de los artículos
select max(stock) as MaxStock from articulos;

-- Ejemplo: Mostrar los artículos cuyo stock es igual al máximo
select * from Articulos where stock = 500;

# avg()
-- La función AVG() se utiliza para obtener el promedio de los valores de una columna en una tabla.
-- Ejemplo: Obtener el precio promedio de los artículos
select avg(precio) as Promedio from articulos;

-- Ejemplo: Mostrar los artículos cuyo precio es mayor al promedio
select * from Articulos where Precio > 2744.8386 order by Precio;

-- Ejemplo: Mostrar los artículos cuyo precio es mayor al promedio calculado dinámicamente
select * from Articulos 
where Precio > (select avg(precio) as Promedio from articulos)
order by Precio;

-- Ejemplo: Obtener múltiples estadísticas de la columna Stock
select 
    count(*) as Cantidad, -- Cantidad total de registros
    sum(Stock) as CantStock, -- Suma total del stock
    min(Stock) as MinStock, -- Stock mínimo
    max(Stock) as MaxStock, -- Stock máximo
    avg(Stock) as PromStock -- Promedio del stock
from articulos;
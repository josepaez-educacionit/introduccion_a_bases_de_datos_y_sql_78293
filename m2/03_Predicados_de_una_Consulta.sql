use comercioit;

-- Clausula Where

-- Operadores de comparacion

select * from productos;
select * from productos where idProducto = 10;
select * from productos where idProducto > 10;
select * from productos where idProducto >= 10;
select * from productos where idProducto < 10;
select * from productos where idProducto <= 10;
select * from productos where idProducto <> 10;

-- Operadores Logicos
#AND 
select * from productos where (Stock < 20);
select * from productos where (Precio > 300);
select * from productos where (Stock < 20) and (Precio > 300);


#OR
select * from productos where (Stock < 20);
select * from productos where (Precio > 300);
select * from productos where (Stock < 20) or (Precio > 300);

#NOT
select * from productos where (Stock < 20) order by Stock;
select * from productos where not (Stock < 20) order by Stock;

# BETWEEN / NOT BETWEEN
select * from productos where Stock BETWEEN 1 and 10;
select * from productos where Stock not BETWEEN 1 and 10;

# IN / NOT IN
select * from productos where idProducto in (1, 3, 5);
select * from productos where idProducto NOT in (1, 3, 5);

select * from productos where Categoria in ('Consolas', 'Periféricos', 'Tablets');
select * from productos where Categoria Not in ('Consolas', 'Periféricos', 'Tablets');

# LIKE / NOT LIKE
select * from productos where Nombre like 'A%';
select * from productos where Nombre like '%O';
select * from productos where Nombre like '%Ap%';

select * from productos where Nombre NOT like 'A%';

# IS NULL / IS NOT NULL
select * from productos where Precio is null;
select * from productos where Precio is not null;
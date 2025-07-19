use LaboratorioSabEXT;

CREATE TABLE Productos (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Precio DECIMAL(10,2),
    Marca VARCHAR(50),
    Categoria VARCHAR(50),
    Presentacion VARCHAR(100),
    Stock INT,
    Disponible ENUM('SI', 'NO')
);

INSERT INTO Productos (ID, Nombre, Precio, Marca, Categoria, Presentacion, Stock, Disponible) VALUES
(1, 'iPhone 6', 499.99, 'Apple', 'Smartphone', '16GB', 500, 'SI'),
(2, 'iPad Pro', 599.99, 'Apple', 'Smartphone', '128GB', 300, 'SI'),
(3, 'Nexus 7', 299.99, 'LG', 'Smartphone', '32GB', 250, 'NO'),
(4, 'Galaxy S7', 459.99, 'Samsung', 'Smartphone', '64GB', 200, 'SI'),
(5, 'Impresora T23', 489.99, 'Epson', 'Impresoras', 'Color', 180, 'NO'),
(6, 'Impresora T33', 399.00, 'Epson', 'Impresoras', 'Color', 200, 'NO'),
(7, 'Lavarropa 7000', 1679.00, 'LG', 'Lavarropas', 'Automático', 100, 'SI'),
(8, 'Camara Digital 760', 649.00, 'Kodak', 'Fotografía', 'Sin detalle', 150, 'NO'),
(9, 'Notebook CQ40-300', 2999.00, 'HP', 'Notebooks', 'Intel Core i3', 100, 'SI');


# Cláusula GROUP BY
-- La cláusula GROUP BY se utiliza para agrupar los resultados de una consulta en base a una o varias columnas.
-- Se utiliza en conjunto con las funciones de agregado para realizar operaciones sobre los grupos de datos.

select * from productos;

select Marca from productos group by Marca;
select Marca, count(*) as Cantidad from productos group by Marca order by Cantidad desc;

select Categoria, sum( Stock ) as TotStock from productos group by Categoria;
select Categoria, sum( Stock ) as TotStock from productos group by Categoria order by TotStock desc;

select 	Categoria, 
		count(*) as Cantidad, 
        sum( Stock ) as TotStock,
		sum(Precio * Stock) as StockValorizado
from productos 
group by Categoria;

select * from productos where categoria = 'Smartphone';

# Group by + Having
-- La cláusula HAVING se utiliza para filtrar los resultados de una consulta después de aplicar la cláusula GROUP BY.
-- Se utiliza para aplicar condiciones a los grupos de datos.

select 	Categoria, 
		sum(Stock) as TotStock 
from productos 
where Categoria <> 'Smartphone'
group by Categoria having TotStock > 100;


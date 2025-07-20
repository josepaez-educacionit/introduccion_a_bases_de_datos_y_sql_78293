-- Seleccionamos la base de datos a utilizar
use LaboratorioSabEXT;

-- Creamos la tabla Productos para almacenar información sobre los productos
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

-- Insertamos registros de ejemplo en la tabla Productos
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

-- Consultas básicas para visualizar los datos cargados
select * from productos; -- Muestra todos los registros de la tabla Productos

# Cláusula GROUP BY
-- La cláusula GROUP BY se utiliza para agrupar los resultados de una consulta en base a una o varias columnas.
-- Se utiliza en conjunto con las funciones de agregado para realizar operaciones sobre los grupos de datos.

-- Ejemplo: Agrupar los productos por marca
select Marca from productos group by Marca;

-- Ejemplo: Contar la cantidad de productos por marca y ordenar por cantidad descendente
select Marca, count(*) as Cantidad from productos group by Marca order by Cantidad desc;

-- Ejemplo: Sumar el stock total por categoría
select Categoria, sum(Stock) as TotStock from productos group by Categoria;

-- Ejemplo: Sumar el stock total por categoría y ordenar por stock descendente
select Categoria, sum(Stock) as TotStock from productos group by Categoria order by TotStock desc;

-- Ejemplo: Obtener múltiples estadísticas por categoría
select 
    Categoria, 
    count(*) as Cantidad, -- Cantidad de productos por categoría
    sum(Stock) as TotStock, -- Suma total del stock por categoría
    sum(Precio * Stock) as StockValorizado -- Valor total del stock por categoría
from productos 
group by Categoria;

-- Ejemplo: Filtrar productos por categoría específica
select * from productos where categoria = 'Smartphone';

# Group by + Having
-- La cláusula HAVING se utiliza para filtrar los resultados de una consulta después de aplicar la cláusula GROUP BY.
-- Se utiliza para aplicar condiciones a los grupos de datos.

-- Ejemplo: Filtrar categorías con un stock total mayor a 100, excluyendo la categoría "Smartphone"
select 
    Categoria, 
    sum(Stock) as TotStock 
from productos 
where Categoria <> 'Smartphone'
group by Categoria having TotStock > 100;


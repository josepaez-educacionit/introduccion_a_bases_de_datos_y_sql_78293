-- Seleccionamos la base de datos a utilizar
use LaboratorioSab;

-- Creamos la tabla Marcas, que almacena las diferentes marcas de productos
CREATE TABLE Marcas (
    idMarca INT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL
);

-- Creamos la tabla Productos, que almacena los productos y su información
-- Incluye una clave foránea (Marca) que referencia a la tabla Marcas
CREATE TABLE Productos (
    idProducto INT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL,
    Marca INT,
    Categoria VARCHAR(50),
    Presentacion VARCHAR(50),
    Stock INT,
    Disponible ENUM('SI', 'NO'),
    FOREIGN KEY (Marca) REFERENCES Marcas(idMarca)
);

-- Insertamos registros de ejemplo en la tabla Marcas
INSERT INTO Marcas (idMarca, Nombre) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'Huawei'),
(4, 'LG'),
(5, 'Motorola'),
(6, 'Google'),
(7, 'HP'),
(8, 'Epson'),
(9, 'Kodak');

-- Insertamos registros de ejemplo en la tabla Productos
INSERT INTO Productos (idProducto, Nombre, Precio, Marca, Categoria, Presentacion, Stock, Disponible) VALUES
(1, 'iPhone 6', 499.99, 1, 'Smartphone', '16GB', 500, 'SI'),
(2, 'iPad Pro', 599.99, 1, 'Smartphone', '128GB', 300, 'SI'),
(3, 'Nexus 7', 299.99, 4, 'Smartphone', '32GB', 250, 'NO'),
(4, 'Galaxy S7', 459.99, 2, 'Smartphone', '64GB', 200, 'SI'),
(5, 'Impresora T23', 489.99, 8, 'Impresoras', 'Color', 180, 'NO'),
(6, 'Impresora T33', 399.00, 8, 'Impresoras', 'Color', 200, 'NO'),
(7, 'Lavarropa 7000', 1679.00, 4, 'Lavarropas', 'Automático', 100, 'SI'),
(8, 'Camara Digital 760', 649.00, 9, 'Fotografía', 'Sin detalle', 150, 'NO'),
(9, 'Notebook CQ40-300', 2999.00, 7, 'Notebooks', 'Intel Core i3', 100, 'SI');

-- Consultas básicas para visualizar los datos cargados
select * from Marcas; -- Muestra todas las marcas disponibles
select * from Productos; -- Muestra todos los productos disponibles

-- Producto Cartesiano
-- Es una combinación de todas las filas de una tabla con todas las filas de otra tabla.
-- Se utiliza para obtener todas las combinaciones posibles de filas entre dos tablas.
select * 
from Productos, Marcas
order by idProducto, idMarca;
-- Explicación: Devuelve una fila por cada combinación posible de producto y marca, sin importar si están relacionadas.

-- Composición Interna (JOIN implícito)
-- Permite obtener los datos de las tablas relacionadas usando la cláusula WHERE para unirlas por la clave foránea.
select * 
from Productos, Marcas
where Productos.Marca = Marcas.idMarca;
-- Explicación: Devuelve solo los productos junto con la información de su marca correspondiente, es decir, solo las combinaciones donde la relación existe.

-- Composición Interna usando alias
-- Utiliza alias para simplificar la consulta y mejorar la legibilidad.
select * 
from Productos P, Marcas M
where P.Marca = M.idMarca;
-- Explicación: Es equivalente a la consulta anterior, pero usando alias para las tablas.

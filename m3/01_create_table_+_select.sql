-- Seleccionamos la base de datos que vamos a usar
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

-- Muestra todos los registros de la tabla 'Clientes'
select * from Clientes;

-- Crea una nueva tabla llamada 'Clientes_Tucuman' con los clientes cuya provincia es 'Tucumán'
CREATE TABLE Clientes_Tucuman (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    Telefono VARCHAR(20),
    Ciudad VARCHAR(50),
    Provincia VARCHAR(50),
    CodigoPostal VARCHAR(10)
)
SELECT ID, Nombre, Apellido, Email, Telefono, Ciudad, Provincia, CodigoPostal
FROM Clientes
WHERE Provincia = 'Tucumán';

-- Crea una nueva tabla llamada 'Clientes_Tucuman_Gemini' copiando los datos de 'Clientes' para la provincia 'Tucumán'
CREATE TABLE Clientes_Tucuman_Gemini AS
SELECT
    ID,
    Nombre,
    Apellido,
    Email,
    Telefono,
    Ciudad,
    Provincia,
    CodigoPostal
FROM
    Clientes
WHERE
    Provincia = 'Tucumán';

-- Muestra todos los registros de la tabla 'Clientes_Tucuman'
select * from Clientes_Tucuman;

-- Muestra todos los registros de la tabla 'Clientes_Tucuman_Gemini'
select * from Clientes_Tucuman_Gemini;
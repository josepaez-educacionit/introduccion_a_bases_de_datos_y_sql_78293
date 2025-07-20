use LaboratorioSab;

-- ¿Qué es un JOIN?
-- Un JOIN es una operación que permite combinar filas de dos o más tablas en base a una condición de relación.
-- Se utiliza para obtener datos relacionados de diferentes tablas en una sola consulta.
-- Tipos principales de JOIN: INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN, CROSS JOIN.

-- Ejemplo 1: JOIN implícito (composición interna)
-- Selecciona todos los productos y su marca asociada, solo para los productos cuya marca tiene idMarca = 1.
select * 
from Productos, Marcas
where Productos.Marca = Marcas.idMarca
	and Productos.Marca = 1;

-- Ejemplo 2: JOIN explícito (sintaxis moderna)
-- Hace lo mismo que el ejemplo anterior, pero usando la sintaxis JOIN.
select *
from Productos
	join Marcas on Productos.Marca = Marcas.idMarca
where Productos.Marca = 1;

-- Ejemplo 3: INNER JOIN con alias
-- Utiliza alias para simplificar la consulta. Devuelve productos y marcas donde la marca es 1.
select *
from Productos P
	inner join Marcas M on P.Marca = M.idMarca
where P.Marca = 1;

-- ---------------------------------------------
-- Otros ejemplos de JOIN

-- Creamos dos tablas de ejemplo para ilustrar los distintos tipos de JOIN
-- Tabla 1: Tabla1
CREATE TABLE Tabla1 (
    Codigo INT PRIMARY KEY,
    Nombre VARCHAR(15)
);

-- Tabla 2: Tabla2
CREATE TABLE Tabla2 (
    Codigo INT PRIMARY KEY,
    Nombre2 VARCHAR(15)
);

-- Insertamos datos de ejemplo en ambas tablas
INSERT INTO Tabla1 (Codigo, Nombre) VALUES
(1, 'A'),
(3, 'C'),
(8, 'H');

INSERT INTO Tabla2 (Codigo, Nombre2) VALUES
(3, 'Tres'),
(5, 'Cinco'),
(8, 'Ocho');

-- Mostramos el contenido de ambas tablas
select * from Tabla1; -- Muestra todos los registros de Tabla1
select * from Tabla2; -- Muestra todos los registros de Tabla2

/*----------------------------------------*/
-- LEFT JOIN
-- Devuelve todas las filas de la tabla izquierda (Tabla1) y las filas coincidentes de la tabla derecha (Tabla2).
-- Si no hay coincidencia, los resultados de la tabla derecha serán NULL.
select *
from tabla1
	left join tabla2 on tabla1.codigo = tabla2.codigo;
-- Explicación: Se obtienen todos los registros de Tabla1 y, si existe coincidencia en Tabla2 por el campo Codigo, se muestran los datos de Tabla2; si no, aparecen como NULL.
    
-- RIGHT JOIN
-- Devuelve todas las filas de la tabla derecha (Tabla2) y las filas coincidentes de la tabla izquierda (Tabla1).
-- Si no hay coincidencia, los resultados de la tabla izquierda serán NULL.
select *
from tabla1
	right join tabla2 on tabla1.codigo = tabla2.codigo;
-- Explicación: Se obtienen todos los registros de Tabla2 y, si existe coincidencia en Tabla1 por el campo Codigo, se muestran los datos de Tabla1; si no, aparecen como NULL.
    
-- CROSS JOIN
-- Devuelve el producto cartesiano de las dos tablas, combinando cada fila de la tabla izquierda con cada fila de la tabla derecha.
select *
from tabla1
	cross join tabla2
order by tabla1.codigo;
-- Explicación: Se obtienen todas las combinaciones posibles entre los registros de Tabla1 y Tabla2.

-- CROSS JOIN usando la sintaxis de coma
select *
from tabla1, tabla2
order by tabla1.codigo;
-- Explicación: Es equivalente al CROSS JOIN anterior, devuelve el producto cartesiano de ambas tablas.

-- ---------------------------------------------
-- Ejemplo con equipos de fútbol

-- Creamos una tabla de equipos de liga
CREATE TABLE EquiposLiga2025 (
    idEquipo INT PRIMARY KEY,
    NombreEquipo VARCHAR(100) NOT NULL,
    Provincia VARCHAR(50)
);

-- Insertamos equipos de ejemplo
INSERT INTO EquiposLiga2025 (idEquipo, NombreEquipo, Provincia) VALUES
(1, 'River Plate', 'Buenos Aires'),
(2, 'Boca Juniors', 'Buenos Aires'),
(3, 'Racing Club', 'Buenos Aires'),
(4, 'Independiente', 'Buenos Aires'),
(5, 'San Lorenzo', 'Buenos Aires'),
(6, 'Huracán', 'Buenos Aires'),
(7, 'Vélez Sarsfield', 'Buenos Aires'),
(8, 'Argentinos Juniors', 'Buenos Aires'),
(9, 'Banfield', 'Buenos Aires'),
(10, 'Lanús', 'Buenos Aires'),
(11, 'Tigre', 'Buenos Aires'),
(12, 'Platense', 'Buenos Aires'),
(13, 'Barracas Central', 'Buenos Aires'),
(14, 'Defensa y Justicia', 'Buenos Aires'),
(15, 'Arsenal de Sarandí', 'Buenos Aires');

INSERT INTO EquiposLiga2025 (idEquipo, NombreEquipo, Provincia) VALUES
(16, 'Estudiantes de La Plata', 'Buenos Aires'),
(17, 'Gimnasia y Esgrima La Plata', 'Buenos Aires'),
(18, 'Rosario Central', 'Santa Fe'),
(19, 'Newell''s Old Boys', 'Santa Fe'),
(20, 'Colón', 'Santa Fe'),
(21, 'Unión', 'Santa Fe'),
(22, 'Atlético Tucumán', 'Tucumán'),
(23, 'Talleres de Córdoba', 'Córdoba'),
(24, 'Instituto', 'Córdoba'),
(25, 'Belgrano', 'Córdoba'),
(26, 'Godoy Cruz', 'Mendoza'),
(27, 'Sarmiento de Junín', 'Buenos Aires'),
(28, 'Central Córdoba (SdE)', 'Santiago del Estero'),
(29, 'Gimnasia y Esgrima de Mendoza', 'Mendoza'),
(30, 'Deportivo Riestra', 'Buenos Aires');

-- Mostramos todos los equipos
select * from EquiposLiga2025;

-- Ejemplo: Generar todas las combinaciones posibles de partidos (local vs visitante) sin repetir el mismo equipo
select 	E1.NombreEquipo as Local, 
		E2.NombreEquipo as Visitante
from EquiposLiga2025 E1
	cross join EquiposLiga2025 E2
where E1.NombreEquipo <> E2.NombreEquipo;
-- Explicación: Se obtiene el fixture completo de partidos posibles, excluyendo los casos donde el equipo local y visitante sean el mismo.

-- Producto cartesiano usando coma
select 	E1.NombreEquipo as Local, 
		E2.NombreEquipo as Visitante
from EquiposLiga2025 as E1, EquiposLiga2025 as E2
where E1.NombreEquipo <> E2.NombreEquipo;
-- Explicación: Es equivalente al ejemplo anterior, genera todas las combinaciones posibles de partidos entre equipos distintos.
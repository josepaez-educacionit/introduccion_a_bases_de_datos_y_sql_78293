-- Selecciona la base de datos 'comercioit' para trabajar sobre ella
USE comercioit;

# -------------------------------
# CONSULTAS BÁSICAS - SELECT
# -------------------------------

-- Consulta 1: selecciona todos los campos y registros de la tabla 'productos'
SELECT * FROM productos;

-- Consulta 2: selecciona únicamente los campos 'idProducto', 'Nombre' y 'Precio' de todos los productos
SELECT idProducto, Nombre, Precio FROM productos;


# --------------------------------------------
# GENERAR COLUMNAS CALCULADAS EN LA CONSULTA
# --------------------------------------------

-- Consulta 3: selecciona todos los campos y registros de 'productos'
SELECT * FROM productos;

-- Consulta 4: agrega una columna calculada 'PrecioConIVA' (precio + 21% IVA)
SELECT *, Precio * 1.21 AS PrecioConIVA FROM productos;

-- Consulta 5: igual que la anterior, pero redondea 'PrecioConIVA' a 2 decimales
SELECT *, ROUND(Precio * 1.21, 2) AS PrecioConIVA FROM productos;

-- Consulta 6: agrega dos columnas adicionales:
-- 'Origen' con valor fijo 'EEUU' y 'FechaListado' con la fecha actual
SELECT *, 'EEUU' AS Origen, CURDATE() AS FechaListado FROM productos;


# -------------------------------
# ORDENAMIENTO - ORDER BY
# -------------------------------

-- Consulta 7: selecciona todos los registros sin orden específico
SELECT * FROM productos;

-- Consulta 8: ordena todos los registros por 'idProducto' en orden ascendente (por defecto)
SELECT * FROM productos ORDER BY idProducto;

-- Consulta 9: ordena todos los registros por 'idProducto' en orden descendente
SELECT * FROM productos ORDER BY idProducto DESC;

-- Consulta 10: ordena todos los registros por 'Precio' en orden ascendente
SELECT * FROM productos ORDER BY Precio;

-- Consulta 11: ordena por 'Categoria' en orden ascendente y dentro de cada categoría,
-- por 'Precio' en orden descendente (de mayor a menor)
SELECT idProducto, nombre, Categoria, Precio 
FROM productos 
ORDER BY Categoria, Precio DESC;


# -------------------------------
# LIMITAR REGISTROS - LIMIT
# -------------------------------

-- Consulta 12: devuelve solo los primeros 10 registros de la tabla 'productos'
SELECT * FROM productos LIMIT 10;

-- Consulta 13: devuelve los 10 productos con mayor stock (ordenados de mayor a menor)
SELECT * FROM productos ORDER BY Stock DESC LIMIT 10;


# -----------------------------------------------
# PAGINACIÓN - LIMIT + OFFSET
# -----------------------------------------------

-- Consulta 14: devuelve 10 registros, pero empezando desde el registro número 6
-- (útil para paginar resultados: OFFSET omite los primeros 5)
SELECT * FROM productos LIMIT 10 OFFSET 5;

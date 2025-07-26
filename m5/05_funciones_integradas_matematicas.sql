Use laboratoriosab01;

-- Round()
-- La función ROUND redondea un número al entero más cercano o a un número específico de decimales.
select	*, 
		Precio / 3 as PrecioConDecimales, 
        round(Precio/3, 2) PrecioRedondeado2 
from Articulos;

-- Ceil()
-- La función CEIL redondea un número hacia arriba al entero más cercano.
select 	*, 
	Precio * 1.27 		as PrecioAumento, 
    Ceil(Precio * 1.27) as PrecioRedondeado 
from Articulos;

-- Floor()
-- La función FLOOR redondea un número hacia abajo al entero más cercano.
select 	*, 
		Precio * 1.27 		 as PrecioAumento, 
        Floor(Precio * 1.27) as PrecioRedondeado 
from Articulos;

-- Mod()
-- La función MOD devuelve el resto de la división de dos números.
select mod(11, 4) as Resto;

-- Pow()
-- La función POW eleva un número a la potencia especificada.
select pow(2, 8);

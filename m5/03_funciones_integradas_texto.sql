Use laboratoriosab01;

-- Concat
-- La función CONCAT se utiliza para concatenar dos o más cadenas de texto.
select concat('Hola', ' ', 'Mundo') as Saludo;

select 
	concat(apellido, ', ', nombre) as NombreCompleto,
	concat('Estimado/a ', nombre, ' ', apellido, ' Nos dirigimos a Ud. para...') as Mensaje
from clientes;

-- Concat_WS
-- La función CONCAT_WS concatena cadenas de texto con un separador especificado.
select concat_ws(' ', 'Hola', 'Mundo') as Saludo;

select  id_cliente, cuit, 
		concat_ws(' ', 'Sr./a', nombre, apellido) as NombreCompleto
from Clientes;

select  concat_ws(' , ', id_cliente, nombre, apellido, cuit, direccion) as Datos
from Clientes;

-- Upper
-- La función UPPER convierte una cadena de texto a mayúsculas.
select upper('hola mundo') as Saludo;

select id_cliente, upper(apellido) as apellido, nombre 
from Clientes;

select  id_cliente, cuit, 
		concat('Sr./a ', upper(apellido), ', ', nombre ) as NombreCompleto
from Clientes;

-- Lower
-- La función LOWER convierte una cadena de texto a minúsculas.
select lower('HOLA MUNDO') as Saludo;

select  id_cliente, cuit, upper(apellido) as Apellido, Lower(nombre) as Nombre
from Clientes;

-- Left
-- La función LEFT devuelve los primeros N caracteres de una cadena de texto.
select left('Hola Mundo', 4) as Saludo;

select Nombre, Left(nombre, 1) as InicialNombre
from Clientes;

-- Right
-- La función RIGHT devuelve los últimos N caracteres de una cadena de texto.
select right('Hola Mundo', 5) as Saludo;

select Cuit, right( Cuit, 1) as DigitoVerificador
from Clientes;

-- Substring
-- La función SUBSTRING extrae una subcadena de una cadena de texto, comenzando en una posición específica y con una longitud determinada.
select substring('Hola Mundo', 1, 4) as Saludo;

select Cuit, substring(Cuit, 3, 8) as DNI
from Clientes;

--  Case, Left, Substring, Right 
select	Cuit, 
		case 
			when left(Cuit, 2) = '20' 	then 'Masculino'
            when left(Cuit, 2) = '27'	then 'Femenino'
										else 'Empresa'
		end as Persona,
		left(Cuit, 2) as TipoPersona,
		substring(Cuit, 3, 8) as DNI,
		right(Cuit, 1) as DigitoVerificador
from Clientes;

-- Char_Lenght
-- La función CHAR_LENGTH devuelve la longitud de una cadena de texto en caracteres.
select char_length('Hola Mundo') as Longitud;

select Direccion, char_length(Direccion) as CantCaracteres
from Clientes
order by CantCaracteres desc;

-- Locate
-- La función LOCATE busca una subcadena dentro de una cadena de texto y devuelve la posición de la primera aparición.

select locate('Mundo', 'Hola Mundo') as Posicion;

select Direccion, Locate('go', Direccion) as Posicion
from Clientes;

-- Ltrim | RTrim | Trim
-- Las funciones LTRIM, RTRIM y TRIM se utilizan para eliminar espacios en blanco al inicio, al final o en ambos extremos de una cadena de texto.

select Ltrim('   Hola Mundo   ') as SinEspaciosIzquierda,
	   RTrim('   Hola Mundo   ') as SinEspaciosDerecha,
	    Trim('   Hola Mundo   ') as SinEspacios;	

-- Replace
-- La función REPLACE reemplaza todas las ocurrencias de una subcadena dentro de una cadena de texto por otra subcadena.
select replace('Hola Mundo', 'Mundo', 'SQL') as Saludo;


select Direccion, replace(Direccion, 'Av.', 'Avenida') as NuevaDireccion
from Clientes;

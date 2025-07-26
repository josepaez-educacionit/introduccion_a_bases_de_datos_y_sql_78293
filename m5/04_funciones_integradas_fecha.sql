Use laboratoriosab01;

-- Funciones integradas de fecha
-- Las funciones de fecha permiten manipular y extraer información de valores de fecha y hora en SQL.

select * from facturas;

-- Year()
-- Extrae el año de una fecha.
-- Devuelve el año de la fecha en formato YYYY.

select *, year(fecha_emision) as Año from facturas;
select * from facturas where year(fecha_emision) <> 2025 ;

-- Month()
-- Extrae el mes de una fecha.
-- Devuelve el mes de la fecha en formato MM (1-12).

select *, Month(fecha_emision) as Mes from Facturas;
select * from Facturas where Month(fecha_emision) = 3;

-- Day()
-- Extrae el día de una fecha.
-- Devuelve el día de la fecha en formato DD (1-31).
select *, Day(fecha_emision) as Dia from Facturas;
select * from Facturas where Day(fecha_emision) = 1;

-- Hour()
-- Extrae la hora de una fecha.
-- Devuelve la hora de la fecha en formato HH (0-23).

select *, hour(fecha_emision) as Hora from Facturas;

-- CurDate()
-- Devuelve la fecha actual del sistema en formato YYYY-MM-DD.

select curdate() as FechaActual;

INSERT INTO `facturas` VALUES (50, 1, curdate(), 4500.00);

select * from facturas where fecha_emision = curdate();

-- CurTime()  
-- Devuelve la hora actual del sistema en formato HH:MM:SS.
select curtime() as HoraActual;

-- DateDiff
-- Calcula la diferencia entre dos fechas en días.
-- Devuelve el número de días entre las dos fechas especificadas.
select DateDiff( curdate(), '2025-01-01' ) as DiasTranscurridos;

select *,
	datediff( curdate(), fecha_emision ) as DiasTranscurridos
from facturas;

-- TimeStampDiff()
-- Calcula la diferencia entre dos fechas en unidades específicas (años, meses, días, etc.).
-- Devuelve la diferencia entre las dos fechas en la unidad especificada.

select TimeStampDiff(year, '2000-01-01', curdate()) as Años;
select TimeStampDiff(month, '2000-01-01', curdate()) as Meses;
select TimeStampDiff(day, '2000-01-01', curdate()) as Dias;

-- DayName()
-- Devuelve el nombre del día de la semana para una fecha específica.
-- Por ejemplo, 'Monday', 'Tuesday', etc.
select DayName( curdate() ) as NombreDiaSemana;

-- MonthName()
-- Devuelve el nombre del mes para una fecha específica.
-- Por ejemplo, 'January', 'February', etc.
select monthname( curdate() ) as NombreMes;

-- DayOfWeek()
-- Devuelve el número del día de la semana para una fecha específica.
-- 1 para domingo, 2 para lunes, ..., 7 para sábado.

select dayofweek( curdate() ) as NumeroDiaSemana;

select *, 
	DayName(fecha_emision) as dia_semana,
   CASE DAYOFWEEK(fecha_emision)
        WHEN 1 THEN 'Domingo'
        WHEN 2 THEN 'Lunes'
        WHEN 3 THEN 'Martes'
        WHEN 4 THEN 'Miércoles'
        WHEN 5 THEN 'Jueves'
        WHEN 6 THEN 'Viernes'
        WHEN 7 THEN 'Sábado'
        ELSE 'Desconocido' -- Para cualquier caso inesperado
    END AS dia_semana_espanol 
from Facturas 
where dayofweek(fecha_emision) not in  (1, 7);

-- DayOfYear()
-- Devuelve el número del día del año para una fecha específica.
-- Por ejemplo, el 1 de enero es 1, el 31 de diciembre es 365 (o 366 en años bisiestos).
select dayofyear( curdate() ) as NumeroDiaDelAño;
select *, dayofyear(fecha_emision) as 'Dia del Año' from Facturas;

-- AddDate()
-- Agrega un intervalo de tiempo a una fecha.
-- Devuelve una nueva fecha con el intervalo agregado.
select curdate();
select AddDate(curdate(), interval 30 day) as Vto30Dias; 
select AddDate(curdate(), interval 60 day) as Vto60Dias; 
select AddDate(curdate(), interval 90 day) as Vto90Dias; 
select AddDate(curdate(), interval -90 day) as Menos90Dias;


-- Distinct
select fecha_emision from Facturas;
select distinct fecha_emision from Facturas;

select month(fecha_emision) Mes from Facturas;
select distinct month(fecha_emision) Mes from Facturas;
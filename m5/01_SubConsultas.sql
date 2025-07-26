Use laboratoriosab01;

select * from Clientes;
select * from Facturas;
select * from detalle_factura;
select * from Articulos;

-- Subconsultas
-- Una subconsulta es una consulta SQL anidada dentro de otra consulta.

select	* from Clientes 
where	id_cliente in
			( select id_cliente from Facturas);

select * from Articulos
where id_articulo in ( select id_articulo from detalle_factura );

select * from Articulos
where id_articulo in
(
	select id_articulo from detalle_factura 
	where (Cantidad * precio_unitario) > 1000
);


select	C.id_cliente, C.nombre, C.apellido, C.cuit, 
		F.id_factura, F.fecha_emision, F.total,
        Sum(DF.cantidad * DF.precio_unitario) as TotalFacturado
from	Facturas F
	inner join Clientes C on C.id_cliente = F.id_cliente
	inner join detalle_factura DF on DF.id_factura = F.id_factura
group by 
		C.id_cliente, C.nombre, C.apellido, C.cuit, 
		F.id_factura, F.fecha_emision, F.total
;

select	C.id_cliente, C.nombre, C.apellido, C.cuit, 
		F.id_factura, F.fecha_emision, F.total,
        (
			select	Sum(DF.cantidad * DF.precio_unitario) 
            from	detalle_factura DF
            where	DF.id_factura = F.id_factura
		) as TotalFacturado
from	Facturas F
	inner join Clientes C on C.id_cliente = F.id_cliente
;

-- Subconsulta escalar
-- Una subconsulta escalar es una subconsulta que devuelve un único valor 
-- (una sola fila y una sola columna).
select * from Facturas where total > ( select avg(total) from Facturas );
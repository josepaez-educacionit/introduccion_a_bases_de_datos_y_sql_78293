use laboratoriosab;

select * from articulos_copia;

delete from articulos_copia where Id = 10;
delete from articulos_copia where Id in (8, 9);
delete from articulos_copia;

insert into articulos_copia
select * from articulos;

truncate table articulos_copia;

desc articulos_copia;

alter table articulos_copia
modify ID INT AUTO_INCREMENT PRIMARY KEY;

desc articulos_copia;

select * from articulos_copia;

insert into articulos_copia
select * from articulos;

delete from articulos_copia;

insert into articulos_copia (nombre, precio)
select nombre, precio from articulos;

select * from articulos_copia;


truncate table articulos_copia;
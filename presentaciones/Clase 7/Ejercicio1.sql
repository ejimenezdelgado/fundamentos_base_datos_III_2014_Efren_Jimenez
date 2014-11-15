--create database editorial;

create table editorial
(
	id serial primary key not null,
	nombre character varying(50) 
);

create table libro 
(
	id character varying(10) primary key not null,
	id_editorial int not null,
	fec_publica timestamp without time zone not null,
	constraint fk_libro_editorial foreign key (id_editorial) 
	references editorial(id)
);

create table autor 
(
	id serial primary key not null,
	nombre character varying(100) not null,
	telefono character varying(10) not null
);

create table autor_libro 
(
	id serial primary key not null,
	id_autor integer not null,
	id_libro character varying(10) not null,
	constraint fk_autor_libro_autor foreign key (id_autor) 
	references autor(id),
	constraint fk_autor_libro_libro foreign key (id_libro) 
	references libro(id)
);

insert into editorial(nombre) values('Editorial UTN');
insert into editorial(nombre) values('Editorial Mortadela');
insert into editorial(nombre) values('Editorial Liga');

insert into libro(id,id_editorial,fec_publica) values('ISBN-2010',1,'12/06/1990');
insert into libro(id,id_editorial,fec_publica) values('ISBN-2034',1,'20/09/1994');
insert into libro(id,id_editorial,fec_publica) values('ISBN-1000',2,'14/11/1991');

insert into autor(nombre,telefono) values('Efren Jimenez','70126438');
insert into autor(nombre,telefono) values('Cohelo','88888888');
insert into autor(nombre,telefono) values('GABO','99999999');

insert into autor_libro(id_autor,id_libro) values(1,'ISBN-1000');
insert into autor_libro(id_autor,id_libro) values(1,'ISBN-1000');
insert into autor_libro(id_autor,id_libro) values(2,'ISBN-2034');


/*Deletes*/


delete from editorial where id >3
delete from autor_libro 
delete from libro
delete from autor

/*Updates*/

select * from autor

update autor set nombre='Maradona' where nombre like 'Efren Jimenez'



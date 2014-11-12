/*create database Prueba
drop database Prueba*/

Create Table persona
(
	--Si la llave es compuesta se indica así Primary Key (atributo1, atributo 2)
	cedula character varying(10) not null primary key,
	nombre character varying(50) not null,
	apellido1 character varying(50) not null,
	apellido2 character varying(50) not null,
	correo character varying(100) not null,
	telefono character varying(10) null,
	direccion character varying(200) null,
	edad integer null
)


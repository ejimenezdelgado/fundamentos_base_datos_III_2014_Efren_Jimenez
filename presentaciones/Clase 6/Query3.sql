--create database universidad;

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
);

create table estudiante
(
	cedula character varying(10) not null,
	carnet integer not null,
	nombre character varying(50) not null,
	constraint pk_estudiante primary key (cedula),
	constraint fk_estudiante_persona foreign key (cedula) references persona,
	constraint uk_carnet unique (carnet)
);

insert into persona (cedula,nombre,apellido1,apellido2,correo,telefono,direccion,edad) values 
('206740150','Efren','Jimenez','Delgado','ejimenezdelgado@gmail.com','70126438','Santa Clara',24);

insert into persona (cedula,nombre,apellido1,apellido2,correo,telefono,direccion,edad) values 
('206740151','Efren','Jimenez','Delgado','ejimenezdelgado@gmail.com','70126438','Santa Clara',24);

insert into estudiante (cedula,carnet,nombre) values 
('206740150',202020,'Efren');

insert into estudiante (cedula,carnet,nombre) values 
('206740151',202021,'Efren');

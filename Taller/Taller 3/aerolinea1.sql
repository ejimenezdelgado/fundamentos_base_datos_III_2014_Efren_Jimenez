create database aerolinea;


create table piloto(
	licencia character varying(20) not null,
	nombre   character varying(100) not null,
	horas_vuelo numeric(10) not null
);

create table vuelo(
	vuelo numeric(10) not null,
	inicio character varying(50) not null,
	final character varying(50) not null
);

create table programacion(
	vuelo numeric(10) not null,
	fecha timestamp without time zone not null,
	hora_salida character varying(10) not null,
	hora_llegada character varying(10) not null,
	piloto character varying(20) not null
);

create table destino(	
	destino character varying(50) not null,
	descripcion character varying(100) not null
);
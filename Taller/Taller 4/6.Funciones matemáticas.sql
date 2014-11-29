﻿drop table libros;

 create table libros(
  codigo serial,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(9,2),
  primary key (codigo)
 );

insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',25.33);
 insert into libros (titulo,autor,editorial,precio)
  values('Java en 10 minutos','Mario Molina','Siglo XXI',50.65);
 insert into libros (titulo,autor,editorial,precio)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',19.95);


/*Vamos a mostrar los precios de los libros redondeando el valor hacia abajo y hacia arriba:*/
 select titulo,autor,precio,
  floor(precio) as abajo,
  ceiling(precio) as arriba
  from libros;




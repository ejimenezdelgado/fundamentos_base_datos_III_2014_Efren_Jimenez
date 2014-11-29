﻿drop table libros;

create table libros(
  codigo serial,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  primary key(codigo)
 );

 insert into libros(titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',15.90);
 insert into libros(titulo,autor,editorial,precio)
  values('Cervantes y el quijote','Borges','Paidos',null);
 insert into libros(titulo,autor,editorial,precio)
  values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 insert into libros(titulo,autor,editorial,precio)
  values('Martin Fierro','Jose Hernandez','Emece',25.90);
 insert into libros (titulo,autor,precio)
  values('Antología poética','Borges',32);
 insert into libros (titulo,autor,precio)
  values('Java en 10 minutos','Mario Molina',45.80);
 insert into libros (titulo,autor,precio)
  values('Martin Fierro','Jose Hernandez',40);
 insert into libros (titulo,autor,precio)
  values('Aprenda PHP','Mario Molina',56.50);


/*Recuperamos los registros cuyo precio esté entre 20 y 40 empleando "between":*/

 select * from libros
  where precio between 20 and 40;

/*Para seleccionar los libros cuyo precio NO esté entre un intervalo de valores antecedemos "not" al "between":*/

 select * from libros
  where precio not between 20 and 35;
drop table libros;

create table libros(
  codigo serial,
  titulo varchar(40) not null,
  autor varchar(20),
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
  values('Matematica estas ahi','Paenza','Siglo XXI',15);
 insert into libros (titulo,precio)
  values('Antología poética',32);
 insert into libros (titulo,autor,precio)
  values('Martin Fierro','Jose Hernandez',40);
 insert into libros (titulo,autor,precio)
  values('Aprenda PHP','Mario Molina',56.50);

/*
Recuperamos los libros cuyo autor es "Paenza" o "Borges":*/

 select * from libros
  where autor in('Borges','Paenza');

/*
Recuperamos los libros cuyo autor NO es "Paenza" ni "Borges":*/

 select * from libros
  where autor not in ('Borges','Paenza');
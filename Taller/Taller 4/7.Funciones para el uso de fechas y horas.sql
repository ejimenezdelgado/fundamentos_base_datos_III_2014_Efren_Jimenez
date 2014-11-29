drop table libros;

create table libros(
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  edicion timestamp,
  precio decimal(6,2)
 );


insert into libros 
  values('El aleph','Borges','Emece','1980/10/10',25.33);
 insert into libros 
  values('Java en 10 minutos','Mario Molina','Siglo XXI','2000/05/05',50.65);
 insert into libros 
  values('Alicia en el pais de las maravillas','Lewis Carroll','Emece','2000/08/09',19.95);
 insert into libros 
  values('Aprenda PHP','Mario Molina','Siglo XXI','2000/02/04',45);


/*Mostramos el título del libro y el año de edición:*/

 select titulo, extract(year from edicion) from libros;

 
/*Mostramos el título del libro y el cuarto del año de edición:*/

 select titulo, extract(quarter from edicion) from libros;

 
/*Muestre los títulos de los libros que se editaron el día 9, de cualquier mes de cualquier año:*/

 select titulo from libros
  where extract(day from edicion)=9;

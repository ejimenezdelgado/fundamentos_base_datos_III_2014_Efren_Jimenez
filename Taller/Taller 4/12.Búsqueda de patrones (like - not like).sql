drop table  libros;

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
  values('Antología poética','J. L. Borges','Planeta',null);
 insert into libros(titulo,autor,editorial,precio)
  values('Alicia en el pais de las maravillas','Lewis Carroll',null,19.90);
 insert into libros(titulo,autor,editorial,precio)
  values('Matematica estas ahi','Paenza','Siglo XXI',15);
 insert into libros(titulo,autor,editorial,precio)
  values('Martin Fierro','Jose Hernandez',default,40);
 insert into libros(titulo,autor,editorial,precio)
  values('Aprenda PHP','Mario Molina','Nuevo siglo',56.50);


/*Recuperamos todos los libros que contengan en el campo "autor" la cadena "Borges":*/

 select * from libros
  where autor like '%Borges%';
  
/*Seleccionamos los libros cuyos títulos comienzan con la letra "M":*/

 select * from libros
  where titulo like 'M%';
  
/*Seleccionamos todos los títulos que NO comienzan con "M":*/

 select * from libros
  where titulo not like 'M%';
  
/*Si queremos ver los libros de "Lewis Carroll" pero no recordamos si se escribe "Carroll" o "Carrolt", podemos emplear el comodín "_" (guión bajo) y establecer la siguiente condición:*/

 select * from libros
  where autor like '%Carrol_';
  
/*Recuperamos todos los libros cuyo precio se encuentra entre 10.00 y 19.99:*/

 select titulo,precio from libros
  where cast(precio as varchar) like '1_.%';
  
/*Recuperamos los libros que NO incluyen centavos en sus precios:*/

 select titulo,precio from libros
  where cast(precio as varchar) like '%.00';

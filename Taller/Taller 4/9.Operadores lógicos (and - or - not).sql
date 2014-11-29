drop table libros;

create table libros(
  codigo serial,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  primary key(codigo)
 );

insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',15.90);
 insert into libros (titulo,autor,editorial,precio)
  values('Antología poética','Borges','Planeta',39.50);
 insert into libros (titulo,autor,editorial,precio)
  values('Java en 10 minutos','Mario Molina','Planeta',50.50);
 insert into libros (titulo,autor,editorial,precio)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',19.90);
 insert into libros (titulo,autor,editorial,precio)
  values('Martin Fierro','Jose Hernandez','Emece',25.90);
 insert into libros (titulo,autor,editorial,precio)
  values('Martin Fierro','Jose Hernandez','Paidos',16.80);
 insert into libros (titulo,autor,editorial,precio)
  values('Aprenda PHP','Mario Molina','Emece',19.50);
 insert into libros (titulo,autor,editorial,precio)
  values('Cervantes y el quijote','Borges','Paidos',18.40);


/*Recuperamos los libros cuyo autor sea igual a "Borges" y cuyo precio no supere los 20 dolares:*/

 select * from libros
  where (autor='Borges') and
  (precio<=20);


/*Seleccionamos los libros cuyo autor es "Borges" y/o cuya editorial es "Planeta":*/

 select * from libros
  where autor='Borges' or
  editorial='Planeta';

  
/*Recuperamos los libros cuya editorial NO es "Planeta":*/

 select * from libros
  where not editorial='Planeta';

  
/*Veamos cómo el uso de paréntesis hace que PostgreSQL evalúe en forma diferente ciertas consultas aparentemente iguales:*/

 select * from libros
  where (autor='Borges') or
  (editorial='Paidos' and precio<20);

 select * from libros
  where (autor='Borges' or editorial='Paidos') and
  (precio<20);
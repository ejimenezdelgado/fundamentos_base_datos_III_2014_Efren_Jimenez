drop table libros;

create table libros(
  codigo serial,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  cantidad smallint default 0,
  primary key (codigo)
 );

 insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',25);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);


/*Si queremos saber el monto total en dinero de un título podemos multiplicar el precio por la cantidad por cada título*/

 select titulo, precio,cantidad,
  precio*cantidad
  from libros;
  
/*Si queremos saber el precio de cada libro con un 10% de descuento podemos incluir en la sentencia los siguientes cálculos:*/

 select titulo,precio,
  precio-(precio*0.1)
  from libros;

/*También podemos actualizar los datos empleando operadores aritméticos:*/

 update libros set precio=precio-(precio*0.1);

 
/*Todas las operaciones matemáticas retornan error si no se pueden ejecutar*/

 select 5/0;

 
/*Los operadores de concatenación: permite concatenar cadenas, el más (||).
Para concatenar el título, el autor y la editorial de cada libro usamos el operador de concatenación ("||"):*/

 select titulo||'-'||autor||'-'||editorial
  from libros;
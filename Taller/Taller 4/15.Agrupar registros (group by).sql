drop table libros;

create table libros(
  codigo serial,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  precio decimal(5,2),
  cantidad smallint,
  primary key(codigo)
 );


insert into libros(titulo,autor,editorial,precio,cantidad)
  values('El aleph','Borges','Planeta',15,null);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Martin Fierro','Jose Hernandez','Emece',22.20,200);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Antologia poetica','J.L. Borges','Planeta',null,150);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Aprenda PHP','Mario Molina','Emece',18.20,null);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Cervantes y el quijote','Bioy Casares- J.L. Borges','Paidos',null,100);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Manual de PHP', 'J.C. Paez', 'Siglo XXI',31.80,120);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Harry Potter y la piedra filosofal','J.K. Rowling','Emece',45.00,90);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Harry Potter y la camara secreta','J.K. Rowling','Emece',null,100);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Paidos',22.50,200);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('PHP de la A a la Z',null,null,null,0);



 /*Queremos saber la cantidad de libros de cada editorial, utilizando la cláusula "group by":*/

 select editorial, count(*)
  from libros
  group by editorial;

 /*Obtenemos la cantidad libros con precio no nulo de cada editorial:*/

 select editorial, count(precio)
  from libros
  group by editorial;

 /*Para conocer el total en dinero de los libros agrupados por editorial, tipeamos:*/

 select editorial, sum(precio)
  from libros
  group by editorial;

 /*Obtenemos el máximo y mínimo valor de los libros agrupados por editorial, en una sola sentencia:*/

 select editorial,
  max(precio) as mayor,
  min(precio) as menor
  from libros
  group by editorial;

 /*Calculamos el promedio del valor de los libros agrupados por editorial:*/

 select editorial, avg(precio)
  from libros
  group by editorial;

 /*Es posible limitar la consulta con "where". Vamos a contar y agrupar por editorial considerando solamente los libros cuyo precio es menor a 30 dolares:*/

 select editorial, count(*)
  from libros
  where precio<30
  group by editorial;

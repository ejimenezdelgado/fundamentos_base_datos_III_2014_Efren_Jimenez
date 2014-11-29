drop table libros

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
  values('El aleph','Borges','Planeta',35,null);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Martin Fierro','Jose Hernandez','Emece',22.20,200);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Martin Fierro','Jose Hernandez','Planeta',40,200);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Antologia poetica','J.L. Borges','Planeta',null,150);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Aprenda PHP','Mario Molina','Emece',18,null);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Manual de PHP', 'J.C. Paez', 'Siglo XXI',56,120);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Cervantes y el quijote','Bioy Casares- J.L. Borges','Paidos',null,100);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Harry Potter y la piedra filosofal','J.K. Rowling',default,45.00,90);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Harry Potter y la camara secreta','J.K. Rowling','Emece',null,100);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Paidos',42,80);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('PHP de la A a la Z',null,null,110,0);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Uno','Richard Bach','Planeta',25,null);

/*Queremos saber la cantidad de libros agrupados por editorial pero considerando sólo algunos grupos, por ejemplo, los que devuelvan un valor mayor a 2, usamos la siguiente instrucción:*/

 select editorial, count(*) from libros
  group by editorial
  having count(*)>2;

/*Queremos el promedio de los precios de los libros agrupados por editorial, pero solamente de aquellos grupos cuyo promedio supere los 25 pesos:*/

 select editorial, avg(precio) from libros
  group by editorial
  having avg(precio)>25;

/*Queremos la cantidad de libros, sin considerar los que tienen precio nulo (where), agrupados por editorial (group by), sin considerar la editorial "Planeta" (having):*/

 select editorial, count(*) from libros
  where precio is not null
  group by editorial
  having editorial<>'Planeta';
  
/*Necesitamos el promedio de los precios agrupados por editorial, de aquellas editoriales que tienen más de 2 libros:*/

 select editorial, avg(precio) from libros
  group by editorial
  having count(*) > 2; 
  
/*Buscamos el mayor valor de los libros agrupados y ordenados por editorial y seleccionamos las filas que tienen un valor menor a 100 y mayor a 30:*/

 select editorial, max(precio) as mayor
  from libros
  group by editorial
  having max(precio)<100 and
  max(precio)>30
  order by editorial; 
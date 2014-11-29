drop table libros;

create table libros(
  codigo serial,
  titulo varchar(40),
  autor varchar(30),
  editorial varchar(15),
  primary key(codigo)
 );

 insert into libros(titulo,autor,editorial)
  values('El aleph','Borges','Planeta');
 insert into libros(titulo,autor,editorial)
  values('Martin Fierro','Jose Hernandez','Emece');
 insert into libros(titulo,autor,editorial)
  values('Martin Fierro','Jose Hernandez','Planeta');
 insert into libros(titulo,autor,editorial)
  values('Antologia poetica','Borges','Planeta');
 insert into libros(titulo,autor,editorial)
  values('Aprenda PHP','Mario Molina','Emece');
 insert into libros(titulo,autor,editorial)
  values('Aprenda PHP','Lopez','Emece');
 insert into libros(titulo,autor,editorial)
  values('Manual de PHP', 'J. Paez', null);
 insert into libros(titulo,autor,editorial)
  values('Cervantes y el quijote',null,'Paidos');
 insert into libros(titulo,autor,editorial)
  values('Harry Potter y la piedra filosofal','J.K. Rowling','Emece');
 insert into libros(titulo,autor,editorial)
  values('Harry Potter y la camara secreta','J.K. Rowling','Emece');
 insert into libros(titulo,autor,editorial)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Paidos');
 insert into libros(titulo,autor,editorial)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Planeta');
 insert into libros(titulo,autor,editorial)
  values('PHP de la A a la Z',null,null);
 insert into libros(titulo,autor,editorial)
  values('Uno','Richard Bach','Planeta');

/*Para obtener la lista de autores sin repetición tipeamos:*/

 select distinct autor from libros;
 

/*Note que aparece "null" como un valor para "autor"· Para obtener la lista de autores conocidos, es decir, no incluyendo "null" en la lista:*/

 select distinct autor from libros
  where autor is not null;


/*Contamos los distintos autores:*/

 select count(distinct autor)
  from libros;


/*Queremos los nombres de las editoriales sin repetir:*/

 select distinct editorial from libros;

/*Queremos saber la cantidad de editoriales distintas:*/

 select count(distinct editorial) from libros;

/*La combinamos con "where" para obtener los distintos autores de la editorial "Planeta":*/

 select distinct autor from libros
  where editorial='Planeta';

/*Contamos los distintos autores que tiene cada editorial empleando "group by":*/

 select editorial,count(distinct autor)
  from libros
  group by editorial;

/*Mostramos los títulos y editoriales de los libros sin repetir títulos ni editoriales:*/

 select distinct titulo,editorial
  from libros
  order by titulo;
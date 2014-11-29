insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',null);

 insert into libros (titulo,autor,editorial,precio)
  values('Alicia en el pais','Lewis Carroll',null,0);

 insert into libros (titulo,autor,editorial,precio)
  values(null,'Borges','Siglo XXI',25);

 insert into libros (titulo,autor,editorial,precio)
  values('Uno','Richard Bach','',18.50);

 insert into libros (titulo,autor,editorial,precio)
  values('','Richard Bach','Planeta',22);

/*Veamos todos los registros ingresados:*/
 select * from libros;

/*Recuperemos los registros que contengan el valor "null" en el campo "precio"*/
 select * from libros
  where precio is null;

/*La sentencia anterior tendrá una salida diferente a la siguiente:*/
 select * from libros
  where precio=0;

/*Recuperemos los libros cuyo nombre de editorial es "null":*/
 select * from libros
  where editorial is null;

/*Ahora veamos los libros cuya editorial almacena una cadena vacía:*/
 select * from libros
  where editorial=''; 

/*Para recuperar los libros cuyo precio no sea nulo tipeamos:*/
 select * from libros
  where precio is not null;
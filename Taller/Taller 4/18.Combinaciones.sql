drop table libros;


Create table libros(
  codigo serial,
  titulo varchar(40),
  autor varchar(30) default 'Desconocido',
  codigoeditorial smallint not null,
  precio decimal(5,2),
  primary key(codigo)
 );
 create table editoriales(
  codigo serial,
  nombre varchar(20),
  primary key (codigo)
);


 insert into editoriales(nombre) values('Planeta');
 insert into editoriales(nombre) values('Emece');
 insert into editoriales(nombre) values('Siglo XXI');

 insert into libros(titulo,autor,codigoeditorial,precio) 
values('El aleph','Borges',2,20);
 insert into libros(titulo,autor,codigoeditorial,precio) 
values('Martin Fierro','Jose Hernandez',1,30);
 insert into libros(titulo,autor,codigoeditorial,precio) 
values('Aprenda PHP','Mario Molina',3,50);
 insert into libros(titulo,autor,codigoeditorial,precio) 
values('Java en 10 minutos',default,3,45);


/*Recuperamos los datos de libros:*/

 select* from libros;

/*vemos que en el campo "editorial" aparece el código, pero no sabemos el nombre de la editorial.*/

/*Realizamos un join para obtener datos de ambas tablas (titulo, autor y nombre de la editorial):*/

 select titulo, autor, nombre
  from libros
  join editoriales
  on codigoeditorial=editoriales.codigo;
  
/*Mostramos el código del libro, título, autor, nombre de la editorial y el precio realizando un join y empleando alias:*/

 select l.codigo,titulo,autor,nombre,precio
  from libros as l
  join editoriales as e
  on codigoeditorial=e.codigo;
  
/*Realizamos la misma consulta anterior agregando un "where" para obtener solamente los libros de la editorial "Siglo XXI":*/

 select l.codigo,titulo,autor,nombre,precio
  from libros as l
  join editoriales as e
  on codigoeditorial=e.codigo
  where e.nombre='Siglo XXI';
  
/*Obtenemos título, autor y nombre de la editorial, esta vez ordenados por título:*/

 select titulo,autor,nombre
  from libros as l
  join editoriales as e
  on codigoeditorial=e.codigo
  order by titulo;

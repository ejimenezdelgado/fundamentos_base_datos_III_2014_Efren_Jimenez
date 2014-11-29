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


/*Mostramos sólo los 12 primeros caracteres de los títulos de los libros y sus autores, empleando la función "substring()":*/

 select substring(titulo,1,12) as titulo
  from libros;
  
/*Mostramos los títulos, autores y editoriales de todos libros, al último campo lo queremos en mayúsculas:*/

  select titulo, autor, upper(editorial)
   from libros;
   
/*Mostrar todos los títulos de los libros rellenando con el caracter '-' a la derecha.*/

  select rpad(titulo,40,'-') from libros;
  
/*Imprimimos todo los libros que contienen la cadena 'en' en alguna parte del título del libro.*/

 select * 
   from libros
   where position('en' in titulo)>0;

/*Imprimimos todos los libros que tienen un título con 10 o más caracteres:-*/

 select *
   from libros
   where char_length(titulo)>=10;
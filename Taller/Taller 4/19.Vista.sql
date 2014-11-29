create table secciones(
  codigo serial,
  nombre varchar(20),
  sueldo decimal(5,2),
  primary key (codigo)
 );

 create table empleados(
  legajo serial,
  documento char(8),
  sexo char(1),
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  seccion smallint not null,
  cantidadhijos smallint,
  estadocivil char(10),
  fechaingreso date,
   primary key (legajo)
 );

 insert into secciones(nombre,sueldo) values('Administracion',300);
 insert into secciones(nombre,sueldo) values('Contaduría',400);
 insert into secciones(nombre,sueldo) values('Sistemas',500);

 insert into empleados
(documento,sexo,apellido,nombre,domicilio,seccion,cantidadhijos,estadocivil,fechaingreso)
 values('22222222','f','Lopez','Ana','Colon 123',1,2,'casado','1990-10-10');
 insert into empleados
(documento,sexo,apellido,nombre,domicilio,seccion,cantidadhijos,estadocivil,fechaingreso)
 values('23333333','m','Lopez','Luis','Sucre 235',1,0,'soltero','1990-02-10');
 insert into empleados
(documento,sexo,apellido,nombre,domicilio,seccion,cantidadhijos,estadocivil,fechaingreso) 
values('24444444','m','Garcia','Marcos','Sarmiento 1234',2,3,'divorciado','1998-07-12');
 insert into empleados
(documento,sexo,apellido,nombre,domicilio,seccion,cantidadhijos,estadocivil,fechaingreso) 
values('25555555','m','Gomez','Pablo','Bulnes 321',3,2,'casado','1998-10-09');
 insert into empleados
(documento,sexo,apellido,nombre,domicilio,seccion,cantidadhijos,estadocivil,fechaingreso) 
values('26666666','f','Perez','Laura','Peru 1254',3,3,'casado','2000-05-09');


/*Creamos la vista "vista_empleados", que es resultado de una combinación en la cual se muestran 5 campos:*/

 create view vista_empleados as
  select (apellido||' '||e.nombre) as nombre,sexo,
   s.nombre as seccion, cantidadhijos
   from empleados as e
   join secciones as s
   on codigo=seccion;

/*Vemos la información de la vista:*/

 select *from vista_empleados;


/*Realizamos una consulta a la vista como si se tratara de una tabla:*/

 select seccion,count(*) as cantidad
  from vista_empleados
  group by seccion;

/*Creamos otra vista de "empleados" denominada "vista_empleados_ingreso" que almacena la cantidad de empleados por año:*/

 create view vista_empleados_ingreso (fecha,cantidad)
  as
  select extract(year from fechaingreso),count(*)
   from empleados
   group by extract(year from fechaingreso);


/*Vemos la información:*/

 select *from vista_empleados_ingreso;
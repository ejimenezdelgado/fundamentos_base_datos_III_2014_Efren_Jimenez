--INSERTAR EN LA TABLA PILOTO
INSERT INTO piloto VALUES('1111','Juan Perez',2000);
INSERT INTO piloto VALUES('2222','Carlos Mora',5000);
INSERT INTO piloto VALUES('3333','Marta Mena',8000);
INSERT INTO piloto VALUES('4444','Pedro Rojas',4000);

--INSERTAR EN LA TABLA DESTINO
INSERT INTO destino VALUES('1D','San Jose');
INSERT INTO destino VALUES('2D','Panamá');
INSERT INTO destino VALUES('3D','Caracas');
INSERT INTO destino VALUES('4D','New York');
INSERT INTO destino VALUES('5D','Londres');
INSERT INTO destino VALUES('6D','Montereal');

--INSERTAR EN LA TABLA VUELO
INSERT INTO vuelo VALUES(520,'1D','4D');
INSERT INTO vuelo VALUES(618,'2D','4D');
INSERT INTO vuelo VALUES(705,'1D','5D');
INSERT INTO vuelo VALUES(820,'3D','6D');

--INSERTAR EN LA TABLA PROGRAMACION
INSERT INTO programacion VALUES(520,'25/01/1999','5:50','6:30','2222');
INSERT INTO programacion VALUES(520,'30/01/1999','12:36','16:23','3333');
INSERT INTO programacion VALUES(618,'02/02/1999','10:20','15:55','2222');
INSERT INTO programacion VALUES(705,'01/03/1999','16:15','5:29','1111');
INSERT INTO programacion VALUES(705,'05/03/1999','22:00','8:00','1111');


SELECT * FROM piloto;
SELECT * FROM destino;
SELECT * FROM vuelo; 
SELECT * FROM programacion; 

INSERT INTO destino VALUES('7D','Paris');
-----------------------------------------
update vuelo set final='7D' where vuelo =705
-----------------------------------------------------
INSERT INTO piloto VALUES('5555','Mario Mortadela',100);
INSERT INTO piloto VALUES('6666','Alejandro Morera',100);
INSERT INTO piloto VALUES('7777','Carlos Rojas',100);
------------------------------------------------------
delete from programacion where piloto = '1111'
delete from piloto where horas_vuelo <3000
------------------------------------------------------
update programacion set piloto='4444' where piloto='2222'
------------------------------------------------------
INSERT INTO programacion VALUES(820,'11/01/2013','8:00','11:35','3333');
----------------------------------------------------
INSERT INTO destino VALUES('8D','Miami');
update vuelo set final='8D' where final ='7D';
-----------------------------------------------------

create table avion (

	id character varying(10) primary key not null,
	tipo character varying(2) not null,
	capacidad int default 0,
	descripcion character varying(100)
);

insert into avion values ('wry-202','TU',200,'Es grande');
insert into avion values ('wry-201','NT',200,'Es enano');
insert into avion values ('wry-212','TU',200,'Es militar');

select * from avion
-----------------------------------------------------------
alter table vuelo ADD column avion character varying(10);
alter table vuelo add CONSTRAINT fk_vuelo_avion FOREIGN KEY (avion) REFERENCES avion(id);

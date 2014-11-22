alter table piloto
add constraint pk_piloto
primary key  (licencia);

alter table vuelo
add constraint pk_vuelo
primary key  (vuelo);

alter table programacion
add constraint pk_programacion
primary key  (vuelo,fecha);

alter table destino
add constraint pk_destino
primary key  (destino);

----------------------------------

alter table programacion
add constraint fk_programacion_vuelo
foreign key  (vuelo)
references vuelo (vuelo);

alter table programacion
add constraint fk_programacion_piloto
foreign key  (piloto)
references piloto (licencia);

alter table vuelo
add constraint fk_vuelo_destino
foreign key  (inicio)
references destino (destino);

alter table vuelo
add constraint fk_vuelo_destino2
foreign key  (final)
references destino (destino);

----------------------------------
--to_date('21/11/2007','DD/MM/YYYY')
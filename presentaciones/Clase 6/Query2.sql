/*drop table persona;*/
ALTER TABLE persona
  drop CONSTRAINT 
  persona_pkey ;

  
Alter table persona
 add constraint 
 pkCedulaPersona 
 primary key 
 (cedula);


 ALTER TABLE persona
 ADD COLUMN
 fecha_nacimiento
 timestamp without time zone;
 
Alter table persona drop 
column fecha_nacimiento ;

Alter table persona
  add constraint 
  check_edad check (edad>0)

  

  
drop database if exists parcial2;
create database parcial2;

use parcial2;

create table persona(
id int (50), 
tipo_documento int (10) primary key unique,
nombre varchar (50),
estado_credito enum ( 'En estudio', 'Aceptado', 'Rechazado', 'Cancelado'),
valor_credito int (50)
);

insert into persona values (1, 1003546721, 'Juan', 'Rechazado', '2000');
insert into persona values (2, 1003546722, 'Pepito', 'Aceptado', '2500');
insert into persona values (3, 1003546723, 'Javier', 'Cancelado', '3000');
insert into persona values (4, 1003546724, 'Simon', 'En estudio', '3500');

select * from persona


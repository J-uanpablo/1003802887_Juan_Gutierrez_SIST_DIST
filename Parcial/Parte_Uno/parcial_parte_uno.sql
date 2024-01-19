DROP DATABASE IF EXISTS parcial;
create database parcial;

use parcial;

create table usuario(
    id_usuario int primary key unique,
    nombre_completo varchar(50),
    tipo enum('Admin', 'Visitante')
);

create table sala(
    id_sala int primary key unique,
    nombre varchar(20),
    ubicacion varchar(50)
);

create table categoria(
    id_categoria int primary key unique,
    nombre varchar(50)
);

create table libro(
    id_libro int primary key unique,
    titulo varchar(50),
    id_categoria int,
    id_sala int,
    foreign key (id_categoria) references categoria(id_categoria),
    foreign key (id_sala) references sala(id_sala)
);

create table prestamo(
    id_prestamo int primary key,
    id_usuario int,
    id_libro int,
    fecha_prestamo date,
    fecha_devolucion date,
    foreign key (id_usuario) references usuario(id_usuario),
    foreign key (id_libro) references libro(id_libro)
);

insert into usuario values (1, 'Admin1', 'Admin');
insert into usuario values (2, 'Visitante1', 'Visitante');
insert into sala values (1, 'Sala A', 'Planta baja');
insert into categoria values (1, 'Ficción');
insert into libro values (1, 'Libro 1', 1, 1);
insert into libro values (2, 'Libro 2', 1, 1);
insert into prestamo values (1, 2, 1, '2024-01-18', null);
insert into prestamo values (2, 1, 2, '2024-01-17', '2024-01-24');



select
    prestamo.id_prestamo,
    prestamo.fecha_prestamo,
    prestamo.fecha_devolucion,
    usuario.nombre as nombre_usuario,
    libro.titulo as titulo_libro,
    sala.nombre as nombre_sala,
    categoria.nombre as nombre_categoria
from prestamo
inner join usuario on prestamo.id_usuario = usuario.id_usuario
inner join libro on prestamo.id_libro = libro.id_libro
inner join sala on libro.id_sala = sala.id_sala
inner join categoria on libro.id_categoria = categoria.id_categoria;




create database AppSalon;

use AppSalon;

create table usuarios (
    id int(11) PRIMARY KEY auto_increment,
    nombre varchar(30) not null,
    apellido varchar(30) not null,
    email varchar(40) not null unique,
    telefono varchar(9),
    admin tinyint(1) not null,
    confirmado tinyint(1) not null,
    token varchar(45),
    password varchar(60) not null
);

create table servicios (
    id int(11) PRIMARY KEY auto_increment,
    nombre varchar(50) not null,
    precio decimal(5,2) not null
);

create table citas (
    id int(11) PRIMARY KEY auto_increment,
    fecha date not null,
    hora time not null,
    usuarioId int(11),
    constraint fk_citas_usuarioId FOREIGN KEY (usuarioId) REFERENCES usuarios(id)
        on delete set null
        on update cascade
);

create table citas_x_servicios (
    id int(11) PRIMARY KEY auto_increment,
    citaId int(11),
    servicioId int(11),
    constraint fk_citas_x_servicios_citaId FOREIGN KEY (citaId) REFERENCES citas(id)
        on delete set null
        on update cascade,
    constraint fk_citas_x_servicios_servicioId FOREIGN KEY (servicioId) REFERENCES servicios(id)
        on delete set null
        on update cascade
);
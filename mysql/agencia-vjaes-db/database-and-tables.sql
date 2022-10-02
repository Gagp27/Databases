CREATE DATABASE agenciaviajes;

USE agenciaviajes;

CREATE TABLE travels (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title varchar(60) NOT NULL,
    price decimal(7,2) NOT NULL,
    departure_date date NOT NULL,
    return_date date NOT NULL,
    image varchar(45) NOT NULL ,
    description longtext NOT NULL,
    slug varchar(45) NOT NULL
);

CREATE TABLE contacts (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name varchar(50) NOT NULL,
    lastName varchar(50) NOT NULL,
    email varchar(70) NOT NULL,
    tel varchar(9) NOT NULL,
    travel_id int,
#     createdAt datetime,
#     updatedAt datetime,
    constraint fk_contacts_travel_id foreign key (travel_id) references travels(id)
);
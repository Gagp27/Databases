create database CRM;

use CRM;

create table customers (
    id int(11) primary key auto_increment,
    name varchar(50) not null,
    email varchar(50) not null,
    phone varchar(9) not null,
    company varchar(50) not null,
    image varchar(100)
);
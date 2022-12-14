create database up_task;
use up_task;

create table users(
    user_id bigint primary key auto_increment,
    first_name varchar(255) not null,
    last_name varchar(255) not null,
    user_name varchar(255) not null unique,
    email varchar(255) not null unique,
    password varchar(255) not null,
    token varchar(255),
    confirm tinyint(1),
    created_at datetime not null,
    updated_at datetime
);

create table projects(
    project_id bigint primary key auto_increment,
    project_name varchar(255) not null,
    slug varchar(255) not null unique,
    user_id bigint,
    created_at datetime not null,
    updated_at datetime,
    constraint fk_project_user_id foreign key (user_id) references users(user_id)
);

create table tasks(
    task_id bigint primary key auto_increment,
    task_name varchar(255) not null,
    state tinyint(1),
    project_id bigint,
    created_at datetime not null,
    updated_at datetime,
    constraint fk_tasks_project_id foreign key (project_id) references projects(project_id)
        on delete cascade
        on update cascade
);
create table class
(
    id            int auto_increment
        primary key,
    class_name    varchar(10) null,
    class_subject varchar(10) null,
    constraint id
        unique (id)
);

create table class_roster
(
    id         int auto_increment
        primary key,
    student_id int not null,
    class_id   int not null,
    constraint id
        unique (id)
);

create table grades
(
    id        int auto_increment
        primary key,
    grade_num tinyint null,
    constraint id
        unique (id)
);

create table student
(
    id                 int auto_increment
        primary key,
    firstname          varchar(15) null,
    lastname           varchar(15) null,
    grade_id           int         null,
    address_id         int         null,
    student_address_id int         not null,
    constraint id
        unique (id)
);

create table student_address
(
    id      int auto_increment
        primary key,
    address varchar(40) null,
    town    varchar(15) null,
    zip     smallint    null,
    constraint id
        unique (id)
);



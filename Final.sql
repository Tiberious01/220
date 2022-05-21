create table actors
(
    id        int auto_increment
        primary key,
    firstname varchar(20) not null,
    lastname  varchar(20) not null,
    constraint id
        unique (id)
);

create table directors
(
    id        int auto_increment
        primary key,
    firstname varchar(20) not null,
    lastname  varchar(20) not null,
    constraint id
        unique (id)
);

create table movies
(
    id           int auto_increment,
    title        varchar(20) not null,
    release_year varchar(20) not null,
    genre        varchar(20) not null,
    actorsId     int         null,
    directorsId  int         null,
    constraint id
        unique (id),
    constraint movies_ibfk_1
        foreign key (actorsId) references actors (id),
    constraint movies_ibfk_2
        foreign key (directorsId) references directors (id)
);

create index actorsId
    on movies (actorsId);

create index directorsId
    on movies (directorsId);



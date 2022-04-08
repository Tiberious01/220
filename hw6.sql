create table customer
(
    id        int auto_increment
        primary key,
    firstname varchar(20) not null,
    constraint id
        unique (id)
);

create table customer_order_assosiation
(
    id          int auto_increment
        primary key,
    customer_id int not null,
    orders_id   int not null,
    constraint id
        unique (id)
);

create table orders
(
    id           int auto_increment
        primary key,
    order_number varchar(20) not null,
    product      date        null,
    constraint id
        unique (id)
);

create table returns
(
    id            int auto_increment
        primary key,
    product       varchar(20) null,
    return_number int         null,
    constraint id
        unique (id),
    constraint returns_ibfk_1
        foreign key (return_number) references orders (id)
);

create index return_number
    on returns (return_number);



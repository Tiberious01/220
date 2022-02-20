create table customer
(
    CustomerNumber int         not null
        primary key,
    name           varchar(20) null
);

create table orders
(
    OrderNumber    int         not null
        primary key,
    product        varchar(20) null,
    CustomerNumber int         not null,
    constraint orders_ibfk_1
        foreign key (CustomerNumber) references customer (CustomerNumber)
);

create index CustomerNumber
    on orders (CustomerNumber);



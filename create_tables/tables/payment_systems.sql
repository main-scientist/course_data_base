use shop;

create table shop.payment_systems (
    id int auto_increment PRIMARY KEY,
    type varchar(16),
    tax float
);
use shop;


create table shop.customers (
    uuid varchar(36) PRIMARY KEY,
    name varchar(32) not null ,
    surname varchar(32) not null ,
    password varchar(32) not null,
    email varchar(64) not null ,
    phone varchar(32),
    sex varchar(8),
    city varchar(32),
    address varchar(64),
    postcode varchar(32),
    amount_of_orders int,
    cost_of_orders float,
    registration_at datetime,
    last_order_at datetime
);


create table shop.delivery_systems (
    id int auto_increment PRIMARY KEY,
    name varchar(16) not null ,
    cost float not null
);


create table shop.delivery (
    uuid varchar(36) PRIMARY KEY,
    delivery_system int not null,
    postcode varchar(32) not null,
    city varchar(32) not null,
    address varchar(32) not null,
    FOREIGN KEY (delivery_system) references shop.delivery_systems(id)
);


create table shop.payment_systems (
    id int auto_increment PRIMARY KEY,
    type varchar(16) not null,
    tax float not null
);


create table shop.orders (
    uuid varchar(36) PRIMARY KEY,
    customer_id varchar(36) not null,
    delivery_id varchar(36) not null,
    date datetime,
    cost int(16),
    FOREIGN KEY (customer_id) references shop.customers(uuid),
    FOREIGN KEY (delivery_id) references shop.delivery(uuid)
);


create table shop.categories (
    id int auto_increment PRIMARY KEY,
    name varchar(16)
);


create table shop.sellers (
    uuid varchar(36) PRIMARY KEY,
    name varchar(32) not null,
    surname varchar(32) not null,
    password varchar(32) not null,
    name_of_shop varchar(128) not null,
    email varchar(64) not null,
    phone varchar(32),
    country varchar(32) not null,
    city varchar(32) not null,
    address varchar(32) not null,
    postcode varchar(32) not null,
    amount_of_sales int,
    cost_of_sales float,
    rating float
);


create table shop.products (
    uuid varchar(36) PRIMARY KEY,
    name varchar(16) not null,
    category_id int not null,
    seller_id varchar(36) not null ,
    cost float not null ,
    amount_of int,
    code varchar(16),
    create_at datetime,
    rating float,
    FOREIGN KEY (category_id) references shop.categories(id),
    FOREIGN KEY (seller_id) references shop.sellers(uuid)
);


create table shop.orders_products (
    uuid varchar(36) PRIMARY KEY,
    orders_id varchar(36) not null,
    product_id varchar(36) not null,
    FOREIGN KEY (orders_id) references shop.orders(uuid),
    FOREIGN KEY (product_id) references shop.products(uuid)
);


create table shop.invoices (
    uuid varchar(36) PRIMARY KEY,
    customer_id varchar(36) not null,
    seller_id varchar(36) not null,
    order_id varchar(36) not null,
    create_at datetime,
    cost float,
    cost_tax float,
    payment_system int not null,
    FOREIGN KEY (customer_id) references shop.customers(uuid),
    FOREIGN KEY (seller_id) references shop.sellers(uuid),
    FOREIGN KEY (order_id) references shop.orders(uuid),
    FOREIGN KEY (payment_system) references shop.payment_systems(id)
);
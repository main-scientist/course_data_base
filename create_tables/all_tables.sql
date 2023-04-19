use shop;


create table shop.customers (
    uuid binary(16) PRIMARY KEY,
    name varchar(32),
    surname varchar(32),
    email varchar(64),
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
    name varchar(16),
    cost float
);


create table shop.delivery (
    uuid binary(16) PRIMARY KEY,
    delivery_system int,
    postcode varchar(32),
    city varchar(32),
    address varchar(32),
    FOREIGN KEY (delivery_system) references shop.delivery_systems(id)
);


create table shop.payment_systems (
    id int auto_increment PRIMARY KEY,
    type varchar(16),
    tax float
);


create table shop.orders (
    uuid binary(16) PRIMARY KEY,
    customer_id binary(16),
    delivery_id binary(16),
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
    uuid binary(16) PRIMARY KEY,
    name varchar(32),
    surname varchar(32),
    name_of_shop varchar(32),
    email varchar(32),
    phone varchar(32),
    country varchar(32),
    city varchar(32),
    address varchar(32),
    postcode varchar(32),
    amount_of_sales int,
    cost_of_sales float,
    rating float
);


create table shop.products (
    uuid binary(16) PRIMARY KEY,
    name varchar(16),
    category_id int,
    seller_id binary(16),
    cost float,
    amount_of int,
    code varchar(16),
    create_at datetime,
    rating float,
    FOREIGN KEY (category_id) references shop.categories(id),
    FOREIGN KEY (seller_id) references shop.sellers(uuid)
);


create table shop.orders_products (
    uuid binary(16) PRIMARY KEY,
    orders_id binary(16),
    product_id binary(16),
    FOREIGN KEY (orders_id) references shop.orders(uuid),
    FOREIGN KEY (product_id) references shop.products(uuid)
);


create table shop.invoices (
    uuid binary(16) PRIMARY KEY,
    customer_id binary(16),
    seller_id binary(16),
    order_id binary(16),
    create_at datetime,
    cost float,
    cost_tax float,
    payment_system int,
    FOREIGN KEY (customer_id) references shop.customers(uuid),
    FOREIGN KEY (seller_id) references shop.sellers(uuid),
    FOREIGN KEY (order_id) references shop.orders(uuid),
    FOREIGN KEY (payment_system) references shop.payment_systems(id)
);
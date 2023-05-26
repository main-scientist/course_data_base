use shop;

select * from shop.categories;
select * from shop.customers;
select * from shop.deliveries;
select * from shop.delivery_systems;
select * from shop.categories;
select * from shop.invoices;
select * from shop.orders;
select * from shop.orders_products;
select * from shop.payment_systems;
select * from shop.products;
select * from shop.sellers;


# Create new customer
insert into customers(uuid, name, surname, password, email, phone, sex,
                      country, city, address, postcode, amount_of_orders,
                      cost_of_orders, registration_at, last_order_at)
values (uuid(), 'Sheena', 'Mccallister', 'denver' , 'albertinaseely4@florence.com',
        '+254-3128-298-109', 1 , 'Japan', 'High Point', '9806 Steele Avenue',
        'LL3 8HJ', 0, 0, date(), null);


# Create new seller
insert into sellers(uuid, name, surname, password, name_of_shop, email,
                    phone, sex, country, city, address, postcode,
                    amount_of_sales, cost_of_sales, rating)
values (uuid(), 'Alvera', 'Ault-Race', 'antonio', 'Sql A.G',
        'lakendra-3202@quizzes.nara.jp', '+241-3221-639-896', 1,
        'Austria', 'Chesapeake', '8190 Wilson Road', 'DG31 4WI', 0, 0, 0);


# Add new delivery system
insert into delivery_systems(name, cost)
values ('dpd', 0.4);


# Add new payment system
insert into payment_systems(type, tax)
values ('visa', 0.6);


# Add new category
insert into categories(name)
values ('Laptops');


# Add new product
insert into products(uuid, name, category_id, seller_id, cost,
                     amount_of, code, create_at, rating)
values (uuid(), 'MacBook', 1, 1,
        52.14, '5', 68651, '2016-11-25 22:05:19', 0);


# Add product to basket
insert into basket(uuid, customer_id, amount_of_product, sum_of_product)
values (uuid(), 'fe2a8eb2-fb97-11ed-a9b9-0242ac110002', 1, 52.14);

insert into products_basket(uuid, basket_id, product_id)
values (uuid(), 'fe2a9a15-fb97-11ed-a9b9-0242ac110002',
        'fe2a99b0-fb97-11ed-a9b9-0242ac110002');


# Add order
insert into deliveries(uuid, delivery_system, postcode, city, address)
values (uuid(), '1', 'LL3 8HJ', 'High Point', '9806 Steele Avenue');

insert into orders(uuid, customer_id, delivery_id, date, cost)
values (uuid(), 'fe2a8eb2-fb97-11ed-a9b9-0242ac110002',
        'fe2a9870-fb97-11ed-a9b9-0242ac110002', date(), 52.14);

insert into orders_products(uuid, orders_id, product_id)
values (uuid(), 'fe2a994a-fb97-11ed-a9b9-0242ac110002',
        'fe2a99b0-fb97-11ed-a9b9-0242ac110002');


# Create invoice
insert into invoices(uuid, customer_id, seller_id, order_id,
                     create_at, cost, cost_tax, payment_system)
values (uuid(), 'fe2a8eb2-fb97-11ed-a9b9-0242ac110002',
        'fe2a9870-fb97-11ed-a9b9-0242ac110002',
        'fe2a994a-fb97-11ed-a9b9-0242ac110002',
        date(), 52.54, 0.6, 'visa');


# Add review
insert into product_reviews(uuid, customer_id, product_id, review)
values (uuid(), 'fe2a8eb2-fb97-11ed-a9b9-0242ac110002',
        'fe2a99b0-fb97-11ed-a9b9-0242ac110002', 'A good product !')







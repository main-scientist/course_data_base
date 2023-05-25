use shop;

select * from shop.categories;
select * from shop.customers;
select * from shop.delivery;
select * from shop.delivery_systems;
select * from shop.categories;
select * from shop.invoices;
select * from shop.orders;
select * from shop.orders_products;
select * from shop.payment_systems;
select * from shop.products;
select * from shop.sellers;



create table test_1 (
    id int,
    id_role varchar(8)
);

create table test_2 (
    id int,
    role varchar(32)
);

insert into test_1(id, id_role)
values (1, 1);

insert into test_1(id, id_role)
values (1, 2);

insert into test_2(id, role)
values (1, 'Dire');


# update domain_whois_contacts dwc set client_id =
#             (select dom.client_id from domains dom where dom.id = dwc.domain_id)
#             where true;


update test_1 ts_1 set id_role = (select role from test_2 where ts_1.id_role = test_2.id);




use shop;


INSERT INTO shop.payment_systems(type, tax)
    VALUES ('cash', 0),
           ('master_cart', 0.67),
           ('visa', 0.6),
           ('pay_pal', 0.4),
           ('web_money', 0.45);


INSERT INTO shop.delivery_systems(name, cost)
    VALUES ('dpd', 0.4),
           ('FedEx', 0.32),
           ('Pony Express', 0.53),
           ('dhl', 0.27);


INSERT INTO shop.categories(name)
    VALUES ('cloth'),
           ('shoes'),
           ('computers'),
           ('electronics'),
           ('sports'),
           ('books'),
           ('furniture'),
           ('plays'),
           ('chemist');


insert into customers (uuid, name, surname, password, email, phone, sex, country, city, address, postcode, amount_of_orders, cost_of_orders, registration_at, last_order_at)
values (uuid(), 'Sheena', 'Mccallister', 'denver' , 'albertinaseely4@florence.com', '+254-3128-298-109', '{{sex}}', 'Japan', 'High Point', '9806 Steele Avenue', 'LL3 8HJ', 3, 15391.09, '2015-10-06 11:41:05', '2016-08-02 03:53:36'),
    (uuid(), 'Xiao', 'Perez', 'badger' , 'marinaword09@gmail.com', '+965-5359-012-402', '{{sex}}', 'Switzerland', 'Baltimore', '6542 Nash Circle', 'WV1 4WB', 2, 4337.82, '2015-01-29 22:57:59', '2016-11-03 01:39:49'),
    (uuid(), 'Cecila', 'Swanson', 'friday' , 'jonell-heckman41109@dynamics.frankfurt.museum', '+591-7956-567-997', '{{sex}}', 'El Salvador', 'Wichita', '6532 Carruthers Lane', 'WV71 3XH', 61, 4391.52, '2015-05-11 11:04:10', '2016-01-10 03:55:27'),
    (uuid(), 'Felisha', 'Espinal', 'angel' , 'peter110@yahoo.com', '+506-6231-714-061', '{{sex}}', 'Kuwait', 'Appleton', '6653 Back Street', 'PL58 0XV', 17, 6058.89, '2015-01-03 13:19:52', '2016-08-08 21:44:36'),
    (uuid(), 'Soraya', 'Beaudoin', 'michigan' , 'hilton_harp@filters.com', '+225-5801-234-186', '{{sex}}', 'Monaco', 'Havre de Grace', '3933 Sexa Street', 'BD44 3KY', 7, 14608.88, '2015-08-01 19:38:20', '2016-12-03 22:47:03'),
    (uuid(), 'Garland', 'Hurd', 'engineer' , 'natishayoon65@hotmail.com', '+20-1492-448-114', '{{sex}}', 'Armenia', 'Concord', '6684 Waller Road', 'B3 5JA', 61, 8110.52, '2015-05-27 15:05:03', '2016-08-22 18:02:53'),
    (uuid(), 'Leeanna', 'Seward', 'banana' , 'corrina_torres507@write.com', '+65-2761-851-684', '{{sex}}', 'South Africa', 'Abilene', '9597 Eastbank', 'SY5 8OO', 13, 1722.82, '2015-07-31 18:23:09', '2016-08-14 23:12:57'),
    (uuid(), 'Brendon', 'Nesmith', 'emmanuel' , 'mavis.curran12@hotmail.com', '+673-9366-700-577', '{{sex}}', 'Fiji', 'Columbus', '9043 Sawley', 'OX9 7PF', 13, 11908.57, '2015-06-19 17:42:28', '2016-05-19 20:23:07'),
    (uuid(), 'Wilburn', 'Clayton', 'albert' , 'suzi.manuel95325@boats.com', '+56-0336-501-968', '{{sex}}', 'Somalia', 'Providence', '4979 Manchet', 'CT3 3GU', 59, 3709.13, '2015-07-22 22:17:10', '2016-10-30 06:26:22'),
    (uuid(), 'Leonie', 'Tripp', 'doctor' , 'chanelle806@gmail.com', '+595-5876-116-755', '{{sex}}', 'Mauritania', 'Fort Collins', '0322 Carnoustie', 'CM45 1MF', 5, 8048.36, '2015-01-13 20:41:52', '2016-11-13 03:25:50');

insert into deliveries(uuid, delivery_system, postcode, city, address)
values (uuid(), '1', 'SN28 8ZT', 'Louisville', '2870 Bramdean'),
    (uuid(), '3', 'ST8 9HP', 'Ontario', '4803 Anchor Street'),
    (uuid(), '1', 'DA27 3DI', 'Sterling Heights', '8327 Pochard Street');


insert into invoices(uuid, customer_id, seller_id, order_id, create_at, cost, cost_tax, payment_system)
VALUES (uuid(), '82e60083-f7cb-11ed-b7b4-0242ac110002', '067b963a-f7cb-11ed-b7b4-0242ac110002', 'd62a585b-f7cb-11ed-b7b4-0242ac110002', '2016-06-13 15:30:57', 1, 0, 1),
    (uuid(), '82e60274-f7cb-11ed-b7b4-0242ac110002', '067b980e-f7cb-11ed-b7b4-0242ac110002', 'd62a5c4b-f7cb-11ed-b7b4-0242ac110002', '2020-12-04 03:20:27', 6, 0.67, 2),
    (uuid(), '82e603eb-f7cb-11ed-b7b4-0242ac110002', '067b98ea-f7cb-11ed-b7b4-0242ac110002', 'd62a5d3f-f7cb-11ed-b7b4-0242ac110002', '2016-12-19 13:28:58', 2, 0.4, 4);


insert into orders(uuid, customer_id, delivery_id, date, cost)
VALUES (uuid(), '82e60083-f7cb-11ed-b7b4-0242ac110002', '7e858ec5-f7cb-11ed-b7b4-0242ac110002', '2016-10-08 14:21:21', '78.58'),
    (uuid(), '82e60274-f7cb-11ed-b7b4-0242ac110002', '7e8590d3-f7cb-11ed-b7b4-0242ac110002', '2016-10-23 12:50:23', '17.75'),
    (uuid(), '82e603eb-f7cb-11ed-b7b4-0242ac110002', '7e859199-f7cb-11ed-b7b4-0242ac110002', '2016-07-18 16:28:37', '20.19');



insert into orders_products(uuid, orders_id, product_id)
VALUES (uuid(), 'd62a585b-f7cb-11ed-b7b4-0242ac110002', '1c988921-f7cb-11ed-b7b4-0242ac110002'),
    (uuid(), 'd62a5c4b-f7cb-11ed-b7b4-0242ac110002', '1c988bcb-f7cb-11ed-b7b4-0242ac110002'),
    (uuid(), 'd62a5d3f-f7cb-11ed-b7b4-0242ac110002', '1c988cc9-f7cb-11ed-b7b4-0242ac110002');


insert into products(uuid, name, category_id, seller_id, cost, amount_of, code, create_at, rating)
VALUES (uuid(), 'iMac', '2', 'ca3663dd-fb24-11ed-a9b9-0242ac110002', 52.14, '5', 68651, '2016-11-25 22:05:19', '1'),
    (uuid(), 'iPhone', '7', '067b980e-f7cb-11ed-b7b4-0242ac110002', 92.16, '17', 42456, '2015-11-28 19:56:21', '3'),
    (uuid(), 'iPad', '1', '067b98ea-f7cb-11ed-b7b4-0242ac110002', 68.11, '13', 74221, '2016-03-07 07:25:39', '3');



insert into sellers (uuid, name, surname, password, name_of_shop, email, phone, country, city, address, postcode, amount_of_sales, cost_of_sales, rating)
values (uuid(), 'Alvera', 'Ault-Race', 'antonio', 'Sql A.G', 'lakendra-ashworth3202@quizzes.mitsue.nara.jp', '+241-3221-639-896', 'Austria', 'Chesapeake', '8190 Wilson Road', 'DG31 4WI', 43, 2144.7, 2),
    (uuid(), 'Gail', 'Marion', 'august', 'Continuously Holdings ', 'camelia_hendrickson2@hotmail.com', '+43-0092-319-006', 'Chad', 'Trenton', '6149 Dacre Street', 'FY4 7JA', 13, 15161.39, 2),
    (uuid(), 'Ernie', 'Battles-Mason', 'winner', 'Threat Industries Corp', 'oraziegler4854@tvs.com', '+234-4066-066-752', 'Macedonia', 'Macon', '3663 Blackstock', 'PL9 3VW', 31, 16455.43, 1),
    (uuid(), 'Teisha', 'Oreilly', 'marley', 'Club B.V', 'milly-wolford838@family.com', '+213-6897-312-377', 'Maldives', 'Deltona', '0986 Syddall Road', 'RM4 9EK', 3, 3902.63, 2),
    (uuid(), 'Jacquiline', 'Custer', 'xavier', 'Size Energy S.A', 'edythebaber@peterson.com', '+260-1487-130-824', 'Kuwait', 'Berkeley', '8771 Tig Road', 'EN0 1ZV', 23, 14240.67, 7),
    (uuid(), 'Elisabeth', 'Hays', 'einstein', 'Ken International Company', 'odelia.clary5364@yahoo.com', '+351-5766-060-821', 'Tuvalu', 'Johnson City', '4446 Delamer Road', 'HA90 3NU', 29, 9198.48, 2),
    (uuid(), 'Liz', 'Quintanilla', 'jaguar', 'Against Software LLC', 'reva-sills@idaho.com', '+42-1824-745-421', 'Maldives', 'Oklahoma City', '7248 Crowton Circle', 'SN48 9VX', 53, 10302.35, 2),
    (uuid(), 'Sebrina', 'Warren', 'knight', 'Nextel Corp', 'gladisbrumfield@hotmail.com', '+237-0385-073-086', 'Slovakia', 'Ocala', '7679 Marlwood Road', 'CA40 6MY', 53, 18832.2, 7),
    (uuid(), 'Barbie', 'Windsor', 'butterfly', 'Respective Holdings Corp', 'marylouise18519@retailer.com', '+251-2657-357-350', 'Palau', 'Panama City', '1569 Norris', 'NP88 1FU', 79, 5996.69, 2),
    (uuid(), 'Anneliese', 'Nance', 'beauty', 'Permissions Holdings LLC', 'marylin727@announcement.agdenes.no', '+43-7064-590-308', 'Jordan', 'St. Louis', '6586 Stoke Circle', 'TD80 4GB', 29, 12387.31, 3);







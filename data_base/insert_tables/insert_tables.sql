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


insert into customers (uuid, name, surname, password, email, phone, sex, city, address, postcode, amount_of_orders, cost_of_orders, registration_at, last_order_at)
values (uuid(), 'Chieko', 'Mccutcheon', 'spring', 'mario-spring94850@gmail.com', '+265-7058-237-935', '{{sex}}', 'Huntington', '9932 Ardern Street', 'CM68 4JW', 83, 15879.4, '2015-04-10 07:21:22', '2016-01-24 21:52:56'),
    (uuid(), 'Araceli', 'Tibbs', 'monica', 'latia-basham@wav.com', '+268-1398-569-299', '{{sex}}', 'Winston', '5449 Pomona Road', 'PO2 6DR', 97, 6245.51, '2015-10-17 23:55:59', '2016-05-26 03:12:55'),
    (uuid(), 'Carlotta', 'Schwartz', 'speedy', 'regina43702@hundreds.marche.it', '+43-0315-282-564', '{{sex}}', 'Round Lake Beach', '8258 Lowerfield', 'TN2 6YG', 61, 10620.81, '2015-02-21 11:16:57', '2016-08-18 14:13:58'),
    (uuid(), 'Wan', 'Walling', 'kingdom', 'brittanelms@yahoo.com', '+221-8137-802-860', '{{sex}}', 'Newport News', '4062 Howbro Road', 'WV45 2JR', 3, 19187.23, '2015-12-14 09:37:26', '2016-02-29 13:47:38'),
    (uuid(), 'Trisha', 'Olive', 'hamilton', 'lavona-patrick8559@yahoo.com', '+354-9106-974-186', '{{sex}}', 'El Paso', '7522 Helmet Circle', 'TQ28 0EC', 11, 4725.23, '2015-08-12 02:56:42', '2016-02-12 00:41:12'),
    (uuid(), 'Stanton', 'Rodriguez', '007007', 'rufus.fraley@yahoo.com', '+64-1334-420-168', '{{sex}}', 'Fullerton', '2427 Milwain', 'BN21 1JX', 59, 16691.09, '2015-03-30 09:27:14', '2016-01-21 17:05:04'),
    (uuid(), 'Emory', 'Painter-Bock', 'denise', 'season6724@ought.com', '+966-3728-048-605', '{{sex}}', 'Anaheim', '8193 Chantler Lane', 'G5 8TK', 67, 10445.88, '2015-06-11 00:08:45', '2016-02-18 15:07:56'),
    (uuid(), 'Wendolyn', 'Overstreet-Everhart', 'something', 'veronicaplace61068@vsnet.com', '+64-5027-202-505', '{{sex}}', 'Racine', '0006 Akesmoor Circle', 'PH94 5DU', 61, 15791.84, '2015-02-02 22:54:10', '2016-07-14 16:31:45'),
    (uuid(), 'Octavia', 'Fried', '7777777', 'alethia8@task.com', '+962-5962-849-038', '{{sex}}', 'Santa Rosa', '4586 Wheatsheaf Lane', 'SL07 9UQ', 79, 11502.37, '2015-09-03 03:13:14', '2016-05-07 21:50:55'),
    (uuid(), 'Shirleen', 'Wingfield', 'elephant', 'baileybrumfield917@hotmail.com', '+968-3963-629-276', '{{sex}}', 'High Point', '2124 Newton Road', 'BL0 5DE', 13, 3808.71, '2015-09-14 08:17:19', '2016-10-28 00:50:02');


insert into delivery(uuid, delivery_system, postcode, city, address)
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







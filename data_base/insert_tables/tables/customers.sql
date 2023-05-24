use shop;


-- https://www.coderstool.com/sql-test-data-generator
# insert into customers (uuid, name, surname, email, phone, sex, city, address, postcode, amount_of_orders, cost_of_orders, registration_at, last_order_at)
# VALUES (uuid(), '{{firstname}}', '{{surname}}', '{{email}}', '{{tel}}', '{{sex}}', '{{city}}', '{{street}}', '{{postcode}}', {{prime 1 100}}, {{price 100 20000}}, '{{date 2015-01-01 2016-01-01}} {{time}}', '{{date 2016-01-01 2017-01-01}} {{time}}'),


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
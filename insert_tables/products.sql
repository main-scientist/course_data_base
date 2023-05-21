use shop;

# (uuid(), 'name', '{{prime 1 10}}', 'seller', {{price 5 100}}, '{{prime 1 20}}', {{zip}}, '{{date 2015-01-01 2017-01-01}} {{time}}', '{{prime 1 10}}'),

insert into products(uuid, name, category_id, seller_id, cost, amount_of, code, create_at, rating)
VALUES (uuid(), 'iMac', '2', '067b963a-f7cb-11ed-b7b4-0242ac110002', 52.14, '5', 68651, '2016-11-25 22:05:19', '1'),
    (uuid(), 'iPhone', '7', '067b980e-f7cb-11ed-b7b4-0242ac110002', 92.16, '17', 42456, '2015-11-28 19:56:21', '3'),
    (uuid(), 'iPad', '1', '067b98ea-f7cb-11ed-b7b4-0242ac110002', 68.11, '13', 74221, '2016-03-07 07:25:39', '3');
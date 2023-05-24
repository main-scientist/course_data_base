use shop;

# (uuid(), '-', '-', '{{date 2015-01-01 2017-01-01}} {{time}}', '{{price 5 100}}'),

insert into orders(uuid, customer_id, delivery_id, date, cost)
VALUES (uuid(), '82e60083-f7cb-11ed-b7b4-0242ac110002', '7e858ec5-f7cb-11ed-b7b4-0242ac110002', '2016-10-08 14:21:21', '78.58'),
    (uuid(), '82e60274-f7cb-11ed-b7b4-0242ac110002', '7e8590d3-f7cb-11ed-b7b4-0242ac110002', '2016-10-23 12:50:23', '17.75'),
    (uuid(), '82e603eb-f7cb-11ed-b7b4-0242ac110002', '7e859199-f7cb-11ed-b7b4-0242ac110002', '2016-07-18 16:28:37', '20.19');
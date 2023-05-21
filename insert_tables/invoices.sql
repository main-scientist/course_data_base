use shop;

# (uuid(), '-', '-', '-', '{{date 2015-01-01}} {{time}}', {{prime 1 5}}, 0, 0),

insert into invoices(uuid, customer_id, seller_id, order_id, create_at, cost, cost_tax, payment_system)
VALUES (uuid(), '82e60083-f7cb-11ed-b7b4-0242ac110002', '067b963a-f7cb-11ed-b7b4-0242ac110002', 'd62a585b-f7cb-11ed-b7b4-0242ac110002', '2016-06-13 15:30:57', 1, 0, 1),
    (uuid(), '82e60274-f7cb-11ed-b7b4-0242ac110002', '067b980e-f7cb-11ed-b7b4-0242ac110002', 'd62a5c4b-f7cb-11ed-b7b4-0242ac110002', '2020-12-04 03:20:27', 6, 0.67, 2),
    (uuid(), '82e603eb-f7cb-11ed-b7b4-0242ac110002', '067b98ea-f7cb-11ed-b7b4-0242ac110002', 'd62a5d3f-f7cb-11ed-b7b4-0242ac110002', '2016-12-19 13:28:58', 2, 0.4, 4);
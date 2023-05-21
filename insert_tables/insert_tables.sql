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
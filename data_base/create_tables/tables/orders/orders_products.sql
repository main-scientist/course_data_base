use shop;


create table shop.orders_products (
    uuid binary(16) PRIMARY KEY,
    orders_id binary(16),
    product_id binary(16),
    FOREIGN KEY (orders_id) references shop.orders(uuid),
    FOREIGN KEY (product_id) references shop.products(uuid)
);

CREATE TRIGGER set_uuid_for_orders_products
BEFORE INSERT ON shop.orders_products
FOR EACH ROW
BEGIN
    IF NEW.uuid IS NULL THEN
        SET NEW.uuid = UUID_TO_BIN(UUID());
    END IF;
END;
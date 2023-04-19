use shop;

create table shop.invoices (
    uuid binary(16) PRIMARY KEY,
    customer_id binary(16),
    seller_id binary(16),
    order_id binary(16),
    data datetime,
    cost float,
    cost_tax float,
    payment_system int,
    FOREIGN KEY (customer_id) references shop.customers(uuid),
    FOREIGN KEY (seller_id) references shop.sellers(uuid),
    FOREIGN KEY (order_id) references shop.orders(uuid),
    FOREIGN KEY (payment_system) references shop.payment_systems(id)
);

CREATE TRIGGER set_uuid_for_invoices
BEFORE INSERT ON shop.invoices
FOR EACH ROW
BEGIN
    IF NEW.uuid IS NULL THEN
        SET NEW.uuid = UUID_TO_BIN(UUID());
    END IF;
END;
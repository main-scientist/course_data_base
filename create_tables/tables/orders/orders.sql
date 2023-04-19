use shop;

create table shop.orders (
    uuid binary(16) PRIMARY KEY,
    customer_id binary(16),
    date datetime,
    cost int(16),
    cost_tax int(16),
    delivery_system int,
    delivery_address varchar(64),
    delivery_cost float,
    FOREIGN KEY (customer_id) references shop.customers(uuid),
    FOREIGN KEY (delivery_system) references shop.delivery_systems(id)
);

CREATE TRIGGER set_uuid_for_orders
BEFORE INSERT ON shop.orders
FOR EACH ROW
BEGIN
    IF NEW.uuid IS NULL THEN
        SET NEW.uuid = UUID_TO_BIN(UUID());
    END IF;
END;
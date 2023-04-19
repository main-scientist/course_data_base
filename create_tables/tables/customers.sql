use shop;

create table shop.customers (
    uuid binary(16) PRIMARY KEY,
    name varchar(32),
    surname varchar(32),
    email varchar(64),
    phone varchar(32),
    sex varchar(8),
    city varchar(32),
    address varchar(64),
    postcode varchar(32),
    amount_of_orders int,
    cost_of_orders float,
    data_registration date,
    last_order date
);


CREATE TRIGGER set_uuid_for_customers
BEFORE INSERT ON shop.customers
FOR EACH ROW
BEGIN
    IF NEW.uuid IS NULL THEN
        SET NEW.uuid = UUID_TO_BIN(UUID());
    END IF;
END;

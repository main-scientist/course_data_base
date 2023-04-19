use shop;

create table shop.sellers (
    uuid binary(16) PRIMARY KEY,
    name varchar(32),
    surname varchar(32),
    name_of_shop varchar(32),
    email varchar(32),
    phone varchar(32),
    city varchar(32),
    address varchar(32),
    postcode varchar(32),
    amount_of_sales int,
    cost_of_sales float,
    rating float
);


CREATE TRIGGER set_uuid_for_sellers
BEFORE INSERT ON shop.sellers
FOR EACH ROW
BEGIN
    IF NEW.uuid IS NULL THEN
        SET NEW.uuid = UUID_TO_BIN(UUID());
    END IF;
END;
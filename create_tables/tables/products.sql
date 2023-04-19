use shop;

create table shop.products (
    uuid binary(16) PRIMARY KEY,
    name varchar(16),
    category_id int,
    seller_id binary(16),
    cost float,
    amount_of int,
    code varchar(16),
    date_add datetime,
    rating float,
    FOREIGN KEY (category_id) references shop.categories(id),
    FOREIGN KEY (seller_id) references shop.sellers(uuid)
);

CREATE TRIGGER set_uuid_for_products
BEFORE INSERT ON shop.products
FOR EACH ROW
BEGIN
    IF NEW.uuid IS NULL THEN
        SET NEW.uuid = UUID_TO_BIN(UUID());
    END IF;
END;
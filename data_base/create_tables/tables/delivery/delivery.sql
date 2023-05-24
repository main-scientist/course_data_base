use shop;

create table shop.delivery (
    uuid binary(16) PRIMARY KEY,
    type varchar(16),
    postcode varchar(32),
    city varchar(32),
    address varchar(32),
    FOREIGN KEY (type) references shop.delivery_systems(id)
);

CREATE TRIGGER set_uuid_for_delivery
BEFORE INSERT ON shop.delivery
FOR EACH ROW
BEGIN
    IF NEW.uuid IS NULL THEN
        SET NEW.uuid = UUID_TO_BIN(UUID());
    END IF;
END;
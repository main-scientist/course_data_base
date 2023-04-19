use shop;


CREATE TRIGGER set_uuid_for_delivery
BEFORE INSERT ON shop.delivery
FOR EACH ROW
BEGIN
    IF NEW.uuid IS NULL THEN
        SET NEW.uuid = UUID_TO_BIN(UUID());
    END IF;
END;


CREATE TRIGGER set_uuid_for_customers
BEFORE INSERT ON shop.customers
FOR EACH ROW
BEGIN
    IF NEW.uuid IS NULL THEN
        SET NEW.uuid = UUID_TO_BIN(UUID());
    END IF;
END;


CREATE TRIGGER set_uuid_for_orders
BEFORE INSERT ON shop.orders
FOR EACH ROW
BEGIN
    IF NEW.uuid IS NULL THEN
        SET NEW.uuid = UUID_TO_BIN(UUID());
    END IF;
END;


CREATE TRIGGER set_uuid_for_sellers
BEFORE INSERT ON shop.sellers
FOR EACH ROW
BEGIN
    IF NEW.uuid IS NULL THEN
        SET NEW.uuid = UUID_TO_BIN(UUID());
    END IF;
END;


CREATE TRIGGER set_uuid_for_products
BEFORE INSERT ON shop.products
FOR EACH ROW
BEGIN
    IF NEW.uuid IS NULL THEN
        SET NEW.uuid = UUID_TO_BIN(UUID());
    END IF;
END;


CREATE TRIGGER set_uuid_for_orders_products
BEFORE INSERT ON shop.orders_products
FOR EACH ROW
BEGIN
    IF NEW.uuid IS NULL THEN
        SET NEW.uuid = UUID_TO_BIN(UUID());
    END IF;
END;


CREATE TRIGGER set_uuid_for_invoices
BEFORE INSERT ON shop.invoices
FOR EACH ROW
BEGIN
    IF NEW.uuid IS NULL THEN
        SET NEW.uuid = UUID_TO_BIN(UUID());
    END IF;
END;
-- This script creates a trigger named `decrease_quantity` that is executed after an order is inserted.
-- The trigger updates the quantity of the item in the `items` table based on the number of items ordered.
CREATE TRIGGER decrease_quantity AFTER INSERT
ON orders FOR EACH ROW
    UPDATE items SET quantity = quantity - NEW.number WHERE name = NEW.item_name;

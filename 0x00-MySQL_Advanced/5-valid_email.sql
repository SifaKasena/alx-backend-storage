-- This SQL script creates a trigger named `reset_valid_email` that is executed before an email is updated.
-- The trigger sets the `valid_email` column to 0 if the email is updated.
DELIMITER //

CREATE TRIGGER reset_valid_email BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF NEW.email != OLD.email THEN
        SET NEW.valid_email = 0;
    END IF;
END;//

DELIMITER ;

-- The SafeDiv function returns the result of a division operation
-- but it returns 0 if the divisor is 0.

DELIMITER //
CREATE FUNCTION SafeDiv (a INT, b INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
    DECLARE result FLOAT DEFAULT 0;

    IF b != 0 THEN
        SET result = a / b;
    END IF;
    RETURN result;
END //

DELIMITER ;

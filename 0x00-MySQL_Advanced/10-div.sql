-- The SafeDiv function returns the result of a division operation
-- but it returns 0 if the divisor is 0.

DELIMITER //
CREATE FUNCTION SafeDiv (a INT, b INT)
RETURNS DOUBLE DETERMINISTIC
BEGIN
    IF b = 0 THEN
        RETURN 0;
    ELSE
        RETURN a / b;
    END IF;
END;//

DELIMITER ;

USE `soft_uni`; -- After run 'bank_db.sql'

-- FOR JUDGE TESTING SYSTEM(without delimiter):

-- DELIMITER $$
CREATE FUNCTION `ufn_calculate_future_value` (sum DECIMAL(19,4), interest_rate DOUBLE, years INT)
RETURNS DECIMAL(19,4)
BEGIN
    RETURN sum * POW((1 + interest_rate), years);
END; -- END$$

-- DELIMITER ;

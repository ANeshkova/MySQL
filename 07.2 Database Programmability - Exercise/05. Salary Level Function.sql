USE `soft_uni`;

-- FOR JUDGE TESTING SYSTEM(without delimiter):

-- DELIMITER $$
CREATE FUNCTION `ufn_get_salary_level` (salary DOUBLE)
RETURNS VARCHAR(20)
BEGIN
    IF (salary < 30000) THEN RETURN 'Low';
    ELSEIF (salary BETWEEN 30000 AND 50000) THEN RETURN 'Average';
    ELSE RETURN 'High';
    END IF;
END; -- END$$

-- DELIMITER ;

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

CREATE PROCEDURE `usp_get_employees_by_salary_level`(salary_level VARCHAR(20))
BEGIN
	SELECT e.`first_name`, e.`last_name`
	FROM `employees` AS e
	WHERE LOWER(ufn_get_salary_level(salary)) = salary_level
	ORDER BY e.`first_name` DESC, e.`last_name` DESC;
END; -- END$$

-- DELIMITER ;

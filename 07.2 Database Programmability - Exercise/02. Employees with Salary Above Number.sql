USE `soft_uni`;

-- FOR JUDGE TESTING SYSTEM(without delimiter):

-- DELIMITER $$
CREATE PROCEDURE `usp_get_employees_salary_above` (given_number DECIMAL(19,4))
BEGIN
	SELECT e.`first_name`, e.`last_name`
	FROM `employees` AS e
	WHERE e.`salary` >= given_number
	ORDER BY e.`first_name`, e.`last_name`, e.`employee_id`;
END; -- END$$

-- DELIMITER ;

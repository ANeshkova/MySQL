USE `soft_uni`;

-- FOR JUDGE TESTING SYSTEM(without delimiter):

-- DELIMITER $$
CREATE PROCEDURE `usp_raise_salaries`(department_name VARCHAR(45)) 
BEGIN
	UPDATE `employees` AS e
	JOIN `departments` AS d
	ON d.`department_id` = e.`department_id`
	SET e.`salary` = e.`salary` * 1.05
	WHERE d.`name` = department_name;
END; -- END$$

-- DELIMITER ;

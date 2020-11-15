USE `soft_uni`;

-- FOR JUDGE TESTING SYSTEM(without delimiter):

-- DELIMITER $$
CREATE PROCEDURE `usp_raise_salary_by_id`(id INT)
BEGIN
	START TRANSACTION;
    IF(
		SELECT COUNT(e.`employee_id`) 
        FROM `employees` AS e
        WHERE e.`employee_id` LIKE id
	) <> 1 THEN
    ROLLBACK;
    ELSE
		UPDATE `employees` AS e 
        SET `salary` = `salary` + `salary` * 0.05
		WHERE e.`employee_id` = id;
	END IF;
END; -- END$$

-- DELIMITER ;

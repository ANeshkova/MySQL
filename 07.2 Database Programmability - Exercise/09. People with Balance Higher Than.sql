USE `soft_uni`; -- After run 'bank_db.sql'

-- FOR JUDGE TESTING SYSTEM(without delimiter):

-- DELIMITER $$
CREATE PROCEDURE `usp_get_holders_with_balance_higher_than` (salary_level DECIMAL(19,4))
BEGIN
	SELECT ah.`first_name`, ah.`last_name`
	FROM `account_holders` AS ah
	JOIN `accounts` AS a
	ON a.`account_holder_id` = ah.`id`
	GROUP BY a.`account_holder_id`
	HAVING SUM(balance) > salary_level
	ORDER BY ah.`id`;
END; -- END$$

-- DELIMITER ;

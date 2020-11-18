USE `soft_uni`; -- After run 'bank_db.sql'

-- FOR JUDGE TESTING SYSTEM(without delimiter):

-- DELIMITER $$
CREATE FUNCTION `ufn_calculate_future_value` (sum DECIMAL(19,4), interest_rate DOUBLE, years INT)
RETURNS DECIMAL(19,4)
BEGIN
	RETURN sum * POW((1 + interest_rate), years);
END; -- END$$

CREATE PROCEDURE `usp_calculate_future_value_for_account`
	(`account_id` INT, `interest_rate` DECIMAL(20,4))
BEGIN
	SELECT a.`id`, h.`first_name`, h.`last_name`, a.`balance`,
		ufn_calculate_future_value(a.`balance`, interest_rate, 5) AS `balance_in_5_years`
	FROM `account_holders` AS `h`
	JOIN `accounts` `a` ON `a`.`account_holder_id` = `h`.`id`
	WHERE a.`id` = `account_id`
	GROUP BY a.`account_holder_id`;
END; -- END$$

-- DELIMITER ;

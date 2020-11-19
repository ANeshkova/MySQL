USE `soft_uni`; -- After run 'bank_db.sql'

-- FOR JUDGE TESTING SYSTEM(without delimiter):

CREATE TABLE `logs` (
	`log_id` INT PRIMARY KEY AUTO_INCREMENT, 
    `account_id` INT, 
    `old_sum` DECIMAL(19,4), 
    `new_sum` DECIMAL(19,4)
);

-- DELIMITER $$
CREATE TRIGGER `tr_update_accounts`
AFTER UPDATE
ON accounts
FOR EACH ROW
BEGIN
	INSERT INTO `logs` (`account_id`, `old_sum`, `new_sum`)
    VALUES (OLD.id, OLD.balance, NEW.balance);
END; -- END$$

-- DELIMITER ;

CREATE TABLE `notification_emails` (
    `id` INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `recipient` INT(11) NOT NULL,
    `subject` VARCHAR(50) NOT NULL,
    `body` VARCHAR(255) NOT NULL
);

-- DELIMITER $$
CREATE TRIGGER `tr_notification_emails`
AFTER INSERT ON `logs`
FOR EACH ROW
BEGIN
    INSERT INTO `notification_emails` 
        (`recipient`, `subject`, `body`)
    VALUES (
        NEW.account_id, 
        CONCAT('Balance change for account: ', NEW.account_id), 
        CONCAT('On ', DATE_FORMAT(NOW(), '%b %d %Y at %r'), ' your balance was changed from ', 
		ROUND(NEW.old_sum, 2), ' to ', ROUND(NEW.new_sum, 2), '.'));
END; -- END$$

-- DELIMITER ;

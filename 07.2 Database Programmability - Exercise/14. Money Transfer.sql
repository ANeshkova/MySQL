USE `soft_uni`; -- After run 'bank_db.sql'

-- FOR JUDGE TESTING SYSTEM(without delimiter):

-- DELIMITER $$
CREATE PROCEDURE `usp_transfer_money`(from_account_id INT, to_account_id INT, money_amount DECIMAL(19,4))
BEGIN
START TRANSACTION;
    IF(SELECT COUNT(*) FROM accounts WHERE id = from_account_id) = 0
		OR (SELECT COUNT(*) FROM accounts WHERE id = to_account_id) = 0
		OR (money_amount <= 0)
		OR ((SELECT balance FROM accounts WHERE id = from_account_id) < money_amount)
		THEN ROLLBACK;
	ELSE
		UPDATE accounts
        SET balance = balance - money_amount
        WHERE id = from_account_id;
        UPDATE accounts
        SET balance = balance + money_amount
        WHERE id = to_account_id;
	END IF;
END; -- END$$

-- DELIMITER ;

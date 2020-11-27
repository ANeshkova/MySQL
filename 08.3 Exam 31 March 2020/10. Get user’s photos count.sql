USE `instd`;

-- FOR JUDGE TESTING SYSTEM(without delimiter):

-- DELIMITER $$
CREATE FUNCTION `udf_users_photos_count` (username VARCHAR(30))
RETURNS INTEGER
DETERMINISTIC
BEGIN
	RETURN (
		SELECT COUNT(up.`photo_id`)
		FROM `users` AS u
		JOIN `users_photos` AS up
		ON u.`id` = up.`user_id`
		WHERE u.`username` = username
    );
END; -- END$$

-- DELIMITER ;

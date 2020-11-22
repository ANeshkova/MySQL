USE `colonial_blog_db`;

-- FOR JUDGE TESTING SYSTEM(without delimiter):

-- DELIMITER $$
CREATE FUNCTION `udf_users_articles_count` (p_username VARCHAR(30))
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE result INT;
    SET result := (
		SELECT count(ua.`article_id`)
        FROM `users_articles` AS ua
        RIGHT JOIN `users` AS u
        ON u.`id` = ua.`user_id`
        WHERE u.`username` = p_username
    );
    RETURN result;
END -- END$$

-- DELIMITER ;

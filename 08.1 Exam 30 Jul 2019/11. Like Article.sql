USE `colonial_blog_db`;

-- FOR JUDGE TESTING SYSTEM(without delimiter):

-- DELIMITER $$
CREATE PROCEDURE udp_like_article(p_username VARCHAR(30), p_title VARCHAR(30))
BEGIN
	IF ((SELECT COUNT(*) FROM `users` AS u WHERE u.`username` = p_username) = 0)
		THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Non-existent user';
		ROLLBACK;
	ELSEIF ((SELECT COUNT(*) FROM `articles` AS a WHERE a.`title` = p_title) = 0)
		THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Non-existent article';
		ROLLBACK;
	ELSE
		INSERT INTO likes(article_id, comment_id, user_id)
		SELECT 
		(SELECT a.`id` FROM `articles` AS a WHERE `title` = p_title),
			NULL,
		(SELECT u.`id` FROM `users` AS u WHERE `username` = p_username);
    END IF;
END; -- END$$

-- DELIMITER ;

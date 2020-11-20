USE `colonial_blog_db`;

INSERT INTO `likes` (`article_id`, `comment_id`, `user_id`)
SELECT 
	IF(u.`id` % 2 = 0, char_length(u.`username`), null),
	IF(u.`id` % 2 = 1, char_length(u.`email`), null),
	u.`id`
FROM `users` AS u
WHERE u.`id` BETWEEN 16 AND 20;

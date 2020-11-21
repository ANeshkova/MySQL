USE `colonial_blog_db`;

SELECT a.`id` AS 'article_id', `title`
FROM `articles` AS a
JOIN `users_articles` AS ua
ON a.`id` = ua.`article_id`
WHERE ua.`user_id` = ua.`article_id`
ORDER BY a.`id`;

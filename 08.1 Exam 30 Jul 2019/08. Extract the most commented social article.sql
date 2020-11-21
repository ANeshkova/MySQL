USE `colonial_blog_db`;

SELECT a.`title`, COUNT(com.id) AS 'comments'
FROM `articles` AS a
JOIN `categories` AS c
ON c.`id` = a.`category_id`
JOIN `comments` AS com
ON com.`article_id` = a.`id`
WHERE c.`category` = 'Social'
GROUP BY a.`id`
ORDER BY `comments` DESC
LIMIT 1;

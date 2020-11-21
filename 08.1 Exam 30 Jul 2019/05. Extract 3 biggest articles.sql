USE `colonial_blog_db`;

SELECT nt.`title`, nt.`summary` 
FROM
(
	SELECT a.`id`, a.`title`, CONCAT(LEFT(a.`content`, 20), '...') AS 'summary'
	FROM `articles` AS a
	ORDER BY char_length(a.`content`) DESC 
    LIMIT 3
) AS nt
ORDER BY nt.`id`;

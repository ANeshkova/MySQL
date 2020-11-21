USE `colonial_blog_db`;

DELETE FROM `articles`
WHERE `category_id` IS NULL;

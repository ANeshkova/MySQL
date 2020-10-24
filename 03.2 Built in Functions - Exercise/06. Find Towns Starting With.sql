USE `soft_uni`;

SELECT * FROM `towns`
WHERE UPPER(substring(`name`, 1, 1)) IN ('M', 'K', 'B', 'E')
ORDER BY `name` ASC;

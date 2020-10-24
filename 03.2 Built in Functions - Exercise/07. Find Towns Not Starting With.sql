USE `soft_uni`;

SELECT * FROM `towns`
WHERE UPPER(substring(`name`, 1, 1)) NOT IN ('R', 'B', 'D')
ORDER BY `name` ASC;

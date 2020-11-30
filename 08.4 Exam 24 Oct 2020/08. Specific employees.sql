USE `softuni_stores_system`;

SELECT CONCAT_WS(' ', e.`first_name`, e.`last_name`) AS 'full_name',
	s.`name` AS 'store_name', a.`name` AS 'address', e.`salary`
FROM `employees` AS e
JOIN `stores` AS s
ON e.`store_id` = s.`id`
JOIN `addresses` AS a
ON s.`address_id` = a.`id`
HAVING e.`salary` < 7000 
	AND a.`name` LIKE '%a%'
	AND CHAR_LENGTH(s.`name`) > 5;

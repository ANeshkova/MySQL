USE `soft_uni`;

SELECT `first_name`, `last_name` FROM `employees`
WHERE LOWER(`first_name`) LIKE 'sa%'
ORDER BY `employee_id`;

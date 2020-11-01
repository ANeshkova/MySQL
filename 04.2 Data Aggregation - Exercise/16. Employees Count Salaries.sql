USE `soft_uni`;

SELECT COUNT(`salary`) AS `count_salary` FROM `employees`
WHERE `manager_id` IS NULL;

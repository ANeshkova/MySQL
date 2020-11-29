USE `softuni_stores_system`;

UPDATE `employees`
SET `salary` = `salary` - 500
WHERE YEAR(`hire_date`) > 2003 AND `store_id` NOT IN (5, 14);

UPDATE `employees`
SET `manager_id` = 3
WHERE YEAR(`hire_date`) > 2003 AND `store_id` NOT IN (5, 14);

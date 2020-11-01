USE `soft_uni`;

SELECT `department_id`, `salary` AS `third_salary` 
FROM `employees` AS e
WHERE(
    SELECT `employee_id` FROM `employees` AS ine
    WHERE ine.`department_id` = e.`department_id`
    GROUP BY `salary`
    ORDER BY `salary` DESC LIMIT 1 OFFSET 2  -- ORDER BY `salary` DESC LIMIT 2, 1
	) = `employee_id`
GROUP BY `department_id`
ORDER BY `department_id`;

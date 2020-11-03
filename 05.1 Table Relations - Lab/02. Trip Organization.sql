USE `camp`;

-- solution 1

SELECT v.`driver_id`, v.`vehicle_type`, 
CONCAT(c.`first_name`, ' ', c.`last_name`) AS `driver_name`
FROM `vehicles` AS v, `campers` AS c
WHERE v.`driver_id` = c.`id`;

------------------------------------------------------------
-- solution 2

SELECT v.`driver_id`, v.`vehicle_type`, 
CONCAT(c.`first_name`, ' ', c.`last_name`) AS `driver_name`
FROM `vehicles` AS v
JOIN `campers` AS c
ON v.`driver_id` = c.`id`;

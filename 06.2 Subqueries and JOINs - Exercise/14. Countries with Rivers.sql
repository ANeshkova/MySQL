USE `geography`;

SELECT c.`country_name`, r.`river_name`
FROM `rivers` AS r
RIGHT JOIN `countries_rivers` AS cr
ON cr.`river_id` = r.`id`
RIGHT JOIN `countries` AS c
ON c.`country_code` = cr.`country_code`
WHERE `continent_code` = 'AF'
ORDER BY `country_name` LIMIT 5;

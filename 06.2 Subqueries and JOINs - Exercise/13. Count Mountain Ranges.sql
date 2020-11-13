USE `geography`;

-- Soluton 1

SELECT mc.`country_code`, COUNT(m.`id`) AS 'mountain_range' 
FROM `mountains_countries` AS mc
JOIN `mountains` AS m
ON mc.`mountain_id` = m.`id`
WHERE `country_code` IN ('BG', 'RU', 'US')
GROUP BY `country_code`
HAVING `mountain_range` > 0
ORDER BY `mountain_range` DESC;

---------------------------------------------------------------------
-- Soluton 2

SELECT `country_code`, COUNT(`mountain_id`) AS `mountain_range`
FROM `mountains_countries`
WHERE `country_code` IN ('BG', 'RU', 'US')
GROUP BY `country_code`
ORDER BY `mountain_range` DESC;

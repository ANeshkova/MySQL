USE `fsd`;

UPDATE `coaches` AS c
JOIN `players_coaches` AS pc
ON c.`id` = pc.`coach_id`
SET `coach_level` = `coach_level` + 1
WHERE `first_name` LIKE 'A%';

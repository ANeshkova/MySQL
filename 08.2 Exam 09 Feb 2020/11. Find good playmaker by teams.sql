USE `fsd`;

-- FOR JUDGE TESTING SYSTEM(without delimiter):

-- DELIMITER $$
CREATE PROCEDURE udp_find_playmaker(min_dribble_points INT, team_name VARCHAR(45))
BEGIN
SELECT CONCAT(p.`first_name`, ' ', p.`last_name`) AS 'full_name', p.`age`, 
	p.`salary`, sd.`dribbling`, sd.`speed`, t.`name` AS 'team_name'  
FROM `teams` AS t
JOIN  `players` AS p
ON t.`id` = p.`team_id`
JOIN `skills_data` AS sd
ON p.`skills_data_id` = sd.`id`
WHERE sd.`dribbling` > min_dribble_points AND t.`name` = team_name AND 
	sd.`speed` > (SELECT AVG(sd.`speed`) FROM `skills_data` AS sd)
ORDER BY sd.`speed` DESC
LIMIT 1;
END; -- END$$

-- DELIMITER ;

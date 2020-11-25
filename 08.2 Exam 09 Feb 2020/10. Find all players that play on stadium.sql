USE `fsd`;

-- FOR JUDGE TESTING SYSTEM(without delimiter):

-- DELIMITER $$
CREATE FUNCTION `udf_stadium_players_count`(stadium_name VARCHAR(30))
RETURNS INT
DETERMINISTIC
BEGIN
DECLARE p_count INT;
SET p_count := (
	SELECT COUNT(p.`id`) AS 'count'
	FROM `players` AS p
	JOIN `teams` AS t
	ON p.`team_id` = t.`id`
	JOIN `stadiums` AS s
	ON t.`stadium_id` = s.`id`
	WHERE s.`name` = stadium_name
);
RETURN p_count;
END; -- END$$

-- DELIMITER ;

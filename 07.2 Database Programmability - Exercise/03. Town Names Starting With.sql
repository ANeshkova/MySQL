USE `soft_uni`;

-- FOR JUDGE TESTING SYSTEM(without delimiter):

-- DELIMITER $$
CREATE PROCEDURE `usp_get_towns_starting_with` (town_name VARCHAR(40))
BEGIN
	SELECT t.`name`
	FROM `towns` AS t
	WHERE t.`name` LIKE CONCAT(town_name, '%')
	ORDER BY t.`name`;
END; -- END$$

-- DELIMITER ;

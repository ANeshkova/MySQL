USE `book_library`;

SELECT concat(`first_name`, ' ', `last_name`) AS `Full Name`,
	IF(`died` = NULL, '(NULL)', TIMESTAMPDIFF(day, `born`, `died`)) AS `Days Lived`
FROM `authors`;

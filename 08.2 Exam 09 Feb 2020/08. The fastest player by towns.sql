USE `fsd`;

SELECT MAX(sd.`speed`) AS 'max_speed', t.`name` AS 'town_name'
FROM `teams` AS tm
LEFT JOIN `players` AS p
ON tm.`id` = p.`team_id`
LEFT JOIN `stadiums` AS st
ON st.`id` = tm.`stadium_id`
LEFT JOIN `towns` AS t
ON st.`town_id` = t.`id`
LEFT JOIN `skills_data` AS sd
ON sd.`id` = p.`skills_data_id`
WHERE tm.`name` != 'Devify'
GROUP BY t.`id`
ORDER BY max_speed DESC, t.`name`;

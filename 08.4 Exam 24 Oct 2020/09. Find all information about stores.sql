USE `softuni_stores_system`;

SELECT REVERSE(s.`name`) AS 'reversed_name',
	CONCAT_WS('-', UPPER(t.`name`), a.`name`) AS 'full_address',
    COUNT(DISTINCT e.`id`) AS 'employees_count',
    MIN(pr.`price`) AS 'min_price',
    COUNT(DISTINCT ps.`product_id`) AS 'products_count',
    DATE_FORMAT(MAX(DATE(pic.`added_on`)), '%D-%b-%Y') AS 'newest_pic'
FROM `stores` AS s
LEFT JOIN `addresses` AS a
ON s.`address_id` = a.`id`
LEFT JOIN `towns` AS t
ON a.`town_id` = t.`id`
LEFT JOIN `employees` AS e
ON s.`id` = e.`store_id`
LEFT JOIN `products_stores` AS ps
ON s.`id` = ps.`store_id`
LEFT JOIN `products` AS pr
ON ps.`product_id` = pr.`id`
LEFT JOIN `pictures` AS pic
ON pr.`picture_id` = pic.`id`
GROUP BY s.`id`
HAVING `min_price` > 10
ORDER BY `reversed_name`, `min_price`;

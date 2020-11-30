USE `softuni_stores_system`;
DROP procedure IF EXISTS `udp_update_product_price`;

DELIMITER $$
USE `softuni_stores_system`$$
CREATE PROCEDURE `udp_update_product_price`(address_name VARCHAR(50))
BEGIN
	UPDATE `products` AS p
	JOIN `products_stores` AS ps
	ON ps.`product_id` = p.`id`
	JOIN `stores` AS s
	ON ps.`store_id` = s.`id`
	JOIN `addresses` AS a
	ON s.`address_id` = a.`id`
	SET p.`price` = (
		IF (a.`name` LIKE ('0%'), p.`price` + 100, p.`price` + 200)
	)
	WHERE a.`name` = address_name;
END$$

DELIMITER ;

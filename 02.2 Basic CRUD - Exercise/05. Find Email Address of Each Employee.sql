USE `soft_uni`;

SELECT concat(`first_name`, '.', `last_name`, '@softuni.bg') 
AS `full_ email_address`
FROM `employees`;

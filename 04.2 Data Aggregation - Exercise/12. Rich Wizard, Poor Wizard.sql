USE `gringotts`;

-- solution 1

SELECT 
(
    (SELECT `deposit_amount` FROM `wizzard_deposits` LIMIT 1) - 
    (SELECT `deposit_amount` FROM `wizzard_deposits` ORDER BY `id` DESC LIMIT 1)
) AS `sum_difference`;

---------------------------------------------------------------------------------
-- solution 2

SELECT SUM(`hw`.`deposit_amount` - `gw`.`deposit_amount`) AS 'sum_difference'
FROM `wizzard_deposits` AS `hw`, `wizzard_deposits` AS `gw`
WHERE `gw`.`id` - `hw`.`id` = 1;

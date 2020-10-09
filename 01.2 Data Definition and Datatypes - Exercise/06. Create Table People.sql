USE `minions`;

CREATE TABLE `people` (
	`id` INT PRIMARY KEY UNIQUE AUTO_INCREMENT,
    `name` VARCHAR(200) NOT NULL,
	`picture` BLOB,
    `height` DOUBLE(3, 2),
    `weight` FLOAT(5, 2),
    `gender` CHAR(1) NOT NULL,
	`birthdate` DATE NOT NULL,
    `biography` TEXT
);

INSERT INTO `people` (`id`, `name`, `height`, `gender`, `birthdate`)
VALUES
(1, 'Ani', 1.69, 'f', '2002-11-24'),
(2, 'Krasi', 1.58, 'm', '2005-05-08'),
(3, 'Pesho', 1.89, 'm', '2000-02-11');

INSERT INTO `people` (`name`, `weight`, `gender`, `birthdate`)
VALUES ('Ral', 50.5, 'f', '1999-01-25');

INSERT INTO `people` (`name`, `height`, `weight`, `gender`, `birthdate`, `biography`)
VALUES ('Gosho', 1.90, 75.60, 'm', '1996-06-04', 'Proba 1');

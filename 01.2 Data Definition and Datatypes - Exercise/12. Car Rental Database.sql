CREATE DATABASE `car_rental`;
USE `car_rental`;

CREATE TABLE `categories` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
	`category` VARCHAR(40) NOT NULL,
    `daily_rate` DECIMAL(10, 2) NOT NULL,
    `weekly_rate` DECIMAL(10, 2) NOT NULL,
    `monthly_rate` DECIMAL(10, 2) NOT NULL,
    `weekend_rate` DECIMAL(10, 2) NOT NULL
);

CREATE TABLE `cars` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
	`plate_number` VARCHAR(40) UNIQUE NOT NULL,
	`make` VARCHAR(40) NOT NULL,
	`model` VARCHAR(40) NOT NULL,
	`car_year` YEAR NOT NULL,
    `category_id` INT NOT NULL,
    `doors` INT NOT NULL,
    `picture` BLOB,
    `car_condition` VARCHAR(30),
    `available` BOOLEAN
);

CREATE TABLE `employees` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(40) NOT NULL,
	`last_name` VARCHAR(40) NOT NULL,
    `title` VARCHAR(40) NOT NULL,
	`notes` TEXT
);

CREATE TABLE `customers` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `driver_licence_number` INT NOT NULL,
	`full_name` VARCHAR(60) NOT NULL,
    `address` VARCHAR(40) NOT NULL,
    `city` VARCHAR(40) NOT NULL,
    `zip_code` INT NOT NULL,
	`notes` TEXT
);

CREATE TABLE `rental_orders`(
	`id` INT PRIMARY KEY AUTO_INCREMENT,
	`employee_id` INT NOT NULL,
    `customer_id` INT NOT NULL,
    `car_id` INT NOT NULL,
    `car_condition` VARCHAR(30),
    `tank_level` INT NOT NULL,
    `kilometrage_start` DECIMAL(10, 2) NOT NULL,
    `kilometrage_end` DECIMAL(10, 2) NOT NULL,
    `total_kilometrage` DECIMAL(10, 2) NOT NULL,
    `start_date` DATE NOT NULL,
    `end_date` DATE NOT NULL,
    `total_days` INT NOT NULL,
    `rate_applied` DECIMAL(10, 2) NOT NULL,
    `tax_rate` DECIMAL(10, 2) NOT NULL,
    `order_status` BOOLEAN,
    `notes` TEXT
);

INSERT INTO `categories`
VALUES
(1, 'first category', 125, 500, 1250, 159.99),
(2, 'second category', 99, 410, 850, 120),
(3, 'third category', 78, 370.45, 700, 100.80);

INSERT INTO `cars` (`plate_number`, `make`, `model`, `car_year`, `category_id`, `doors`)
VALUES
('CA3542BK', 'BG', '315', '2010', 3, 2),
('CA3992BP', 'BG', '210', '2018', 2, 4),
('CA4514AP', 'UK', 'X10', '2020', 1, 4);

INSERT INTO `employees` (`first_name`, `last_name`, `title`)
VALUES 
('Gosho', 'Goshev', 'mr'),
('Pesho', 'Petkov', 'mr'),
('Maria', 'Marinova', 'ms');

INSERT INTO `customers`
VALUES
(1, 456789, 'Vladi Vladov', 'Ivan Vazov 10', 'Sofia', 1000, 'first note'),
(2, 412389, 'Adi Adov', 'Hristo Botev 94', 'Pleven', 5800, 'second note'),
(3, 125787, 'Vili Vilov', 'Ivan Vazov 112', 'Sofia', 1000, 'third note');

INSERT INTO `rental_orders` (`employee_id`, `customer_id`, `car_id`, `tank_level`, `kilometrage_start`,
`kilometrage_end`, `total_kilometrage`, `start_date`, `end_date`, `total_days`, `rate_applied`, `tax_rate`)
VALUES
(1, 2, 1, 50, 55000.5, 58000, 2500, '2020-10-05', '2020-10-12', 7, 500, 25.50),
(2, 1, 2, 40, 30000, 30500, 500, '2020-10-05', '2020-11-05', 30, 850, 35.50),
(3, 3, 3, 15, 12000, 13000, 1000, '2020-10-10', '2020-10-10', 30, 700, 30);
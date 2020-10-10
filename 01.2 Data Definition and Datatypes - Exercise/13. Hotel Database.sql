CREATE DATABASE `hotel`;
USE `hotel`;

CREATE TABLE `employees` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `first_name` VARCHAR(40) NOT NULL,
	`last_name` VARCHAR(40) NOT NULL,
    `title` VARCHAR(40) NOT NULL,
	`notes` TEXT
);

CREATE TABLE `customers` (
    `account_number` INT PRIMARY KEY AUTO_INCREMENT,
	`first_name` VARCHAR(60) NOT NULL,
    `last_name` VARCHAR(40) NOT NULL,
    `phone_number` INT NOT NULL,
    `emergency_name` VARCHAR(40) NOT NULL,
    `emergency_number` INT NOT NULL,
	`notes` TEXT
);

CREATE TABLE `room_status` (
	`room_status` INT PRIMARY KEY AUTO_INCREMENT,
    `notes` TEXT
);

CREATE TABLE `room_types` (
	`room_type` INT PRIMARY KEY AUTO_INCREMENT,
    `notes` TEXT
);

CREATE TABLE `bed_types` (
	`bed_type` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `notes` TEXT
);

CREATE TABLE `rooms` (
	`room_number` INT PRIMARY KEY NOT NULL,
	`room_type` INT NOT NULL,
	`bed_type` INT NOT NULL,
	`rate` DECIMAL(10,2) NOT NULL,
	`room_status` INT NOT NULL,
    `notes` TEXT
);

CREATE TABLE `payments` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
	`employee_id` INT NOT NULL,
	`payment_date` DATE NOT NULL,
	`account_number` INT NOT NULL,
	`first_date_occupied` DATE NOT NULL,
	`last_date_occupied` DATE NOT NULL,
	`total_days` INT NOT NULL,
	`amount_charged` DECIMAL(10, 2) NOT NULL,
	`tax_rate` DECIMAL(10, 2) NOT NULL,
	`tax_amount` DECIMAL(10, 2) NOT NULL,
	`payment_total` DECIMAL(10, 2) NOT NULL,
    `notes` TEXT
);

CREATE TABLE `occupancies` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
	`employee_id` INT NOT NULL,
	`date_occupied` DATE NOT NULL,
	`account_number` INT NOT NULL,
	`room_number` INT NOT NULL,
	`rate_applied` DECIMAL(10, 2) NOT NULL,
	`phone_charge` DECIMAL(10, 2) NOT NULL,
    `notes` TEXT
);

INSERT INTO `employees` (`first_name`, `last_name`, `title`)
VALUES 
('Toni', 'Tonev', 'mr'),
('Veni', 'Veneva', 'ms'),
('Peter', 'Stoyanov', 'mr');

INSERT INTO `customers` 
VALUES 
(1, 'Ivan', 'Petrov', 0878883635, 'Gosho', 0878835478, 'good'),
(2, 'Pesho', 'Mitkov', 0879883635, 'Misho', 0878635478, 'good'),
(3, 'Ivo', 'Todorov', 0878783635, 'Tosho', 0874835478, 'good');

INSERT INTO `room_status`
VALUES 
(1, 'available'),
(2, 'not available'),
(3, 'reserved');

INSERT INTO `room_types`
VALUES 
(1, 'double'),
(2, 'single'),
(3, 'flat');

INSERT INTO `bed_types`
VALUES 
(1, 'big'),
(2, 'small'),
(3, 'medium');

INSERT INTO `rooms`
VALUES
(1, 1, 1, 55, 1, 'good'),
(2, 2, 2, 70.50, 2, 'good'),
(3, 3, 3, 100, 3, 'good');

INSERT INTO `payments`
VALUES 
(1, 1, '2015-08-07', 1, '2015-08-07', '2015-08-15', 8, 278, 15, 35, 458, 'good'),
(2, 2, '2015-09-07', 2, '2015-09-07', '2015-09-15', 8, 278, 15, 35, 458, 'good'),
(3, 3, '2015-10-07', 3, '2015-10-07', '2015-10-15', 8, 278, 15, 35, 458, 'good');

INSERT INTO `occupancies`
VALUES 
(1, 1, '2015-08-07', 1, 1, 3, 15, 'good'),
(2, 2, '2015-08-07', 2, 2, 5, 18, 'good'),
(3, 3, '2015-08-07', 3, 3, 4, 19, 'good');

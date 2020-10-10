CREATE SCHEMA `movies`;
USE `movies`;

CREATE TABLE `directors` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `director_name` VARCHAR(45) NOT NULL,
    `notes` TEXT
);

CREATE TABLE `genres` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `genre_name` VARCHAR(45) NOT NULL,
    `notes` TEXT
);

CREATE TABLE `categories` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `category_name` VARCHAR(45) NOT NULL,
    `notes` TEXT
);

CREATE TABLE `movies` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
	`title` VARCHAR(45) NOT NULL,
	`director_id` INT NOT NULL,
    `copyright_year` YEAR NOT NULL,
    `length` TIME NOT NULL,
    `genre_id` INT NOT NULL,
    `category_id` INT NOT NULL,
    `rating` DECIMAL(2, 1) NOT NULL,
    `notes` TEXT
);

INSERT INTO `directors` (`director_name`)
VALUES
('Ani'),
('Pesho'),
('Toni'),
('Krasi'),
('Gosho');

INSERT INTO `genres` (`genre_name`)
VALUES
('Crime'),
('Horror'),
('Drama'),
('Action'),
('Comedy');

INSERT INTO `categories` (`category_name`)
VALUES
('first category'),
('second category'),
('third category'),
('fourth category'),
('fifth category');

INSERT INTO `movies`
VALUES
(1, 'Dogs', 3, '2013', '01:20:01', 5, 1, 3.5, 'nice 1'),
(2, 'Cats', 2, '2016', '01:18:32', 4, 2, 4.5, 'nice 2'),
(3, 'Frogs', 4, '2018', '01:12:15', 3, 3, 4.7, 'nice 3'),
(4, 'Jungle', 1, '1997', '00:59:10', 2, 4, 5.0, 'nice 4'),
(5, 'The last movie', 5, '2020', '02:07:08', 1, 5, 4.9, 'nice 5');
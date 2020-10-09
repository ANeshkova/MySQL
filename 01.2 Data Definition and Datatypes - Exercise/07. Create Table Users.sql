USE `minions`;

CREATE TABLE `users` (
	`id` BIGINT PRIMARY KEY UNIQUE AUTO_INCREMENT,
    `username` VARCHAR(30) UNIQUE NOT NULL,
    `password` VARCHAR(26) NOT NULL,
	`profile_picture` BLOB,
    `last_login_time` TIMESTAMP,
    `is_deleted` BOOLEAN
);

INSERT INTO `users` (`username`, `password`)
VALUES
('ani', 'anipass'),
('pesho', 'peshopass'),
('toni', 'tonipass'),
('krasi', 'krasipass'),
('gosho', 'goshopass');

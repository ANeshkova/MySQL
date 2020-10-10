USE `minions`;

ALTER TABLE `users` 
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`),
ADD UNIQUE INDEX `uq_username` (`username`);

-- ADD CONSTRAINT `uq_username` UNIQUE (`username`);

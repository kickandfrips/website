SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;

--
-- Base de données :  `kickswebsite`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` enum('A','U') DEFAULT 'U'
);



CREATE TABLE `shoes` (
    `id` int NOT NULL,
	`img` varchar NOT NULL,
    `name` varchar NOT NULL,
    `genre` enum('H','F'),
    `marque` varchar NOT NULL
    );


CREATE TABLE 'size'
(
	id int NOT NULL,
	size int NOT NULL
);


CREATE TABLE 'size_shoes'
(
	id int not null,
	idshoes int not null,
	idsize int not null,
	idcolor1 int not null,
	idcolor2 int not null,
	quantity int not null
);


CREATE TABLE 'color'
(
	id int not null,
	name varchar not null
);

ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `color`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;


ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `size`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;



ALTER TABLE `size_shoes`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `size_shoes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;



ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;



ALTER TABLE `shoes`
    ADD PRIMARY KEY (`id`);

ALTER TABLE `shoes`
	MODIFY `id` int(13) NOT NULL AUTO_INCREMENT;

ALTER TABLE `kickswebsite`.`size_shoes` DROP INDEX `unique_shoes`, ADD UNIQUE `unique_shoes` (`idshoes`, `idsize`, `idcolor1`, `idcolor2`, `quantity`) USING BTREE;
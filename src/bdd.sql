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


ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;



CREATE TABLE `shoes` (
    `id` int(13) NOT NULL,
    `modele` varchar(50) NOT NULL,
    `taille` int(2) NOT NULL,
    `genre` varchar(5) NOT NULL,
    `marque` varchar(15) NOT NULL,
    `couleur1` varchar(15) NOT NULL,
    `couleur2` varchar(15) NOT NULL,
    `quantité` varchar(4) NOT NULL
    );
ALTER TABLE `shoes`
    ADD PRIMARY KEY (`id`);
ALTER TABLE `shoes`
	MODIFY `id` int(13) NOT NULL AUTO_INCREMENT;
COMMIT;
    
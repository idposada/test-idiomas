-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2023 at 12:11 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test-idiomas`
--

-- --------------------------------------------------------

--
-- Table structure for table `pregunta`
--

CREATE TABLE `pregunta` (
  `id` int(11) NOT NULL,
  `pregunta` longtext NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pregunta`
--

INSERT INTO `pregunta` (`id`, `pregunta`, `id_categoria`) VALUES
(1, 'What is this?', 1),
(2, 'What?s the weather like today?', 1),
(3, 'How often do you go to the movies?', 1),
(4, 'My brother?s daughter visited me on Sunday while I was working, Who?', 1),
(5, 'Where are you from?', 1),
(6, 'What do you think about the new Chinese restaurant?', 1),
(7, 'Have you had class with the new teacher? ', 1),
(8, 'What would you do if you were an animal?', 1),
(9, 'When will the movie be filmed?', 1),
(10, 'If you look up at (1)_____ sky (2) ______ it\'s raining and sunny, you will see the rainbow. It is (3)______ magical phenomenon (4) _____ is formed by (5)________ nature. Red, orange, yellow, green, blue, violet and purple are the colors that can be seen in the rainbow.', 1),
(11, 'If you look up at (1)_____ sky (2) ______ it\'s raining and sunny, you will see the rainbow. It is (3)______ magical phenomenon (4) _____ is formed by (5)________ nature. Red, orange, yellow, green, blue, violet and purple are the colors that can be seen in the rainbow.', 1),
(12, 'If you look up at (1)_____ sky (2) ______ it\'s raining and sunny, you will see the rainbow. It is (3)______ magical phenomenon (4) _____ is formed by (5)________ nature. Red, orange, yellow, green, blue, violet and purple are the colors that can be seen in the rainbow.', 1),
(13, 'If you look up at (1)_____ sky (2) ______ it\'s raining and sunny, you will see the rainbow. It is (3)______ magical phenomenon (4) _____ is formed by (5)________ nature. Red, orange, yellow, green, blue, violet and purple are the colors that can be seen in the rainbow.', 1),
(14, 'If you look up at (1)_____ sky (2) ______ it\'s raining and sunny, you will see the rainbow. It is (3)______ magical phenomenon (4) _____ is formed by (5)________ nature. Red, orange, yellow, green, blue, violet and purple are the colors that can be seen in the rainbow.', 1),
(15, 'Where is Georgina? It is late and we have to go.', 1),
(16, 'My best friend is Paul. Do you know him?', 1),
(17, 'What is the most important thing for you? ', 1),
(18, 'Did you hear the recent news about your favorite pop star?', 1),
(19, 'Are you accustomed to waking up early on the weekend?', 1),
(20, 'Qu?est-ce que c?est cet objet?', 2),
(21, 'Quel est le temps aujourd?hui?', 2),
(22, 'Quand est-ce que tu vas au cin?ma?', 2),
(23, 'La fille de mon fr?re m?a visit? Samedi dernier, Qui?', 2),
(24, 'Tu viens d?o??', 2),
(25, 'Qu?est-ce que tu penses du nouveau restaurant?', 2),
(26, 'As-tu rencontr? le professeur de fran?ais? ', 2),
(27, 'Si tu ?tais un animal, lequel choisirais-tu?', 2),
(28, 'Combien de films a-t-il fait pendant sa vie?', 2),
(29, 'Si tu regardes (1)_____ ciel (2) ______ il pleut et il y a du soleil, tu verras l?arc-en-ciel. C?est (3)______ ph?nom?ne magique (4) _____ est form? par (5)________ nature. Rouge, orange, jaune, vert, blue, indigo et violet sont les couleurs que tu peux voir briller.', 2),
(30, 'Si tu regardes (1)_____ ciel (2) ______ il pleut et il y a du soleil, tu verras l?arc-en-ciel. C?est (3)______ ph?nom?ne magique (4) _____ est form? par (5)________ nature. Rouge, orange, jaune, vert, blue, indigo et violet sont les couleurs que tu peux voir briller.', 2),
(31, 'Si tu regardes (1)_____ ciel (2) ______ il pleut et il y a du soleil, tu verras l?arc-en-ciel. C?est (3)______ ph?nom?ne magique (4) _____ est form? par (5)________ nature. Rouge, orange, jaune, vert, blue, indigo et violet sont les couleurs que tu peux voir briller.', 2),
(32, 'Si tu regardes (1)_____ ciel (2) ______ il pleut et il y a du soleil, tu verras l?arc-en-ciel. C?est (3)______ ph?nom?ne magique (4) _____ est form? par (5)________ nature. Rouge, orange, jaune, vert, blue, indigo et violet sont les couleurs que tu peux voir briller.', 2),
(33, 'Si tu regardes (1)_____ ciel (2) ______ il pleut et il y a du soleil, tu verras l?arc-en-ciel. C?est (3)______ ph?nom?ne magique (4) _____ est form? par (5)________ nature. Rouge, orange, jaune, vert, blue, indigo et violet sont les couleurs que tu peux voir briller.', 2),
(34, 'O? est Georgina? Le train va arriver et _____.', 2),
(35, 'Mon meilleur ami est Claude. Est-ce que tu le connais?', 2),
(36, 'Est-ce que tu vas souvent ? la biblioth?que? ', 2),
(37, 'Qu?est-ce qu?il t?a dit sur le projet?', 2),
(38, 'Quels sont tes plans pour les vacances?', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `id_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

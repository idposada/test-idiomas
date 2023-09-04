-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 04-09-2023 a las 21:42:32
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test-idiomas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(9) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'Ingles'),
(2, 'Frances'),
(3, 'Italiano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma`
--

CREATE TABLE `idioma` (
  `id` int(11) NOT NULL,
  `idioma` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `idioma`
--

INSERT INTO `idioma` (`id`, `idioma`) VALUES
(1, 'Ingles'),
(2, 'Frances'),
(3, 'Italiano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id` int(11) NOT NULL,
  `pregunta` longtext NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id`, `pregunta`, `id_categoria`) VALUES
(1, 'What is this?', 1),
(2, 'What\'s the weather like today?', 1),
(3, 'How often do you go to the movies?', 1),
(4, 'My brother\'s daughter visited me on Sunday while I was working, Who?', 1),
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
(20, 'Qu\'est-ce que c\'est cet objet?', 2),
(21, 'Quel est le temps aujourd\'hui?', 2),
(22, 'Quand est-ce que tu vas au cinéma?', 2),
(23, 'A: La fille de mon frère m’a visité Samedi dernier. <br>  B: Qui?', 2),
(24, 'Tu viens d\'oú?', 2),
(25, 'Qu\'est-ce que tu penses du nouveau restaurant?', 2),
(26, 'As-tu rencontré le professeur de français? ', 2),
(27, 'Si tu étais un animal, lequel choisirais-tu?', 2),
(28, 'Combien de films a-t-il fait pendant sa vie?', 2),
(29, 'Si tu regardes (1)_____ ciel (2) ______ il pleut et il y a du soleil, tu verras l\'arc-en-ciel. C\'est (3)______ phénoméne magique (4) _____ est formé par (5)________ nature. Rouge, orange, jaune, vert, bleu, indigo et violet sont les couleurs que tu peux voir briller.', 2),
(30, 'Si tu regardes (1)_____ ciel (2) ______ il pleut et il y a du soleil, tu verras l\'arc-en-ciel. C\'est (3)______ phénoméne magique (4) _____ est formé par (5)________ nature. Rouge, orange, jaune, vert, bleu, indigo et violet sont les couleurs que tu peux voir briller.', 2),
(31, 'Si tu regardes (1)_____ ciel (2) ______ il pleut et il y a du soleil, tu verras l\'arc-en-ciel. C\'est (3)______ phénoméne magique (4) _____ est formé par (5)________ nature. Rouge, orange, jaune, vert, bleu, indigo et violet sont les couleurs que tu peux voir briller.', 2),
(32, 'Si tu regardes (1)_____ ciel (2) ______ il pleut et il y a du soleil, tu verras l\'arc-en-ciel. C\'est (3)______ phénoméne magique (4) _____ est formé par (5)________ nature. Rouge, orange, jaune, vert, bleu, indigo et violet sont les couleurs que tu peux voir briller.', 2),
(33, 'Si tu regardes (1)_____ ciel (2) ______ il pleut et il y a du soleil, tu verras l\'arc-en-ciel. C\'est (3)______ phénoméne magique (4) _____ est formé par (5)________ nature. Rouge, orange, jaune, vert, bleu, indigo et violet sont les couleurs que tu peux voir briller.', 2),
(34, 'Oú est Georgina? Le train va arriver et _____.', 2),
(35, 'Mon meilleur ami est Claude. Est-ce que tu le connais?', 2),
(36, 'Est-ce que tu vas souvent à la bibliothèque? ', 2),
(37, 'Qu\'est-ce qu\'il t\'a dit sur le projet?', 2),
(38, 'Quels sont tes plans pour les vacances?', 2),
(39, 'Scegli la risposta giusta Cos\'è questo?', 3),
(40, 'Che tempo fa oggi?', 3),
(41, 'Quanto spesso vai al cinema?', 3),
(42, 'La figlia di mio fratello è venuta a casa mia la domenica scorsa. Chi?', 3),
(43, 'Da dove vieni?', 3),
(44, 'Che cosa pensi del nuovo ristorante cinese?', 3),
(45, 'Hai avuto delle lezione con il nuovo professore?', 3),
(46, 'Cosa faresti se fossi un animale?', 3),
(47, 'Quando sarà filmato il film?', 3),
(48, 'Se alzi (1)_____ sguardo al cielo quando piove e c\'è (2)_____ sole, vedrai (3)_____arcobaleno. È un fenomeno magico che è formato (4)_____ natura. Rosso, arancione, giallo, verde, blu e viola sono (5)_____ colori che si possono vedere nell\'arcobaleno.', 3),
(49, 'Se alzi (1)_____ sguardo al cielo quando piove e c\'è (2)_____ sole, vedrai (3)_____arcobaleno. È un fenomeno magico che è formato (4)_____ natura. Rosso, arancione, giallo, verde, blu e viola sono (5)_____ colori che si possono vedere nell\'arcobaleno.', 3),
(50, 'Se alzi (1)_____ sguardo al cielo quando piove e c\'è (2)_____ sole, vedrai (3)_____arcobaleno. È un fenomeno magico che è formato (4)_____ natura. Rosso, arancione, giallo, verde, blu e viola sono (5)_____ colori che si possono vedere nell\'arcobaleno.', 3),
(51, 'Se alzi (1)_____ sguardo al cielo quando piove e c\'è (2)_____ sole, vedrai (3)_____arcobaleno. È un fenomeno magico che è formato (4)_____ natura. Rosso, arancione, giallo, verde, blu e viola sono (5)_____ colori che si possono vedere nell\'arcobaleno.', 3),
(52, 'Se alzi (1)_____ sguardo al cielo quando piove e c\'è (2)_____ sole, vedrai (3)_____arcobaleno. È un fenomeno magico che è formato (4)_____ natura. Rosso, arancione, giallo, verde, blu e viola sono (5)_____ colori che si possono vedere nell\'arcobaleno.', 3),
(53, 'Dov\'è sarà Giorgina? È tardi e dobbiamo andare.', 3),
(54, 'Il mio migliore amico è Paul. Lo conosci?', 3),
(55, 'Dove lavori?', 3),
(56, 'Dov’è Davide?', 3),
(57, 'Quando apre questo negozio?', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntaje`
--

CREATE TABLE `puntaje` (
  `id` int(9) NOT NULL,
  `id_usuario` int(9) NOT NULL,
  `id_categoria` int(9) NOT NULL,
  `puntaje` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `puntaje`
--

INSERT INTO `puntaje` (`id`, `id_usuario`, `id_categoria`, `puntaje`) VALUES
(11, 17, 2, 12.4),
(12, 19, 1, 16.8),
(13, 17, 2, 12.4),
(14, 20, 1, 8.4),
(15, 21, 1, 24),
(16, 25, 1, 12.8),
(17, 22, 1, 21.6),
(18, 29, 1, 28),
(19, 30, 1, 18),
(20, 27, 1, 21.6),
(21, 31, 1, 11.2),
(22, 32, 1, 8.4),
(23, 33, 1, 13.2),
(24, 34, 1, 12.8),
(25, 34, 1, 12.8),
(26, 35, 1, 12.8),
(27, 36, 1, 17.2),
(28, 37, 1, 23.6),
(29, 38, 1, 13.6),
(30, 39, 1, 28),
(31, 40, 2, 13.2),
(32, 43, 1, 30),
(33, 43, 1, 30),
(34, 43, 1, 30),
(35, 43, 1, 30),
(36, 43, 1, 26),
(37, 41, 1, 15.2),
(38, 44, 1, 14.8),
(39, 45, 2, 6.4),
(40, 46, 1, 10.8),
(41, 47, 2, 12.8),
(42, 48, 1, 12.8),
(43, 50, 1, 15.2),
(44, 51, 2, 14),
(45, 53, 2, 11.2),
(46, 53, 2, 11.2),
(47, 56, 2, 30),
(48, 57, 2, 12.4),
(49, 58, 1, 19.6),
(50, 59, 2, 12),
(51, 60, 1, 10.4),
(52, 61, 2, 10.8),
(53, 62, 2, 8.4),
(54, 64, 1, 8.8),
(55, 67, 1, 13.6),
(56, 68, 1, 19.6),
(57, 69, 1, 15.2),
(58, 73, 1, 17.6),
(59, 74, 1, 14.8),
(60, 72, 1, 10.8),
(61, 70, 1, 13.2),
(62, 75, 1, 12.8),
(63, 76, 1, 21.2),
(64, 70, 1, 13.2),
(65, 78, 1, 18.8),
(66, 80, 1, 17.2),
(67, 82, 1, 19.6),
(68, 83, 1, 20.4),
(69, 85, 1, 25.6),
(70, 86, 1, 30),
(71, 87, 1, 28),
(72, 88, 1, 14.8),
(73, 88, 1, 18.8),
(74, 88, 1, 18.8),
(75, 98, 1, 14.4),
(76, 101, 1, 20.8),
(77, 102, 1, 23.2),
(78, 103, 1, 17.6),
(79, 104, 1, 11.2),
(80, 106, 1, 8.8),
(81, 109, 1, 11.6),
(82, 111, 1, 21.6),
(83, 112, 1, 13.2),
(84, 114, 1, 25.2),
(85, 116, 1, 13.6),
(86, 118, 1, 6.8),
(87, 108, 1, 8.8),
(88, 120, 1, 9.2),
(89, 121, 1, 13.6),
(90, 122, 1, 11.6),
(91, 123, 1, 9.6),
(92, 123, 1, 9.6),
(93, 125, 1, 30),
(94, 124, 1, 14),
(95, 127, 1, 30),
(96, 128, 1, 14.8),
(97, 130, 1, 17.2),
(98, 131, 1, 14.4),
(99, 133, 1, 15.6),
(100, 134, 1, 9.2),
(101, 134, 1, 9.2),
(102, 134, 1, 11.2),
(103, 134, 1, 11.2),
(104, 134, 1, 9.2),
(105, 134, 1, 9.2),
(106, 137, 1, 10.4),
(107, 138, 1, 12.8),
(108, 139, 1, 17.2),
(109, 142, 1, 17.6),
(110, 145, 1, 17.6),
(111, 146, 1, 26),
(112, 147, 1, 21.2),
(113, 148, 1, 16),
(114, 149, 1, 24),
(115, 150, 1, 14.8),
(116, 152, 1, 15.2),
(117, 153, 1, 12.4),
(118, 154, 1, 16),
(119, 155, 1, 24.8),
(120, 154, 1, 18.8),
(121, 156, 1, 28),
(122, 161, 1, 13.2),
(123, 163, 1, 19.6),
(124, 164, 1, 15.6),
(125, 165, 1, 10),
(126, 167, 1, 22.4),
(127, 169, 1, 11.6),
(128, 170, 1, 14.8),
(129, 171, 1, 12.8),
(130, 172, 1, 22),
(131, 174, 1, 15.6),
(132, 175, 1, 11.6),
(133, 176, 1, 14),
(134, 177, 1, 20),
(135, 179, 1, 16.8),
(136, 180, 2, 19.2),
(137, 181, 1, 21.6),
(138, 182, 1, 13.6),
(139, 183, 1, 12.8),
(140, 184, 1, 11.6),
(141, 190, 1, 11.6),
(142, 191, 1, 12),
(143, 193, 1, 19.6),
(144, 194, 1, 17.2),
(145, 194, 1, 19.2),
(146, 198, 1, 15.6),
(147, 198, 1, 17.6),
(148, 198, 1, 17.6),
(149, 202, 1, 5.6),
(150, 204, 1, 8),
(151, 205, 1, 18.4),
(152, 206, 1, 17.6),
(153, 207, 1, 12.8),
(154, 208, 1, 13.6),
(155, 207, 1, 12.8),
(156, 207, 1, 12.8),
(157, 207, 1, 12.8),
(158, 209, 1, 8.8),
(159, 211, 1, 26),
(160, 210, 1, 12.8),
(161, 210, 1, 30),
(162, 212, 1, 6.8),
(163, 215, 1, 21.2),
(164, 216, 1, 13.6),
(165, 218, 1, 15.2),
(166, 219, 1, 13.6),
(167, 220, 1, 16.4),
(168, 221, 1, 15.2),
(169, 222, 1, 20),
(170, 223, 1, 21.2),
(171, 224, 1, 11.6),
(172, 225, 1, 17.6),
(173, 229, 1, 18),
(174, 230, 1, 26),
(175, 233, 1, 24),
(176, 234, 1, 18.8),
(177, 235, 1, 15.6),
(178, 235, 1, 15.6),
(179, 235, 1, 15.6),
(180, 235, 1, 15.6),
(181, 235, 1, 15.6),
(182, 236, 1, 13.6),
(183, 237, 1, 9.2),
(184, 238, 1, 18.8),
(185, 241, 1, 23.6),
(186, 242, 1, 21.6),
(187, 242, 1, 21.6),
(188, 244, 1, 19.6),
(189, 245, 1, 10.8),
(190, 246, 1, 22),
(191, 246, 1, 22),
(192, 249, 1, 22),
(193, 251, 1, 10.8),
(194, 253, 1, 22.8),
(195, 254, 1, 30),
(196, 255, 1, 8),
(197, 255, 1, 8),
(198, 255, 1, 8),
(199, 255, 1, 8),
(200, 255, 1, 8),
(201, 255, 1, 8),
(202, 255, 1, 8),
(203, 257, 1, 14.4),
(204, 258, 1, 15.6),
(205, 259, 1, 12.8),
(206, 262, 1, 24),
(207, 263, 1, 18),
(208, 266, 1, 13.2),
(209, 267, 1, 21.6),
(210, 268, 1, 6.4),
(211, 269, 1, 17.6),
(212, 269, 1, 17.6),
(213, 274, 1, 11.6),
(214, 276, 1, 14.4),
(215, 277, 1, 19.6),
(216, 278, 1, 17.6),
(217, 281, 1, 14),
(218, 282, 1, 14),
(219, 282, 1, 14),
(220, 284, 1, 12.4),
(221, 285, 1, 16.4),
(222, 286, 1, 15.6),
(223, 287, 1, 13.6),
(224, 288, 1, 17.6),
(225, 289, 1, 15.6),
(226, 290, 2, 6.8),
(227, 295, 1, 12.8),
(228, 298, 1, 14),
(229, 300, 1, 14),
(230, 304, 1, 16),
(231, 313, 1, 19.6),
(232, 314, 1, 13.2),
(233, 317, 1, 15.6),
(234, 318, 1, 18),
(235, 319, 1, 11.6),
(236, 320, 1, 24),
(237, 321, 1, 19.2),
(238, 322, 1, 10.8),
(239, 323, 1, 22),
(240, 325, 1, 14.4),
(241, 325, 1, 14.4),
(242, 326, 1, 15.6),
(243, 328, 1, 12.8),
(244, 327, 1, 17.6),
(245, 332, 1, 13.6),
(246, 333, 1, 22),
(247, 336, 1, 19.2),
(248, 337, 1, 20),
(249, 342, 1, 30),
(250, 342, 1, 30),
(251, 343, 1, 8.4),
(252, 345, 1, 8.8),
(253, 347, 1, 17.6),
(254, 348, 1, 23.6),
(255, 351, 1, 21.6),
(256, 354, 1, 8.8),
(257, 355, 2, 6.8),
(258, 353, 1, 13.2),
(259, 354, 1, 10.8),
(260, 356, 1, 16),
(261, 357, 1, 20),
(262, 359, 1, 12),
(263, 361, 1, 10.8),
(264, 362, 1, 16),
(265, 362, 1, 16),
(266, 363, 1, 23.6),
(267, 366, 1, 14.8),
(268, 368, 1, 18),
(269, 369, 1, 14.8),
(270, 370, 1, 10.8),
(271, 372, 2, 13.2),
(272, 373, 1, 20.8),
(273, 376, 1, 22),
(274, 377, 1, 17.6),
(275, 378, 1, 16.8),
(276, 380, 1, 8.8),
(277, 381, 1, 13.6),
(278, 384, 1, 23.6),
(279, 385, 1, 27.2),
(280, 386, 1, 13.6),
(281, 390, 3, 30),
(282, 391, 3, 14.8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `id` int(11) NOT NULL,
  `descripcion` longtext NOT NULL,
  `correcta` int(11) NOT NULL,
  `id_pregunta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `respuesta`
--

INSERT INTO `respuesta` (`id`, `descripcion`, `correcta`, `id_pregunta`) VALUES
(1, 'This is a blue jacket', 1, 1),
(2, 'This is a jacket blue', 0, 1),
(3, 'These are blue jacket', 0, 1),
(4, 'Today\'s sunny ', 0, 2),
(5, 'Today\'s foggy', 1, 2),
(6, 'Today\'s windy', 0, 2),
(7, 'I don\'t never go to the movies', 0, 3),
(8, 'I usually go to the movies on the weekend', 1, 3),
(9, 'I go sometimes to the movies.', 0, 3),
(10, 'My cousin', 0, 4),
(11, 'My aunt', 0, 4),
(12, 'My niece', 1, 4),
(13, 'I did born in Colombia', 0, 5),
(14, 'I was born in Colombia', 1, 5),
(15, 'I borned in Colombia', 0, 5),
(16, 'I don\'t like it. It is the worse restaurant I\'ve ever been to', 0, 6),
(17, 'I don’t like it. It is the worst restaurant I\'ve ever been to', 1, 6),
(18, 'I don\'t like it. It is the badder restaurant I\'ve ever been to', 0, 6),
(19, 'Yes. I think he doesn´t teach as good as our previous teacher', 1, 7),
(20, 'Yes. I think he doesn´t teach as better as our previous teacher.', 0, 7),
(21, 'Yes. I think he doesn´t teach as gooder as our previous teacher.', 0, 7),
(22, 'If I were an animal, I will be a lion', 0, 8),
(23, 'I would be a lion if I were an animal', 1, 8),
(24, 'I would have been a lion if I were an animal', 0, 8),
(25, 'The movie is being film next week', 0, 9),
(26, 'The movie will be filmed next week.', 1, 9),
(27, 'The movie was being filmed next week.', 0, 9),
(28, '1. \" the\"', 1, 10),
(29, '1. \"a\"', 0, 10),
(30, '1. \"-\"', 0, 10),
(31, '2. \"where\"', 0, 11),
(32, '2. \"which\"', 0, 11),
(33, '2. \"when\"', 1, 11),
(34, '3. \" the\"', 0, 12),
(35, '3. \"a\"', 1, 12),
(36, '3. \"-\"', 0, 12),
(37, '4. \"which\"', 1, 13),
(38, '4. \"with\"', 0, 13),
(39, '4.\" what \"', 0, 13),
(40, '5. \" the\"', 0, 14),
(41, '5. \"a\"', 0, 14),
(42, '5. \"-\"', 1, 14),
(43, 'She must be stuck in a traffic jam', 1, 15),
(44, 'She should be stuck in a traffic jam', 0, 15),
(45, 'She should be stuck in a traffic jam', 0, 15),
(46, ' Yes. I know him but, I don´t get with him along', 0, 16),
(47, 'Yes. I know him but, I don´t get him along with.', 0, 16),
(48, 'Yes. I know him but, I don´t get along with him', 1, 16),
(49, 'The most important thing for me is to spend time with my family', 0, 17),
(50, 'The most important thing for me is spending time with my family', 1, 17),
(51, 'The most important thing for me is spent time with my family.', 0, 17),
(52, 'Well I heard that my favorite pop star is thought to have had another breakdown. ', 1, 18),
(53, 'Well I heard that my favorite pop star is think to have had another breakdown', 0, 18),
(54, 'Well I heard that my favorite pop star is thought to had had another breakdown', 0, 18),
(55, 'I am used to getting up early on the weekend.', 1, 19),
(56, 'I used to getting up early on the weekend. ', 0, 19),
(57, 'I am use to get up early on the weekend. ', 0, 19),
(58, 'C\'est une veste bleue', 1, 20),
(59, 'C\'est un blue vest', 0, 20),
(60, 'Il est du veste bleue', 0, 20),
(61, 'Il fait beau', 0, 21),
(62, 'Il fait froid', 1, 21),
(63, 'Il est bon', 0, 21),
(64, 'Je ne vais au cinéma.', 0, 22),
(65, 'Je ne vais pas au cinéma.', 1, 22),
(66, 'Je souvent vais au cinéma.', 0, 22),
(67, 'Ma cousine', 0, 23),
(68, 'Ma tante', 0, 23),
(69, 'Ma nièce', 1, 23),
(70, 'Je viens de Colombie.', 0, 24),
(71, ' Je viens de la Colombie.', 1, 24),
(72, 'Je viens de en Colombie.', 0, 24),
(73, 'Je ne l\'aime. Il est le mauvais restaurant que j\'ai jamais allé', 0, 25),
(74, 'Je ne l\'aime pas. C\'est le pire restaurant où je suis jamais allé. ', 1, 25),
(75, 'Je ne le aime pas. C\'est le pire restaurant où j\'ai jamais allé.', 0, 25),
(76, 'Oui. Je crois qu\'il enseigne mieux que l\'ancien professeur.', 1, 26),
(77, 'Oui. Je crois qu\'il enseigne meilleur que l\'ancien professeur. ', 0, 26),
(78, 'Oui. Je crois qu\'il enseigne mieux que le professeur antérieur', 0, 26),
(79, 'Si j\'été un animal, je serai un lion.', 0, 27),
(80, 'Si j\'étais un animal, je serais un lion.', 1, 27),
(81, 'Si je suis un animal, je serais un lion. ', 0, 27),
(82, 'Il adore beaucoup les films.', 0, 28),
(83, 'Il a fait plus de 80 films.', 1, 28),
(84, 'Il a fait des films depuis son enfance. ', 0, 28),
(85, '1. \"le\"', 1, 29),
(86, '1. \"au\"', 0, 29),
(87, '1. \"l\'\"', 0, 29),
(88, '2. \"où\"', 0, 30),
(89, '2. \"que\"', 0, 30),
(90, '2. \"quand\"', 1, 30),
(91, '3. \"une\"', 0, 31),
(92, '3. \"un\"', 1, 31),
(93, '3. \"le\"', 0, 31),
(94, '4. \"qui\"', 1, 32),
(95, '4. \"que\"', 0, 32),
(96, '4. \"dont\"', 0, 32),
(97, '5. \"le\"', 0, 33),
(98, '5. \"une\"', 0, 33),
(99, '5. \"la\"', 1, 33),
(100, 'Il faut qu\'on parte.', 1, 34),
(101, 'Il falloir qu\'on pars.', 0, 34),
(102, 'Il faut qu\'on part.', 0, 34),
(103, 'Oui, je le connais mais je ne lui aime bien.', 0, 35),
(104, 'Oui, je le connais mais je ne lui aime pas bien. ', 0, 35),
(105, 'Oui, je le connais mais je ne l\'aime pas bien.', 1, 35),
(106, 'Non, je n\'en vais pas souvent .', 0, 36),
(107, 'Non, je n\'y vais pas souvent. ', 1, 36),
(108, 'Non, je ne vais y pas souvent.', 0, 36),
(109, 'Il m\'a dit que le projet allait bien et qu\'il commencerait l\'année prochaine. ', 1, 37),
(110, 'Il me a dit que le projet va bien et qu\'il commencerait l\'année prochaine . ', 0, 37),
(111, 'Il me dit que le projet allé bien et qu’il commencera l\'année prochaine. ', 0, 37),
(112, 'Je ne vais pas voyager parce que je dois ranger quelques documents à la maison .', 1, 38),
(113, 'Je vais à voyager à la plage avec mes amis et ma copine. ', 0, 38),
(114, 'Je ne vais pas voyager mais je vais à dormir beaucoup parce que je suis fatigué. ', 0, 38),
(115, 'Questa è una giacca blu. ', 1, 39),
(116, 'Questo è un giacca blu', 0, 39),
(117, 'Queste sono delle giacche blu.', 0, 39),
(118, 'Oggi fa caldo', 0, 40),
(119, 'Oggi c’è la nebbia', 1, 40),
(120, 'Oggi fa nebbia ', 0, 40),
(121, 'Non vado al cinema mai.', 0, 41),
(122, 'Non vado mai al cinema.', 1, 41),
(123, 'Non mai vado al cinema.', 0, 41),
(124, 'Mia cugina', 0, 42),
(125, 'Mia zia', 0, 42),
(126, 'Mia nipote', 1, 42),
(127, 'Vengo a Colombia', 0, 43),
(128, 'Vengo dalla Colombia.', 1, 43),
(129, 'Vengo in Colombia.', 0, 43),
(130, 'Non mi piace. É il peggiore ristorante in cui sono stato.', 0, 44),
(131, 'Non mi piace. É il peggior ristorante in cui sono stato. ', 1, 44),
(132, 'Non mi piace. Non è il peggior ristorante in cui sono stato', 0, 44),
(133, 'Sì. Credo che lui non insegni così bene come l\'altro professore.\r\n', 1, 45),
(134, 'Sì. Credo che lui non insegna così bene come l\'altro professore.\r\n', 0, 45),
(135, 'Sì. Credo che lui non insegni bene tanto l\'altro professore\r\n', 0, 45),
(136, 'Se faccio un animale, sono un leone.\r\n', 0, 46),
(137, 'Se fossi un animale, sarei un leone.', 1, 46),
(138, 'Se faccio un animale, sarei un leone.\r\n', 0, 46),
(139, 'Il film è filmato la prossima settimana.\r\n', 0, 47),
(140, 'Il film sarà filmato la prossima settimana.\r\n', 1, 47),
(141, 'Il film è filmata la prossima settimana.\r\n', 0, 47),
(142, '1. lo', 1, 48),
(143, '1. il\r\n', 0, 48),
(144, '1. la\r\n', 0, 48),
(145, '2. la', 0, 49),
(146, '2. lo\r\n', 0, 49),
(147, '2. il\r\n', 1, 49),
(148, '3. lo\r\n', 0, 50),
(149, '3. l’\r\n', 1, 50),
(150, '3. il ', 0, 50),
(151, '4. dalla\r\n', 1, 51),
(152, '4. del\r\n', 0, 51),
(153, '4. de la\r\n', 0, 51),
(154, '1. li\r\n', 0, 52),
(155, '5. gli\r\n', 0, 52),
(156, '5. i \r\n', 1, 52),
(157, 'Deve essere bloccata in un ingorgo.\r\n', 0, 53),
(158, 'Dovrebbe essere bloccata in un ingorgo.\r\n', 0, 53),
(159, 'Dovrà essere bloccata in un ingorgo.\r\n', 1, 53),
(160, 'SÌ. Li conosco.\r\n', 0, 54),
(161, 'SÌ. Gli conosco. \r\n', 0, 54),
(162, 'SÌ. Lo conosco. \r\n', 1, 54),
(163, 'Lavoro in questo ufficio per tre anni\r\n', 0, 55),
(164, 'Lavoro in questo ufficio di tre anni\r\n', 0, 55),
(165, 'Lavoro in questo ufficio da tre anni\r\n', 1, 55),
(166, 'Pochi giorni fa Davide ha ritornato a casa sua.\r\n', 0, 56),
(167, 'Pochi giorni fa Davide è ritornato a casa sua', 1, 56),
(168, 'Pochi giorni fa Davide  ritornato a casa sua\r\n', 0, 56),
(169, 'Spero che questo negozio apra domenica.\r\n', 1, 57),
(170, 'Spero che questo negozio apri domenica.\r\n', 0, 57),
(171, 'Spero che questo negozio apre domenica.\r\n', 0, 57);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado`
--

CREATE TABLE `resultado` (
  `id` int(9) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `rango` int(9) NOT NULL,
  `categoria` int(9) NOT NULL,
  `ruta` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `resultado`
--

INSERT INTO `resultado` (`id`, `descripcion`, `rango`, `categoria`, `ruta`) VALUES
(1, '¡Sigue practicando!\r\nLa práctica hace al maestro, ¡mejora tus habilidades cantando New York, New York de Frank Sinatra!', 10, 1, 'frank.gif'),
(2, '¡No estás mal, pero tampoco estás bien!\n\nCon este nivel de inglés puedes comprar entradas a cine en New York, pero no te garantizamos que entiendas toda la película.', 19, 1, 'chris.gif'),
(3, '¡Wow, vas por buen camino!\n\nYa puedes visitar los parques de  Disney y mantener una conversación con Katy Perry.', 25, 1, 'katy.gif'),
(4, 'You are a mature tree: Your flowers have bloomed, keep on working to get\r\nsome fruits soon.', 30, 1, 'katysmile.gif'),
(5, '¡Wow, vas por buen camino!\n\n¡No te desanimes!\n\nSeguro no salió como esperabas, pero es cuestión de práctica y de estudiar más, petite sauterelle.', 10, 2, 'pinocho.gif'),
(6, '¡Vas por buen camino, pero te falta un poco más!\n\nEsfuérzate un poco más para visitar París en tus próximas vacaciones con confianza.', 19, 2, 'rata.gif'),
(7, 'Fantastique!\n\nPodrías mantener una conversación con Kylian Mbappé. ¡Continúa practicando tu francés!', 25, 2, 'mbappe.gif'),
(10, 'Tu est un arbre mûr: Tes boutons ont fleuri, continue à travailler pour avoir\r\ndes fruits bientôt.', 30, 2, 'katysmile.gif'),
(11, 'Sei un seme: hai bisogno di più acqua per germogliare.', 10, 3, 'italiano.gif'),
(12, 'Sei un germoglio: hai iniziato il tuo processo di crescita, ma hai bisogno di prendere il sole più spesso.\n', 19, 3, 'italiano.gif'),
(13, 'Sei un albero giovane: i tuoi rami hanno iniziato a crescere, ora hai bisogno di fertilizzante per diventare più forte.', 25, 3, 'medrano.gif'),
(14, 'Sei un albero maturo: i tuoi fiori sono sbocciati, continua a lavorare per ottenere presto dei frutti.', 30, 3, 'totti.gif');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(140) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `apellido` varchar(140) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(140) NOT NULL,
  `celular` varchar(11) NOT NULL,
  `idioma` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `email`, `celular`, `idioma`, `created_at`) VALUES
(65, 'JosÃƒÂ© ', 'HernÃƒÂ¡ndez ', 'joseandresxd17@gmail.com', '3214767375', 0, '2023-08-08 17:02:09'),
(66, 'jairo emir', 'acencio camacho', 'jeascencio@yahoo.com', '3163388646', 0, '2023-08-08 17:07:16'),
(67, 'Nicole', 'Laso', 'nack.26abg17@gmail.com', '318 3417088', 0, '2023-08-08 17:38:49'),
(68, 'Nicole', 'Albornoz', 'Malejiitam_1997_@hotmail.com', '318 3417088', 0, '2023-08-08 17:46:47'),
(69, 'Daniela', 'Bonilla Valbuena', 'danielabv06@hotmail.com', '3138271459', 0, '2023-08-08 18:31:57'),
(70, 'paola', 'ramirez', 'pp2perla@hotmail.com', '3103356629', 0, '2023-08-09 12:22:38'),
(71, 'ewf', 'wf', 'werf@gmail.com', '312456789', 0, '2023-08-09 12:51:19'),
(72, 'luisa', 'pulido', 'lpulido399@gmail.com', '3134697090', 0, '2023-08-09 12:52:52'),
(73, 'Jenny Marcela', 'Sanchez Junca', 'marcejunca@gmail.com', '3114889973', 0, '2023-08-09 12:53:01'),
(74, 'Paula Daniela', 'Diaz Martinez', 'pdanieladiaz10@gmail.com', '3185498640', 0, '2023-08-09 12:53:01'),
(75, 'antony', 'espinosa', 'pp2perla@hotmail.com', '3103356629', 0, '2023-08-09 13:23:22'),
(76, 'Mauricio ', 'SuÃ¡rez ', 'mauriciosuarezrua@gmail.com', '+57 3005115', 0, '2023-08-09 14:39:28'),
(77, 'Katalina ', 'Molano ', 'katamolu@gmail.com', '3132432661', 0, '2023-08-09 15:44:18'),
(78, 'Guztav', 'Amc', 'gust5991@hotmail.com', '31346156777', 0, '2023-08-09 17:07:36'),
(79, 'Jose ', 'Hurtado', 'alexhurt1003@gmail.com', '3225892514', 0, '2023-08-09 18:48:27'),
(80, 'Karina', 'Bohorquez Ortiz', 'karinabohorquez27@gmail.com', '3138502143', 0, '2023-08-09 18:54:50'),
(81, 'Jovanni Andres', 'Rueda', 'jovanniflorez0512@gmail.com', '3207254175', 0, '2023-08-09 19:34:37'),
(82, 'Deisy', 'Florez', 'deisyflorezcrespo@gmail.com', '30002542265', 0, '2023-08-09 20:10:43'),
(83, 'Karen', 'Ramos', 'karendayanar000@gmail.com', '3134503948', 0, '2023-08-09 21:36:59'),
(84, 'Karen', 'Chamorro', 'chamorrok40@gmail.com', '3227704341', 0, '2023-08-09 22:15:31'),
(85, 'Rose', 'Uvu', 'valela.pro12@gmail.com', '3223249189', 0, '2023-08-09 23:47:32'),
(86, 'Rose', 'Uvu', 'valela.pro12@gmail.com', '3223249189', 0, '2023-08-09 23:52:23'),
(87, 'Juan NicolÃ¡s ', 'Romero EstupiÃ±an', 'juannikor@hotmail.com', '3003719146', 0, '2023-08-10 06:19:51'),
(88, 'kev', 'ineke', 'kevinlelwury@gmsil.ckdndifbf', '320472847', 0, '2023-08-10 07:49:26'),
(89, 'Andrea ', 'Quitian ', 'andrequitian2814@gmail.com', '3058805931', 0, '2023-08-10 13:25:13'),
(90, 'Ana', 'GutiÃ©rrez ', 'anagutierrez1807@hmail.com', '3182731316', 0, '2023-08-10 14:32:36'),
(91, 'Laura ', 'RincÃ³n ', 'rinconlauratatiana@gmail.com', '3227001506', 0, '2023-08-10 17:07:49'),
(92, 'Julian ', 'MÃ©ndez ', 'Julianmendez1010@hotmail.com ', '310 2209836', 0, '2023-08-10 18:31:29'),
(93, 'Isabella ', 'Perez ', 'ctro6549@gmail.com', '3209648768', 0, '2023-08-10 18:48:40'),
(94, 'Isabella ', 'PÃ©rez ', 'ctro6549@gmail.com', '3209648768', 0, '2023-08-10 18:51:33'),
(95, 'Oscar ', 'Penagos', 'Oscartkw9942@gmail.com', '3108817190', 0, '2023-08-10 19:31:43'),
(96, 'saray alexandra', 'muÃ±oz gonzalez', 'Saramung1114200@gmail.com', '3197633198', 0, '2023-08-10 19:52:56'),
(97, 'Juan', 'Villamil ', 'juanchouchija18@gmail.com', '3118031786', 0, '2023-08-10 20:27:17'),
(98, 'Paula', 'Lucas', 'lucaspaula695@gmail.com', '3156361518', 0, '2023-08-10 21:10:11'),
(99, 'jhhb', 'k', 'kj', '897000u8', 0, '2023-08-10 23:27:45'),
(100, 'Lorena ', 'SuÃ¡rez ', 'lorenasuarez08345@gmail.com', '3017979015', 0, '2023-08-10 23:36:12'),
(101, 'paula', 'ramirez', 'Haerthxs.1@gmail.com', '3103212534', 0, '2023-08-10 23:36:14'),
(102, 'Evelyn Yerardin ', 'GÃ³mez PÃ©rez ', 'Gerardineperez1507@gmail.com', '3233154600', 0, '2023-08-11 00:04:01'),
(103, 'Nicolle ', 'Prada ', 'nikolprada3105@gmail.com', '3204452687', 0, '2023-08-11 00:13:09'),
(104, 'Laura', 'GarcÃ­a', 'lauragar478@gmail.com', '3114854853', 0, '2023-08-11 06:40:53'),
(105, 'Karen ', 'Otero ', 'karen1606otero@gmail.com', '3225249467', 0, '2023-08-11 11:05:20'),
(106, 'Miguel Angel ', 'Rozo Rico', 'Miguelangelrozorico@gmail.com', '3195770607', 0, '2023-08-11 12:47:23'),
(107, 'Yeimi', 'Parra', 'parravelayeimi@gmail.com', '3205816851', 0, '2023-08-11 13:03:12'),
(108, 'MarÃ­a ', 'Kerguelen ', 'Kerguelengalvanmariaisabel@gmail.com', '3006990757', 0, '2023-08-11 15:27:06'),
(109, 'Maicol ', 'Parra', 'mai20060405@gmail.com', '3113017069', 0, '2023-08-11 16:10:25'),
(110, 'Nikoll ', 'Payares', 'nikollpayares@gmail.com', '3226941049', 0, '2023-08-11 17:02:44'),
(111, 'John Alexander', 'Urrego', 'alex.urrego11@gmail.com', '3203303682', 0, '2023-08-11 18:26:47'),
(112, 'Camila', 'Gomez', 'govacam@gmail.com', '3013320676', 0, '2023-08-11 19:36:53'),
(113, 'Jeniffer ', 'GarcÃ­a ', 'Jeniffer1998daza@gmail.com', '3219144999', 0, '2023-08-11 19:55:31'),
(114, 'Juan', 'Sanchez ', 'juandis.pt55@gmail.com', '3138916559', 0, '2023-08-11 20:01:22'),
(115, 'Henry ', 'FernÃ¡ndez ', 'dianafanber@gmail.com', '3209885097', 0, '2023-08-11 20:05:22'),
(116, 'Daniel Stiven ', 'Arboleda Chaparro ', 'Arboledachaparro12@gmail.com', '3137693991', 0, '2023-08-11 20:25:18'),
(117, 'Jhoana ', 'Rodriguez ', 'rjhoana819@gmail.com', '3142551976', 0, '2023-08-11 23:10:14'),
(118, 'Jhoana ', 'Rodriguez ', 'rjhoana819@gmail.com', '3142551976', 0, '2023-08-11 23:10:15'),
(119, 'Maria ', 'JimÃ©nez ', 'lisneyjimenez2013@gmail.com', '3243031847', 0, '2023-08-11 23:27:44'),
(120, 'Danny', 'MuÃ±oz', 'dannyymuupe@gmail.com', '3116413759', 0, '2023-08-12 01:32:51'),
(121, 'majo', 'villamil', 'dannyymuupe@gmail.com', '3116413759', 0, '2023-08-12 01:37:14'),
(122, 'Ana', 'Sierra Torres', 'anacarolina1493@gmail.com', '3006158446', 0, '2023-08-12 02:44:56'),
(123, 'Silvia alexandra ', 'Vesga corzo', 'SÃ±', '3115755337', 0, '2023-08-12 03:13:07'),
(124, 'Michel ', 'Vesga ', 'Michellerodriguez2801@gmail.com', '3113916718', 0, '2023-08-12 03:18:15'),
(125, 'Silvia alexandra ', 'Vesga corzo', 'S', '3115755337', 0, '2023-08-12 03:21:38'),
(126, 'Michel', 'Vesga', 'Michellerodriguez2891@gmail.com', '3113916718', 0, '2023-08-12 03:26:40'),
(127, 'Michel', 'Vesga', 'Michellerodriguez2891@gmail.com', '3113916718', 0, '2023-08-12 03:26:40'),
(128, 'Estefania', 'OmaÃ±a', 'Oteffanii@gmail.com', '3014738520 ', 0, '2023-08-12 03:43:23'),
(129, 'Yordin ', 'Jimenez', '1yordin1al@gmail.com', '3243860872', 0, '2023-08-12 03:48:56'),
(130, '...', '.....', 'melanyruiz713@gmail.com', '3112585880', 0, '2023-08-12 13:17:52'),
(131, 'Vilma', 'NuÃ±ez', 'vilmanunezgutierrez@gmail.com', '3222415762', 0, '2023-08-12 13:33:45'),
(132, 'Wqrs', 'Num', 'saraijujui@gmail.com', '3177421616', 0, '2023-08-12 13:37:08'),
(133, 'jessica liliana', 'gomez castro', 'jgomezcastro345@gmail.com', '3226831239', 0, '2023-08-12 13:45:53'),
(134, 'Luz elena ', 'Vasco ', 'Lvasco1963@gmail.com ', '3202707128', 0, '2023-08-12 14:57:35'),
(135, 'Luz elena ', 'Vasco ', 'Lvasco1963@gmail.com ', '3202707128', 0, '2023-08-12 15:15:54'),
(136, 'Daniel ', 'Blanco', 'Danielblanco@cp.Edu.co', '3202035383', 0, '2023-08-12 15:33:22'),
(137, 'Brayan ', 'Estrada ', 'estradabryan1312@gmail.com', '3142450961', 0, '2023-08-12 15:39:13'),
(138, 'Sergio ', 'Cano ', 'sc130435@gmail.com', '3134282977', 0, '2023-08-12 17:25:28'),
(139, 'gabriela ', 'corredor', 'gabrielacorredor23@gmail.com', '3124181562', 0, '2023-08-12 17:38:05'),
(140, 'Paula stefhania ', 'castro sabio ', 'paulitacastrico16@gmail.com', '3202150305', 0, '2023-08-12 18:21:31'),
(141, 'Miguel', 'carranza', 'yakvzaa2@gmail.com', '3022542586', 0, '2023-08-12 18:44:02'),
(142, 'Sofi', 'Perez', 'perezsofia2525@gmail.com', '3102423814', 0, '2023-08-12 19:06:15'),
(143, 'Luisa', 'Ortiz', 'ferchaortiz03@icloud.com', '3116952202', 0, '2023-08-12 19:32:06'),
(144, 'Ana MarÃ­a ', 'Florez Barbosa ', 'Anamaria126019.a@gmail.com', '3208447906', 0, '2023-08-12 19:42:46'),
(145, 'Diana ', 'cuaspud ', 'Heidy.yuliana.chitan@gmail.com ', '3185731103 ', 0, '2023-08-12 20:12:23'),
(146, 'Willy ', 'Rodriguez ', 'mandril22@gmail.com', '3146236752', 0, '2023-08-12 20:54:09'),
(147, 'Carolina ', 'GonzÃ¡lez ', 'dianacarolinagonzalez28101@gmail.com', '3112416715', 0, '2023-08-12 21:12:45'),
(148, 'David Leonardo', 'NiÃ±o CareÃ±o', 'davidleonic05@gmail.com', '3007008317', 0, '2023-08-12 21:21:59'),
(149, 'Mariana ', 'Forero BeltrÃ¡n', 'marianabeltran1214@gmail.com', '3245663608', 0, '2023-08-12 21:27:24'),
(150, 'Isabella ', 'VÃ¡squez ', 'isabellavasqueza15@gmail.com', '3126019514', 0, '2023-08-12 21:31:09'),
(151, 'Juan Jose', 'Torres Maldonado', 'stitch.torresmaldonado@gmail.com', '+57 313 635', 0, '2023-08-12 21:39:41'),
(152, 'Nicol ', 'Huertas', 'Nicolucas07hid@gmail.com', '3114159726', 0, '2023-08-12 22:13:00'),
(153, 'jesus David ', 'Camayo LÃ³pez ', 'jesusdavidcamayolopez@gmail.com', '3127784290', 0, '2023-08-13 00:29:36'),
(154, 'Jose', 'Aleman', 'alemanjosealejandro75@gmail.com', '3124484102', 0, '2023-08-13 05:06:03'),
(155, 'Daniel ', 'Rios', 'Villarragariosdanielsantiago@gmail.con', '3227069334', 0, '2023-08-13 05:10:26'),
(156, 'Erwin David', 'Lara Romero', 'vincholara@outlook.com', '3112547818', 0, '2023-08-13 16:58:20'),
(157, 'Yahir ', 'Padilla ', 'padillayahir78@gmail.com', '3217799991', 0, '2023-08-13 17:00:56'),
(158, 'Lisceth', 'Jaimes ', 'lisceth2002@hotmail.com', '3182398439', 0, '2023-08-13 17:21:57'),
(159, 'Laura', 'Mahecha', 'laura.11mahecha@gmail.com', '3227493421 ', 0, '2023-08-13 17:26:35'),
(160, 'Emilin Mariana ', 'Del toro palacios ', 'Emilinmarianadeltoropalacios@gmail.com ', '3042974112', 0, '2023-08-13 18:01:31'),
(161, 'Alexandra ', 'Ruiz', 'tavergara5@gmail.com', '3142348545', 0, '2023-08-13 20:55:45'),
(162, 'Alexander ', 'Zafra ', 'salexanderzafran@gmail.com', '3134402678', 0, '2023-08-13 21:04:20'),
(163, 'Jeimmy', 'Vargas', 'jeimmy258@gmail.com', '3138380952', 0, '2023-08-13 21:08:29'),
(164, 'Wilson David', 'Villanueva Arias', 'wdavidvillanueva2021@gmail.com', '3014829817', 0, '2023-08-13 21:13:01'),
(165, 'laura ', 'mendoza', 'kamipalacios13@gmail.com', '3219183445', 0, '2023-08-13 21:59:45'),
(166, 'Laura ', 'Martinez ', 'camilamartinez1613@gmail.com', '3125066876', 0, '2023-08-13 23:40:12'),
(167, 'Brigit', 'Leon', 'brgtt-bbe@hotmail.com', '3166415840', 0, '2023-08-13 23:54:00'),
(168, 'nery', 'cardenas ', 'neryc840@gmal.com', '3112715825', 0, '2023-08-14 00:35:06'),
(169, 'Juan', 'Nieto', 'delinearq@outlook.com', '3222409286', 0, '2023-08-14 01:56:30'),
(170, 'Paula', 'Benitez', 'paulala12@hotmail.com', '3124100585', 0, '2023-08-14 02:31:25'),
(171, 'Zary', 'Palacios ', 'palacioszart@gmail.com', '3233619750', 0, '2023-08-14 02:43:03'),
(172, 'Jhojan', 'Machado ', 'Dinolabra1401@gmail.com', '3013601048', 0, '2023-08-14 07:04:28'),
(173, 'Maria Fernanda', 'Marquez ', 'mmafe3067@gmail.com', '3243706974', 0, '2023-08-14 14:10:31'),
(174, 'JuliÃ¡n ', 'SÃ¡nchez ', 'julistu12@gmail.com', '3028435840', 0, '2023-08-14 14:33:03'),
(175, 'Diaz', 'Ovalle', 'carsiz@hotmail.com', '3114714272 ', 0, '2023-08-14 16:05:18'),
(176, 'Katherine ', 'Murcia', 'katherine.murcia1090@gmail.com', '3027586441', 0, '2023-08-14 19:10:14'),
(177, 'BRANDON NICOLAS', 'MUÃ‘OZ VARGAS', 'pedoda9144@viperace.com', '3224576884', 0, '2023-08-14 20:06:55'),
(178, 'MELANY', 'ALAYO', 'melanyalayon40@gmail.com', '3204050668', 0, '2023-08-14 20:15:23'),
(179, 'Cri', 'Hernan', 'cri2612@gmail.com', '3212386565', 0, '2023-08-14 20:20:50'),
(180, 'ATALÃVAR', 'SARMIENTO', 'atasaledes@gmail.com', '3103951776', 0, '2023-08-14 20:51:09'),
(181, 'MONICA', 'Sanchez reyes', 'monikasachez@misena.edu.co', '3204722950', 0, '2023-08-14 21:09:26'),
(182, 'Wilson', 'Masmela', 'masmelaw982@gmail.com', '3104114122', 0, '2023-08-14 22:04:52'),
(183, 'Anggie', 'GonzÃ¡lez ', 'tatasolerg0506@gmail.com', '3156637529', 0, '2023-08-14 22:23:50'),
(184, 'Breyner', 'Cifuentes', 'Cifubrey17@gmail.com', '3003300961', 0, '2023-08-14 23:32:39'),
(185, 'Laura', 'CastaÃ±o', 'lcastano0202@gmail.com', '3145144842', 0, '2023-08-15 00:06:50'),
(186, 'Keren ', 'GarcÃ­a ', 'Kerenkuakila1234@gmail.com ', '3158991528', 0, '2023-08-15 00:32:50'),
(187, 'Luz ', 'Fonseca', 'Fonseca_1013@hotmail.com', '3132578507', 0, '2023-08-15 00:44:13'),
(188, 'Dayana', 'Gonzalez', 'Day@gmail.com', '3028339372', 0, '2023-08-15 01:01:46'),
(189, 'Isabella ', 'Zea', 'isabellazeacarvajal@gmail.com', '3015868191', 0, '2023-08-15 01:05:38'),
(190, 'Cristian ', 'Gutierrez ', 'jcgg1810@gmail.com', '3233233828', 0, '2023-08-15 01:19:51'),
(191, 'Test Ivan', 'test', 'ivan.posada@pizarrayoro.com', '30022123685', 1, '2023-08-17 22:19:59'),
(192, 'ANGIE KATHERINE ', 'CORTES LOPEZ', 'angiecortes000@gmail.com', '3161813396', 0, '2023-08-18 04:22:46'),
(193, 'Laura ', 'PÃ¡ez ', 'laurapaezj@hotmail.com', '3223579677', 1, '2023-08-18 21:50:54'),
(194, 'Juan luis ', 'Fernandez', 'Jlfer6547@gmail.com', '3225476890', 1, '2023-08-19 04:13:13'),
(195, 'Milena ', 'Montenegro ', 'mileg.montenegro@gmail.com', '3204312386', NULL, '2023-08-19 18:31:18'),
(196, 'Sofia', 'Duarte', 'belcysofia.3@gmail.com', '3197916954', NULL, '2023-08-19 22:21:57'),
(197, 'Karen ', 'Cepeda ', 'Kajuceri01@gmail.com ', '3165458327', NULL, '2023-08-20 01:59:51'),
(198, 'Vanesa', 'Espitia', 'vanesaalumna1724@gmail.com', '3209246552', 1, '2023-08-20 02:29:38'),
(199, 'Rodrigo ', 'FernÃ¡ndez ', 'cruzfernandezrodri@gmail.com', '3233778697', NULL, '2023-08-20 12:53:27'),
(200, 'Rodrigo ', 'FernÃ¡ndez ', 'cruzfernandezrodri@gmail.com', '3233778697', NULL, '2023-08-20 12:54:15'),
(201, 'Leonel', 'Sandrea', 'leosandrea01@gmail.com', '3003150624', NULL, '2023-08-20 12:57:34'),
(202, 'Amparo ', 'Apellido', 'amparonurse@hitmail.co.uk', '3115984386', 1, '2023-08-20 13:14:17'),
(203, 'JuliÃ¡n ', 'Fajardo', 'fajardooo09@gmail.com', '3161054178', NULL, '2023-08-20 13:07:46'),
(204, 'Martha', 'Prada', 'ceci.prada1981@gmail.com', '3204209055', 1, '2023-08-20 13:23:27'),
(205, 'Liliana ', 'Molina ', 'lilianamolina1204@gmail.com', '3137518060', 1, '2023-08-20 13:55:17'),
(206, 'Diego', 'Cruz ', 'Diegocruz0411@gmail.com', '3208177870', 1, '2023-08-20 16:05:15'),
(207, 'Yully', 'Jaramillo ', 'yullyjaramillo24@gmail.com', '3128809270', 1, '2023-08-21 05:13:00'),
(208, 'Yool', 'MuÃ±oz', 'yaylinmunoz16@gmail.com', '3172547658', 1, '2023-08-21 05:14:15'),
(209, 'MarÃ­a ', 'Ballesteros ', 'mariaab6782@gmail.com', '3144462624', 1, '2023-08-21 06:16:58'),
(210, 'Sandra ', 'Moreno ', 'samarro35@hotmail.com', '3108501394 ', 1, '2023-08-21 06:39:59'),
(211, 'Steven', 'Prada', 'stick123491@hotmail.com', '3133437046', 1, '2023-08-21 06:29:44'),
(212, 'Marcela ', 'Venegas', 'marcela1_2568@hotmail.com', '3102887600', 1, '2023-08-21 10:52:13'),
(213, 'Yaz', 'Henao', 'yazminadriana2002@gmail.com', '3125341574', NULL, '2023-08-21 12:32:21'),
(214, 'Yaz', 'Henao', 'yazminadriana2002@gmail.com', '3125341574', NULL, '2023-08-21 12:33:51'),
(215, 'Yaz ', 'Henao', 'yazminadriana2002@gmail.com', '3125341574', 1, '2023-08-21 12:41:00'),
(216, 'Ana ', 'Cortes ', 'Cortesana169@gmail.com', '3045561002', 1, '2023-08-21 14:12:18'),
(217, 'Martha Cecilia ', 'Melo', 'telefonomartha3004@gmail.com', '3138795545', NULL, '2023-08-21 15:28:15'),
(218, 'Martha Cecilia ', 'Melo', 'telefonomartha3004@gmail.com', '3138795545', 1, '2023-08-21 15:51:17'),
(219, 'Yenny ', 'Arias', 'Yanny.vane@gmail.com', '3138795545', 1, '2023-08-21 16:02:20'),
(220, 'Clayton ', 'Serna', 'est.jserna178@smart.edu.co', '3164632736', 1, '2023-08-21 16:19:57'),
(221, 'alejandro', 'garcia rios', 'alejandrogarciarios61@gmail.com', '3104872683', 1, '2023-08-21 16:25:17'),
(222, 'Diana Marcela', 'RincÃ³n Rojas', '1.diana.rincon@gmail.com', '3114649351', 1, '2023-08-21 18:29:17'),
(223, 'gabo', 'sosa', 'rochydiaz02@gmail.com', '3028547822', 1, '2023-08-22 05:38:00'),
(224, 'Br', 'Ca', 'bryanmosquera049@gmail.com', '3143614728', 1, '2023-08-22 05:57:33'),
(225, 'Jehover ', 'Hernandez ', 'Jehover19@gmail.com', '3026554841', 1, '2023-08-22 06:21:00'),
(226, 'dominik ', 'pantoja ', 'dominikpantoja40@gmail.com ', '3004706746', NULL, '2023-08-22 06:53:36'),
(227, 'Lauren ', 'RodrÃ­guez ', 'lorens20721@gmail.com', '3245897576', NULL, '2023-08-22 08:57:06'),
(228, 'Jajjs', 'Uwuj', 'ironskull77@hotmail.com', '3017887765', NULL, '2023-08-22 10:09:08'),
(229, 'Valentina', 'Carrasquilla', 'valentina99giraldo18@icloud.com', '3118139746', 1, '2023-08-22 13:06:26'),
(230, 'Mariana', 'Paez', 'marypaezb7@gmail.com', '3224215455', 1, '2023-08-22 13:31:06'),
(231, 'ALISON', 'ALVARADO', 'alizhdaniela@hotmail.com', '3004637663', NULL, '2023-08-22 14:20:02'),
(232, 'Luz maira ', 'Paz jusayu ', 'Luzmairapaz1@gmail.com ', '3025779667', NULL, '2023-08-22 14:53:30'),
(233, 'MARELIS ', 'AVENDANO', 'mirave92@hotmail.com', '3232046098', 1, '2023-08-22 15:07:12'),
(234, 'Laura', 'Palmera', 'belenovanessa901@gmail.com', '3209457292', 1, '2023-08-22 15:13:55'),
(235, 'MÃ³nica Lizeth', 'Faustino Faustino', 'monicafaustino13@gmail.com', '3508557085', 1, '2023-08-22 15:41:56'),
(236, 'Luis Fernando ', 'Cruz ', 'luisfer941297@gmail.com', '3223345054', 1, '2023-08-22 16:38:26'),
(237, 'Juliana ', 'Pereira Galvis', 'lajupega.96@gmail.com', '3226809095', 1, '2023-08-22 16:46:45'),
(238, 'dalid xiomara ', 'ramos pabon', 'chomiche1988@gmail.com', '3219084561', 1, '2023-08-22 17:01:12'),
(239, 'ingrid yurany', 'garcia fiaga', 'inggarcia@uniboyaca.edu.co', '3229401736', NULL, '2023-08-22 16:53:29'),
(240, 'Juan ', 'SantamarÃ­a ', 'juanesanta28@gmail.com', '3134899733', NULL, '2023-08-22 16:59:50'),
(241, 'Andersson', 'Navarrete', 'andersson9n@gmail.com', '3012548592', 1, '2023-08-22 17:26:43'),
(242, 'SebastiÃ¡n ', 'Tarazona', 'setach96@gmail.com', '3115431036', 1, '2023-08-22 17:31:50'),
(243, 'Esteban', 'Forigua', 'Warrior684321gm', '3212303925', NULL, '2023-08-22 17:34:09'),
(244, 'sebastian', 'aponte', 'sebastianbusta4@gmail.com', '3192138514', 1, '2023-08-22 18:12:55'),
(245, 'AmÃ©rica ', 'Mateus', 'carjuma15@hotmail.com', '3209476523', 1, '2023-08-22 19:12:35'),
(246, 'Andrea', 'Cantillo', 'ca811299@gmail.com', '3045780756', 1, '2023-08-23 05:50:51'),
(247, 'Diana ', 'Cano', 'dianita_k87@hotmail.com', '3212822282', NULL, '2023-08-23 06:05:38'),
(248, 'Jairo ', 'Arias', 'jairosoydelverdeariaslopez@gmail.com', '3214712086', NULL, '2023-08-23 11:51:38'),
(249, 'Katherine', 'Ovalle', 'kovalle39@ucatolica.edu.co', '3132474552', 1, '2023-08-23 13:26:06'),
(250, 'Katherine Lizeth ', 'FarfÃ¡n BojacÃ¡ ', 'lizkati991126@gmail.com', '3012634604', NULL, '2023-08-23 13:35:20'),
(251, 'Zarit ', 'Hernandez ', 'zarithernandez69@gmail.com', '3116858362', 1, '2023-08-23 14:52:30'),
(252, 'lalo ', 'landa', 'landa@hotmail.com', '3123547485', NULL, '2023-08-23 15:10:33'),
(253, 'Natalia', 'Bernal', 'Natalia.tbernal@gmail.com', '3132193156', 1, '2023-08-23 16:22:27'),
(254, 'Santiago', 'Bravo Daza', 'santybd12@gmail.com', '3102631712', 1, '2023-08-23 17:55:27'),
(255, 'Jacke', 'Bermudez ', 'Jackebermudez8@hotmail.com ', '3143187855 ', 1, '2023-08-24 04:52:03'),
(256, 'Sani', 'Sabogal ', '@.com', '102953335', NULL, '2023-08-24 04:57:48'),
(257, 'Naddy ', 'Atehortua ', 'naddyalejandra@gmail.com', '3147036907', 1, '2023-08-24 05:14:16'),
(258, 'David Mauricio ', 'Puliche BolaÃ±os ', 'davidpuliche2008@gmail.com', '3172133878', 1, '2023-08-24 06:02:20'),
(259, 'Charli ', 'GonzÃ¡lez ', 'charlyegarciagonzalez@gmail.com', '3028332232', 1, '2023-08-24 06:26:05'),
(260, 'Laura ', 'Diaz', ' Nokis', '3226020277', NULL, '2023-08-24 06:32:37'),
(261, 'Laura ', 'Diaz', ' Nokis', '3226020277', NULL, '2023-08-24 06:32:53'),
(262, 'Santiago', 'DurÃ¡n MartÃ­nez', 'sanjake28@gmail.com', '3204361875', 1, '2023-08-24 06:58:09'),
(263, 'Marcos ', 'Gallardo', 'cvnuemo123@hide.biz.st', '324515515', 1, '2023-08-24 07:28:33'),
(264, 'Edwin ', 'Angel ', 'edwin20angel@gmail.com', '3227084919', NULL, '2023-08-24 10:17:47'),
(265, 'Myriam ', 'Yama ', 'myriamyamaro@gmail.com', '3015253154', NULL, '2023-08-24 12:37:32'),
(266, 'Juanita', 'Duran', 'Juanitaduranluna3@gmail.com', '3116514951', 1, '2023-08-24 13:07:52'),
(267, 'Diana Carolina ', 'Montanari De La Rosa', 'carolinamontanari90@gmail.com', '3125776690', 1, '2023-08-24 13:10:28'),
(268, 'JosÃ© AgustÃ­n', 'Sarmiento Martinez ', 'pijorasar@gmail.com ', '3013623890', 1, '2023-08-24 13:55:16'),
(269, 'Dayana', 'Herrera', 'Dayanandrea.herrera@gmail.com', '3134794039', 1, '2023-08-24 14:21:10'),
(270, 'Thomas ', 'GutiÃ©rrez ', 'thomassgutierrez@gmail.com', 'thomas12141', NULL, '2023-08-24 14:14:37'),
(271, 'JosÃ© AgustÃ­n', 'Sarmiento Martinez ', 'pijorasar@gmail.com ', '3013623890', NULL, '2023-08-24 14:26:12'),
(272, 'JosÃ© AgustÃ­n', 'Sarmiento Martinez ', 'pijorasar@gmail.com ', '3013623890', NULL, '2023-08-24 14:26:26'),
(273, 'JosÃ© AgustÃ­n', 'Sarmiento Martinez ', 'pijorasar@gmail.com ', '3013623890', NULL, '2023-08-24 14:26:54'),
(274, 'Karen Alejandra', 'Cruz AlemÃ¡n', 'alejacruz0808@gmail.com', '3214995897', 1, '2023-08-24 14:46:04'),
(275, 'Fernando ', 'Churque ', 'fernandochurque@hotmail.com', '3134984630', NULL, '2023-08-24 14:52:05'),
(276, 'Daniel ', 'Arias orozco ', 'dabearor742@gmail.con ', '3115175558', 1, '2023-08-24 15:06:31'),
(277, 'angie paola', 'tocanchon', 'paotokn@gmail.com', '3227362962', 1, '2023-08-24 15:33:07'),
(278, 'Richard', 'Pimienta', 'peppercomputo@gmail.com', '3143753185', 1, '2023-08-24 15:33:17'),
(279, 'Yisell Juliana ', 'MartÃ­nez castiblanco ', 'yisellcastiblanco87@gmail.com', '3203484015', NULL, '2023-08-24 15:44:54'),
(280, 'Valeria', 'Lozada', 'lozavaleria404@gmail.com', '04247001468', NULL, '2023-08-24 16:05:27'),
(281, 'Marlom ', 'Molina ', 'mortufer@hotmail.com', '3143444983', 1, '2023-08-24 16:36:25'),
(282, 'Kevin', 'Becerra', 'kevin18296@gmail.com', '3132756954', 1, '2023-08-24 16:41:18'),
(283, 'Michel', 'montaÃ±o', 'Email', '3012199866', NULL, '2023-08-24 16:56:05'),
(284, 'Yessica ', 'Aya', 'ayacalderonyessicalorena@gmail.com', '3143138190', 1, '2023-08-24 17:31:11'),
(285, 'carolina', 'LÃ³pez castaÃ±eda', 'lopez.caro@gmail.com', '3175006678', 1, '2023-08-24 17:43:46'),
(286, 'Mateo ', 'Vargas ', 'mateovargaskate7@gmail.com', '3008314566', 1, '2023-08-24 18:10:08'),
(287, 'Amelia', 'PatrÃ³n', 'ameliapatron51@gmail.com', '3013376092', 1, '2023-08-24 18:18:39'),
(288, 'Amelia', 'PatrÃ³n', 'ameliapatron51@gmail.com', '3013376092', 1, '2023-08-24 18:22:55'),
(289, 'Karen Zamora', 'zamora', 'milkaruma03@gmail.com', '3224049025', 1, '2023-08-24 18:34:09'),
(290, 'Duberlis farides', 'Mendible QuiÃ±ones ', 'marip2348@gmil.com', '3118889188', 2, '2023-08-24 20:37:32'),
(291, 'Darwin Alexis', 'Sandoval GuzmÃ¡n', 'i j k r c o p q r s t', '3 11 424 30', NULL, '2023-08-24 21:11:42'),
(292, 'Darwin Alexis', 'Sandoval GuzmÃ¡n', 'i j k r c o p q r s t', '3 11 424 30', NULL, '2023-08-24 21:12:00'),
(293, 'Miguel ', 'Gracias ', 'geremiascaicedo1@gmail.com', 'Miguel ', NULL, '2023-08-24 22:16:50'),
(294, 'Katherine paola', 'MÃ¡rquez Prieto ', 'paolamarquez2123@gmail.com', '3244710813', NULL, '2023-08-24 23:29:22'),
(295, 'Carlos ', 'Alberto ', 'Carlosalberto@hotmail.com', '3164602017', 1, '2023-08-25 00:03:05'),
(296, 'Moises ', 'Pimentel ', 'Moisopinar84@Outlook.com', '3134524602', NULL, '2023-08-25 00:25:46'),
(297, 'Isabela ', 'JimÃ©nez ', 'isatecnologia.informatica.oua@gmail.com', '3042745068', NULL, '2023-08-25 06:07:47'),
(298, 'Avilez ', 'Quintero', 'Aurysvi@fullxno.com', '3105817146', 1, '2023-08-25 06:34:14'),
(299, 'Samuel', 'Narvaez', 'samuel241207bae@gmail.com', '965364444', NULL, '2023-08-25 06:44:44'),
(300, 'ramiro', 'alvarez', 'alvarezramiro200@gmaiul.vovm', '3212563254', 1, '2023-08-25 07:54:48'),
(301, 'JosÃ© FabiÃ¡n', 'GonzÃ¡lez AcuÃ±a ', 'josefabian885@gmail.com', '320914052', NULL, '2023-08-25 08:43:53'),
(302, 'Ana ', 'Chacon ', 'chirleychacon9@gmail.com ', '3044881918', NULL, '2023-08-25 09:17:31'),
(303, 'Andres ', 'Vergara ', 'an.escobar1023@gmail.com', '3208790615', NULL, '2023-08-25 10:08:24'),
(304, 'Roque julio ', 'Guevara ', 'julio1529camacho@gmail.com', '3214445688', 1, '2023-08-25 10:39:11'),
(305, 'Gil', 'Delacruz ', 'Hombre ', '3156482236', NULL, '2023-08-25 11:06:31'),
(306, 'Alejandro', 'Parra', 'Honbre', '3103482674', NULL, '2023-08-25 12:35:48'),
(307, 'Luis ', 'Guerra ', 'miguelbarreto@gmail.com', '+57 322 919', NULL, '2023-08-25 12:36:25'),
(308, 'Idefonzo', 'Feresola', '32212046175', '3228077432', NULL, '2023-08-25 12:37:42'),
(309, 'Idefonzo', 'Feresola', '32212046175', '3228077432', NULL, '2023-08-25 12:37:53'),
(310, 'JerÃ³nimo ', 'Herrera', 'jeronimoherreraroman@gmail.com', '3122331732', NULL, '2023-08-25 12:58:47'),
(311, 'Ana lorena ', 'Carabali zuÃ±iga', 'Carabalilorena@hotmail.com', ' C', NULL, '2023-08-25 13:07:05'),
(312, 'Ana lorena ', 'Carabali zuÃ±iga', 'Carabalilorena@hotmail.com', ' 3133086575', NULL, '2023-08-25 13:08:15'),
(313, 'Ingrid Liseth ', 'Pulido GÃ³mez ', 'lisethpulido12@gmail.com ', '3168227266', 1, '2023-08-25 13:34:24'),
(314, 'Pilar', 'Melo', 'mariadelpilar.melo@cun.edu.co', '3105685175', 1, '2023-08-25 13:45:42'),
(315, 'Yovanis ', 'Galindo ', 'yovanisg45@gmail.com', '3115326294', NULL, '2023-08-25 14:44:12'),
(316, 'Yovanis ', 'Galindo ', 'yovanisg45@gmail.com', '3115326294', NULL, '2023-08-25 14:45:17'),
(317, 'Carlos', 'Peres', '1234@gmail.com', '3124567890', 1, '2023-08-25 15:43:00'),
(318, 'Milena', 'PachÃ³n ', 'milenapachon.a1001@gmail.com', '3173389641', 1, '2023-08-25 16:21:43'),
(319, 'Alisson', 'Gomez', 'agdgrafico19@gmail.com', '3123257696', 1, '2023-08-25 16:51:03'),
(320, 'Vladimir', 'Acosta Zamora', 'vlarojo@hotmail.com', '3125896087', 1, '2023-08-25 16:58:55'),
(321, 'MarÃ­a JosÃ© ', 'Montano GarcÃ­a ', 'mariajosemontano1408@gmail.com', '3143310856', 1, '2023-08-25 17:17:50'),
(322, 'Erika ', 'Hernandez ', 'yh9352138@gmail.com', '3219244086', 1, '2023-08-26 05:34:27'),
(323, 'Sara SofÃ­a', 'Ruiz MuÃ±oz', 'sararuizmci12@gmail.com', '3115059060', 1, '2023-08-26 12:11:41'),
(324, 'nicole', 'palomino', 'nicolecheverry610@gmail.com', '3134171344', NULL, '2023-08-26 13:36:22'),
(325, 'JuliÃ¡n ', 'Ramirez ', 'julyramirez0515@gmail.com', '3002245945', 1, '2023-08-26 14:21:45'),
(326, 'Lorena ', 'GonzÃ¡lez ', 'lorenagonzalez0808@gmail.com', '3133672069 ', 1, '2023-08-26 14:40:27'),
(327, 'Viviana', 'Desalvadr', 'derlyd24gmail.com', '3112465614', 1, '2023-08-26 16:16:02'),
(328, 'Johana Patricia ', 'Serrano vera ', 'johanapatricia2512@gmail.com', '3144481956', 1, '2023-08-26 16:15:30'),
(329, 'Alanis Isabel  ', 'YepÃ©z Araujo', 'alanisyepez@gmail.com', '3148912278', NULL, '2023-08-26 16:51:03'),
(330, 'carolina', 'gutierrez', 'dgutierrez18@uan.edu.co', '3024843030', NULL, '2023-08-26 17:01:07'),
(331, 'Alejandro', 'Mendez', 'alemendez8783@gmail.com', '3192409226', NULL, '2023-08-26 17:10:34'),
(332, 'Francy ', 'Guevara ', 'Francyguevara97@hotmail.com', '3213108981', 1, '2023-08-26 17:37:18'),
(333, 'juan ', 'pacabaque', 'fmenos93@gmail.com', '3203339561', 1, '2023-08-26 19:13:23'),
(334, 'Yulieth ', 'Sanchez Alvarez ', 'faizulyalvarezgue829@gmail.com', '3011260329', NULL, '2023-08-26 19:18:04'),
(335, 'Dabinson', 'Gomez', '+573115807753', '3115807753', NULL, '2023-08-26 19:26:08'),
(336, 'Anaurys', 'Padilla ', 'anaurypadilla@gmail.com', '3202056928', 1, '2023-08-26 19:53:53'),
(337, 'Yesica', 'HernÃ¡ndez', 'tatis960527@gmail.com', '3164675477', 1, '2023-08-26 20:02:49'),
(338, 'Arley ', 'CastaÃ±eda ', 'Davinsoncastaneda77@mail.com', '3124820546', NULL, '2023-08-26 20:19:41'),
(339, 'Arley ', 'CastaÃ±eda ', 'Davinsoncastaneda77@mail.com', '3124820546', NULL, '2023-08-26 20:20:08'),
(340, 'Oneida ', 'Saavedra mayor ', 'oneidasaavedra740@gmail.com', '3132349048', NULL, '2023-08-26 20:22:13'),
(341, 'Anyi', 'Giraldo', 'anyigiraldo114@gmail.com', '3214278068', NULL, '2023-08-26 21:20:36'),
(342, 'Daniel Santiago ', 'RodrÃ­guez Triana ', 'santiago.rodriguez.triana@gmail.com', '3107395809', 1, '2023-08-26 23:45:30'),
(343, 'Alcira', 'Cantillo', 'Cantillocanoalcirateresa@gmail.com', '3013186723', 1, '2023-08-27 05:21:59'),
(344, 'Felipe Arturo ', 'Zapata Gil', 'felipea01@hotmail.com', '3028221639', NULL, '2023-08-27 05:59:37'),
(345, 'Jennyfer', 'Munar Florez ', 'jenflo21@hotmail.com', '3103136762', 1, '2023-08-27 13:20:54'),
(346, 'Carlos ', 'Sanchez Manrique', 'carlos224715@yahoo.com', '3506585876', NULL, '2023-08-27 14:03:45'),
(347, 'Jesus', 'Rivera', 'jesusrivera366@gmail.com', '3102247069 ', 1, '2023-08-27 14:33:48'),
(348, 'Luis', 'Oujio', 'Andreyhernandezpulido@gmail.com', '321456789', 1, '2023-08-27 14:51:20'),
(349, 'Keny', 'Sanchez', 'Kenysanchez@lafelicidadschoolied.edu.co', '3102029010', NULL, '2023-08-27 15:09:22'),
(350, 'Keny', 'Sanchez', 'Kenysanchez@lafelicidadschoolied.edu.co', '3102029010', NULL, '2023-08-27 15:09:22'),
(351, 'Marcela ', 'Gomez ', 'estudiantenr8b2010pekis@gmail.com', '3204258076', 1, '2023-08-27 15:21:43'),
(352, 'Simon', 'Reyes', 'sfelipe-2003@hotmail.com', '3209504550', NULL, '2023-08-27 15:20:37'),
(353, 'Luis ', 'Arturo ', 'luisarturopacheco25@gmail.com', '3046309112', 1, '2023-08-27 15:56:45'),
(354, 'Cesar', 'LÃ³pez', 'cesarlopezahu@hotmail.com', '3005001670', 1, '2023-08-27 15:55:37'),
(355, 'Adriana Marcela', 'Murcia ', 'adrianammurcia@hotmail.com', '3205222174', 2, '2023-08-27 15:56:09'),
(356, 'Jhoan', 'rojas', 'jhoansebastianrr@hotmail.com', '3228569150', 1, '2023-08-27 16:07:52'),
(357, 'Pilar ', 'Beltran', 'pilara.0924@gmail.com', '3504680889', 1, '2023-08-27 16:19:58'),
(358, 'Carlos ', 'Gutierrez', 'Edi267735@gmail.com', '213630803', NULL, '2023-08-27 16:25:27'),
(359, 'Karen ', 'SÃ¡nchez ', 'karenroxana06@gmail.com', '3202883283', 1, '2023-08-27 17:01:10'),
(360, 'JUAN LÃ“PEZ DAVID QUIEN ', 'BBHGKLGY', 'VFBMMNN V', '0987654321', NULL, '2023-08-27 17:13:38'),
(361, 'Carolina ', 'Rodriguez', 'crodriguez341@estudiantes.areandina.edu.co', '3118468112', 1, '2023-08-27 18:14:34'),
(362, 'Jeronimo', 'Villa', 'jeronimovillacristancho@gmail.com', '3209756432', 1, '2023-08-27 18:27:59'),
(363, 'David', 'Yepes', 'd.echeverri96@gmail.com', '9542079586', 1, '2023-08-27 18:44:31'),
(364, 'Manuela', 'Martinez ', 'manuela57martinezpalacio@gmail.com', '3225841671', NULL, '2023-08-27 18:42:24'),
(365, 'Daryi', 'Maldonado ', 'dm3923637@gmail.com', '3212600459', NULL, '2023-08-27 19:06:31'),
(366, 'Rachell', 'Diaz ', 'rachelldiazfuentes0@gmail.com', '3005079566', 1, '2023-08-27 19:10:41'),
(367, 'Wilson', 'Pinto', 'wilsonpinto_16@outlook.com', '3241061022', NULL, '2023-08-27 19:40:41'),
(368, 'Jairo', 'Pulido ', 'jpulidovet@misena.edu.co', '3144445142', 1, '2023-08-27 21:13:43'),
(369, 'Jaime', 'Sanchez', 'jaime_a17@hotmail.com', '3102823998', 1, '2023-08-28 12:19:16'),
(370, 'FabiÃ¡n ', 'Franco ', 'frankostivens1013@gmail.com', '3202624188', 1, '2023-08-28 13:22:11'),
(371, 'Dnejd', 'Sgb', 'Hjj', 'Nj', NULL, '2023-08-28 14:09:14'),
(372, 'Keibys Melissa ', 'Gonzalez Barrios ', 'kymely951@gmail.com', '3007542448', 2, '2023-08-28 14:22:02'),
(373, 'Juan ', 'Gomez', 'juangomezn7@gmail.com', '3223720377', 1, '2023-08-28 14:22:02'),
(374, 'Arley Yerson ', 'Osorio RincÃ³n ', 'yersonarleyosoriorincon16@gmail.com', '3218260364', NULL, '2023-08-28 14:20:53'),
(375, 'Keibys Melissa ', 'Gonzalez Barrios ', 'kymely951@gmail.com', '3007542448', NULL, '2023-08-28 14:22:28'),
(376, 'Yonathan Yesid', 'Vela Daza', 'yesidvela76@gmail.com', '3105831780', 1, '2023-08-28 14:48:15'),
(377, 'laura ', 'leon', 'valenleon1234@gmail.com', '3123278596', 1, '2023-08-28 15:03:37'),
(378, 'Laura ', 'Puentes', 'lauranicolpuentesr0206@gmail.com', '321 3334231', 1, '2023-08-28 15:26:03'),
(379, 'Ivan', 'Posada', 'ivan@test.com', '3002212368', NULL, '2023-08-28 15:23:44'),
(380, 'Luis eduardo', 'MuÃ±oz', 'Lemg006@gmail.com ', '3215269613', 1, '2023-08-28 16:50:14'),
(381, 'Hasbleidy ', 'Pineda ', 'Hasbleiidy.pineda@gmail.com', '3106421308', 1, '2023-08-28 17:13:07'),
(382, 'fernanda', 'forero', 'luisaferforero.132@gmail.com', '3222417761', NULL, '2023-08-28 18:37:04'),
(383, 'SebastiÃ¡n ', 'Gonzalez ', 'Chachanortega2019@gmail.con ', '3134452166', NULL, '2023-08-28 19:11:56'),
(384, 'Irene Gonzalez', 'Gonzalez', 'irenedelvallegonzalezmartinez@gmail.com', '3026830391', 1, '2023-08-28 19:48:35'),
(385, 'Estefany', 'Agray', 'estefanyagray12@gmail.com', '3142019248', 1, '2023-08-28 20:23:28'),
(386, 'Mariana ', 'Laverde ', 'marianalaverdebravo@gmail.com', '3138983178', 1, '2023-08-28 20:52:29'),
(387, 'Lauren ', 'RodrÃ­guez ', 'lorens20721@gmail.com', '3245897576', NULL, '2023-08-28 20:52:12'),
(388, 'alejandro', 'sierra', 'fabian@hotmail.com', '3223851417', NULL, '2023-08-31 05:09:37'),
(389, 'alejandro', 'sierra', 'fabian@hotmail.com', '3223851417', NULL, '2023-08-31 05:43:41'),
(390, 'alejandro', 'sierra', 'ivan@prueba.com', '3223851417', 3, '2023-08-31 05:55:12'),
(391, 'alejandro', 'sierra', 'admin@sdarfsdr', '3223851417', 3, '2023-08-31 05:56:50'),
(392, 'alejandro', 'sierra', 'admin@sdarfsdr', '3212261759', NULL, '2023-08-31 05:57:54');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `idioma`
--
ALTER TABLE `idioma`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `puntaje`
--
ALTER TABLE `puntaje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `categoria` (`id_categoria`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `resultado`
--
ALTER TABLE `resultado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `idioma`
--
ALTER TABLE `idioma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `puntaje`
--
ALTER TABLE `puntaje`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT de la tabla `resultado`
--
ALTER TABLE `resultado`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `id_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

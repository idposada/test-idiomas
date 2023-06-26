-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 27-06-2023 a las 00:26:25
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'Ingles'),
(2, 'Frances');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma`
--

CREATE TABLE `idioma` (
  `id` int(11) NOT NULL,
  `idioma` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `idioma`
--

INSERT INTO `idioma` (`id`, `idioma`) VALUES
(1, 'Ingles'),
(2, 'Frances');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id` int(11) NOT NULL,
  `pregunta` longtext NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `pregunta`
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntaje`
--

CREATE TABLE `puntaje` (
  `id` int(9) NOT NULL,
  `id_usuario` int(9) NOT NULL,
  `id_categoria` int(9) NOT NULL,
  `puntaje` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `puntaje`
--

INSERT INTO `puntaje` (`id`, `id_usuario`, `id_categoria`, `puntaje`) VALUES
(1, 2, 1, 20),
(2, 3, 1, 20),
(3, 4, 1, 20),
(4, 5, 1, 20),
(5, 11, 2, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `id` int(11) NOT NULL,
  `descripcion` longtext NOT NULL,
  `correcta` int(11) NOT NULL,
  `id_pregunta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `respuesta`
--

INSERT INTO `respuesta` (`id`, `descripcion`, `correcta`, `id_pregunta`) VALUES
(1, 'This is a blue jacket', 1, 1),
(2, 'This is a jacket blue', 0, 1),
(3, 'These are blue jacket', 0, 1),
(4, 'Today’s sunny ', 0, 2),
(5, 'Today’s foggy', 1, 2),
(6, 'Today’s windy', 0, 2),
(7, 'I don’t never go to the movies', 0, 3),
(8, 'I usually go to the movies on the weekend', 1, 3),
(9, 'I go sometimes to the movies.', 0, 3),
(10, 'My cousin', 0, 4),
(11, 'My aunt', 0, 4),
(12, 'My niece', 1, 4),
(13, 'I did born in Colombia', 0, 5),
(14, 'I was born in Colombia', 1, 5),
(15, 'I borned in Colombia', 0, 5),
(16, 'I don’t like it. It is the worse restaurant I’ve ever been to', 0, 6),
(17, 'I don’t like it. It is the worst restaurant I’ve ever been to', 1, 6),
(18, 'I don’t like it. It is the badder restaurant I’ve ever been to', 0, 6),
(19, 'Yes. I think he doesn’t teach as good as our previous teacher', 1, 7),
(20, 'Yes. I think he doesn’t teach as better as our previous teacher.', 0, 7),
(21, 'Yes. I think he doesn’t teach as gooder as our previous teacher.', 0, 7),
(22, 'If I were an animal; I will be a lion', 0, 8),
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
(46, ' Yes. I know him but I don’t get with him along', 0, 16),
(47, 'Yes. I know him but I don’t get him along with.', 0, 16),
(48, 'Yes. I know him but I don’t get along with him', 1, 16),
(49, 'The most important thing for me is to spend time with my family', 0, 17),
(50, 'The most important thing for me is spending time with my family', 1, 17),
(51, 'The most important thing for me is spent time with my family.', 0, 17),
(52, 'Well I heard that my favorite pop star is thought to have had another breakdown. ', 1, 18),
(53, 'Well I heard that my favorite pop star is think to have had another breakdown', 0, 18),
(54, 'Well I heard that my favorite pop star is thought to had had another breakdown', 0, 18),
(55, 'I am used to getting up early on the weekend.', 1, 19),
(56, 'I used to getting up early on the weekend. ', 0, 19),
(57, 'I am use to get up early on the weekend. ', 0, 19),
(58, 'C’est une veste bleue', 1, 20),
(59, 'C’est un blue vest', 0, 20),
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
(73, 'Je ne l’aime. Il est le mauvais restaurant que j’ai jamais allé.', 0, 25),
(74, 'Je ne l’aime pas. C\' est le pire restaurant où je suis jamais allé. ', 1, 25),
(75, 'Je ne le aime pas. C’est le pire restaurant où j\'ai jamais allé.', 0, 25),
(76, 'Oui. Je crois qu’il enseigne mieux que l’ancien professeur.', 1, 26),
(77, 'Oui. Je crois qu’il enseigne meilleur que l’ancien professeur. ', 0, 26),
(78, 'Oui. Je crois qu’il enseigne mieux que le professeur antérieur', 0, 26),
(79, 'Si j\'été un animal je serai un lion.', 0, 27),
(80, 'Si j\'étais un animal je serais un lion.', 1, 27),
(81, 'Si je suis un animal je serais un lion. ', 0, 27),
(82, 'Il adore beaucoup les films.', 0, 28),
(83, 'Il a fait plus de 80 films.', 1, 28),
(84, 'Il a fait des films depuis son enfance. ', 0, 28),
(85, '1. \"le\"', 1, 29),
(86, '1. \"au\"', 0, 29),
(87, '1. \"l’\"', 0, 29),
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
(99, '5. \"la \"', 1, 33),
(100, 'Il faut qu’on parte.', 1, 34),
(101, 'Il falloir qu’on pars.', 0, 34),
(102, 'Il faut qu’on part.', 0, 34),
(103, 'Oui je le connais mais je ne lui aime bien.', 0, 35),
(104, 'Oui je le connais mais je ne lui aime pas bien. ', 0, 35),
(105, 'Oui je le connais mais je ne l’aime pas bien.', 1, 35),
(106, 'Non je n’en vais pas souvent .', 0, 36),
(107, 'Non je n’y vais pas souvent. ', 1, 36),
(108, 'Non je ne vais y pas souvent.', 0, 36),
(109, 'Il m’a dit que le projet allait bien et qu’il commencerait l\'année prochaine. ', 1, 37),
(110, 'Il me a dit que le projet va bien et qu’il commencerait l’année prochaine . ', 0, 37),
(111, 'Il me dit que le projet allé bien et qu’il commencera l’année prochaine. ', 0, 37),
(112, 'Je ne vais pas voyager parce que je dois ranger quelques documents à la maison .', 1, 38),
(113, 'Je vais à voyager à la plage avec mes amis et ma copine. ', 0, 38),
(114, 'Je ne vais pas voyager mais je vais à dormir beaucoup parce que je suis fatigué. ', 0, 38);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(10, 'Tu est un arbre mûr: Tes boutons ont fleuri, continue à travailler pour avoir\r\ndes fruits bientôt.', 30, 2, 'katysmile.gif');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(140) NOT NULL,
  `apellido` varchar(140) NOT NULL,
  `email` varchar(140) NOT NULL,
  `celular` varchar(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `email`, `celular`, `created_at`) VALUES
(1, 'juan', 'sierra', 'me@gmcil.co', '3212261758', '2023-06-05 17:59:29'),
(2, 'alejandro', 'sierra', 'ivan@prueba.com', '3223851417', '2023-06-06 15:26:30'),
(3, 'alejandro', 'sierra', 'MStivenR_1998@hotmail.com', '3223851417', '2023-06-06 23:57:40'),
(4, 'alejandro', 'sierra', 'MStivenR_1998@hotmail.com', '3212261759', '2023-06-07 00:34:50'),
(5, 'JUAN', 'AGUIA', 'gasierram@unal.edu.co', '3223851417', '2023-06-21 22:55:44'),
(6, 'alejandro', 'sierra', 'ivan@prueba.com', '3212261759', '2023-06-24 15:21:01'),
(7, 'alejandro', 'sierra', 'MStivenR_1998@hotmail.com', '3223851417', '2023-06-24 15:32:29'),
(8, 'alejandro', 'sierra', 'ivan@prueba.com', '3223851417', '2023-06-24 15:38:01'),
(9, 'alejandro', 'sierra', 'gusvo21@hotmail.com', '3212261759', '2023-06-24 15:45:19'),
(10, 'JULIAN', 'CORREA', 'JLISLA@GMAIL.COM', '333999999', '2023-06-26 21:07:52'),
(11, 'alejandro', 'sierra', 'gasierram@unal.edu.co', '3223851417', '2023-06-26 22:02:43');

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
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `idioma`
--
ALTER TABLE `idioma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `puntaje`
--
ALTER TABLE `puntaje`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT de la tabla `resultado`
--
ALTER TABLE `resultado`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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

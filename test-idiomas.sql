-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 22-06-2023 a las 03:33:12
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
(15, 'If you look up at (1)_____ sky (2) ______ it\'s raining and sunny, you will see the rainbow. It is (3)______ magical phenomenon (4) _____ is formed by (5)________ nature. Red, orange, yellow, green, blue, violet and purple are the colors that can be seen in the rainbow.', 1),
(16, 'Where is Georgina? It is late and we have to go.', 1),
(17, 'My best friend is Paul. Do you know him?', 1),
(18, 'What is the most important thing for you? ', 1),
(19, 'Did you hear the recent news about your favorite pop star?', 1),
(20, 'Are you accustomed to waking up early on the weekend?', 1),
(21, 'Qu?est-ce que c?est cet objet?', 2),
(22, 'Quel est le temps aujourd?hui?', 2),
(23, 'Quand est-ce que tu vas au cin?ma?', 2),
(24, 'La fille de mon fr?re m?a visit? Samedi dernier, Qui?', 2),
(25, 'Tu viens d?o??', 2),
(26, 'Qu?est-ce que tu penses du nouveau restaurant?', 2),
(27, 'As-tu rencontr? le professeur de fran?ais? ', 2),
(28, 'Si tu ?tais un animal, lequel choisirais-tu?', 2),
(29, 'Combien de films a-t-il fait pendant sa vie?', 2),
(30, 'Si tu regardes (1)_____ ciel (2) ______ il pleut et il y a du soleil, tu verras l?arc-en-ciel. C?est (3)______ ph?nom?ne magique (4) _____ est form? par (5)________ nature. Rouge, orange, jaune, vert, blue, indigo et violet sont les couleurs que tu peux voir briller.', 2),
(31, 'Si tu regardes (1)_____ ciel (2) ______ il pleut et il y a du soleil, tu verras l?arc-en-ciel. C?est (3)______ ph?nom?ne magique (4) _____ est form? par (5)________ nature. Rouge, orange, jaune, vert, blue, indigo et violet sont les couleurs que tu peux voir briller.', 2),
(32, 'Si tu regardes (1)_____ ciel (2) ______ il pleut et il y a du soleil, tu verras l?arc-en-ciel. C?est (3)______ ph?nom?ne magique (4) _____ est form? par (5)________ nature. Rouge, orange, jaune, vert, blue, indigo et violet sont les couleurs que tu peux voir briller.', 2),
(33, 'Si tu regardes (1)_____ ciel (2) ______ il pleut et il y a du soleil, tu verras l?arc-en-ciel. C?est (3)______ ph?nom?ne magique (4) _____ est form? par (5)________ nature. Rouge, orange, jaune, vert, blue, indigo et violet sont les couleurs que tu peux voir briller.', 2),
(34, 'Si tu regardes (1)_____ ciel (2) ______ il pleut et il y a du soleil, tu verras l?arc-en-ciel. C?est (3)______ ph?nom?ne magique (4) _____ est form? par (5)________ nature. Rouge, orange, jaune, vert, blue, indigo et violet sont les couleurs que tu peux voir briller.', 2),
(35, 'Si tu regardes (1)_____ ciel (2) ______ il pleut et il y a du soleil, tu verras l?arc-en-ciel. C?est (3)______ ph?nom?ne magique (4) _____ est form? par (5)________ nature. Rouge, orange, jaune, vert, blue, indigo et violet sont les couleurs que tu peux voir briller.', 2),
(36, 'O? est Georgina? Le train va arriver et _____.', 2),
(37, 'Mon meilleur ami est Claude. Est-ce que tu le connais?', 2),
(38, 'Est-ce que tu vas souvent ? la biblioth?que? ', 2),
(39, 'Qu?est-ce qu?il t?a dit sur le projet?', 2),
(40, 'Quels sont tes plans pour les vacances?', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntaje`
--

CREATE TABLE `puntaje` (
  `id` int(9) NOT NULL,
  `id_usuario` int(9) NOT NULL,
  `id_categoria` int(9) NOT NULL,
  `puntaje` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `puntaje`
--

INSERT INTO `puntaje` (`id`, `id_usuario`, `id_categoria`, `puntaje`) VALUES
(1, 2, 1, 20),
(2, 3, 1, 20),
(3, 4, 1, 20),
(4, 5, 1, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `id` int(11) NOT NULL,
  `descripcion` longtext NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  `correcta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `respuesta`
--

INSERT INTO `respuesta` (`id`, `descripcion`, `id_pregunta`, `correcta`) VALUES
(1, 'This is a blue jacket', 1, 1),
(2, 'This is a jacket blue', 1, 0),
(3, 'These are blue jacket', 1, 0),
(4, 'Today’s sunny ', 2, 0),
(5, 'Today’s foggy', 2, 1),
(6, 'Today’s windy', 2, 0),
(7, 'I don’t never go to the movies', 3, 0),
(8, 'I usually go to the movies on the weekend', 3, 1),
(9, 'I go sometimes to the movies.', 3, 0),
(10, 'My cousin', 4, 0),
(11, 'My aunt', 4, 0),
(12, 'My niece', 4, 1),
(13, 'I did born in Colombia', 5, 0),
(14, 'I was born in Colombia', 5, 1),
(15, 'I borned in Colombia', 5, 0),
(16, 'I don’t like it. It is the worse restaurant I’ve ever been to', 6, 0),
(17, 'I don’t like it. It is the worst restaurant I’ve ever been to', 6, 1),
(18, 'I don’t like it. It is the badder restaurant I’ve ever been to', 6, 0),
(19, 'Yes. I think he doesn’t teach as good as our previous teacher', 7, 1),
(20, 'Yes. I think he doesn’t teach as better as our previous teacher.', 7, 0),
(21, 'Yes. I think he doesn’t teach as gooder as our previous teacher.', 7, 0),
(22, 'If I were an animal; I will be a lion', 8, 0),
(23, 'I would be a lion if I were an animal', 8, 1),
(24, 'I would have been a lion if I were an animal', 8, 0),
(25, 'The movie is being film next week', 9, 0),
(26, 'The movie will be filmed next week.', 9, 1),
(27, 'The movie was being filmed next week.', 9, 0),
(28, '1. \" the\"', 10, 1),
(29, '1. \"a\"', 10, 0),
(30, '1. \"-\"', 10, 0),
(31, '2. \"where\"', 10, 0),
(32, '2. \"which\"', 10, 0),
(33, '2. \"when\"', 10, 1),
(34, '3. \" the\"', 10, 0),
(35, '3. \"a\"', 10, 1),
(36, '3. \"-\"', 10, 0),
(37, '4. \"which\"', 10, 1),
(38, '4. \"with\"', 10, 0),
(39, '4.\" what \"', 10, 0),
(40, '5. \" the\"', 10, 0),
(41, '5. \"a\"', 10, 0),
(42, '5. \"-\"', 10, 1),
(43, 'She must be stuck in a traffic jam', 11, 1),
(44, 'She should be stuck in a traffic jam', 11, 0),
(45, 'She should be stuck in a traffic jam', 11, 0),
(46, ' Yes. I know him but I don’t get with him along', 12, 0),
(47, 'Yes. I know him but I don’t get him along with.', 12, 0),
(48, 'Yes. I know him but I don’t get along with him', 12, 1),
(49, 'The most important thing for me is to spend time with my family', 13, 0),
(50, 'The most important thing for me is spending time with my family', 13, 1),
(51, 'The most important thing for me is spent time with my family.', 13, 0),
(52, 'Well I heard that my favorite pop star is thought to have had another breakdown. ', 14, 1),
(53, 'Well I heard that my favorite pop star is think to have had another breakdown', 14, 0),
(54, 'Well I heard that my favorite pop star is thought to had had another breakdown', 14, 0),
(55, 'I am used to getting up early on the weekend.', 15, 1),
(56, 'I used to getting up early on the weekend. ', 15, 0),
(57, 'I am use to get up early on the weekend. ', 15, 0),
(58, 'C’est une veste bleue', 16, 1),
(59, 'C’est un blue vest', 16, 0),
(60, 'Il est du veste bleue', 16, 0),
(61, 'Il fait beau', 17, 0),
(62, 'Il fait froid', 17, 1),
(63, 'Il est bon', 17, 0),
(64, 'Je ne vais au cinéma.', 18, 0),
(65, 'Je ne vais pas au cinéma.', 18, 1),
(66, 'Je souvent vais au cinéma.', 18, 0),
(67, 'Ma cousine', 19, 0),
(68, 'Ma tante', 19, 0),
(69, 'Ma nièce', 19, 1),
(70, 'Je viens de Colombie.', 20, 0),
(71, ' Je viens de la Colombie.', 20, 1),
(72, 'Je viens de en Colombie.', 20, 0),
(73, 'Je ne l’aime. Il est le mauvais restaurant que j’ai jamais allé.', 21, 0),
(74, 'Je ne l’aime pas. C\' est le pire restaurant où je suis jamais allé. ', 21, 1),
(75, 'Je ne le aime pas. C’est le pire restaurant où j\'ai jamais allé.', 21, 0),
(76, 'Oui. Je crois qu’il enseigne mieux que l’ancien professeur.', 22, 1),
(77, 'Oui. Je crois qu’il enseigne meilleur que l’ancien professeur. ', 22, 0),
(78, 'Oui. Je crois qu’il enseigne mieux que le professeur antérieur', 22, 0),
(79, 'Si j\'été un animal je serai un lion.', 23, 0),
(80, 'Si j\'étais un animal je serais un lion.', 23, 1),
(81, 'Si je suis un animal je serais un lion. ', 23, 0),
(82, 'Il adore beaucoup les films.', 24, 0),
(83, 'Il a fait plus de 80 films.', 24, 1),
(84, 'Il a fait des films depuis son enfance. ', 24, 0),
(85, '1. \"le\"', 25, 1),
(86, '1. \"au\"', 25, 0),
(87, '1. \"l’\"', 25, 0),
(88, '2. \"où\"', 25, 0),
(89, '2. \"que\"', 25, 0),
(90, '2. \"quand\"', 25, 1),
(91, '3. \"une\"', 25, 0),
(92, '3. \"un\"', 25, 1),
(93, '3. \"le\"', 25, 0),
(94, '4. \"qui\"', 25, 1),
(95, '4. \"que\"', 25, 0),
(96, '4. \"dont\"', 25, 0),
(97, '5. \"le\"', 25, 0),
(98, '5. \"une\"', 25, 0),
(99, '5. \"la \"', 25, 1),
(100, 'Il faut qu’on parte.', 26, 1),
(101, 'Il falloir qu’on pars.', 26, 0),
(102, 'Il faut qu’on part.', 26, 0),
(103, 'Oui je le connais mais je ne lui aime bien.', 27, 0),
(104, 'Oui je le connais mais je ne lui aime pas bien. ', 27, 0),
(105, 'Oui je le connais mais je ne l’aime pas bien.', 27, 1),
(106, 'Non je n’en vais pas souvent .', 28, 0),
(107, 'Non je n’y vais pas souvent. ', 28, 1),
(108, 'Non je ne vais y pas souvent.', 28, 0),
(109, 'Il m’a dit que le projet allait bien et qu’il commencerait l\'année prochaine. ', 29, 1),
(110, 'Il me a dit que le projet va bien et qu’il commencerait l’année prochaine . ', 29, 0),
(111, 'Il me dit que le projet allé bien et qu’il commencera l’année prochaine. ', 29, 0),
(112, 'Je ne vais pas voyager parce que je dois ranger quelques documents à la maison .', 30, 1),
(113, 'Je vais à voyager à la plage avec mes amis et ma copine. ', 30, 0),
(114, 'Je ne vais pas voyager mais je vais à dormir beaucoup parce que je suis fatigué. ', 30, 0);

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
(1, '¡Sigue practicando!\r\nLa práctica hace al maestro, ¡mejora tus habilidades cantando New York, New York de Frank Sinatra!', 7, 1, 'frank.gif'),
(2, '¡No estás mal, pero tampoco estás bien!\n\nCon este nivel de inglés puedes comprar entradas a cine en New York, pero no te garantizamos que entiendas toda la película.', 15, 1, 'chris.gif'),
(3, '¡Wow, vas por buen camino!\n\nYa puedes visitar los parques de  Disney y mantener una conversación con Katy Perry.', 20, 1, 'katy.gif'),
(4, '¡Wow, vas por buen camino!\n\n¡No te desanimes!\n\nSeguro no salió como esperabas, pero es cuestión de práctica y de estudiar más, petite sauterelle.', 7, 2, 'pinocho.gif'),
(5, '¡Vas por buen camino, pero te falta un poco más!\n\nEsfuérzate un poco más para visitar París en tus próximas vacaciones con confianza.', 15, 2, 'rata.gif'),
(6, 'Fantastique!\n\nPodrías mantener una conversación con Kylian Mbappé. ¡Continúa practicando tu francés!', 20, 2, 'mbappe.gif');

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
(5, 'JUAN', 'AGUIA', 'gasierram@unal.edu.co', '3223851417', '2023-06-21 22:55:44');

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
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT de la tabla `resultado`
--
ALTER TABLE `resultado`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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

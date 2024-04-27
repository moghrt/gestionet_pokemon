-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-04-2024 a las 13:06:05
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pokedb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(5, '2024-04-25-102956', 'App\\Database\\Migrations\\CreateUsersTable', 'default', 'App', 1714143708, 1),
(6, '2024-04-25-172637', 'App\\Database\\Migrations\\CreatePokemonTable', 'default', 'App', 1714143708, 1),
(7, '2024-04-25-181016', 'App\\Database\\Migrations\\CreatePokemonTypeTable', 'default', 'App', 1714143708, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemons`
--

CREATE TABLE `pokemons` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `types` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pokemons`
--

INSERT INTO `pokemons` (`id`, `name`, `types`, `url`) VALUES
(1, 'bulbasaur', 'grass, poison', 'https://pokeapi.co/api/v2/pokemon-species/1/'),
(2, 'charmander', 'fire', 'https://pokeapi.co/api/v2/pokemon-species/4/'),
(3, 'squirtle', 'water', 'https://pokeapi.co/api/v2/pokemon-species/7/'),
(4, 'caterpie', 'bug', 'https://pokeapi.co/api/v2/pokemon-species/10/'),
(5, 'weedle', 'bug, poison', 'https://pokeapi.co/api/v2/pokemon-species/13/'),
(6, 'pidgey', 'normal, flying', 'https://pokeapi.co/api/v2/pokemon-species/16/'),
(7, 'rattata', 'normal', 'https://pokeapi.co/api/v2/pokemon-species/19/'),
(8, 'spearow', 'normal, flying', 'https://pokeapi.co/api/v2/pokemon-species/21/'),
(9, 'ekans', 'poison', 'https://pokeapi.co/api/v2/pokemon-species/23/'),
(10, 'sandshrew', 'ground', 'https://pokeapi.co/api/v2/pokemon-species/27/'),
(11, 'nidoran-f', 'poison', 'https://pokeapi.co/api/v2/pokemon-species/29/'),
(12, 'nidoran-m', 'poison', 'https://pokeapi.co/api/v2/pokemon-species/32/'),
(13, 'vulpix', 'fire', 'https://pokeapi.co/api/v2/pokemon-species/37/'),
(14, 'zubat', 'poison, flying', 'https://pokeapi.co/api/v2/pokemon-species/41/'),
(15, 'oddish', 'grass, poison', 'https://pokeapi.co/api/v2/pokemon-species/43/'),
(16, 'paras', 'bug, grass', 'https://pokeapi.co/api/v2/pokemon-species/46/'),
(17, 'venonat', 'bug, poison', 'https://pokeapi.co/api/v2/pokemon-species/48/'),
(18, 'diglett', 'ground', 'https://pokeapi.co/api/v2/pokemon-species/50/'),
(19, 'meowth', 'normal', 'https://pokeapi.co/api/v2/pokemon-species/52/'),
(20, 'psyduck', 'water', 'https://pokeapi.co/api/v2/pokemon-species/54/'),
(21, 'mankey', 'fighting', 'https://pokeapi.co/api/v2/pokemon-species/56/'),
(22, 'growlithe', 'fire', 'https://pokeapi.co/api/v2/pokemon-species/58/'),
(23, 'poliwag', 'water', 'https://pokeapi.co/api/v2/pokemon-species/60/'),
(24, 'abra', 'psychic', 'https://pokeapi.co/api/v2/pokemon-species/63/'),
(25, 'machop', 'fighting', 'https://pokeapi.co/api/v2/pokemon-species/66/'),
(26, 'bellsprout', 'grass, poison', 'https://pokeapi.co/api/v2/pokemon-species/69/'),
(27, 'tentacool', 'water, poison', 'https://pokeapi.co/api/v2/pokemon-species/72/'),
(28, 'geodude', 'rock, ground', 'https://pokeapi.co/api/v2/pokemon-species/74/'),
(29, 'venusaur', 'grass, poison', 'https://pokeapi.co/api/v2/pokemon-species/3/'),
(30, 'charmeleon', 'fire', 'https://pokeapi.co/api/v2/pokemon-species/5/'),
(31, 'charizard', 'fire, flying', 'https://pokeapi.co/api/v2/pokemon-species/6/'),
(32, 'wartortle', 'water', 'https://pokeapi.co/api/v2/pokemon-species/8/'),
(33, 'blastoise', 'water', 'https://pokeapi.co/api/v2/pokemon-species/9/'),
(34, 'metapod', 'bug', 'https://pokeapi.co/api/v2/pokemon-species/11/'),
(35, 'butterfree', 'bug, flying', 'https://pokeapi.co/api/v2/pokemon-species/12/'),
(36, 'kakuna', 'bug, poison', 'https://pokeapi.co/api/v2/pokemon-species/14/'),
(37, 'beedrill', 'bug, poison', 'https://pokeapi.co/api/v2/pokemon-species/15/'),
(38, 'pidgeotto', 'normal, flying', 'https://pokeapi.co/api/v2/pokemon-species/17/'),
(39, 'pidgeot', 'normal, flying', 'https://pokeapi.co/api/v2/pokemon-species/18/'),
(40, 'raticate', 'normal', 'https://pokeapi.co/api/v2/pokemon-species/20/'),
(41, 'fearow', 'normal, flying', 'https://pokeapi.co/api/v2/pokemon-species/22/'),
(42, 'arbok', 'poison', 'https://pokeapi.co/api/v2/pokemon-species/24/'),
(43, 'pikachu', 'electric', 'https://pokeapi.co/api/v2/pokemon-species/25/'),
(44, 'raichu', 'electric', 'https://pokeapi.co/api/v2/pokemon-species/26/'),
(45, 'sandslash', 'ground', 'https://pokeapi.co/api/v2/pokemon-species/28/'),
(46, 'nidorina', 'poison', 'https://pokeapi.co/api/v2/pokemon-species/30/'),
(47, 'nidoqueen', 'poison, ground', 'https://pokeapi.co/api/v2/pokemon-species/31/'),
(48, 'nidorino', 'poison', 'https://pokeapi.co/api/v2/pokemon-species/33/'),
(49, 'nidoking', 'poison, ground', 'https://pokeapi.co/api/v2/pokemon-species/34/'),
(50, 'clefairy', 'fairy', 'https://pokeapi.co/api/v2/pokemon-species/35/'),
(51, 'clefable', 'fairy', 'https://pokeapi.co/api/v2/pokemon-species/36/'),
(52, 'ninetales', 'fire', 'https://pokeapi.co/api/v2/pokemon-species/38/'),
(53, 'jigglypuff', 'normal, fairy', 'https://pokeapi.co/api/v2/pokemon-species/39/'),
(54, 'wigglytuff', 'normal, fairy', 'https://pokeapi.co/api/v2/pokemon-species/40/'),
(55, 'golbat', 'poison, flying', 'https://pokeapi.co/api/v2/pokemon-species/42/'),
(56, 'gloom', 'grass, poison', 'https://pokeapi.co/api/v2/pokemon-species/44/'),
(57, 'vileplume', 'grass, poison', 'https://pokeapi.co/api/v2/pokemon-species/45/'),
(58, 'parasect', 'bug, grass', 'https://pokeapi.co/api/v2/pokemon-species/47/'),
(59, 'venomoth', 'bug, poison', 'https://pokeapi.co/api/v2/pokemon-species/49/'),
(60, 'dugtrio', 'ground', 'https://pokeapi.co/api/v2/pokemon-species/51/'),
(61, 'persian', 'normal', 'https://pokeapi.co/api/v2/pokemon-species/53/'),
(62, 'golduck', 'water', 'https://pokeapi.co/api/v2/pokemon-species/55/'),
(63, 'primeape', 'fighting', 'https://pokeapi.co/api/v2/pokemon-species/57/'),
(64, 'arcanine', 'fire', 'https://pokeapi.co/api/v2/pokemon-species/59/'),
(65, 'poliwhirl', 'water', 'https://pokeapi.co/api/v2/pokemon-species/61/'),
(66, 'poliwrath', 'water, fighting', 'https://pokeapi.co/api/v2/pokemon-species/62/'),
(67, 'kadabra', 'psychic', 'https://pokeapi.co/api/v2/pokemon-species/64/'),
(68, 'alakazam', 'psychic', 'https://pokeapi.co/api/v2/pokemon-species/65/'),
(69, 'machoke', 'fighting', 'https://pokeapi.co/api/v2/pokemon-species/67/'),
(70, 'machamp', 'fighting', 'https://pokeapi.co/api/v2/pokemon-species/68/'),
(71, 'weepinbell', 'grass, poison', 'https://pokeapi.co/api/v2/pokemon-species/70/'),
(72, 'victreebel', 'grass, poison', 'https://pokeapi.co/api/v2/pokemon-species/71/'),
(73, 'tentacruel', 'water, poison', 'https://pokeapi.co/api/v2/pokemon-species/73/'),
(74, 'graveler', 'rock, ground', 'https://pokeapi.co/api/v2/pokemon-species/75/'),
(75, 'ponyta', 'fire', 'https://pokeapi.co/api/v2/pokemon-species/77/'),
(76, 'slowpoke', 'water, psychic', 'https://pokeapi.co/api/v2/pokemon-species/79/'),
(77, 'magnemite', 'electric, steel', 'https://pokeapi.co/api/v2/pokemon-species/81/'),
(78, 'farfetchd', 'normal, flying', 'https://pokeapi.co/api/v2/pokemon-species/83/'),
(79, 'doduo', 'normal, flying', 'https://pokeapi.co/api/v2/pokemon-species/84/'),
(80, 'seel', 'water', 'https://pokeapi.co/api/v2/pokemon-species/86/'),
(81, 'grimer', 'poison', 'https://pokeapi.co/api/v2/pokemon-species/88/'),
(82, 'shellder', 'water', 'https://pokeapi.co/api/v2/pokemon-species/90/'),
(83, 'gastly', 'ghost, poison', 'https://pokeapi.co/api/v2/pokemon-species/92/'),
(84, 'onix', 'rock, ground', 'https://pokeapi.co/api/v2/pokemon-species/95/'),
(85, 'drowzee', 'psychic', 'https://pokeapi.co/api/v2/pokemon-species/96/'),
(86, 'krabby', 'water', 'https://pokeapi.co/api/v2/pokemon-species/98/'),
(87, 'voltorb', 'electric', 'https://pokeapi.co/api/v2/pokemon-species/100/'),
(88, 'exeggcute', 'grass, psychic', 'https://pokeapi.co/api/v2/pokemon-species/102/'),
(89, 'cubone', 'ground', 'https://pokeapi.co/api/v2/pokemon-species/104/'),
(90, 'lickitung', 'normal', 'https://pokeapi.co/api/v2/pokemon-species/108/'),
(91, 'koffing', 'poison', 'https://pokeapi.co/api/v2/pokemon-species/109/'),
(92, 'rhyhorn', 'ground, rock', 'https://pokeapi.co/api/v2/pokemon-species/111/'),
(93, 'tangela', 'grass', 'https://pokeapi.co/api/v2/pokemon-species/114/'),
(94, 'kangaskhan', 'normal', 'https://pokeapi.co/api/v2/pokemon-species/115/'),
(95, 'horsea', 'water', 'https://pokeapi.co/api/v2/pokemon-species/116/'),
(96, 'goldeen', 'water', 'https://pokeapi.co/api/v2/pokemon-species/118/'),
(97, 'staryu', 'water', 'https://pokeapi.co/api/v2/pokemon-species/120/'),
(98, 'scyther', 'bug, flying', 'https://pokeapi.co/api/v2/pokemon-species/123/'),
(99, 'pinsir', 'bug', 'https://pokeapi.co/api/v2/pokemon-species/127/'),
(100, 'tauros', 'normal', 'https://pokeapi.co/api/v2/pokemon-species/128/'),
(101, 'magikarp', '', 'https://pokeapi.co/api/v2/pokemon-species/129/'),
(102, 'lapras', '', 'https://pokeapi.co/api/v2/pokemon-species/131/'),
(103, 'ditto', '', 'https://pokeapi.co/api/v2/pokemon-species/132/'),
(104, 'eevee', '', 'https://pokeapi.co/api/v2/pokemon-species/133/'),
(105, 'porygon', '', 'https://pokeapi.co/api/v2/pokemon-species/137/'),
(106, 'omanyte', '', 'https://pokeapi.co/api/v2/pokemon-species/138/'),
(107, 'kabuto', '', 'https://pokeapi.co/api/v2/pokemon-species/140/'),
(108, 'aerodactyl', '', 'https://pokeapi.co/api/v2/pokemon-species/142/'),
(109, 'articuno', '', 'https://pokeapi.co/api/v2/pokemon-species/144/'),
(110, 'zapdos', '', 'https://pokeapi.co/api/v2/pokemon-species/145/'),
(111, 'moltres', '', 'https://pokeapi.co/api/v2/pokemon-species/146/'),
(112, 'dratini', '', 'https://pokeapi.co/api/v2/pokemon-species/147/'),
(113, 'mewtwo', '', 'https://pokeapi.co/api/v2/pokemon-species/150/'),
(114, 'rapidash', '', 'https://pokeapi.co/api/v2/pokemon-species/78/'),
(115, 'slowbro', '', 'https://pokeapi.co/api/v2/pokemon-species/80/'),
(116, 'magneton', '', 'https://pokeapi.co/api/v2/pokemon-species/82/'),
(117, 'dodrio', '', 'https://pokeapi.co/api/v2/pokemon-species/85/'),
(118, 'dewgong', '', 'https://pokeapi.co/api/v2/pokemon-species/87/'),
(119, 'muk', '', 'https://pokeapi.co/api/v2/pokemon-species/89/'),
(120, 'cloyster', '', 'https://pokeapi.co/api/v2/pokemon-species/91/'),
(121, 'haunter', '', 'https://pokeapi.co/api/v2/pokemon-species/93/'),
(122, 'gengar', '', 'https://pokeapi.co/api/v2/pokemon-species/94/'),
(123, 'hypno', '', 'https://pokeapi.co/api/v2/pokemon-species/97/'),
(124, 'kingler', '', 'https://pokeapi.co/api/v2/pokemon-species/99/'),
(125, 'electrode', '', 'https://pokeapi.co/api/v2/pokemon-species/101/'),
(126, 'exeggutor', '', 'https://pokeapi.co/api/v2/pokemon-species/103/'),
(127, 'marowak', '', 'https://pokeapi.co/api/v2/pokemon-species/105/'),
(128, 'hitmonlee', '', 'https://pokeapi.co/api/v2/pokemon-species/106/'),
(129, 'hitmonchan', '', 'https://pokeapi.co/api/v2/pokemon-species/107/'),
(130, 'weezing', '', 'https://pokeapi.co/api/v2/pokemon-species/110/'),
(131, 'rhydon', '', 'https://pokeapi.co/api/v2/pokemon-species/112/'),
(132, 'chansey', '', 'https://pokeapi.co/api/v2/pokemon-species/113/'),
(133, 'seadra', '', 'https://pokeapi.co/api/v2/pokemon-species/117/'),
(134, 'seaking', '', 'https://pokeapi.co/api/v2/pokemon-species/119/'),
(135, 'starmie', '', 'https://pokeapi.co/api/v2/pokemon-species/121/'),
(136, 'mr-mime', '', 'https://pokeapi.co/api/v2/pokemon-species/122/'),
(137, 'jynx', '', 'https://pokeapi.co/api/v2/pokemon-species/124/'),
(138, 'electabuzz', '', 'https://pokeapi.co/api/v2/pokemon-species/125/'),
(139, 'magmar', '', 'https://pokeapi.co/api/v2/pokemon-species/126/'),
(140, 'gyarados', '', 'https://pokeapi.co/api/v2/pokemon-species/130/'),
(141, 'vaporeon', '', 'https://pokeapi.co/api/v2/pokemon-species/134/'),
(142, 'jolteon', '', 'https://pokeapi.co/api/v2/pokemon-species/135/'),
(143, 'flareon', '', 'https://pokeapi.co/api/v2/pokemon-species/136/'),
(144, 'omastar', '', 'https://pokeapi.co/api/v2/pokemon-species/139/'),
(145, 'kabutops', '', 'https://pokeapi.co/api/v2/pokemon-species/141/'),
(146, 'snorlax', '', 'https://pokeapi.co/api/v2/pokemon-species/143/'),
(147, 'dragonair', '', 'https://pokeapi.co/api/v2/pokemon-species/148/'),
(148, 'dragonite', '', 'https://pokeapi.co/api/v2/pokemon-species/149/'),
(149, 'mew', '', 'https://pokeapi.co/api/v2/pokemon-species/151/'),
(150, 'ivysaur', '', 'https://pokeapi.co/api/v2/pokemon-species/2/'),
(151, 'golem', '', 'https://pokeapi.co/api/v2/pokemon-species/76/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `types`
--

CREATE TABLE `types` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `types`
--

INSERT INTO `types` (`id`, `name`, `url`) VALUES
(1, 'normal', 'https://pokeapi.co/api/v2/type/1/'),
(2, 'fighting', 'https://pokeapi.co/api/v2/type/2/'),
(3, 'flying', 'https://pokeapi.co/api/v2/type/3/'),
(4, 'poison', 'https://pokeapi.co/api/v2/type/4/'),
(5, 'ground', 'https://pokeapi.co/api/v2/type/5/'),
(6, 'rock', 'https://pokeapi.co/api/v2/type/6/'),
(7, 'bug', 'https://pokeapi.co/api/v2/type/7/'),
(8, 'ghost', 'https://pokeapi.co/api/v2/type/8/'),
(9, 'steel', 'https://pokeapi.co/api/v2/type/9/'),
(10, 'fire', 'https://pokeapi.co/api/v2/type/10/'),
(11, 'water', 'https://pokeapi.co/api/v2/type/11/'),
(12, 'grass', 'https://pokeapi.co/api/v2/type/12/'),
(13, 'electric', 'https://pokeapi.co/api/v2/type/13/'),
(14, 'psychic', 'https://pokeapi.co/api/v2/type/14/'),
(15, 'ice', 'https://pokeapi.co/api/v2/type/15/'),
(16, 'dragon', 'https://pokeapi.co/api/v2/type/16/'),
(17, 'dark', 'https://pokeapi.co/api/v2/type/17/'),
(18, 'fairy', 'https://pokeapi.co/api/v2/type/18/'),
(19, 'unknown', 'https://pokeapi.co/api/v2/type/10001/'),
(20, 'shadow', 'https://pokeapi.co/api/v2/type/10002/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(5) UNSIGNED NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `user`, `password`, `type`) VALUES
(1, 'admin', '$2y$10$XsglC4YpGIg0k1V6EqS1o.4uxvJZv5vcgNAgHYFL8r6cxHPkO6gxu', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pokemons`
--
ALTER TABLE `pokemons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `pokemons`
--
ALTER TABLE `pokemons`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT de la tabla `types`
--
ALTER TABLE `types`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-07-2019 a las 00:14:01
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebadesa_daniel_bastidas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombdepa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `departments`
--

INSERT INTO `departments` (`id`, `nombdepa`, `created_at`, `updated_at`) VALUES
(1, 'Tolima', '2019-07-27 01:49:09', '2019-07-27 01:49:09'),
(2, 'Huila', '2019-07-27 01:49:09', '2019-07-27 01:49:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_26_195610_create_departments_table', 1),
(4, '2019_07_26_195743_create_municipalities_table', 1),
(5, '2019_07_26_195910_create_type_thirds_table', 1),
(6, '2019_07_26_195913_create_thirds_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipalities`
--

CREATE TABLE `municipalities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombmuni` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iddepa` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `municipalities`
--

INSERT INTO `municipalities` (`id`, `nombmuni`, `iddepa`, `created_at`, `updated_at`) VALUES
(1, 'Ibague', 1, '2019-07-27 01:49:09', '2019-07-27 01:49:09'),
(2, 'Espinal', 1, '2019-07-27 01:49:09', '2019-07-27 01:49:09'),
(3, 'Neiva', 2, '2019-07-27 01:49:09', '2019-07-27 01:49:09'),
(4, 'Pitalito', 2, '2019-07-27 01:49:10', '2019-07-27 01:49:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `thirds`
--

CREATE TABLE `thirds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipoidentificacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numeroidentificacion` int(11) NOT NULL,
  `idtipotercero` bigint(20) UNSIGNED NOT NULL,
  `nombre1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iddepa` bigint(20) UNSIGNED NOT NULL,
  `idmuni` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `thirds`
--

INSERT INTO `thirds` (`id`, `tipoidentificacion`, `numeroidentificacion`, `idtipotercero`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `iddepa`, `idmuni`, `created_at`, `updated_at`) VALUES
(1, 'CC', 1061777874, 2, 'Daniel', 'Yesid', 'Bastidas', 'Samboni', 1, 1, '2019-07-27 01:54:02', '2019-07-27 01:54:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_thirds`
--

CREATE TABLE `type_thirds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombtipo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `type_thirds`
--

INSERT INTO `type_thirds` (`id`, `nombtipo`, `created_at`, `updated_at`) VALUES
(1, 'paciente', '2019-07-27 01:49:10', '2019-07-27 01:49:10'),
(2, 'empleado', '2019-07-27 01:49:10', '2019-07-27 01:49:10'),
(3, 'contratista', '2019-07-27 01:49:10', '2019-07-27 01:49:10'),
(4, 'otro', '2019-07-27 01:49:10', '2019-07-27 01:49:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipalities`
--
ALTER TABLE `municipalities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `municipalities_iddepa_foreign` (`iddepa`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `thirds`
--
ALTER TABLE `thirds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thirds_idtipotercero_foreign` (`idtipotercero`),
  ADD KEY `thirds_iddepa_foreign` (`iddepa`),
  ADD KEY `thirds_idmuni_foreign` (`idmuni`);

--
-- Indices de la tabla `type_thirds`
--
ALTER TABLE `type_thirds`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `municipalities`
--
ALTER TABLE `municipalities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `thirds`
--
ALTER TABLE `thirds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `type_thirds`
--
ALTER TABLE `type_thirds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `municipalities`
--
ALTER TABLE `municipalities`
  ADD CONSTRAINT `municipalities_iddepa_foreign` FOREIGN KEY (`iddepa`) REFERENCES `departments` (`id`);

--
-- Filtros para la tabla `thirds`
--
ALTER TABLE `thirds`
  ADD CONSTRAINT `thirds_iddepa_foreign` FOREIGN KEY (`iddepa`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `thirds_idmuni_foreign` FOREIGN KEY (`idmuni`) REFERENCES `municipalities` (`id`),
  ADD CONSTRAINT `thirds_idtipotercero_foreign` FOREIGN KEY (`idtipotercero`) REFERENCES `type_thirds` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

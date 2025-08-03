-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-08-2025 a las 15:22:10
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

SET FOREIGN_KEY_CHECKS = 0;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examen`
--
CREATE DATABASE IF NOT EXISTS `examen` DEFAULT CHARACTER SET utf8mb4 COLLATE=utf8mb4_general_ci;
USE `examen`;

-- --------------------------------------------------------

--
-- Eliminar tablas en orden correcto para evitar conflicto de claves foráneas
--

DROP TABLE IF EXISTS `libros`;
DROP TABLE IF EXISTS `clientes`;

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(5) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `email`) VALUES
(1, 'Laura Mendoza', 'laura.mendoza@gmail.com'),
(2, 'Francisco Ortega', 'francisco.ortega@hotmail.com'),
(3, 'Beatriz Salas', 'beatriz.salas@gmail.com'),
(4, 'Luis Cabrera', 'luis.cabrera@yahoo.com'),
(5, 'Sandra Nieto', 'sandra.nieto@gmail.com'),
(6, 'Javier Torres', 'jtorres@hotmail.com'),
(7, 'Ana Beltrán', 'ana.beltran@gmail.com'),
(8, 'Miguel Ríos', 'miguel.rios@yahoo.com'),
(9, 'Claudia Paredes', 'claudia.paredes@gmail.com'),
(10, 'Diego Fajardo', 'diego.fajardo@hotmail.com'),
(11, 'Patricia León', 'patricia.leon@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `autor` varchar(150) NOT NULL,
  `anio` int(11) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `titulo`, `autor`, `anio`, `cliente_id`) VALUES
(1, 'La Ladrona de Libros', 'Markus Zusak', 2005, 4),
(2, 'Inferno', 'Dan Brown', 2013, 2),
(3, 'Homo Deus', 'Yuval Noah Harari', 2015, 1),
(4, 'Veronika Decide Morir', 'Paulo Coelho', 1998, 2),
(5, 'Un Mundo Feliz', 'Aldous Huxley', 1932, 3),
(6, 'El Hobbit', 'J.R.R. Tolkien', 1937, 3),
(7, 'La Ciudad de las Bestias', 'Isabel Allende', 2002, 10),
(8, 'Marina', 'Carlos Ruiz Zafón', 1999, 9),
(9, 'Viaje al Centro de la Tierra', 'Julio Verne', 1864, 8),
(10, 'Tokio Blues', 'Haruki Murakami', 1987, 7),
(11, 'Los Detectives Salvajes', 'Roberto Bolaño', 1998, 5),
(12, 'Fahrenheit 451', 'Ray Bradbury', 1953, 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);

SET FOREIGN_KEY_CHECKS = 1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

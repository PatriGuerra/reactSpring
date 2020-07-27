-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 22-06-2020 a las 15:12:49
-- Versión del servidor: 10.3.15-MariaDB
-- Versión de PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `EX1`
--
DROP DATABASE IF EXISTS `EX1`;
CREATE DATABASE IF NOT EXISTS `EX1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `EX1`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `dni` varchar(10) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellidos` varchar(25) NOT NULL,
  `fechaAlta` date NOT NULL,
  `departamento` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`dni`, `nombre`, `apellidos`, `fechaAlta`, `departamento`) VALUES
('11111111A', 'Carlos', 'Martín', '2020-02-02', 'Informatica'),
('22222222A', 'Francisco', 'García', '2016-02-06', 'Informatica'),
('28813872R', 'Juan', 'Álvarez', '2018-05-05', 'informatica'),
('33333333A', 'Antonio', 'Perez', '2010-09-14', 'Deporte'),
('44444444A', 'Isabel', 'Moreno', '2012-01-20', 'LADE'),
('55555555A', 'Maria', 'Campano', '2011-05-06', 'Biotecnologia'),
('99999090A', 'Patricia', 'Márquez', '2013-05-05', 'informatica'),
('99999098A', 'Cristian', 'Vázquez', '2020-05-05', 'informatica');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`dni`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

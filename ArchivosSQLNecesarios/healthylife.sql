-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-05-2022 a las 23:02:47
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `healthylife`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuidadores`
--

CREATE TABLE `cuidadores` (
  `id` int(100) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tipoCuidado` varchar(50) NOT NULL,
  `tarifa` int(11) NOT NULL,
  `formacion` varchar(50) NOT NULL,
  `localidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cuidadores`
--

INSERT INTO `cuidadores` (`id`, `nombre`, `tipoCuidado`, `tarifa`, `formacion`, `localidad`) VALUES
(1, 'Ana', 'Niños', 10, 'Ninguna', 'Rotxapea'),
(2, 'Ramón', 'Personas mayores', 11, 'Experimentado 2 años min.', 'Villava'),
(3, 'Alejandro', 'Personas discapacitadas', 11, 'Ninguna', 'Pamplona'),
(4, 'Silvia', 'Personas Discapacitadas', 10, 'Profesor infantil', 'Burlada'),
(5, 'Benzema', 'Niños', 11, 'Auxiliar de enfermería', 'Barañain'),
(6, 'Carmen', 'Personas mayores', 12, 'Auxiliar de enfermería', 'Rotxapea'),
(7, 'Kevin', 'Personas discapacitadas', 10, 'Ninguna', 'Burlada'),
(8, 'Maitane', 'Niños', 9, 'Profesor infantil', 'Pamplona'),
(9, 'Unai', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Villava'),
(10, 'Sandra', 'Personas mayores', 11, 'Ninguna', 'Barañain');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `emailSolicitante` varchar(100) NOT NULL,
  `cuidador` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`emailSolicitante`, `cuidador`) VALUES
('unaiperez193@gmail.com', 'Maitane');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `email` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `tipoCuidado` varchar(50) NOT NULL,
  `tarifa` int(20) NOT NULL,
  `formacion` varchar(50) NOT NULL,
  `localidad` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`email`, `telefono`, `tipoCuidado`, `tarifa`, `formacion`, `localidad`, `date`) VALUES
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Experimentado 2 años min.', 'Barañain', '2022-05-07 00:00:00'),
('a@gmail.com', '+34111111111', 'Niños', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Barañain', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Personas mayores', 11, 'Profesor infantil', 'Rotxapea', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Personas mayores', 12, 'Profesor infantil', 'Barañain', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Personas mayores', 12, 'Profesor infantil', 'Barañain', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Experimentado 2 años min.', 'Rotxapea', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Personas discapacitadas', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Experimentado 2 años min.', 'Barañain', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Profesor infantil', 'Rotxapea', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Personas discapacitadas', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Profesor infantil', 'Burlada', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Personas mayores', 12, 'Profesor infantil', 'Pamplona', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Auxiliar de enfermería', 'Pamplona', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 13, 'Ninguna', 'Barañain', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Barañain', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Experimentado 2 años min.', 'Rotxapea', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Barañain', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Barañain', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Barañain', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Barañain', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-07 00:00:00'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-07 00:00:00'),
('uperezchic@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Rotxapea', '2022-05-08 00:00:00'),
('uperezchic@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Rotxapea', '2022-05-08 00:00:00'),
('uperezchic@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Rotxapea', '2022-05-08 00:00:00'),
('uperezchic@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Rotxapea', '2022-05-08 00:00:00'),
('uperezchic@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Rotxapea', '2022-05-08 00:00:00'),
('uperezchic@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Rotxapea', '2022-05-08 00:00:00'),
('uperezchic@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Rotxapea', '2022-05-08 00:00:00'),
('uperezchic@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Rotxapea', '2022-05-08 00:00:00'),
('uperezchic@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Rotxapea', '2022-05-08 00:00:00'),
('uperezchic@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Rotxapea', '2022-05-08 00:00:00'),
('uperezchic@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Rotxapea', '2022-05-08 00:00:00'),
('uperezchic@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Rotxapea', '2022-05-08 00:00:00'),
('uperezchic@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Rotxapea', '2022-05-08 00:00:00'),
('uperezchic@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Rotxapea', '2022-05-08 00:00:00'),
('uperezchic@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Rotxapea', '2022-05-08 00:00:00'),
('uperezchic@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Rotxapea', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Niños', 12, 'Experimentado 2 años min.', 'Rotxapea', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Niños', 12, 'Experimentado 2 años min.', 'Rotxapea', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Niños', 12, 'Experimentado 2 años min.', 'Rotxapea', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Niños', 12, 'Experimentado 2 años min.', 'Rotxapea', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 00:00:00'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:09:33'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:11:25'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:11:52'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:12:44'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:13:32'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:13:53'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:14:24'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:14:41'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:16:41'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:16:50'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:19:38'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:19:49'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:19:59'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:20:10'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:20:50'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:21:40'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:21:53'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:23:33'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:24:12'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:24:25'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:25:08'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:25:20'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:25:40'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:26:05'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:26:23'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:26:41'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:27:05'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:27:28'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:27:38'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:28:28'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:28:47'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:29:11'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-08 23:31:01'),
('uperezchic@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Pamplona', '2022-05-09 18:04:47'),
('uperezchic@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Pamplona', '2022-05-09 18:05:21'),
('uperezchic@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Pamplona', '2022-05-09 18:07:11'),
('uperezchic@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Pamplona', '2022-05-09 18:07:22'),
('uperezchic@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Pamplona', '2022-05-09 18:07:53'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:08:36'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:08:55'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:09:13'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:09:45'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:10:10'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:11:03'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:11:25'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:11:35'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:11:51'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:12:01'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:12:09'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:13:43'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:13:59'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:14:40'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:14:50'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:15:05'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:15:22'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:15:30'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:15:44'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:15:53'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:16:32'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:17:06'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:17:15'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:17:21'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:17:28'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:18:31'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:19:08'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:19:32'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:20:04'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:20:38'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:23:01'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:23:14'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:23:40'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:23:50'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:24:23'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:24:37'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:24:46'),
('unai.perez@familiados.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:37:57'),
('unai.perez@familiados.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:40:28'),
('unai.perez@familiados.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:41:34'),
('unai.perez@familiados.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:42:18'),
('unai.perez@familiados.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:42:42'),
('unai.perez@familiados.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Pamplona', '2022-05-09 18:44:20'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Profesor infantil', 'Pamplona', '2022-05-09 18:44:58'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Profesor infantil', 'Pamplona', '2022-05-09 18:46:05'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Profesor infantil', 'Pamplona', '2022-05-09 18:47:24'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Profesor infantil', 'Pamplona', '2022-05-09 18:48:41'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Profesor infantil', 'Pamplona', '2022-05-09 18:50:51'),
('unaiperez193@gmail.com', '+34666666666', 'Personas discapacitadas', 12, 'Experimentado 2 años min.', 'Rotxapea', '2022-05-09 18:52:09'),
('unaiperez193@gmail.com', '+34666666666', 'Personas discapacitadas', 12, 'Experimentado 2 años min.', 'Rotxapea', '2022-05-09 18:58:19'),
('unaiperez193@gmail.com', '+34666666666', 'Personas discapacitadas', 12, 'Experimentado 2 años min.', 'Rotxapea', '2022-05-09 18:59:48'),
('unaiperez193@gmail.com', '+34666666666', 'Personas discapacitadas', 12, 'Experimentado 2 años min.', 'Rotxapea', '2022-05-09 19:00:29'),
('unaiperez193@gmail.com', '+34666666666', 'Personas discapacitadas', 12, 'Experimentado 2 años min.', 'Rotxapea', '2022-05-09 19:02:04'),
('unaiperez193@gmail.com', '+34666666666', 'Personas discapacitadas', 12, 'Experimentado 2 años min.', 'Rotxapea', '2022-05-09 19:04:08'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Experimentado 2 años min.', 'Villava', '2022-05-09 19:45:11'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Experimentado 2 años min.', 'Villava', '2022-05-09 19:46:50'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Experimentado 2 años min.', 'Villava', '2022-05-09 19:47:09'),
('unaiperez193@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-09 20:55:30'),
('unaiperez193@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-09 21:37:03'),
('unaiperez193@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-09 21:43:14'),
('unaiperez193@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-09 22:01:21'),
('u@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Pamplona', '2022-05-10 20:33:57'),
('u@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 20:51:19'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:28:25'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:31:18'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:31:32'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:56'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:56'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:56'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:56'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:56'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:56'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:56'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:56'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:56'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:57'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:57'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:57'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:57'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:57'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:57'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:57'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:57'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:57'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:57'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:57'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:57'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:57'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:57'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:57'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:57'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:57'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:57'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:57'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:58'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:58'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:58'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:58'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:58'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:58'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:58'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:58'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:58'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:58'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:58'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:58'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:59'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:35:59'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:36:17'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:36:41'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:36:41'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:36:41'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:36:41'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:36:41'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:36:41'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:36:41'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:36:41'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:36:41'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:36:41'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:36:41'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:36:41'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:36:42'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:36:42'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:36:42'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:36:42'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:36:42'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:36:42'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:36:42'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:36:42'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:36:42'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:37:14'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-10 21:41:29'),
('unaiperez193@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Barañain', '2022-05-10 21:41:57'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 15, 'Experimentado 2 años min.', 'Villava', '2022-05-10 21:49:42'),
('unaiperez193@gmail.com', '+34666666666', 'Personas mayores', 12, 'Profesor infantil', 'Rotxapea', '2022-05-10 22:29:50'),
('unaiperez193@gmail.com', '+34666666666', 'Personas mayores', 12, 'Profesor infantil', 'Burlada', '2022-05-10 23:32:13'),
('unaiperez193@gmail.com', '+34666666666', 'Personas mayores', 12, 'Profesor infantil', 'Burlada', '2022-05-10 23:33:17'),
('unaiperez193@gmail.com', '+34666666666', 'Personas mayores', 12, 'Profesor infantil', 'Burlada', '2022-05-10 23:34:11'),
('unaiperez193@gmail.com', '+34666666666', 'Personas mayores', 12, 'Profesor infantil', 'Burlada', '2022-05-10 23:35:44'),
('unaiperez193@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Burlada', '2022-05-11 23:50:58'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-12 00:24:25'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Villava', '2022-05-12 19:03:07'),
('u@gmail.com', '+34666666666', 'Personas discapacitadas', 12, 'Ninguna', 'Barañain', '2022-05-15 17:14:24'),
('unaiperez193@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Barañain', '2022-05-15 22:14:34'),
('unaiperez193@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Barañain', '2022-05-15 22:15:25'),
('unaiperez193@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Barañain', '2022-05-15 22:15:56'),
('unaiperez193@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Barañain', '2022-05-15 22:17:02'),
('unaiperez193@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Barañain', '2022-05-15 22:17:29'),
('unaiperez193@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Barañain', '2022-05-15 22:18:05'),
('unaiperez193@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Barañain', '2022-05-15 22:18:16'),
('unaiperez193@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Barañain', '2022-05-15 22:18:40'),
('unaiperez193@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Barañain', '2022-05-15 22:19:02'),
('unaiperez193@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Barañain', '2022-05-15 22:19:34'),
('unaiperez193@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Barañain', '2022-05-15 22:19:51'),
('unaiperez193@gmail.com', '+34666666666', 'Niños', 12, 'Experimentado 2 años min.', 'Rotxapea', '2022-05-15 22:26:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valoracion`
--

CREATE TABLE `valoracion` (
  `Fecha` date NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Valoracion` float NOT NULL,
  `Comentario` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `valoracion`
--

INSERT INTO `valoracion` (`Fecha`, `Nombre`, `Valoracion`, `Comentario`) VALUES
('0000-00-00', '4.5', 0, '2022:05:12'),
('2022-05-12', 'Hola2', 3, 'Va bien3'),
('2022-05-12', 'Hola2', 3, 'Va bien3'),
('2022-05-12', 'Hola2', 3, 'Va bien3'),
('2022-05-12', 'Pepe', 4.5, 'Es util'),
('2022-05-12', 'Pepe', 3, 'Es util'),
('2022-05-12', 'Pepe', 3, 'Es util'),
('2022-05-12', 'Pepe', 3, 'Es util'),
('2022-05-12', 'Pepe', 3, 'Es util'),
('2022-05-15', 'Pepe', 3.5, 'Hola, gracias por la ayuda!');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuidadores`
--
ALTER TABLE `cuidadores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cuidadores`
--
ALTER TABLE `cuidadores`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

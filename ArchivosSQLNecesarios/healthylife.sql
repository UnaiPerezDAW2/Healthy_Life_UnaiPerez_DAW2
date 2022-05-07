-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2022 a las 19:52:24
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

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
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `email` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `tipoCuidado` varchar(50) NOT NULL,
  `tarifa` int(20) NOT NULL,
  `formacion` varchar(50) NOT NULL,
  `localidad` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`email`, `telefono`, `tipoCuidado`, `tarifa`, `formacion`, `localidad`, `date`) VALUES
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Experimentado 2 años min.', 'Barañain', '2022-05-07'),
('a@gmail.com', '+34111111111', 'Niños', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Barañain', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Personas mayores', 11, 'Profesor infantil', 'Rotxapea', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Personas mayores', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Personas mayores', 12, 'Profesor infantil', 'Barañain', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Personas mayores', 12, 'Profesor infantil', 'Barañain', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Experimentado 2 años min.', 'Rotxapea', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Personas discapacitadas', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Experimentado 2 años min.', 'Barañain', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Profesor infantil', 'Rotxapea', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Personas discapacitadas', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Profesor infantil', 'Burlada', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Personas mayores', 12, 'Profesor infantil', 'Pamplona', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Auxiliar de enfermería', 'Pamplona', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Experimentado 2 años min.', 'Burlada', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 13, 'Ninguna', 'Barañain', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Personas mayores', 12, 'Ninguna', 'Barañain', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Experimentado 2 años min.', 'Rotxapea', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Barañain', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Barañain', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Barañain', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Barañain', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-07'),
('maitanebasket5@gmail.com', '+34666666666', 'Niños', 12, 'Ninguna', 'Rotxapea', '2022-05-07');

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

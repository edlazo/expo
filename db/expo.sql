-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2023 a las 20:39:51
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `expo`
--
CREATE DATABASE IF NOT EXISTS `expo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `expo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobante`
--

CREATE TABLE `comprobante` (
  `id_compra` int(11) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `cuit` varchar(15) NOT NULL,
  `pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comprobante`
--

INSERT INTO `comprobante` (`id_compra`, `dni`, `cuit`, `pago`) VALUES
(1, '2323', '30-20230005-3', 200),
(2, '2323', '30-20230005-3', 200),
(3, '2323', '30-20230001-5', 200),
(4, '2323', '30-20230001-5', 200),
(5, '2323', '30-20230001-5', 200),
(6, '2323', '30-20230001-5', 200),
(7, '2323', '30-20230001-5', 200),
(8, '2323', '30-20230001-5', 200),
(9, '2323', '30-20230001-5', 200),
(10, '2323', '30-20230001-5', 200),
(11, '2323', '30-20230001-5', 200),
(12, '2323', '30-20230001-5', 200),
(13, '33515575', '30-20230005-3', 20),
(14, '33515575', '30-20230005-3', 20),
(15, '33515575', '30-20230005-3', 20),
(16, '33515575', '30-20230005-3', 20),
(17, '33515575', '30-20230005-3', 20),
(18, '33515575', '30-20230005-3', 20),
(19, '33515575', '30-20230005-3', 20),
(20, '33515575', '30-20230005-3', 20),
(21, '33515575', '30-20230005-3', 20),
(22, '33515575', '30-20230005-3', 20),
(23, '33515575', '30-20230005-3', 20),
(24, '33515575', '30-20230005-3', 20),
(25, '33515575', '30-20230005-3', 20),
(26, '33515575', '30-20230005-3', 20),
(27, '33515575', '30-20230005-3', 20),
(28, '33515575', '30-20230005-3', 20),
(29, '33515575', '30-20230005-3', 20),
(30, '33515575', '30-20230005-3', 20),
(31, '33515575', '30-20230005-3', 20),
(32, '33515575', '30-20230005-3', 20),
(33, '33515575', '30-20230005-3', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id` int(11) NOT NULL,
  `curso` varchar(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `cuit` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id`, `curso`, `nombre`, `cuit`) VALUES
(1, '4to A', 'Juguetinton S. C.', '30-20230005-3'),
(2, '4to A', 'Los primos Calzados S. C.', '30-20230001-5'),
(3, '4to A', 'Meteoro Ropa S.C.', '30-20230010-6'),
(4, '4to A', 'Melodía Manada S.C.', '30-20230002-8'),
(5, '4to A', 'Gol de oro S. C.', '30-20230003-7'),
(6, '4to A', 'Los obreros hermanos S.C.', '30-20230020-3'),
(7, '4to A', 'Serendipia S.C.', '30-20230030-0'),
(8, '4to B', 'Eclipse S.C.', '30-20230004-3'),
(9, '4to B', 'Andromeda S.C.', '30-20230006-7'),
(10, '4to B', 'Apollo3 S.C.', '30-20230007-6'),
(11, '4to B', 'Digital Market S.C.', '30-20230008-5'),
(12, '4to B', 'Jozgorio S.C.', '30-20230009-7'),
(13, '4to B', 'Ponte en Movimiento S.C.', '30-20230009-3'),
(14, '4to B', 'Venus S.C.', '30-20230050-8'),
(15, '4to B', 'Mi Mueble S.C.', '30-20230060-1'),
(16, '6to A', 'PubliArte S.A.', '30-20140013-4'),
(17, '6to B', 'Pro Salud S.A.', '30-20224002-8'),
(18, '6to B', 'Sol Propiedades S.A.', '30-20224001-7'),
(19, '6to B', 'Expres -Arte', '30-20234100-3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(11) NOT NULL,
  `nombre_apellido` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `saldo` int(11) NOT NULL DEFAULT 100000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombre_apellido`, `mail`, `dni`, `saldo`) VALUES
(1, 'Juan', 'e@gmail.com', '33489023', 20000),
(2, 'Pedro', 'a@asd', '2323', 17600),
(3, 'Pedro', 'a@asd', '2323', 17600),
(4, 'Alex', 'a@a', '3321', 20000),
(5, 'Alex', 'a@a', '3321', 20000),
(6, 'Alex', 'a@a', '3321', 20000),
(7, 'Sonia', 'a@a', '11', 20000),
(8, 'Sonia', 'a@a', '11', 20000),
(9, 'Sonia', 'a@a', '11', 20000),
(10, 'Sonia', 'a@a', '11', 20000),
(11, 'Sonia', 'a@a', '11', 20000),
(12, 'Sonia', 'a@a', '11', 20000),
(13, 'Sonia', 'a@a', '11', 20000),
(14, 'Sonia', 'a@a', '11', 20000),
(15, 'Sonia', 'a@a', '11', 20000),
(16, 'Sonia', 'a@a', '11', 20000),
(17, 'Sonia', 'a@a', '11', 20000),
(18, 'Sonia', 'a@a', '11', 20000),
(19, 'Sonia', 'a@a', '11', 20000),
(20, 'Sonia', 'a@a', '11', 20000),
(21, 'Sonia', 'a@a', '11', 20000),
(22, 'Sonia', 'a@a', '11', 20000),
(23, 'Sonia', 'a@a', '11', 20000),
(24, 'Sonia', 'a@a', '11', 20000),
(25, 'Sonia', 'a@a', '11', 20000),
(26, 'Sonia', 'a@a', '11', 20000),
(27, 'Sonia', 'a@a', '11', 20000),
(28, 'Pedro', 'as@asd', '121', 20000),
(29, 'Pedro', 'as@asd', '121', 20000),
(30, 'Pedro', 'as@asd', '121', 20000),
(31, 'Pedro', 'as@asd', '121', 20000),
(32, 'Pedro', 'as@asd', '121', 20000),
(33, 'Pedro', 'as@asd', '121', 20000),
(34, 'Pedro', 'as@asd', '121', 20000),
(35, 'Pedro', 'as@asd', '121', 20000),
(36, 'Pedro', 'as@asd', '121', 20000),
(37, 'Pedro', 'as@asd', '121', 20000),
(38, 'Pedro', 'as@asd', '121', 20000),
(39, 'Pedro', 'as@asd', '2323', 17600),
(40, 'Pedro', 'as@asd', '2323', 17600),
(41, 'Pedro', 'as@asd', '2323', 17600),
(42, 'Pedro', 'as@asd', '2323', 17600),
(43, 'Pedro', 'as@asd', '2323', 17600),
(44, 'Pedro', 'as@asd', '2323', 17600),
(45, 'Pedro', 'as@asd', '2323', 17600),
(46, 'Pedro', 'as@asd', '2323', 17600),
(47, 'a', 'e@gmail.com', '1', 20000),
(48, 'a', 'e@gmail.com', '1', 20000),
(49, 'a', 'e@gmail.com', '1', 20000),
(50, 'a', 'e@gmail.com', '1', 20000),
(51, 'a', 'e@gmail.com', '1', 20000),
(52, 'a', 'e@gmail.com', '1', 20000),
(53, 'a', 'e@gmail.com', '1', 20000),
(54, 'a', 'e@gmail.com', '1', 20000),
(55, 'a', 'e@gmail.com', '1', 20000),
(56, 'a', 'e@gmail.com', '1', 20000),
(57, 'a', 'e@gmail.com', '1', 20000),
(58, 'a', 'a@asd', 'a', 20000),
(59, 'a', 'as@asd', 'a', 20000),
(60, 'a', 'as@asd', 'a', 20000),
(61, 'a', 'as@asd', 'a', 20000),
(62, 'a', 'as@asd', 'a', 20000),
(63, 'a', 'as@asd', 'a', 20000),
(64, 'a', 'as@asd', 'a', 20000),
(65, 'a', 'as@asd', 'a', 20000),
(66, 'a', 'as@asd', 'a', 20000),
(67, 'a', 'as@asd', 'a', 20000),
(68, 'a', 'as@asd', 'a', 20000),
(69, 'a', 'as@asd', 'a', 20000),
(70, 'a', 'as@asd', 'a', 20000),
(71, 'a', 'as@asd', 'a', 20000),
(72, 'a', 'as@asd', 'a', 20000),
(73, 'a', 'as@asd', 'a', 20000),
(74, 'a', 'as@asd', 'a', 20000),
(75, 'a', 'as@asd', 'a', 20000),
(76, 'a', 'as@asd', 'a', 20000),
(77, 'a', 'as@asd', 'a', 20000),
(78, 'a', 'as@asd', 'a', 20000),
(79, 'a', 'as@asd', 'a', 20000),
(80, 'a', 'as@asd', 'a', 20000),
(81, 'a', 'as@asd', 'a', 20000),
(82, 'a', 'as@asd', 'a', 20000),
(83, 'a', 'as@asd', 'a', 20000),
(84, 'a', 'as@asd', 'a', 20000),
(85, 'a', 'as@asd', 'a', 20000),
(86, 'a', 'as@asd', 'a', 20000),
(87, 'a', 'as@asd', 'a', 20000),
(88, 'a', 'a@a', '1', 20000),
(89, 'a', 'a@a', '1', 20000),
(90, 'a', 'a@a', '1', 20000),
(91, 'juan20', 'a@a', '33', 20000),
(92, 'juan20', 'a@a', '33', 100000),
(93, 'juan20', 'a@a', '33', 100000),
(94, 'juan20', 'a@a', '33', 100000),
(95, 'juan20', 'a@a', '33', 100000),
(96, 'juan20', 'a@a', '33', 100000),
(97, 'juan20', 'a@a', '33', 100000),
(98, 'juan20', 'a@a', '33', 100000),
(99, 'juan20', 'a@a', '33', 100000),
(100, 'juan20', 'a@a', '33', 100000),
(101, 'juan20', 'a@a', '33', 100000),
(102, 'juan20', 'a@a', '33', 100000),
(103, 'juan20', 'a@a', '33', 100000),
(104, 'juan20', 'a@a', '33', 100000),
(105, 'juan20', 'a@a', '33', 100000),
(106, 'juan20', 'a@a', '33', 100000),
(107, 'juan20', 'a@a', '33', 100000),
(108, 'juan20', 'a@a', '33', 100000),
(109, 'juan20', 'a@a', '33', 100000),
(110, 'juan20', 'a@a', '33', 100000),
(111, 'juan20', 'a@a', '33', 100000),
(112, 'juan20', 'a@a', '33', 100000),
(113, 'juan20', 'a@a', '33', 100000),
(114, 'juan20', 'a@a', '33', 100000),
(115, 'juan20', 'a@a', '33', 100000),
(116, 'juan20', 'a@a', '33', 100000),
(117, 'juan20', 'a@a', '33', 100000),
(118, 'juan20', 'a@a', '33', 100000),
(119, 'juan20', 'a@a', '33', 100000),
(120, 'juan20', 'a@a', '33', 100000),
(121, 'juan20', 'a@a', '33', 100000),
(122, 'juan20', 'a@a', '33', 100000),
(123, 'juan20', 'a@a', '33', 100000),
(124, 'juan20', 'a@a', '33', 100000),
(125, 'juan20', 'a@a', '33', 100000),
(126, 'juan20', 'a@a', '33', 100000),
(127, 'juan20', 'a@a', '33', 100000),
(128, 'juan20', 'a@a', '33', 100000),
(129, 'Eric Pastore', 'efpastore@gmail.com', '33515575', 99580),
(130, 'Eric', 'sada@a', '21', 100000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comprobante`
--
ALTER TABLE `comprobante`
  ADD PRIMARY KEY (`id_compra`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comprobante`
--
ALTER TABLE `comprobante`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

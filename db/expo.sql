-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-11-2023 a las 02:42:05
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobante`
--

CREATE TABLE `comprobante` (
  `id_compra` int(11) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `cuil` varchar(15) NOT NULL,
  `pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id` int(11) NOT NULL,
  `curso` varchar(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `cuil` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id`, `curso`, `nombre`, `cuil`) VALUES
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
  `telefono` varchar(11) NOT NULL,
  `saldo` int(11) NOT NULL DEFAULT 20000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

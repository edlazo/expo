-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 26-10-2023 a las 05:16:38
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

--
-- Volcado de datos para la tabla `comprobante`
--

INSERT INTO `comprobante` (`id_compra`, `dni`, `cuil`, `pago`) VALUES
(1, '14184166', '30-20230005-3', 200);

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
(16, '5to A', 'Essi Decoraciones S.R.L.', '30-20150700-8'),
(17, '5to A', 'Su Marca S.R.L.', '30-20140805-5'),
(18, '5to A', 'Tenda S.R.L.', '30-50002019-1'),
(19, '5to A', 'Citadina S.R.L.', '30-50002019-4'),
(20, '5to B', '5 Fases S.R.L.', '30-20140002-1'),
(21, '5to B', 'Deco Art S.R.L.', '30-50002019-2'),
(22, '5to B', 'Zupra S.R.L.', '30-20180020-2'),
(23, '5to B', 'Vivero Millaray S.R.L.', '30-20140001-1'),
(24, '5to B', 'Lux S.R.L.', '30-20140003-3'),
(25, '5to A', 'Alaska S.R.L.', '30-20161001-1'),
(26, '6to A', 'Banco Del Sol S.A.', '30-20140020-1'),
(27, '6to A', 'Visa S.A.', '30-20140256-3'),
(28, '6to A', 'PubliArte S.A.', '30-20140013-4'),
(29, '6to A', 'A.F.I.P. S.A.', '30-20140011-2'),
(30, '6to A', 'Los 4 Elementos S.A.', '30-20140012-3'),
(31, '6to B', 'Banco Imas S.A.', '30-20140014-5'),
(32, '6to B', 'Municipalidad S.A.', '30-20140010-1'),
(33, '6to B', 'Pro Salud S.A.', '30-20224002-8'),
(34, '6to B', 'Sol Propiedades S.A.', '30-20224001-7'),
(35, '6to B', 'Expres -Arte', '30-20234100-3'),
(36, '6to B', 'Águilas SA', '30-20234200-6');

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
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombre_apellido`, `mail`, `dni`, `telefono`, `saldo`) VALUES
(1, 'Carlos Lazo', 'elias.demian.lazo2@gmail.com', '14184166', '1558822052', 5800);

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
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

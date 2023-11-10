-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2023 a las 12:41:57
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
  `cuit` varchar(15) NOT NULL,
  `pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comprobante`
--

INSERT INTO `comprobante` (`id_compra`, `dni`, `cuit`, `pago`) VALUES
(1, '33515575', '30-20230002-8', 1000),
(2, '33515575', '30-20230001-5', 1000),
(3, '33515575', '30-20230001-5', 2000),
(4, '46911963', '30-20230008-5', 60000),
(5, '40885755', '30-20230004-3', 30000),
(6, '22047928', '30-20230009-3', 35000),
(7, '22047928', '30-20230004-3', 54000),
(8, '22047928', '30-20230004-3', 11000),
(9, '23876821', '30-20230009-7', 6100),
(10, '16191701', '30-20230007-6', 90),
(11, '42321065', '30-20230009-3', 3500),
(12, '28191020', '30-20230003-7', 45000),
(13, '24043783', '30-20230003-7', 65000),
(14, '25612881', '30-20230009-3', 35000),
(15, '25612881', '30-20230009-3', 4500),
(16, '23876821', '30-20230010-6', 8500),
(17, '28191020', '30-20230006-7', 1900),
(18, '36853345', '30-20230020-3', 99),
(19, '36853345', '30-20230020-3', 99),
(20, '34452642', '30-20230004-3', 10000),
(21, '20703595', '30-20140013-4', 29040),
(22, '22709668', '30-20230009-3', 70000),
(23, '20703595', '30-20230020-3', 32000),
(24, '20703595', '30-20224002-8', 11500),
(25, '22709668', '30-20230008-5', 20000),
(26, '20703595', '30-20230010-6', 8000),
(27, '22109009', '30-20230060-1', 57500),
(28, '20703595', '30-20230003-7', 18000),
(29, '22109009', '30-20230006-7', 32100),
(30, '23178373', '30-20230002-8', 96000),
(31, '23572879', '30-20140013-4', 12100),
(32, '34506861', '30-20230050-8', 15500),
(33, '34506861', '30-20230050-8', 36800),
(34, '36847717', '30-20230050-8', 31100),
(35, '24139995', '30-20230006-7', 100000),
(36, '20640769', '30-20230002-8', 29000),
(37, '50978315', '30-20230008-5', 100000),
(38, '23216771', '30-20230009-3', 100000),
(39, '20521991', '30-20230009-3', 70000),
(40, '39387124', '30-20230009-3', 100000),
(41, '33515575', '30-20230002-8', 22000),
(42, '47314275', '30-20230009-3', 100000),
(43, '20521991', '30-20230009-3', 30000),
(44, '33515353', '30-20230009-3', 100000),
(45, '20067165', '30-20230009-3', 100000),
(46, '27789254', '30-20230030-0', 13700),
(47, '22757794', '30-20230009-7', 45900),
(48, '37554730', '30-20230003-7', 32000),
(49, '22757794', '30-20230003-7', 32000),
(50, '23572879', '30-20224002-8', 11500),
(51, '37790166', '30-20230009-3', 100000),
(52, '27789254', '30-20230010-6', 44500),
(53, '22757794', '30-20230006-7', 19250),
(54, '27789254', '30-20230009-7', 1200),
(55, '27789254', '30-20230004-3', 15500),
(56, '25809111', '30-20230009-3', 100),
(57, '25809111', '30-20230009-3', 99900),
(58, '48446686', '30-20230010-6', 3000),
(59, '25612881', '30-20230009-3', 25000),
(60, '48446686', '30-20230006-7', 18000),
(61, '48446686', '30-20230050-8', 1400),
(62, '48847716', '30-20230010-6', 2500),
(63, '25612881', '30-20230009-3', 10000),
(64, '48446611', '30-20230003-7', 90000),
(66, '48446741', '30-20230003-7', 20000),
(67, '48220633', '30-20230003-7', 65000),
(68, '34012441', '30-20230006-7', 61900),
(69, '48220633', '30-20230050-8', 35000),
(70, '41332496', '30-20230003-7', 40000),
(71, '41332496', '30-20230003-7', 60000),
(72, '24435008', '30-20230003-7', 45000),
(73, '24435008', '30-20230003-7', 32000),
(74, '48446741', '30-20230009-3', 70000),
(75, '48446741', '30-20230009-7', 10000),
(76, '50900900', '30-20230009-3', 35000),
(77, '90090060', '30-20230009-3', 60000),
(78, '23139246', '30-20230003-7', 32000),
(79, '50900900', '30-20230003-7', 45000),
(80, '10010010', '30-20230003-7', 45000),
(81, '20020020', '30-20230003-7', 65),
(82, '45237593', '30-20230003-7', 65000),
(83, '26440499', '30-20230003-7', 97000),
(84, '10010010', '30-20230060-1', 55000),
(85, '90090060', '30-20230060-1', 40000),
(86, '46896369', '30-20230007-6', 50000),
(87, '41745123', '30-20230020-3', 68996),
(88, '48525217', '30-20230006-7', 61900),
(89, '37250243', '30-20230006-7', 100000),
(90, '41745123', '30-20230009-3', 30000),
(91, '17660561', '30-20230003-7', 52000),
(92, '17660561', '30-20230003-7', 25000),
(93, '35649580', '30-20230006-7', 100000),
(94, '10160262', '30-20230006-7', 100000),
(95, '23023663', '30-20230006-7', 100000),
(96, '35025526', '30-20230003-7', 97000);

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
(1, 'Eric', 'a@a', '33515575', 74000),
(2, 'lauty', 'a@l', '33515353', 0),
(3, 'Renzo', 'renzogabrieldiazcara@gmail.com', '47314275', 0),
(4, 'Luca Camaño', 'a@a', '47099718', 100000),
(5, 'Gonzalo kupczewski', 'gnkup05@gmail.com', '46911963', 40000),
(6, 'Pablo Martinez', 'martinez.pablo.1992@gmail.com', '36724175', 100000),
(7, 'Roxana', 'droflo22@gmail.com', '25638313', 100000),
(8, 'Milagros Calar', 'milicalarco@gmail.com', '40885755', 70000),
(9, 'Sergio Daniel Giles', 'sergiogiles_rp@yahoo.com.ar', '22047928', 0),
(10, 'Bello Maria Isabel', 'isabelbello1963@gmail.com', '16191701', 99910),
(11, 'Esteban Gomez', 'a@l', '34012441', 38100),
(12, 'Chechu Martinez', 'ceci_martinez1974@yahoo.com.ar', '23876821', 85400),
(13, 'Sofia martinez', 'sofiamartinez0211ok@gmail.com', '42321065', 96500),
(14, 'Acosta Antonela', 'acostaantonela35@gmail.com', '36853345', 99802),
(15, 'Julieta roncati', 'jutesz@hotmail.com', '33838933', 100000),
(16, 'Berocai Erica', 'EricaBerocai@gmail.com', '31044235', 100000),
(17, 'Sosa Verónica Gabriela ', 'vernicasosa@gmail.com', '27015657', 100000),
(18, 'Sosa Diego ', 'sosadadrian@gmail.com', '25310887', 100000),
(19, 'Fernando ROmero', 'Ferchu.fr@gmail.com', '25612881', 25500),
(20, 'Mario rios dascenzo', 'marioriosdascenzo@gmail.com', '28191020', 53100),
(21, 'Diego Navatta', 'dgnavat@gmail.com', '24043783', 35000),
(22, 'bIzhenei romina', 'rizheimer@gmail.com', '34452642', 90000),
(23, 'Maria Mercedes Robin', 'MaryMrobi@gmail.com', '18448667', 100000),
(24, 'Karina Lopez', 'Ale-Kari@hotmail.com', '26943858', 100000),
(25, 'Andrea Castillo', 'andreacastillo448350@gmail.com', '22550668', 100000),
(26, 'Andrea Castillo', 'andreacastillo448350@gmail.com', '22550668', 100000),
(27, 'Adriana Castelucha', 'Liliana.Castelucho56@gmail.com', '12349344', 100000),
(28, 'Daniela videla ', 'mdvidela@hotmail.com', '22109009', 10400),
(29, 'Luis Antonio Castrogiovani', 'a@a', '10740381', 100000),
(30, 'Castillo Andrea', 'a@a', '22550668', 100000),
(31, 'Romina acosta', 'romi_lara_15@gmail.com', '27251618', 100000),
(32, 'Andrea Castillo', 'andreacastillo448350@gmail.com', '22550668', 100000),
(33, 'Andrea Castillo', 'andreacastillo448350@gmail.com', '22550668', 100000),
(34, 'Rodriguez Nelson', 'a@a', '31913259', 100000),
(35, 'Canteli Enrique', 'a@a', '20703595', 1460),
(36, 'Diego Guillermo Gomez', 'a@a', '22709668', 10000),
(37, 'Marcelo Gomez Lucero', 'a@a', '23572879', 76400),
(38, 'hassan Abraham', 'a@a', '40234586', 100000),
(39, 'Torres Maria Teresa', 'a@l', '23178373', 4000),
(40, 'Analia lopez', 'a@a', '23891720', 100000),
(41, 'Berres Gotista', 'a@a', '50978315', 0),
(42, 'Nuñez Diana', 'a@l', '34506861', 47700),
(43, 'Rocio Rodriguez', 'a@a', '36847717', 68900),
(44, 'Albarran Melina', 'a@a', '37554730', 68000),
(45, 'Reguera Sergio', 'a@a', '39654534', 100000),
(46, 'Daniela Dallara', 'a@a', '24139995', 0),
(47, 'Gabriela Gallo', 'a@a', '22170097', 100000),
(48, 'Aguierre viviana', 'a@a', '20640769', 71000),
(49, 'susy glay tenreyro', 'a@a', '04121634', 100000),
(50, 'fabiana bruno', 'fabianabruno68@hotmail.com', '20521991', 0),
(51, 'Aguirre Viviana ', 'vivi.aguirre93@gmail.com', '20640769', 71000),
(52, 'Cecilia Bregar', 'a@a', '23216771', 0),
(53, 'Mirta Liliana Lopez', 'a@a', '27789254', 25100),
(54, 'Irma Feliciaga Zalazar', 'a@a', '20067165', 0),
(55, 'Diana', 'a@a', '39387124', 0),
(56, 'Cristian', 'a@a', '22757794', 2850),
(57, 'López Mirta ', 'mirlopez2010@hotmail.com', '27789254', 25100),
(58, 'Marcelo Lieva', 'a@a', '37790166', 0),
(59, 'Mirta lopez', 'mirlopez2010@hotmail.com', '27789254', 38800),
(60, 'Flabia Rondan', 'a@l', '26461586', 100000),
(61, 'Ana Alejandra Zalazar', 'a@a', '25809111', 0),
(62, 'Mariela Alejandra acosta', 'a@l', '26345932', 100000),
(63, 'Santino Romero', 'sjromero@gmail.com', '48847716', 97500),
(64, 'Melany Rodriguez ', 'merodriguez@colegiosolari.edu.ar', '48446686', 77600),
(65, 'Milena Navatta', 'milenanavatta@gmail.com', '48316991', 100000),
(66, 'Ariel Arizaga', 'a@a', '26282109', 100000),
(67, 'Torres Luz', 'latorres@colegiosolari.edu.ar', '48446611', 10000),
(68, 'Vera Alejandro', 'a@a', '23913850', 100000),
(69, 'Moreno Carolina', 'a@a', '27282653', 100000),
(71, 'Santino Zuleta', 'Santinozuleta12@email.com', '48446741', 0),
(72, 'Agustina Gomez', 'a@a', '38256604', 100000),
(73, 'Andrea Sabella', 'a@l', '22789362', 100000),
(74, 'Antonela Gomez', 'a@a', '48220633', 0),
(75, 'nicolas oviedo', 'a@a', '41332496', 0),
(76, 'hernan castillo', 'a@a', '24435008', 23000),
(77, 'mateo niz', 'a@a', '47793438', 100000),
(78, 'sergio lopez', 'a@a', '24331734', 100000),
(79, 'roxana cordoba', 'a@a', '24732925', 100000),
(80, 'fontan valentina', 'a@a', '48448557', 100000),
(81, 'coronel nadia', 'a@a', '30582411', 100000),
(82, 'gallegos ines', 'a@a', '13331636', 100000),
(83, 'candela barbieri', 'a@a', '12345678', 100000),
(84, 'contanza allende', 'a@a', '87654321', 100000),
(85, 'Lourdes', 'a@a', '47314392', 100000),
(86, 'bianca leiva', 'a@a', '11738511', 100000),
(87, 'Santiago vega', 'a@a', '50900900', 20000),
(88, 'Uriel Meza', 'a@a', '50800800', 100000),
(89, 'matias elmaraz', 'a@a', '60900900', 100000),
(90, 'Benjamín galan', 'a@a', '49747556', 100000),
(91, 'santiago tumanski', 'a@a', '90090060', 0),
(92, 'sofia benitez', 'a@a', '60060060', 100000),
(93, 'valentina vilde', 'a@a', '20020020', 99935),
(94, 'nahia kup', 'a@a', '46703645', 100000),
(95, 'lisayan', 'a@a', '49200360', 100000),
(96, 'juan manuel salomon', 'a@a', '23139246', 68000),
(97, 'Azic Benjamín ', 'a@a', '90090020', 100000),
(98, 'cardozo leandro', 'a@a', '44263178', 100000),
(99, 'Santino vatica ', 'a@a', '10010010', 0),
(100, 'laura castri giovanni', 'a@a', '26440499', 3000),
(101, 'Valentina Vilte ', 'valentinavilte1728@gmail.com', '20020020', 99935),
(102, 'Castrogiovanni Laura', 'laurim1978@gmail.com', '26440499', 3000),
(103, 'Rocio Saccella', 'rocio_aylen03@hotmail.com.ar', '45237593', 35000),
(104, 'alejandra albornoz', 'a@a', '21675758', 100000),
(105, 'Luca Beltran', 'lucabeltran25@gmail.com', '46896369', 50000),
(106, 'Hernan Marana', 'hernanmarana@gmail.com', '27256303', 100000),
(107, 'Nora Martin', 'a@a', '26034985', 100000),
(108, 'Florencia Melina Dieni', 'a@a', '41851979', 100000),
(109, 'Matias Heredia', 'a@a', '48525217', 38100),
(110, 'Caseres Andres', 'a@l', '41745123', 1004),
(111, 'Evelyn Castro', 'even.castro13@gmail.com', '37250243', 0),
(112, 'Asencio Andrea', 'a@a', '23023663', 0),
(113, 'Franco Arrieta', 'a@a', '48236025', 100000),
(114, 'Laura Vera', 'a@a', '17660561', 23000),
(115, 'Laura vera', 'laura.vera27@hotmail', '17660561', 23000),
(116, 'Juana Maria Ledesma', 'a@a', '10160262', 0),
(117, 'Carballo Jonatan', 'a@a', '35649580', 0),
(118, 'Cristian Monzalvo', 'a@a', '24330767', 100000),
(119, 'Nicolas castrogiovanni', 'castrogiovanni19@gmail.com', '35025526', 3000),
(120, 'Lautaro Morales', 'a@a', '48522035', 100000),
(121, 'Sofia Salomon', 'a@l', '47143580', 100000);

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
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

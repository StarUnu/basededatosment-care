-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-07-2017 a las 01:40:28
-- Versión del servidor: 10.1.22-MariaDB
-- Versión de PHP: 7.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ment-care`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id` int(4) NOT NULL,
  `id_paciente` int(4) DEFAULT NULL,
  `id_medico` int(4) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `precio` int(4) DEFAULT NULL,
  `motivo_cita` varchar(255) DEFAULT NULL,
  `estado_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`id`, `id_paciente`, `id_medico`, `fecha`, `precio`, `motivo_cita`, `estado_id`) VALUES
(1, 10, 1, '2017-10-10', 100, '1212', 1),
(2, 9, 1, '2017-10-10', 100, '1212', 2),
(3, 9, 2, '2017-10-12', 100, 'e12', 3),
(4, 8, 2, '2017-10-12', 100, 'vdvd', 3),
(5, 1, 3, '0000-00-00', 12, 'deveraz', 1),
(6, 2, 3, '0000-00-00', 12, 'deveraz', 2),
(7, 1, 4, '0000-00-00', 12, 'yopuedo', 1),
(8, 1, 1, '0000-00-00', 12, 'yopuedo', 1),
(9, 1, 3, '0000-00-00', 12, 'yopuedo', 2),
(10, 2, 5, '0000-00-00', 12, 'yopuedo', 2),
(11, 1, 7, '0000-00-00', 12, 'yopuedo', 2),
(12, 4, 1, '0000-00-00', 12, 'tp11', 3),
(13, 1, 1, '0000-00-00', 12, 'tp11', 1),
(14, 7, 1, '0000-00-00', 12, 'tp11', 1),
(15, 3, 3, '0000-00-00', 12, 'tp11', 2),
(16, 4, 4, '0000-00-00', 12, 'tp11', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `id_especialidad` int(4) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `descripcion` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `especialidad`
--

INSERT INTO `especialidad` (`id_especialidad`, `nombre`, `descripcion`) VALUES
(1, 'psicologiamedica', 'para hospitales'),
(2, 'psicologiaforence', 'para delincuentes'),
(3, 'psiquiatra', 'problemas mayores'),
(4, 'psicologiatp', 'para tp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_cita`
--

CREATE TABLE `estado_cita` (
  `id` int(4) NOT NULL,
  `estado_cita` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado_cita`
--

INSERT INTO `estado_cita` (`id`, `estado_cita`) VALUES
(1, 'bien'),
(2, 'mal'),
(3, 'grave');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico`
--

CREATE TABLE `medico` (
  `id` int(4) NOT NULL,
  `id_especialidad` int(4) DEFAULT NULL,
  `hora_inicio` date DEFAULT NULL,
  `hora_fin` date DEFAULT NULL,
  `dia_inicio` varchar(2) DEFAULT NULL,
  `dia_fin` varchar(2) DEFAULT NULL,
  `persona_id` int(4) DEFAULT NULL,
  `id_user` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `medico`
--

INSERT INTO `medico` (`id`, `id_especialidad`, `hora_inicio`, `hora_fin`, `dia_inicio`, `dia_fin`, `persona_id`, `id_user`) VALUES
(1, 1, '2012-12-01', '2012-12-01', '12', '11', 1, 1),
(2, 1, '2012-12-01', '2012-09-01', '12', '12', 2, 2),
(3, 1, '2012-09-01', '2012-12-11', '12', '13', 3, 3),
(4, 1, '2012-12-01', '2012-12-01', '12', '12', 4, 4),
(5, 1, '2012-12-01', '2012-12-01', '10', '12', 5, 5),
(6, 1, '2012-12-01', '2012-12-01', '12', '12', 6, 6),
(7, 1, '2012-12-01', '2012-12-01', '10', '13', 7, 7),
(8, 1, '2012-12-01', '2012-12-01', '9', '13', 8, 8),
(9, 1, '2012-12-01', '2012-12-01', '6', '12', 9, 9),
(10, 2, '0000-00-00', '0000-00-00', '1', '12', 10, 10),
(11, 2, '0000-00-00', '0000-00-00', '1', '12', 11, 11),
(12, 2, '0000-00-00', '0000-00-00', '1', '12', 12, 12),
(13, 3, '0000-00-00', '0000-00-00', '1', '12', 13, 13),
(14, 2, '0000-00-00', '0000-00-00', '1', '12', 14, 14),
(15, 3, '0000-00-00', '0000-00-00', '1', '12', 15, 15),
(16, 4, '0000-00-00', '0000-00-00', '1', '12', 16, 16),
(17, 3, '0000-00-00', '0000-00-00', '1', '12', 17, 17),
(18, 2, '0000-00-00', '0000-00-00', '1', '12', 18, 18),
(19, 3, '0000-00-00', '0000-00-00', '1', '12', 19, 19),
(20, 3, '0000-00-00', '0000-00-00', '1', '12', 20, 20),
(21, 3, '0000-00-00', '0000-00-00', '1', '12', 21, 21),
(22, 3, '0000-00-00', '0000-00-00', '1', '12', 22, 22),
(23, 2, '0000-00-00', '0000-00-00', '1', '12', 23, 23),
(24, 3, '0000-00-00', '0000-00-00', '1', '12', 24, 24),
(25, 4, '0000-00-00', '0000-00-00', '1', '12', 25, 25),
(26, 2, '0000-00-00', '0000-00-00', '1', '12', 26, 26),
(27, 2, '0000-00-00', '0000-00-00', '1', '12', 27, 27),
(28, 4, '0000-00-00', '0000-00-00', '1', '12', 28, 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `id` int(5) NOT NULL,
  `estado` int(2) NOT NULL,
  `id_persona` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`id`, `estado`, `id_persona`) VALUES
(1, 1, 48),
(2, 1, 49),
(3, 1, 50),
(4, 2, 51),
(5, 2, 52),
(6, 1, 53),
(7, 3, 54),
(8, 3, 55),
(9, 4, 56),
(10, 4, 57);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(4) NOT NULL,
  `apellidomaterno` varchar(30) NOT NULL,
  `apellidopaterno` varchar(30) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `telefono` varchar(9) NOT NULL,
  `emain` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `apellidomaterno`, `apellidopaterno`, `nombres`, `dni`, `direccion`, `telefono`, `emain`) VALUES
(1, 'Turpo', 'Tamo', 'erika', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(2, 'Turpo', 'Tamo', 'erika1', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(3, 'Turpo', 'Tamo', 'erika2', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(4, 'Turpo', 'Tamo', 'erika3', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(5, 'Turpo', 'Tamo', 'erika4', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(6, 'Turpo', 'Tamo', 'erika5', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(7, 'Turpo', 'Tamo', 'erika6', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(8, 'Turpo', 'Tamo', 'erika7', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(9, 'Turpo', 'Tamo', 'erika8', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(10, 'Turpo', 'Tamo', 'erika9', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(11, 'Turpo', 'Tamo', 'erika10', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(12, 'Turpo', 'Tamo', 'erika11', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(13, 'Turpo', 'Tamo', 'erika12', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(14, 'Turpo', 'Tamo', 'erika13', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(15, 'Turpo', 'Tamo', 'erika14', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(16, 'Turpo', 'Tamo', 'erika15', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(17, 'Turpo', 'Tamo', 'erika16', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(18, 'Turpo', 'Tamo', 'erika17', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(19, 'Turpo', 'Tamo', 'erika18', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(20, 'Turpo', 'Tamo', 'erika19', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(21, 'Turpo', 'Tamo', 'erika20', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(22, 'Turpo', 'Tamo', 'erika21', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(23, 'Turpo', 'Tamo', 'erika22', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(24, 'Turpo', 'Tamo', 'erika23', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(25, 'Turpo', 'Tamo', 'erika24', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(26, 'Turpo', 'Tamo', 'erika25', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(27, 'Turpo', 'Tamo', 'erika26', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(28, 'Turpo', 'Tamo', 'erika27', '72895514', 'Dsdsifjsf', '999999999', 'ishfsoif'),
(44, 'asas', 'sdsd', 'erikajudith1', '12121', 'asasa', '1212', 'sdsd'),
(45, 'asas', 'sdsd', 'erikajudith2', '12121', 'asasa', '1212', 'sdsd'),
(46, 'asas', 'sdsd', 'erikajudith3', '12121', 'asasa', '1212', 'sdsd'),
(47, 'asas', 'sdsd', 'erikajudith4', '12121', 'asasa', '1212', 'sdsd'),
(48, 'asas', 'sdsd', 'erikajudith5', '12121', 'asasa', '1212', 'sdsd'),
(49, 'asas', 'sdsd', 'erikajudith6', '12121', 'asasa', '1212', 'sdsd'),
(50, 'asas', 'sdsd', 'erikajudith7', '12121', 'asasa', '1212', 'sdsd'),
(51, 'asas', 'sdsd', 'erikajudith8', '12121', 'asasa', '1212', 'sdsd'),
(52, 'asas', 'sdsd', 'erikajudith9', '12121', 'asasa', '1212', 'sdsd'),
(53, 'asas', 'sdsd', 'erikajudith10', '12121', 'asasa', '1212', 'sdsd');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`id_especialidad`);

--
-- Indices de la tabla `estado_cita`
--
ALTER TABLE `estado_cita`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
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
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  MODIFY `id_especialidad` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `medico`
--
ALTER TABLE `medico`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

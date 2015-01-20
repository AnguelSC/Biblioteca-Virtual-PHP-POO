-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-09-2014 a las 03:44:50
-- Versión del servidor: 5.5.34
-- Versión de PHP: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devolucion`
--

CREATE TABLE IF NOT EXISTS `devolucion` (
  `CodDevolucion` int(11) NOT NULL AUTO_INCREMENT,
  `CodPrestamo` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`CodDevolucion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `devolucion`
--

INSERT INTO `devolucion` (`CodDevolucion`, `CodPrestamo`, `Fecha`, `Estado`) VALUES
(2, 4, '1969-12-31', 1),
(3, 5, '2014-08-31', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE IF NOT EXISTS `libro` (
  `CodLibro` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(50) NOT NULL,
  `Autor` varchar(50) NOT NULL,
  `Editorial` varchar(30) NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  `fecha_registro` date NOT NULL,
  `Prestamo` tinyint(1) NOT NULL,
  PRIMARY KEY (`CodLibro`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`CodLibro`, `Titulo`, `Autor`, `Editorial`, `Estado`, `fecha_registro`, `Prestamo`) VALUES
(3, 'Harry Potter', 'Manabu', 'Coquito', 0, '2014-08-30', 0),
(4, 'Harry Potter 2', 'Anguelito', 'Minecraft', 1, '2014-08-31', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE IF NOT EXISTS `prestamo` (
  `CodPrestamo` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `CodLibro` int(11) NOT NULL,
  `CodUsuario` int(11) NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`CodPrestamo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `prestamo`
--

INSERT INTO `prestamo` (`CodPrestamo`, `Fecha`, `CodLibro`, `CodUsuario`, `Estado`) VALUES
(4, '2014-09-06', 4, 1, 1),
(5, '1969-12-31', 3, 1, 1),
(6, '2014-08-31', 4, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `CodUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `DNI` varchar(9) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`CodUsuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`CodUsuario`, `DNI`, `Nombres`, `Apellido`, `Estado`) VALUES
(1, '73130609', 'Anguel', 'Sirlopu', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 20-01-2015 a las 11:45:21
-- Versión del servidor: 5.5.40-cll
-- Versión de PHP: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `anguelsc_biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE IF NOT EXISTS `autor` (
  `CodAutor` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`CodAutor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`CodAutor`, `Nombre`) VALUES
(46, 'BLUE JEANS'),
(47, 'RUBEN GALLEGO'),
(48, 'GABRIEL GARCIA MARQUEZ'),
(49, 'C. S. LEWIS'),
(50, 'J. K. ROWLING'),
(51, 'CHRISTIANE ZSCHIRNT'),
(52, 'PAULO COELHO'),
(53, 'URSULA K. LE GUIN'),
(54, 'FRANCISCO CHARIE'),
(55, 'LAUREN KATE'),
(56, 'TIMOTHY BUDD'),
(57, 'STEPHANIE MEYER'),
(58, 'WALTER LEWIN'),
(59, 'WARREN COLDSTEIN'),
(60, 'GABRIELA MARQUEZ'),
(61, 'SONIA OSORIO'),
(62, 'NOEMI OLVERA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor_libro`
--

CREATE TABLE IF NOT EXISTS `autor_libro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CodAutor` int(11) NOT NULL,
  `CodLibro` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=193 ;

--
-- Volcado de datos para la tabla `autor_libro`
--

INSERT INTO `autor_libro` (`id`, `CodAutor`, `CodLibro`) VALUES
(164, 46, 34),
(165, 47, 35),
(166, 48, 36),
(167, 49, 37),
(168, 50, 38),
(171, 52, 40),
(172, 52, 41),
(175, 54, 43),
(177, 55, 44),
(178, 53, 45),
(179, 56, 46),
(180, 57, 47),
(181, 58, 48),
(182, 59, 48),
(186, 53, 42),
(187, 51, 39),
(188, 60, 49),
(189, 61, 49),
(190, 62, 49),
(191, 58, 48),
(192, 59, 48);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `copialibro`
--

CREATE TABLE IF NOT EXISTS `copialibro` (
  `CodCopia` int(11) NOT NULL AUTO_INCREMENT,
  `CodLibro` int(11) NOT NULL,
  `Estado` varchar(40) NOT NULL,
  `Disponible` tinyint(1) NOT NULL,
  PRIMARY KEY (`CodCopia`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=134 ;

--
-- Volcado de datos para la tabla `copialibro`
--

INSERT INTO `copialibro` (`CodCopia`, `CodLibro`, `Estado`, `Disponible`) VALUES
(23, 34, 'Activo', 0),
(24, 35, 'Activo', 0),
(25, 36, 'Activo', 1),
(26, 37, 'Activo', 1),
(27, 38, 'Activo', 1),
(28, 39, 'Activo', 1),
(29, 40, 'Activo', 1),
(30, 41, 'Activo', 0),
(31, 42, 'Activo', 1),
(32, 43, 'Activo', 1),
(33, 44, 'Activo', 1),
(34, 45, 'Activo', 0),
(35, 46, 'Activo', 1),
(36, 47, 'Activo', 1),
(37, 48, 'Activo', 1),
(38, 49, 'Activo', 1),
(39, 34, 'Activo', 0),
(40, 34, 'Activo', 0),
(41, 34, 'Activo', 1),
(42, 34, 'Activo', 1),
(43, 34, 'Activo', 1),
(44, 34, 'Activo', 1),
(45, 34, 'Activo', 1),
(46, 34, 'Activo', 1),
(47, 34, 'Activo', 1),
(48, 34, 'Activo', 1),
(49, 35, 'Activo', 1),
(50, 35, 'Activo', 1),
(51, 35, 'Activo', 1),
(52, 35, 'Activo', 1),
(53, 35, 'Activo', 1),
(54, 35, 'Activo', 1),
(55, 37, 'Activo', 1),
(56, 37, 'Activo', 1),
(57, 37, 'Activo', 0),
(58, 37, 'Activo', 1),
(59, 38, 'Activo', 1),
(60, 38, 'Activo', 1),
(61, 38, 'Activo', 1),
(62, 38, 'Activo', 1),
(63, 38, 'Activo', 1),
(64, 38, 'Activo', 1),
(65, 38, 'Activo', 1),
(66, 38, 'Activo', 1),
(67, 40, 'Activo', 1),
(68, 40, 'Activo', 1),
(69, 40, 'Activo', 1),
(70, 40, 'Activo', 1),
(71, 40, 'Activo', 1),
(72, 40, 'Activo', 1),
(73, 40, 'Activo', 1),
(74, 40, 'Activo', 1),
(75, 41, 'Activo', 1),
(76, 41, 'Activo', 1),
(77, 41, 'Activo', 1),
(78, 41, 'Activo', 1),
(79, 41, 'Activo', 1),
(80, 41, 'Activo', 1),
(81, 41, 'Activo', 1),
(82, 41, 'Activo', 1),
(83, 41, 'Activo', 1),
(84, 41, 'Activo', 1),
(85, 43, 'Activo', 1),
(86, 43, 'Activo', 1),
(87, 43, 'Activo', 1),
(88, 44, 'Activo', 1),
(89, 44, 'Activo', 1),
(90, 44, 'Activo', 1),
(91, 44, 'Activo', 1),
(92, 44, 'Activo', 1),
(93, 44, 'Activo', 1),
(94, 44, 'Activo', 1),
(95, 44, 'Activo', 1),
(96, 44, 'Activo', 1),
(97, 45, 'Activo', 1),
(98, 45, 'Activo', 1),
(99, 45, 'Activo', 1),
(100, 45, 'Activo', 1),
(101, 45, 'Activo', 1),
(102, 45, 'Activo', 1),
(103, 46, 'Activo', 1),
(104, 46, 'Activo', 1),
(105, 46, 'Activo', 1),
(106, 46, 'Activo', 1),
(107, 46, 'Activo', 1),
(108, 47, 'Activo', 1),
(109, 47, 'Activo', 1),
(110, 47, 'Activo', 1),
(111, 47, 'Activo', 1),
(112, 47, 'Activo', 1),
(113, 47, 'Activo', 1),
(114, 47, 'Activo', 1),
(115, 47, 'Activo', 1),
(116, 47, 'Activo', 1),
(117, 47, 'Activo', 1),
(118, 34, 'Activo', 1),
(119, 34, 'Activo', 1),
(120, 34, 'Activo', 1),
(121, 34, 'Activo', 1),
(122, 34, 'Activo', 1),
(123, 34, 'Activo', 1),
(124, 34, 'Activo', 0),
(125, 34, 'Activo', 1),
(126, 34, 'Activo', 1),
(127, 34, 'Activo', 1),
(128, 34, 'Activo', 1),
(129, 34, 'Activo', 1),
(130, 34, 'Activo', 1),
(131, 34, 'Activo', 1),
(132, 34, 'Activo', 1),
(133, 34, 'Activo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devolucion`
--

CREATE TABLE IF NOT EXISTS `devolucion` (
  `CodDevolucion` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  `CodPrestamo` int(11) NOT NULL,
  PRIMARY KEY (`CodDevolucion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE IF NOT EXISTS `editorial` (
  `CodEditorial` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`CodEditorial`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `editorial`
--

INSERT INTO `editorial` (`CodEditorial`, `Nombre`) VALUES
(3, 'PLANETA'),
(4, 'ALFAGUARA'),
(5, 'NORMA'),
(6, 'SALAMANDRA'),
(7, 'LA REPUBLICA'),
(8, 'MINOTAURO'),
(9, 'ANAYA'),
(10, 'PEARSON');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE IF NOT EXISTS `libro` (
  `CodLibro` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(50) NOT NULL,
  `CodEditorial` int(11) NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  `fecha_registro` date NOT NULL,
  `imagen` varchar(150) NOT NULL DEFAULT 'blanco.jpg',
  PRIMARY KEY (`CodLibro`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`CodLibro`, `Titulo`, `CodEditorial`, `Estado`, `fecha_registro`, `imagen`) VALUES
(34, 'Bueno dÃ­as Princesa', 3, 1, '2014-07-08', '1413181572-images.jpg'),
(35, 'Blanco sobre Negro', 4, 1, '2012-01-03', '1413181676-Blanco sobre negro.jpg'),
(36, 'Cien aÃ±os de soledad', 5, 1, '2008-06-25', '1413181735-100 anios soledad -GGM.jpg'),
(37, 'El sobrino de Mago- Las CrÃ³nicas de Narnia', 3, 1, '2010-08-16', '1413181855-El sobrino del mago- Cronicas de Narnia.jpg'),
(38, 'Harry Potter- Las reliquias de la muerte', 6, 1, '2011-07-20', '1413181991-Harry potter.jpg'),
(39, 'LIBROS - TODO LO QUE HAY QUE LEER', 7, 1, '2010-02-23', '1413184199-liib.jpg'),
(40, 'EL MANUSCRITO CREADO EN ACCRA', 3, 1, '2013-11-18', '1413182409-Paulo Coelho.jpg'),
(41, 'VEINTE PETALOS', 3, 1, '2012-09-24', '1413182475-Veinte Petalos.jpg'),
(42, 'La mano izquierda de la oscuridad', 8, 0, '2010-05-10', '1413184015-La mano izquierda de la oscuridad.preview.jpg'),
(43, 'Introduccion a la programacion', 9, 1, '2009-06-26', '1413183175-84-415-1145-4.jpg'),
(44, 'Oscuros- la trampa del amor', 4, 1, '2014-07-29', '1413183407-9788484417613__trampa_del_amor_la_P-001.jpg'),
(45, 'Los dones', 8, 1, '2009-07-29', '1413183482-descarga (1).jpg'),
(46, 'Programacion orientada a objetos', 5, 1, '2008-09-30', '1413183598-descarga (2).jpg'),
(47, 'Eclipse', 3, 1, '2005-10-18', '1413183703-HQ002.jpg'),
(48, 'amor por la fisica', 3, 0, '2008-06-17', '1413183816-images (4).jpg'),
(49, 'Introduccion a la programacion estructurada en c', 10, 1, '2007-06-30', '1413183921-PORTADA-LIBRO-SPB0188207-MAX1.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mora`
--

CREATE TABLE IF NOT EXISTS `mora` (
  `CodMora` int(11) NOT NULL AUTO_INCREMENT,
  `FechaInicio` date NOT NULL,
  `FechaFin` date NOT NULL,
  `CodPrestamo` int(11) NOT NULL,
  `Observacion` text NOT NULL,
  PRIMARY KEY (`CodMora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE IF NOT EXISTS `prestamo` (
  `CodPrestamo` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `CodCopia` int(11) NOT NULL,
  `CodUsuario` int(11) NOT NULL,
  `Estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`CodPrestamo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `prestamo`
--

INSERT INTO `prestamo` (`CodPrestamo`, `Fecha`, `CodCopia`, `CodUsuario`, `Estado`) VALUES
(10, '1969-12-31', 39, 12, 1),
(11, '1969-12-31', 57, 11, 1),
(12, '2014-10-13', 124, 18, 0),
(14, '2014-10-16', 40, 11, 0),
(15, '2014-10-16', 30, 12, 0),
(16, '2014-10-16', 34, 13, 0),
(17, '2014-10-16', 24, 1, 0);

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
  `Clave` varchar(100) NOT NULL,
  `Tipo` int(11) NOT NULL,
  PRIMARY KEY (`CodUsuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`CodUsuario`, `DNI`, `Nombres`, `Apellido`, `Estado`, `Clave`, `Tipo`) VALUES
(1, '73130609', 'Miguel', 'Sirlopu', 1, '21232f297a57a5a743894a0e4a801fc3', 3),
(2, '12345678', 'Anguel', 'Sirlopu C', 1, '21232f297a57a5a743894a0e4a801fc3', 2),
(3, '11111111', 'Usuario', 'Cliente', 1, '21232f297a57a5a743894a0e4a801fc3', 3),
(7, '12312312', 'prueba', 'testing', 1, '220466675e31b9d20c051d5e57974150', 3),
(11, '12345675', 'Rossmary', 'Saavedra Cieza', 1, 'd41d8cd98f00b204e9800998ecf8427e', 3),
(12, '72487448', 'Erika Margot', 'Chozo Saavedra', 1, 'cfbc7ef58309e30dee7c59aa9e5b47c3', 3),
(13, '12345666', 'Enrique', 'Segura', 1, '25d55ad283aa400af464c76d713c07ad', 3),
(14, '12345555', 'Lucia ', 'Lorenzo Cervera', 1, '25d55ad283aa400af464c76d713c07ad', 3),
(15, '12345667', 'Andrew', 'Chozo Saavedra', 1, '25d55ad283aa400af464c76d713c07ad', 3),
(16, '12345444', 'Grecia', 'Moya ChapoÃ±an', 1, '25d55ad283aa400af464c76d713c07ad', 3),
(17, '12345677', 'Karla', 'Alberti Miranda', 1, '25d55ad283aa400af464c76d713c07ad', 3),
(18, '72487447', 'Andrew Josel', 'Chozo Saavedra', 1, '25d55ad283aa400af464c76d713c07ad', 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

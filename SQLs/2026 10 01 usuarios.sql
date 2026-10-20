-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-10-2026 a las 00:47:29
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `di26`
--
CREATE DATABASE IF NOT EXISTS `di26` DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci;
USE `di26`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(40) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `apellido1` varchar(40) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `apellido2` varchar(40) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `sexo` char(1) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `fechaAlta` date DEFAULT NULL,
  `mail` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `movil` varchar(15) NOT NULL DEFAULT '',
  `login` varchar(40) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `pass` varchar(32) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `activo` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nombre`, `apellido1`, `apellido2`, `sexo`, `fechaAlta`, `mail`, `movil`, `login`, `pass`, `activo`) VALUES
(1, 'visitante', 'consulta', '', 'H', '2020-10-01', 'visitante@2si.com', '976466599', 'visitante', '202cb962ac59075b964b07152d234b70', 'S'),
(2, 'admin', 'ad', 'ad', 'H', '2020-10-02', 'adminad@2si.com', '976466590', 'admin', '56722ee6fafda353b3995dcd7971b537', 'S'),
(7, 'Maria', 'Fernandez', 'Castro', 'H', '0000-00-00', 'MariaFernandez@2si.com', '2342423', 'safdfa', 'e10adc3949ba59abbe56e057f20f883e', 'S'),
(8, 'Felipe', 'Smit', 'Fernandez', 'H', '2020-11-23', 'FelipeSmit@2si.com', '976466599', 'fperez', 'e10adc3949ba59abbe56e057f20f883e', 'S'),
(103, 'Carine ', 'Schmitt', '', 'M', '2020-02-15', 'Carine Schmitt@2si.com', '64103103', 'Schmitt', '202cb962ac59075b964b07152d234b70', 'S'),
(112, 'Jean', 'King', '', 'H', '2020-02-15', 'JeanKing@2si.com', '64112112', 'King', '202cb962ac59075b964b07152d234b70', 'S'),
(114, 'Peter', 'Ferguson', '', 'H', '2020-02-15', 'PeterFerguson@2si.com', '64114114', 'Ferguson', '202cb962ac59075b964b07152d234b70', 'S'),
(119, 'Janine ', 'Labrune', '', 'M', '2020-02-15', 'Janine Labrune@2si.com', '64119119', 'Labrune', '202cb962ac59075b964b07152d234b70', 'S'),
(121, 'Jonas ', 'Bergulfsen', '', 'H', '2020-02-15', 'Jonas Bergulfsen@2si.com', '64121121', 'Bergulfsen', '202cb962ac59075b964b07152d234b70', 'S'),
(124, 'Susan', 'Nelson', '', 'H', '2020-02-15', 'SusanNelson@2si.com', '64124124', 'Nelson', '202cb962ac59075b964b07152d234b70', 'S'),
(125, 'Zbyszek ', 'Piestrzeniewicz', '', 'H', '2020-02-15', 'Zbyszek Piestrzeniewicz@2si.com', '64125125', 'Piestrzeniewicz', '202cb962ac59075b964b07152d234b70', 'N'),
(128, 'Roland', 'Keitel', '', 'H', '2020-02-15', 'RolandKeitel@2si.com', '64128128', 'Keitel', '202cb962ac59075b964b07152d234b70', 'S'),
(129, 'Julie', 'Murphy', '', 'M', '2020-02-15', 'JulieMurphy@2si.com', '64129129', 'Murphy', '202cb962ac59075b964b07152d234b70', 'S'),
(131, 'Kwai', 'Lee', '', 'H', '2020-02-15', 'KwaiLee@2si.com', '64131131', 'Lee', '202cb962ac59075b964b07152d234b70', 'N'),
(141, 'Diego ', 'Freyre', '', 'H', '2020-02-15', 'Diego Freyre@2si.com', '64141141', 'Freyre', '202cb962ac59075b964b07152d234b70', 'S'),
(144, 'Christina ', 'Berglund', '', 'M', '2020-02-15', 'Christina Berglund@2si.com', '64144144', 'Berglund', '202cb962ac59075b964b07152d234b70', 'N'),
(145, 'Jytte ', 'Petersen', '', 'H', '2020-02-15', 'Jytte Petersen@2si.com', '64145145', 'Petersen', '202cb962ac59075b964b07152d234b70', 'S'),
(146, 'Mary ', 'Saveley', '', 'M', '2020-02-15', 'Mary Saveley@2si.com', '64146146', 'Saveley', '202cb962ac59075b964b07152d234b70', 'S'),
(148, 'Eric', 'Natividad', '', 'H', '2020-02-15', 'EricNatividad@2si.com', '64148148', 'Natividad', '202cb962ac59075b964b07152d234b70', 'N'),
(151, 'Jeff', 'Young', '', 'H', '2020-02-15', 'JeffYoung@2si.com', '64151151', 'Young', '202cb962ac59075b964b07152d234b70', 'S'),
(157, 'Kelvin', 'Leong', '', 'H', '2020-02-15', 'KelvinLeong@2si.com', '64157157', 'Leong', '202cb962ac59075b964b07152d234b70', 'S'),
(161, 'Juri', 'Hashimoto', '', 'H', '2020-02-15', 'JuriHashimoto@2si.com', '64161161', 'Hashimoto', '202cb962ac59075b964b07152d234b70', 'S'),
(166, 'Wendy', 'Victorino', '', 'M', '2020-02-15', 'WendyVictorino@2si.com', '64166166', 'Victorino', '202cb962ac59075b964b07152d234b70', 'S'),
(167, 'Veysel', 'Oeztan', '', 'H', '2020-02-15', 'VeyselOeztan@2si.com', '64167167', 'Oeztan', '202cb962ac59075b964b07152d234b70', 'N'),
(168, 'Keith', 'Franco', '', 'H', '2020-02-15', 'KeithFranco@2si.com', '64168168', 'Franco', '202cb962ac59075b964b07152d234b70', 'S'),
(169, 'Isabel ', 'de Castro', '', 'M', '2020-02-15', 'Isabel de Castro@2si.com', '64169169', 'de Castro', '202cb962ac59075b964b07152d234b70', 'S'),
(171, 'Martine ', 'Ranc', '', 'H', '2020-02-15', 'Martine Ranc@2si.com', '64171171', 'Ranc', '202cb962ac59075b964b07152d234b70', 'S'),
(172, 'Marie', 'Bertrand', '', 'M', '2020-02-15', 'MarieBertrand@2si.com', '64172172', 'Bertrand', '202cb962ac59075b964b07152d234b70', 'N'),
(173, 'Jerry', 'Tseng', '', 'H', '2020-02-15', 'JerryTseng@2si.com', '64173173', 'Tseng', '202cb962ac59075b964b07152d234b70', 'N'),
(175, 'Julie', 'King2', '', 'M', '2020-02-15', 'JulieKing2@2si.com', '64175175', 'King2', '202cb962ac59075b964b07152d234b70', 'S'),
(177, 'Mory', 'Kentary', '', 'H', '2020-02-15', 'MoryKentary@2si.com', '64177177', 'Kentary', '202cb962ac59075b964b07152d234b70', 'S'),
(181, 'Michael', 'Frick', '', 'H', '2020-02-15', 'MichaelFrick@2si.com', '64181181', 'Frick4', '202cb962ac59075b964b07152d234b70', 'S'),
(186, 'Matti', 'Karttunen', '', 'H', '2020-02-15', 'MattiKarttunen@2si.com', '64186186', 'Karttunen', '202cb962ac59075b964b07152d234b70', 'S'),
(187, 'Rachel', 'Ashworth', '', 'M', '2020-02-15', 'RachelAshworth@2si.com', '64187187', 'Ashworth', '202cb962ac59075b964b07152d234b70', 'S'),
(189, 'Dean', 'Cassidy', '', 'H', '2020-02-15', 'DeanCassidy@2si.com', '64189189', 'Cassidy', '202cb962ac59075b964b07152d234b70', 'S'),
(198, 'Leslie', 'Taylor', '', 'M', '2020-02-15', 'LeslieTaylor@2si.com', '64198198', 'Taylor', '202cb962ac59075b964b07152d234b70', 'S'),
(201, 'Elizabeth', 'Devon', '', 'H', '2020-02-15', 'ElizabethDevon@2si.com', '64201201', 'Devon', '202cb962ac59075b964b07152d234b70', 'S'),
(202, 'Yoshi ', 'Tamuri', '', 'H', '2020-02-15', 'Yoshi Tamuri@2si.com', '64202202', 'Tamuri', '202cb962ac59075b964b07152d234b70', 'S'),
(204, 'Miguel', 'Barajas', '', 'H', '2020-02-15', 'MiguelBarajas@2si.com', '64204204', 'Barajas', '202cb962ac59075b964b07152d234b70', 'S'),
(205, 'Julie', 'Young', '', 'M', '2020-02-15', 'JulieYoung@2si.com', '64205205', 'Young2', '202cb962ac59075b964b07152d234b70', 'S'),
(206, 'Brydey', 'Walker', '', 'H', '2020-02-15', 'BrydeyWalker@2si.com', '64206206', 'Walker', '202cb962ac59075b964b07152d234b70', 'N'),
(209, 'Fréderique ', 'Citeaux', '', 'H', '2020-02-15', 'Fréderique Citeaux@2si.com', '64209209', 'Citeaux', '202cb962ac59075b964b07152d234b70', 'S'),
(211, 'Mike', 'Gao', '', 'H', '2020-02-15', 'MikeGao@2si.com', '64211211', 'Gao', '202cb962ac59075b964b07152d234b70', 'S'),
(216, 'Eduardo ', 'Saavedra', '', 'H', '2020-02-15', 'Eduardo Saavedra@2si.com', '64216216', 'Saavedra', '202cb962ac59075b964b07152d234b70', 'N'),
(219, 'Mary', 'Young', 'y', 'M', '2020-02-15', 'MaryYoung@2si.com', '64219219', 'Young3', '202cb962ac59075b964b07152d234b70', 'S'),
(223, 'Horst ', 'Kloss', '', 'H', '2020-02-15', 'Horst Kloss@2si.com', '64223223', 'Kloss', '202cb962ac59075b964b07152d234b70', 'N'),
(227, 'Palle', 'Ibsen', '', 'H', '2020-02-15', 'PalleIbsen@2si.com', '64227227', 'Ibsen', '202cb962ac59075b964b07152d234b70', 'S'),
(233, 'Jean ', 'Fresni?re', '', 'H', '2020-02-15', 'Jean Fresni?re@2si.com', '64233233', 'Fresni?re', '202cb962ac59075b964b07152d234b70', 'S'),
(237, 'Alejandra ', 'Camino', '', 'M', '2020-02-15', 'Alejandra Camino@2si.com', '64237237', 'Camino', '202cb962ac59075b964b07152d234b70', 'S'),
(239, 'Valarie', 'Thompson', '', 'M', '2020-02-15', 'ValarieThompson@2si.com', '64239239', 'Thompson2', '202cb962ac59075b964b07152d234b70', 'S'),
(240, 'Helen ', 'Bennett', '', 'M', '2020-02-15', 'Helen Bennett@2si.com', '64240240', 'Bennett', '202cb962ac59075b964b07152d234b70', 'S'),
(242, 'Annette ', 'Roulet', '', 'M', '2020-02-15', 'Annette Roulet@2si.com', '64242242', 'Roulet', '202cb962ac59075b964b07152d234b70', 'S'),
(247, 'Renate ', 'Messner', '', 'H', '2020-02-15', 'Renate Messner@2si.com', '64247247', 'Messner', '202cb962ac59075b964b07152d234b70', 'S'),
(249, 'Paolo', 'Accorti', '', 'H', '2020-02-15', 'PaoloAccorti@2si.com', '64249249', 'accorti', '202cb962ac59075b964b07152d234b70', 'S'),
(250, 'Daniel', 'Da Silva', '', 'H', '2020-02-15', 'DanielDa Silva@2si.com', '64250250', 'Da Silva', '202cb962ac59075b964b07152d234b70', 'S'),
(256, 'Daniel ', 'Tonini', '', 'H', '2020-02-15', 'Daniel Tonini@2si.com', '64256256', 'Tonini', '202cb962ac59075b964b07152d234b70', 'S'),
(259, 'Henriette ', 'Pfalzheim', '', 'H', '2020-02-15', 'Henriette Pfalzheim@2si.com', '64259259', 'Pfalzheim', '202cb962ac59075b964b07152d234b70', 'S'),
(260, 'Elizabeth ', 'Lincoln', '', 'M', '2020-02-15', 'Elizabeth Lincoln@2si.com', '64260260', 'Lincoln', '202cb962ac59075b964b07152d234b70', 'S'),
(273, 'Peter ', 'Franken', '', 'H', '2020-02-15', 'Peter Franken@2si.com', '64273273', 'Franken', '202cb962ac59075b964b07152d234b70', 'S'),
(276, 'Anna', 'O\'Hara', '', 'M', '2020-02-15', 'AnnaO\'Hara@2si.com', '64276276', 'O\'Hara', '202cb962ac59075b964b07152d234b70', 'S'),
(278, 'Giovanni ', 'Rovelli', '', 'H', '2020-02-15', 'Giovanni Rovelli@2si.com', '64278278', 'Rovelli', '202cb962ac59075b964b07152d234b70', 'S'),
(282, 'Adrian', 'Huxley', '', 'H', '2020-02-15', 'AdrianHuxley@2si.com', '64282282', 'Huxley', '202cb962ac59075b964b07152d234b70', 'S'),
(286, 'Marta', 'Hernandez', '', 'M', '2020-02-15', 'MartaHernandez@2si.com', '64286286', 'Hernandez3', '202cb962ac59075b964b07152d234b70', 'N'),
(293, 'Ed', 'Harrison', '', 'H', '2020-02-15', 'EdHarrison@2si.com', '64293293', 'Harrison', '202cb962ac59075b964b07152d234b70', 'N'),
(298, 'Mihael', 'Holz', '', 'H', '2020-02-15', 'MihaelHolz@2si.com', '64298298', 'Holz', '202cb962ac59075b964b07152d234b70', 'S'),
(299, 'Jan', 'Klaeboe', '', 'H', '2020-02-15', 'JanKlaeboe@2si.com', '64299299', 'Klaeboe', '202cb962ac59075b964b07152d234b70', 'S'),
(303, 'Bradley', 'Schuyler', '', 'H', '2020-02-15', 'BradleySchuyler@2si.com', '64303303', 'Schuyler', '202cb962ac59075b964b07152d234b70', 'S'),
(307, 'Mel', 'Andersen', '', 'H', '2020-02-15', 'MelAndersen@2si.com', '64307307', 'Andersen', '202cb962ac59075b964b07152d234b70', 'S'),
(311, 'Pirkko', 'Koskitalo', '', 'H', '2020-02-15', 'PirkkoKoskitalo@2si.com', '64311311', 'Koskitalo', '202cb962ac59075b964b07152d234b70', 'S'),
(314, 'Catherine ', 'Dewey', '', 'H', '2020-02-15', 'Catherine Dewey@2si.com', '64314314', 'Dewey', '202cb962ac59075b964b07152d234b70', 'S'),
(319, 'Steve', 'Frick', '', 'H', '2020-02-15', 'SteveFrick@2si.com', '64319319', 'Frick2', '202cb962ac59075b964b07152d234b70', 'S'),
(320, 'Wing', 'Huang', '', 'H', '2020-02-15', 'WingHuang@2si.com', '64320320', 'Huang', '202cb962ac59075b964b07152d234b70', 'S'),
(321, 'Julie', 'Brown', '', 'M', '2020-02-15', 'JulieBrown@2si.com', '64321321', 'Brown', '202cb962ac59075b964b07152d234b70', 'S'),
(323, 'Mike', 'Graham', '', 'H', '2020-02-15', 'MikeGraham@2si.com', '64323323', 'Graham', '202cb962ac59075b964b07152d234b70', 'S'),
(324, 'Ann ', 'Brown', '', 'M', '2020-02-15', 'Ann Brown@2si.com', '64324324', 'Brown2', '202cb962ac59075b964b07152d234b70', 'S'),
(328, 'William', 'Brown', '', 'H', '2020-02-15', 'WilliamBrown@2si.com', '64328328', 'Brown3', '202cb962ac59075b964b07152d234b70', 'S'),
(333, 'Ben', 'Calaghan', '', 'H', '2020-02-15', 'BenCalaghan@2si.com', '64333333', 'Calaghan', '202cb962ac59075b964b07152d234b70', 'S'),
(334, 'Kalle', 'Suominen', '', 'H', '2020-02-15', 'KalleSuominen@2si.com', '64334334', 'Suominen', '202cb962ac59075b964b07152d234b70', 'S'),
(335, 'Philip ', 'Cramer', '', 'H', '2020-02-15', 'Philip Cramer@2si.com', '64335335', 'Cramer', '202cb962ac59075b964b07152d234b70', 'S'),
(339, 'Francisca', 'Cervantes', '', 'M', '2020-02-15', 'FranciscaCervantes@2si.com', '64339339', 'Cervantes', '202cb962ac59075b964b07152d234b70', 'S'),
(344, 'Jesus', 'Fernandez', '', 'H', '2020-02-15', 'JesusFernandez@2si.com', '64344344', 'Fernandez', '202cb962ac59075b964b07152d234b70', 'S'),
(347, 'Brian', 'Chandler', '', 'H', '2020-02-15', 'BrianChandler@2si.com', '64347347', 'Chandler', '202cb962ac59075b964b07152d234b70', 'S'),
(348, 'Patricia ', 'McKenna', '', 'M', '2020-02-15', 'Patricia McKenna@2si.com', '64348348', 'McKenna', '202cb962ac59075b964b07152d234b70', 'S'),
(350, 'Laurence ', 'Lebihan', '', 'H', '2020-02-15', 'Laurence Lebihan@2si.com', '64350350', 'Lebihan', '202cb962ac59075b964b07152d234b70', 'N'),
(353, 'Paul ', 'Henriot', '', 'H', '2020-02-15', 'Paul Henriot@2si.com', '64353353', 'Henriot', '202cb962ac59075b964b07152d234b70', 'S'),
(356, 'Armand', 'Kuger', '', 'H', '2020-02-15', 'ArmandKuger@2si.com', '64356356', 'Kuger', '202cb962ac59075b964b07152d234b70', 'S'),
(357, 'Wales', 'MacKinlay', '', 'H', '2020-02-15', 'WalesMacKinlay@2si.com', '64357357', 'MacKinlay', '202cb962ac59075b964b07152d234b70', 'S'),
(361, 'Karin', 'Josephs', '', 'H', '2020-02-15', 'KarinJosephs@2si.com', '64361361', 'Josephs', '202cb962ac59075b964b07152d234b70', 'S'),
(362, 'Juri', 'Yoshido', '', 'H', '2020-02-15', 'JuriYoshido@2si.com', '64362362', 'Yoshido', '202cb962ac59075b964b07152d234b70', 'N'),
(363, 'Dorothy', 'Young', '', 'M', '2020-02-15', 'DorothyYoung@2si.com', '64363363', 'Young4', '202cb962ac59075b964b07152d234b70', 'S'),
(369, 'Lino ', 'Rodriguez', '', 'H', '2020-02-15', 'Lino Rodriguez@2si.com', '64369369', 'Rodriguez', '202cb962ac59075b964b07152d234b70', 'S'),
(376, 'Braun', 'Urs', '', 'H', '2020-02-15', 'BraunUrs@2si.com', '64376376', 'Urs', '202cb962ac59075b964b07152d234b70', 'S'),
(379, 'Allen', 'Nelson', '', 'H', '2020-02-15', 'AllenNelson@2si.com', '64379379', 'Nelson2', '202cb962ac59075b964b07152d234b70', 'S'),
(381, 'Pascale ', 'Cartrain', '', 'H', '2020-02-15', 'Pascale Cartrain@2si.com', '64381381', 'Cartrain', '202cb962ac59075b964b07152d234b70', 'S'),
(382, 'Georg ', 'Pipps', '', 'H', '2020-02-15', 'Georg Pipps@2si.com', '64382382', 'Pipps', '202cb962ac59075b964b07152d234b70', 'S'),
(385, 'Arnold', 'Cruz', '', 'H', '2020-02-15', 'ArnoldCruz@2si.com', '64385385', 'Cruz', '202cb962ac59075b964b07152d234b70', 'S'),
(386, 'Maurizio ', 'Moroni', '', 'H', '2020-02-15', 'Maurizio Moroni@2si.com', '64386386', 'Moroni', '202cb962ac59075b964b07152d234b70', 'S'),
(398, 'Akiko', 'Shimamura', '', 'H', '2020-02-15', 'AkikoShimamura@2si.com', '64398398', 'Shimamura', '202cb962ac59075b964b07152d234b70', 'S'),
(406, 'Dominique', 'Perrier', '', 'H', '2020-02-15', 'DominiquePerrier@2si.com', '64406406', 'Perrier', '202cb962ac59075b964b07152d234b70', 'S'),
(409, 'Rita ', 'MÍller', '', 'M', '2020-02-15', 'Rita MÍller@2si.com', '64409409', 'MIller', '202cb962ac59075b964b07152d234b70', 'S'),
(412, 'Sarah', 'McRoy', '', 'M', '2020-02-15', 'SarahMcRoy@2si.com', '64412412', 'McRoy', '202cb962ac59075b964b07152d234b70', 'S'),
(415, 'Michael', 'Donnermeyer', '', 'H', '2020-02-15', 'MichaelDonnermeyer@2si.com', '64415415', 'Donnermeyer', '202cb962ac59075b964b07152d234b70', 'S'),
(424, 'Maria', 'Hernandez', '', 'M', '2020-02-15', 'MariaHernandez@2si.com', '64424424', 'Hernandez2', '202cb962ac59075b964b07152d234b70', 'S'),
(443, 'Alexander ', 'Feuer', '', 'H', '2020-02-15', 'Alexander Feuer@2si.com', '64443443', 'Feuer', '202cb962ac59075b964b07152d234b70', 'S'),
(447, 'Dan', 'Lewis', '', 'H', '2020-02-15', 'DanLewis@2si.com', '64447447', 'Lewis', '202cb962ac59075b964b07152d234b70', 'S'),
(448, 'Martha', 'Larsson', '', 'M', '2020-02-15', 'MarthaLarsson@2si.com', '64448448', 'Larsson', '202cb962ac59075b964b07152d234b70', 'S'),
(450, 'Sue', 'Frick', '', '', '2020-02-15', 'SueFrick@2si.com', '64450450', 'Frick3', '202cb962ac59075b964b07152d234b70', 'S'),
(452, 'Roland ', 'Mendel', '', 'H', '2020-02-15', 'Roland Mendel@2si.com', '64452452', 'Mendel', '202cb962ac59075b964b07152d234b70', 'S'),
(455, 'Leslie', 'Murphy', '', 'M', '2020-02-15', 'LeslieMurphy@2si.com', '64455455', 'Murphy2', '202cb962ac59075b964b07152d234b70', 'S'),
(456, 'Yu', 'Choi', '', 'H', '2020-02-15', 'YuChoi@2si.com', '64456456', 'Choi', '202cb962ac59075b964b07152d234b70', 'S'),
(458, 'Martín ', 'Sommer', '', 'H', '2020-02-15', 'Martín Sommer@2si.com', '64458458', 'Sommer', '202cb962ac59075b964b07152d234b70', 'S'),
(459, 'Sven ', 'Ottlieb', '', 'H', '2020-02-15', 'Sven Ottlieb@2si.com', '64459459', 'Ottlieb', '202cb962ac59075b964b07152d234b70', 'S'),
(462, 'Violeta', 'Benitez', '', 'M', '2020-02-15', 'VioletaBenitez@2si.com', '64462462', 'Benitez', '202cb962ac59075b964b07152d234b70', 'S'),
(465, 'Carmen', 'Anton', '', 'H', '2020-02-15', 'CarmenAnton@2si.com', '64465465', 'Anton', '202cb962ac59075b964b07152d234b70', 'S'),
(471, 'Sean', 'Clenahan', '', 'H', '2020-02-15', 'SeanClenahan@2si.com', '64471471', 'Clenahan', '202cb962ac59075b964b07152d234b70', 'S'),
(473, 'Franco', 'Ricotti', '', 'H', '2020-02-15', 'FrancoRicotti@2si.com', '64473473', 'Ricotti', '202cb962ac59075b964b07152d234b70', 'S'),
(475, 'Steve', 'Thompson', '', 'H', '2020-02-15', 'SteveThompson@2si.com', '64475475', 'Thompson3', '202cb962ac59075b964b07152d234b70', 'S'),
(477, 'Hanna ', 'Moos', '', 'M', '2020-02-15', 'Hanna Moos@2si.com', '64477477', 'Moos', '202cb962ac59075b964b07152d234b70', 'S'),
(480, 'Alexander ', 'Semenov', '', 'H', '2020-02-15', 'Alexander Semenov@2si.com', '64480480', 'Semenov', '202cb962ac59075b964b07152d234b70', 'S'),
(481, 'Raanan', 'Altagar,G M', '', 'H', '2020-02-15', 'RaananAltagarGM@2si.com', 'RaananAltagarGM', 'Altagar,G M', '202cb962ac59075b964b07152d234b70', 'N'),
(484, 'José Pedro ', 'Roel', '', 'H', '2020-02-15', 'José Pedro Roel@2si.com', '64484484', 'Roel', '202cb962ac59075b964b07152d234b70', 'S'),
(486, 'Rosa', 'Salazar', '', 'M', '2020-02-15', 'RosaSalazar@2si.com', '64486486', 'Salazar', '202cb962ac59075b964b07152d234b70', 'S'),
(487, 'Sue', 'Taylor', '', 'M', '2020-02-15', 'SueTaylor@2si.com', '64487487', 'Taylor2', '202cb962ac59075b964b07152d234b70', 'S'),
(489, 'Thomas ', 'Smith', '', 'H', '2020-02-15', 'Thomas Smith@2si.com', '64489489', 'Smith', '202cb962ac59075b964b07152d234b70', 'S'),
(495, 'Valarie', 'Franco', '', 'M', '2020-02-15', 'ValarieFranco@2si.com', '64495495', 'Franco2', '202cb962ac59075b964b07152d234b70', 'S'),
(496, 'Tony', 'Snowden', '', 'H', '2020-02-15', 'TonySnowden@2si.com', '64496496', 'Snowden', '202cb962ac59075b964b07152d234b70', 'N'),
(497, 'ss', 'ss', '', 'H', '2022-12-07', 'ssss@2si.com', '', 'javier22', '25d55ad283aa400af464c76d713c07ad', 'S'),
(498, 'xxxx', 'xxxx', 'xxxx', 'H', '2023-11-09', 'xxxxxxxx@2si.com', '', 'xxx', '0c0b3da4ac402bd86191d959be081114', 'S'),
(499, 'xxxx', 'xxxx', 'xxxx', 'H', '2023-11-09', 'xxxxxxxx@2si.com', '', 'xxxxx', '0c0b3da4ac402bd86191d959be081114', 'S'),
(504, 'xxxx', 'xxxx', 'xxxx', 'H', '2023-11-09', 'xxxxxxxx@2si.com', '', 'xxxxxy', '0c0b3da4ac402bd86191d959be081114', 'S'),
(505, 'xxxx', 'xxxx', 'xxxx', 'H', '2023-11-09', 'xxxxxxxx@2si.com', '', 'xxxxxyy', '0c0b3da4ac402bd86191d959be081114', 'S'),
(506, 'xxxx', 'xxxx', 'xxxx', 'H', '2023-11-09', 'xxxxxxxx@2si.com', '', 'xxxxxyyz', '0c0b3da4ac402bd86191d959be081114', 'S'),
(516, 'xxxx', 'xxxx', 'xxxx', 'H', '2023-11-09', 'xxxxxxxx@2si.com', '', 'xxxxxyyzdd', '0c0b3da4ac402bd86191d959be081114', 'S'),
(517, 'Fernando', 'Gómez', 'Fernandez', 'H', '2024-10-21', 'FernandoGómez@2si.com', '', 'fgomez', '02fae94b2a68a96e9d6c107cbf11c4f8', 'S');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=519;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

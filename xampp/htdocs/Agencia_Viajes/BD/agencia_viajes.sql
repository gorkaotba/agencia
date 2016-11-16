-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2016 a las 11:38:40
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agencia_viajes`
--
CREATE DATABASE IF NOT EXISTS `agencia_viajes` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `agencia_viajes`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--
-- Creación: 16-11-2016 a las 10:29:09
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `ID_cat` int(11) NOT NULL,
  `Nombre_cat` varchar(20) NOT NULL,
  `Descripcion_cat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `categoria`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_ofe`
--
-- Creación: 16-11-2016 a las 10:32:40
--

DROP TABLE IF EXISTS `cat_ofe`;
CREATE TABLE `cat_ofe` (
  `ID_oferta` int(11) NOT NULL,
  `ID_categoria` int(11) NOT NULL,
  `Nombre_cat_ofe` varchar(25) NOT NULL,
  `Descripcion_cat_ofe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `cat_ofe`:
--   `ID_categoria`
--       `categoria` -> `ID_cat`
--   `ID_oferta`
--       `ofertas` -> `ID_oferta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destinos`
--
-- Creación: 16-11-2016 a las 09:46:48
--

DROP TABLE IF EXISTS `destinos`;
CREATE TABLE `destinos` (
  `ID_dest` int(11) NOT NULL,
  `Nombre_dest` varchar(20) NOT NULL,
  `Pais_dest` varchar(20) NOT NULL,
  `Descripcion_dest` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `destinos`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertas`
--
-- Creación: 16-11-2016 a las 10:25:11
--

DROP TABLE IF EXISTS `ofertas`;
CREATE TABLE `ofertas` (
  `ID_destino` int(11) NOT NULL,
  `ID_oferta` int(11) NOT NULL,
  `Nombre_oferta` varchar(20) NOT NULL,
  `Descripcion_oferta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `ofertas`:
--   `ID_destino`
--       `destinos` -> `ID_dest`
--

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`ID_cat`);

--
-- Indices de la tabla `destinos`
--
ALTER TABLE `destinos`
  ADD PRIMARY KEY (`ID_dest`);

--
-- Indices de la tabla `ofertas`
--
ALTER TABLE `ofertas`
  ADD PRIMARY KEY (`ID_oferta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `ID_cat` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `destinos`
--
ALTER TABLE `destinos`
  MODIFY `ID_dest` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ofertas`
--
ALTER TABLE `ofertas`
  MODIFY `ID_oferta` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

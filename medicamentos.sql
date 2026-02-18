-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-02-2026 a las 19:19:45
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
-- Base de datos: `dolar_association`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamentos`
--

CREATE TABLE `medicamentos` (
  `id` int(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `nombre` text NOT NULL,
  `cantidad` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medicamentos`
--

INSERT INTO `medicamentos` (`id`, `descripcion`, `nombre`, `cantidad`) VALUES
(1, 'Dolores leves como cabeza y muscular.', 'Ibuprofeno', 10),
(2, 'Medicamento indicado principalmente en los casos de hipertensión e insuficiencia cardíaca, ya que actúa promoviendo la dilatación de los vasos sanguíneos, evitando derrames cerebrales', 'Losartan', 0),
(3, 'Medicamento antihipertensivo que se utiliza para tratar la presión arterial alta y la angina de pecho. Reduce la carga del corazón.', 'Amlodipino', 0),
(4, 'Anticonceptivo hormonal oral combinado que se utiliza para prevenir el embarazo. Se indica para tratar condiciones como la dismenorrea, endometriosis, y crisis ovulatorias.', 'Microgynon', 0),
(5, 'Medicamento utilizado para reducir la fiebre y aliviar el dolor. Se utiliza comúnmente para tratar dolores leves a moderados, como dolores de cabeza, dolor de garganta y fiebre.', 'Acetaminofén', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

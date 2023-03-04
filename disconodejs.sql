-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-02-2023 a las 22:47:07
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `disconodejs`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `uuid` varchar(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contactNumber` varchar(20) NOT NULL,
  `paymentMethod` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  `productDetails` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`productDetails`)),
  `createdBy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bill`
--

INSERT INTO `bill` (`id`, `uuid`, `name`, `email`, `contactNumber`, `paymentMethod`, `total`, `productDetails`, `createdBy`) VALUES
(2, 'd6990ec0-977b-11ed-9d0c-cfd6f6f19f39', 'Mateoski', 'mate@gmail.com', '1234567890', 'Cash', 123, '[{\"id\": 1, \"name\": \"Ron\", \"price\": 99, \"total\": 99, \"category\": \"licores\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(3, 'cd8ab840-977d-11ed-be69-1187f7147b0a', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 123, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(5, 'd2a0aea0-977f-11ed-a1b5-3783703c1016', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 123, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(6, '828389a0-9780-11ed-9d0a-0537e636ea0b', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 123, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(7, '5e2790a0-9781-11ed-853c-7bd0845fe926', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 123, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(8, '7fd56420-9781-11ed-b600-9b9a252100c5', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 123, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(10, 'e13c9fb0-9783-11ed-b935-f19f915609b4', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 123, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(11, '8e04bab0-a0db-11ed-ad5a-5d13c97ba3a8', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 123, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(12, 'e19cb920-a0db-11ed-ad5a-5d13c97ba3a8', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 123, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(13, 'c1089d90-a0dc-11ed-ad5a-5d13c97ba3a8', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 500, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 5000, \"category\": \"Coffe\", \"quantity\": \"2\"}]', 'admin@gmail.com'),
(14, 'f2d30b80-a0dc-11ed-ad5a-5d13c97ba3a8', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 500, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 5000, \"category\": \"Coffe\", \"quantity\": \"2\"}]', 'admin@gmail.com'),
(15, '123e6910-a0dd-11ed-ad5a-5d13c97ba3a8', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 5000, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 5000, \"category\": \"Coffe\", \"quantity\": \"2\"}]', 'admin@gmail.com'),
(16, '35b2a4b0-a0dd-11ed-ad5a-5d13c97ba3a8', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 5000, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 5000, \"category\": \"Coffe\", \"quantity\": \"2\"}]', 'admin@gmail.com'),
(17, 'e8f154e0-a0dd-11ed-ad5a-5d13c97ba3a8', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 5000, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 5000, \"category\": \"Coffe\", \"quantity\": \"2\"}, {\"id\": 1, \"name\": \"Black Coffee\", \"price\": 5000, \"category\": \"Coffe\", \"quantity\": \"2\"}]', 'admin@gmail.com'),
(18, 'f36df680-a0dd-11ed-ad5a-5d13c97ba3a8', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 5000, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 5000, \"category\": \"Coffe\", \"quantity\": \"2\"}]', 'admin@gmail.com'),
(19, 'fc6e0a40-a0dd-11ed-ad5a-5d13c97ba3a8', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 5000, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 5000, \"category\": \"Coffe\", \"quantity\": \"2\"}]', 'admin@gmail.com'),
(20, '121e4170-a0de-11ed-ad5a-5d13c97ba3a8', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 5000, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 5000, \"category\": \"Coffe\", \"quantity\": \"2\"}]', 'admin@gmail.com'),
(21, '2c145fb0-a0de-11ed-a35b-9302e318f811', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 5000, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 5000, \"category\": \"Coffe\", \"quantity\": \"2\"}]', 'admin@gmail.com'),
(22, '78c120a0-a0de-11ed-a35b-9302e318f811', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 5000, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 5000, \"category\": \"Coffe\", \"quantity\": \"2\"}]', 'admin@gmail.com'),
(23, '8f4b6420-a0de-11ed-a35b-9302e318f811', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 5000, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 5000, \"category\": \"Coffe\", \"quantity\": \"2\"}]', 'admin@gmail.com'),
(24, '96c0e040-a0de-11ed-a35b-9302e318f811', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 5000, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 5000, \"category\": \"Coffe\", \"quantity\": \"2\"}]', 'admin@gmail.com'),
(25, 'a72de4a0-a0de-11ed-a35b-9302e318f811', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 5000, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 5000, \"category\": \"Coffe\", \"quantity\": \"2\"}]', 'admin@gmail.com'),
(26, 'acc0be10-a0de-11ed-a35b-9302e318f811', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 5000, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 5000, \"category\": \"Coffe\", \"quantity\": \"2\"}]', 'admin@gmail.com'),
(27, 'c3823e30-a0de-11ed-a35b-9302e318f811', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 5000, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 5000, \"category\": \"Coffe\", \"quantity\": \"2\"}]', 'admin@gmail.com'),
(28, 'ac901bb0-a0df-11ed-82f6-dba673a0fd53', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 123, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(29, 'fda89b30-a0df-11ed-82f6-dba673a0fd53', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 123, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(30, '1aee59a0-a0e0-11ed-82f6-dba673a0fd53', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 123, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(31, '3fab1ad0-a0e0-11ed-82f6-dba673a0fd53', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 123, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(32, '55c66fe0-a0e0-11ed-82f6-dba673a0fd53', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 123, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(33, '7fa87ba0-a0e0-11ed-82f6-dba673a0fd53', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 123, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(35, 'c65103b0-a0e0-11ed-82f6-dba673a0fd53', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 123, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(36, '0027af80-a0e1-11ed-82f6-dba673a0fd53', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 123, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}, {\"id\": 2, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(37, '22202090-a0e1-11ed-82f6-dba673a0fd53', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 396, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}, {\"id\": 2, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(38, '682c8fb0-a0e1-11ed-82f6-dba673a0fd53', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 396, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}, {\"id\": 2, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(39, '8a3888c0-a0e1-11ed-82f6-dba673a0fd53', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 396, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}, {\"id\": 2, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(40, 'b5c7cf50-a0e1-11ed-82f6-dba673a0fd53', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 396, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(41, 'cb0ac5c0-a0e1-11ed-82f6-dba673a0fd53', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 396, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(42, 'e871eee0-a0e1-11ed-82f6-dba673a0fd53', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 396, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(43, 'ea34d490-a0e1-11ed-82f6-dba673a0fd53', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 396, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(44, 'f177f610-a0e1-11ed-82f6-dba673a0fd53', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 396, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(46, '2df1d570-a0e2-11ed-82f6-dba673a0fd53', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 396, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"2\"}]', 'admin@gmail.com'),
(47, '5d3a0550-a0e2-11ed-82f6-dba673a0fd53', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 396, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"2\"}]', 'admin@gmail.com'),
(48, '9db8f230-a0e2-11ed-82f6-dba673a0fd53', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 396, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"2\"}]', 'admin@gmail.com'),
(49, 'b29cffc0-a0e2-11ed-82f6-dba673a0fd53', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 396, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"3\"}]', 'admin@gmail.com'),
(51, '7abc9770-ae50-11ed-b6e8-996ce9bdd7ca', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 123, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(52, '91fbeb20-b166-11ed-9fa2-b76c49387dfb', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 123, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com'),
(53, 'f7741080-b167-11ed-9fa2-b76c49387dfb', 'mate', 'mate@gmail.com', '1234567890', 'Cash', 123, '[{\"id\": 1, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}, {\"id\": 5, \"name\": \"Black Coffee\", \"price\": 99, \"total\": 99, \"category\": \"Coffe\", \"quantity\": \"1\"}]', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'licores'),
(2, 'Tea'),
(3, 'Coffe'),
(4, 'Test'),
(5, 'Cake1'),
(8, 'o');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `name`, `categoryId`, `description`, `price`, `status`) VALUES
(1, 'Ron', 1, 'es un licor', 5000, 'true'),
(4, 'Black Coffee', 3, 'Es un cafe', 99, 'true'),
(5, 'Black Coffee1', 3, 'Es un cafe', 5000, 'true'),
(6, 'Test', 5, 'Test Description', 123, 'true'),
(12, 'pp', 5, 'p', 5, 'true');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `contactNumber` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `contactNumber`, `email`, `password`, `status`, `role`) VALUES
(1, 'Admin', '1231231231', 'admin@gmail.com', 'admin', 'true', 'admin'),
(2, 'mate', '1234567890', 'mate@gmail.com', '1234567', 'true', 'user'),
(3, 'mate', '1234567899', 'mateo@gmail.com', 'mate123', 'true', 'user'),
(4, 'mate', '1234567899', 'mateo1@gmail.com', '12345', 'false', 'user'),
(9, 'Pepito Perez', '1234569879', 'pepitoperez@gmail.com', 'Pepito123', 'false', 'user'),
(10, 'pepito', '1236547898', 'pepito@gmail.com', 'pp', 'false', 'user'),
(11, 'test', '1234567890', 'test@gmail.com', '123', 'false', 'user'),
(12, 'TestRegistro', '1231231231', 'testRegistro@gmail.com', '123', 'false', 'user');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

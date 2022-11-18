-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2022 a las 05:29:14
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
-- Base de datos: `alquiler_vehiculo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `documento_identidad` int(11) NOT NULL,
  `nombre_cliente` varchar(30) NOT NULL,
  `apellido_cliente` varchar(30) DEFAULT NULL,
  `edad_cliente` smallint(6) NOT NULL,
  `celular` int(11) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `ciudad` varchar(20) DEFAULT NULL,
  `tarjeta_credito` int(11) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `confirmar_password` varchar(20) DEFAULT NULL,
  `licencia` varchar(2) NOT NULL,
  `sexo` varchar(2) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`documento_identidad`, `nombre_cliente`, `apellido_cliente`, `edad_cliente`, `celular`, `email`, `direccion`, `ciudad`, `tarjeta_credito`, `password`, `confirmar_password`, `licencia`, `sexo`, `idusuario`) VALUES
(4256876, 'Joaquin', 'Lopez', 37, 2147483647, 'joaquinlopez@hotmail', 'cra 70 # 25-70', NULL, 45798605, NULL, NULL, 'B2', NULL, 1),
(42568812, 'Sebastian', 'Garcia', 27, 2147483647, 'sebastiangarcia@gmai', 'calle 42 #90 -12', NULL, 8745546, NULL, NULL, 'B2', NULL, 4),
(42788760, 'Carlos', 'Medina', 42, 2147483647, 'carlosmedina@hotmail', 'cra 102 # 70-47', NULL, 697584885, NULL, NULL, 'C3', NULL, 2),
(425890770, 'Patricia', 'Cifuentes', 47, 2147483647, 'patriciacifuntes@hot', 'calle 46 # 50-60', NULL, 57869493, NULL, NULL, 'B2', NULL, 7),
(1017357987, 'Mariela', 'Velez', 22, 2147483647, 'marielavelez@gmail.c', 'calle 20 # 70-87', NULL, 56790785, NULL, NULL, 'B2', NULL, 3),
(1017457630, 'Milena', 'Gomez', 39, 2147483647, 'milenagomez@hotmail.', 'cra 46 # 67-03', NULL, 48686994, NULL, NULL, 'B2', NULL, 5),
(2147483647, 'Luis', 'Arango', 26, 2147483647, 'luisarango@gmail.com', 'calle 31 # 90-26', NULL, 78567886, NULL, NULL, 'B2', NULL, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devolucion`
--

CREATE TABLE `devolucion` (
  `id_devolucion` int(11) NOT NULL,
  `fecha_devolucion` date DEFAULT NULL,
  `hora_devolucion` time DEFAULT NULL,
  `descripcion_devolucion` varchar(50) DEFAULT NULL,
  `valor_danos` float DEFAULT NULL,
  `idreserva` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `devolucion`
--

INSERT INTO `devolucion` (`id_devolucion`, `fecha_devolucion`, `hora_devolucion`, `descripcion_devolucion`, `valor_danos`, `idreserva`) VALUES
(1, '0000-00-00', '17:10:00', 'El vehiculo se encuentra en estado optimo en la fe', 0, 100),
(2, '0000-00-00', '10:47:00', 'El vehiculo no se encuentra en optimo estado, tien', 200, 102),
(3, '0000-00-00', '17:20:00', 'El vehiculo se encuentra en estado optimo en la fe', 0, 103);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `cedula_empleado` int(11) NOT NULL,
  `nombre_empleado` varchar(20) DEFAULT NULL,
  `cargo` varchar(10) DEFAULT NULL,
  `idusuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`cedula_empleado`, `nombre_empleado`, `cargo`, `idusuario`) VALUES
(101735785, 'David Aristizabal', 'administra', 9),
(425799765, 'Alejandro Palacio', 'asesor', 10),
(1017458586, 'Adriana Mejia', 'asesor', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id_factura` int(11) NOT NULL,
  `valor_total` float DEFAULT NULL,
  `iva_pago` float DEFAULT NULL,
  `idreservas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id_factura`, `valor_total`, `iva_pago`, `idreservas`) VALUES
(1000004568, 2550000, 200, 102),
(1000008120, 3000000, 20000, 103),
(2147483647, 750000, 20000, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id` int(5) NOT NULL,
  `nombre` varchar(30) CHARACTER SET utf8 NOT NULL,
  `apellido` varchar(30) CHARACTER SET utf8 NOT NULL,
  `documento_identidad` int(12) NOT NULL,
  `edad` int(4) NOT NULL,
  `numero_celular` int(10) NOT NULL,
  `email` varchar(40) CHARACTER SET utf8 NOT NULL,
  `direccion` varchar(40) CHARACTER SET utf8 NOT NULL,
  `ciudad` varchar(30) CHARACTER SET utf8 NOT NULL,
  `licencia_conduccion` int(15) NOT NULL,
  `tarjeta_credito` int(20) NOT NULL,
  `password` varchar(40) CHARACTER SET utf8 NOT NULL,
  `confirmar_password` varchar(40) CHARACTER SET utf8 NOT NULL,
  `sexo` varchar(1) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id`, `nombre`, `apellido`, `documento_identidad`, `edad`, `numero_celular`, `email`, `direccion`, `ciudad`, `licencia_conduccion`, `tarjeta_credito`, `password`, `confirmar_password`, `sexo`) VALUES
(7, 'Andrés', 'Marroquín Rodríguez', 2147483647, 45, 2147483647, 'andresm@gmail.com', 'Calle 20 N° 20-20', 'Bogotá', 2147483647, 2147483647, 'andres', 'andres', 'M'),
(8, 'Luis', 'Toncel', 2147483647, 45, 2147483647, 'luist@gmail.com', 'Calle 5 # 20-20', 'Cali', 2147483647, 2147483647, 'luis', 'luis', 'M'),
(9, 'Alejandro', 'Calvo', 2147483647, 39, 2147483647, 'alejandro@gmail.com', 'Carrera 98 # 77-52', 'Cartagena', 2147483647, 2147483647, 'Alejandro', 'alejandro', 'M'),
(10, 'Pedro', 'Ramirez', 2147483647, 56, 2147483647, 'pedro@gmail.com', 'Carrera 89 N° 72 55', 'Bogotá', 2147483647, 2147483647, 'pedro', 'pedro', 'M'),
(11, 'Viviana', 'Sanchez', 54545454, 25, 2147483647, 'viviana@gmail.com', 'Calle 34 # 70-45', 'Popayan', 2147483647, 2147483647, 'viviana', 'viviana', 'M'),
(12, 'Maria', 'Jimenez', 2147483647, 20, 2147483647, 'maria@gmail.com', 'calle 10 # 15-20', 'Barranquilla', 2147483647, 2147483647, 'maria', 'maria', 'M'),
(14, 'Mercedes', 'Jimenez', 2147483647, 20, 2147483647, 'mercedes@gmail.com', 'calle 10 # 15-20', 'Barranquilla', 2147483647, 2147483647, 'mercedes', 'mercedes', 'F'),
(15, 'Sandro', 'Pardo', 2147483647, 21, 2147483647, 'sandro@gmail.com', 'Transversal 20 # 30-40', 'Silvania', 2147483647, 2147483647, 'sandro', 'sandro', 'M'),
(16, 'Leonardo', 'Pardo', 2147483647, 21, 2147483647, 'leonardo@gmail.com', 'Transversal 20 # 30-40', 'Silvania', 2147483647, 2147483647, 'leonardo', 'leonardo', 'M'),
(17, 'Marcos', 'Marroquín Rodríguez', 2147483647, 18, 2147483647, 'marcos@gmail.com', 'Carrera 78 # 21-20', 'Bogotá', 2147483647, 2147483647, 'marcos', 'marcos', 'M'),
(18, 'Felipe', 'Ahumada', 2147483647, 24, 2147483647, 'felipe@gmail.com', 'Diagonal 88 N° 30-20', 'Tunja', 2147483647, 2147483647, 'felipe', 'felipe', 'M');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `id_reserva` int(11) NOT NULL,
  `fecha_reserva` date DEFAULT NULL,
  `hora_reserva` time DEFAULT NULL,
  `valor_hora` float DEFAULT NULL,
  `valor_deposito` float DEFAULT NULL,
  `fecha_alquiler` date DEFAULT NULL,
  `idvehiculo` int(11) NOT NULL,
  `cedulacliente` int(11) DEFAULT NULL,
  `cedulaempleado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`id_reserva`, `fecha_reserva`, `hora_reserva`, `valor_hora`, `valor_deposito`, `fecha_alquiler`, `idvehiculo`, `cedulacliente`, `cedulaempleado`) VALUES
(100, '0000-00-00', '13:30:02', 50, 100, '0000-00-00', 1, 4256876, 1017458586),
(102, '0000-00-00', '10:15:00', 70, 150, '0000-00-00', 2, 42788760, 425799765),
(103, '0000-00-00', '09:00:00', 50, 100, '0000-00-00', 3, 1017357987, 1017458586);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `contrasena` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `contrasena`) VALUES
(1, 'jlopez', 'joaquin21'),
(2, 'cmedina', 'carlos20'),
(3, 'mvelez', 'mariela02'),
(4, 'sgarcia', 'sebas47'),
(5, 'milegomez', 'gomez25'),
(6, 'larango', 'lucho109'),
(7, 'patriciac', 'patri202'),
(8, 'adrianam', 'adri90'),
(9, 'davida', 'davidaristi10'),
(10, 'alejop', 'alejo20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` int(5) NOT NULL,
  `placa` varchar(20) NOT NULL,
  `estado` varchar(40) NOT NULL,
  `categoria` varchar(40) NOT NULL,
  `color` varchar(40) NOT NULL,
  `marca` varchar(40) NOT NULL,
  `gama` varchar(40) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `valor_dia` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id`, `placa`, `estado`, `categoria`, `color`, `marca`, `gama`, `modelo`, `valor_dia`) VALUES
(1, 'BBI979', 'Disponible', 'Automovil', 'Rojo', 'Mazda', 'Media', '2020', '300000'),
(2, 'SSS808', 'No Disponible', 'Automovil', 'verde', 'Mercedes Benz', 'Alta', '2021', '500000'),
(3, 'BBI888', 'Disponible', 'Automovil', 'Negro', 'BMW', 'Alta', '2022', '600000'),
(4, 'SSA897', 'Disponible', 'Automovil', 'Azul', 'Poche', 'Alta', '2019', '900000'),
(5, 'WER555', 'Disponible', 'Automovil', 'Gris', 'Mercedes Benz', 'Alta', '2021', '1000000'),
(21, 'DDD', 'Disponible', 'Automovil', 'Violeta', 'Volkswagen', 'Media', '2020', '300000'),
(25, 'MSZ', 'Disponible', 'Camioneta', 'Plomo Perlado', 'Jeep', 'Alta', '2015', '400000'),
(60, 'BBI888', 'Disponible', 'Automovil', 'Morado', 'Nissan', 'Media', '2015', '250000'),
(61, 'AAA888', 'Disponible', 'Automovil', 'Rojo', 'Mazda', 'Media', '2015', '250000'),
(62, 'CCC999', 'Disponible', 'Automovil', 'Morado', 'Toyota', 'Media', '2020', '450000');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`documento_identidad`),
  ADD KEY `FK_usuario` (`idusuario`);

--
-- Indices de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD PRIMARY KEY (`id_devolucion`),
  ADD KEY `FK_id_reserva` (`idreserva`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`cedula_empleado`),
  ADD KEY `FK_usuarios` (`idusuario`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_factura`),
  ADD KEY `FK_id_reservas` (`idreservas`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `FK_cedula` (`cedulacliente`),
  ADD KEY `FK_cedula_empleado` (`cedulaempleado`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `FK_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD CONSTRAINT `FK_id_reserva` FOREIGN KEY (`idreserva`) REFERENCES `reserva` (`id_reserva`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `FK_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `FK_id_reservas` FOREIGN KEY (`idreservas`) REFERENCES `reserva` (`id_reserva`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `FK_cedula` FOREIGN KEY (`cedulacliente`) REFERENCES `cliente` (`documento_identidad`),
  ADD CONSTRAINT `FK_cedula_empleado` FOREIGN KEY (`cedulaempleado`) REFERENCES `empleado` (`cedula_empleado`),
  ADD CONSTRAINT `FK_id_vehiculo` FOREIGN KEY (`idvehiculo`) REFERENCES `vehiculos` (`id_vehiculo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-09-2014 a las 02:29:56
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sifweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abono_compra`
--

CREATE TABLE IF NOT EXISTS `abono_compra` (
  `id_abono` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `fecha` datetime NOT NULL,
  `orden_id` int(11) NOT NULL,
  `forma_pago` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `observacion` varchar(250) NOT NULL,
  PRIMARY KEY (`id_abono`),
  KEY `factura_id` (`orden_id`),
  KEY `usuario_id` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abono_venta`
--

CREATE TABLE IF NOT EXISTS `abono_venta` (
  `id_abono` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `fecha` datetime NOT NULL,
  `factura_id` int(11) NOT NULL,
  `observacion` varchar(250) NOT NULL,
  PRIMARY KEY (`id_abono`),
  KEY `factura_id` (`factura_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE IF NOT EXISTS `caja` (
  `id_caja` int(11) NOT NULL AUTO_INCREMENT,
  `base` decimal(10,2) NOT NULL,
  `fecha` datetime NOT NULL,
  `venta` decimal(10,2) NOT NULL,
  `gasto` decimal(10,2) NOT NULL,
  `observacion` varchar(250) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id_caja`),
  KEY `usuario_id` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_producto`
--

CREATE TABLE IF NOT EXISTS `categoria_producto` (
  `id_categoria` int(11) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int(11) NOT NULL,
  `tipo_documento` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono_1` varchar(30) DEFAULT NULL,
  `celular` varchar(30) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `e_mail` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE IF NOT EXISTS `detalle_venta` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `producto_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `valor_unitario` double DEFAULT NULL,
  `factura_id` int(11) NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `producto_id` (`producto_id`),
  KEY `factura_id` (`factura_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_compra`
--

CREATE TABLE IF NOT EXISTS `det_compra` (
  `id_deta_compra` int(11) NOT NULL AUTO_INCREMENT,
  `producto_id` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `valor_unitario` decimal(10,2) NOT NULL,
  `orden_id` int(11) NOT NULL,
  PRIMARY KEY (`id_deta_compra`),
  KEY `producto_id` (`producto_id`),
  KEY `orden_id` (`orden_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fac_venta`
--

CREATE TABLE IF NOT EXISTS `fac_venta` (
  `id_factura` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `iva` decimal(10,2) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `descuento` decimal(10,2) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `observacion` varchar(250) NOT NULL,
  PRIMARY KEY (`id_factura`),
  KEY `cliente_id` (`cliente_id`),
  KEY `usuario_id` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE IF NOT EXISTS `inventario` (
  `id_inventario` int(11) NOT NULL AUTO_INCREMENT,
  `producto_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `cantidad` int(11) NOT NULL,
  `entrada` tinyint(1) NOT NULL,
  `observacion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_inventario`),
  KEY `producto_id` (`producto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lote`
--

CREATE TABLE IF NOT EXISTS `lote` (
  `id_lote` int(11) NOT NULL AUTO_INCREMENT,
  `vencimiento` date NOT NULL,
  `dias` tinyint(4) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `observacion` varchar(250) NOT NULL,
  `producto_id` int(11) NOT NULL,
  PRIMARY KEY (`id_lote`),
  KEY `producto_id` (`producto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_compra`
--

CREATE TABLE IF NOT EXISTS `orden_compra` (
  `id_orden` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_factura` datetime NOT NULL,
  `vencimiento` date NOT NULL,
  `factura` varchar(30) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `iva` decimal(10,2) NOT NULL,
  `pagado` tinyint(1) NOT NULL DEFAULT '0',
  `usuario_id` int(11) NOT NULL,
  `descuento` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `observacion` varchar(250) NOT NULL,
  `vendedor` varchar(50) NOT NULL,
  `ajuste` decimal(10,2) NOT NULL,
  `nit_id` int(11) NOT NULL,
  PRIMARY KEY (`id_orden`),
  KEY `usuario_id` (`usuario_id`),
  KEY `nit_id` (`nit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE IF NOT EXISTS `pago` (
  `id_pago` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(300) DEFAULT NULL,
  `valor` decimal(10,2) NOT NULL,
  `fecha` datetime NOT NULL,
  `tipo` int(11) NOT NULL,
  PRIMARY KEY (`id_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
  `id_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) NOT NULL,
  PRIMARY KEY (`id_perfil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_barras` varchar(50) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `precio_venta` decimal(10,2) DEFAULT NULL,
  `impuesto` float NOT NULL,
  `categoria_id` int(11) NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `categoria_id` (`categoria_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE IF NOT EXISTS `proveedor` (
  `id_nit` int(11) NOT NULL,
  `tipo_documento` varchar(2) NOT NULL,
  `razon_social` varchar(50) NOT NULL,
  `telefono_1` varchar(30) DEFAULT NULL,
  `telefono_2` varchar(30) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `e_mail` varchar(30) DEFAULT NULL,
  `observaciones` varchar(100) DEFAULT NULL,
  `contacto` varchar(50) NOT NULL,
  PRIMARY KEY (`id_nit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tienda`
--

CREATE TABLE IF NOT EXISTS `tienda` (
  `id_nit` int(11) NOT NULL,
  `razon_social` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `celular` varchar(10) NOT NULL,
  `e_mail` varchar(40) DEFAULT NULL,
  `regimen` varchar(50) DEFAULT NULL,
  `resolucion` varchar(200) DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL,
  `administrador` varchar(50) NOT NULL,
  PRIMARY KEY (`id_nit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono_1` varchar(30) DEFAULT NULL,
  `celular` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `e_mail` varchar(30) DEFAULT NULL,
  `cargo` varchar(30) NOT NULL,
  `clave` varchar(15) NOT NULL,
  `perfil_id` int(11) NOT NULL,
  `fecha_ingreso` datetime NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `perfil_id` (`perfil_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `abono_compra`
--
ALTER TABLE `abono_compra`
  ADD CONSTRAINT `abono_compra_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `abono_compra_ibfk_1` FOREIGN KEY (`orden_id`) REFERENCES `orden_compra` (`id_orden`);

--
-- Filtros para la tabla `abono_venta`
--
ALTER TABLE `abono_venta`
  ADD CONSTRAINT `abono_venta_ibfk_1` FOREIGN KEY (`factura_id`) REFERENCES `fac_venta` (`id_factura`);

--
-- Filtros para la tabla `caja`
--
ALTER TABLE `caja`
  ADD CONSTRAINT `caja_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`factura_id`) REFERENCES `fac_venta` (`id_factura`);

--
-- Filtros para la tabla `det_compra`
--
ALTER TABLE `det_compra`
  ADD CONSTRAINT `det_compra_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `det_compra_ibfk_2` FOREIGN KEY (`orden_id`) REFERENCES `orden_compra` (`id_orden`);

--
-- Filtros para la tabla `fac_venta`
--
ALTER TABLE `fac_venta`
  ADD CONSTRAINT `fac_venta_ibfk_2` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `fac_venta_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `lote`
--
ALTER TABLE `lote`
  ADD CONSTRAINT `lote_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `orden_compra`
--
ALTER TABLE `orden_compra`
  ADD CONSTRAINT `orden_compra_ibfk_2` FOREIGN KEY (`nit_id`) REFERENCES `proveedor` (`id_nit`),
  ADD CONSTRAINT `orden_compra_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria_producto` (`id_categoria`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`id_perfil`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

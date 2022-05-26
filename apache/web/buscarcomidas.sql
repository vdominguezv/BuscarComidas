-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-05-2022 a las 17:43:25
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
-- Base de datos: `buscarcomidas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trestaurante`
--

CREATE TABLE `trestaurante` (
  `id_restaurante` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `latitud` decimal(10,5) DEFAULT NULL,
  `longitud` decimal(10,5) DEFAULT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  `mapa` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trestaurante`
--

INSERT INTO `trestaurante` (`id_restaurante`, `nombre`, `descripcion`, `latitud`, `longitud`, `ubicacion`, `mapa`) VALUES
(1, 'La Caseta de Aurora', 'Se caracteriza por ser una pulperia 100% tradicional y de gran calidad', '43.35642', '-8.41455', 'Rua Igualdad, 1, 15008 A Coruna', '\'<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2901.019921926598!2d-8.416998584302014!3d43.35569387963521!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd2e7d0a36242cb9%3A0xd7e7cfe3cb9c1d37!2sLa%20Caseta%20de%20Aurora!5e0!3m2!1ses!2ses!4v1653578089487!5m2!1ses!2ses\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\''),
(2, 'O Silandeiro', 'Ofrece amplia variedad de carnes y pescados de primera calidad', '43.35293', '-8.40481', 'Rua Chile, 8, 15009 A Coruna', '\'<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2901.1802600140722!2d-8.407260484302086!3d43.352339879850824!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd2e7c9986d9cabf%3A0xec3d886e43b58d91!2sO%20Silandeiro!5e0!3m2!1ses!2ses!4v1653578715737!5m2!1ses!2ses\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\''),
(3, 'Culuca cocina-bar', 'Platos innovadores de picoteo y cocteles creativos', '43.36435', '-8.40897', 'Av. de Arteixo, 10, 15004 A Coruna', '\'<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2900.6509679414435!2d-8.41121268430175!3d43.36341097913861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd2e7c88ecf5505f%3A0xfb75278ce0d60149!2sCuluca%20coci%C3%B1a-bar!5e0!3m2!1ses!2ses!4v1653578806527!5m2!1ses!2ses\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\''),
(4, 'Parrillada Buenos Aires', 'Parrillada argentina especializada en carnes y pescados', '43.36085', '-8.41584', 'Rua San Leandro, 5, 15007 A Coruna', '\'<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2900.8065622025174!2d-8.417923184301863!3d43.36015667934809!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd2e7c8cf5245485%3A0xab30eb9266c1e9c9!2sParrillada%20Buenos%20Aires!5e0!3m2!1ses!2ses!4v1653578977992!5m2!1ses!2ses\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\''),
(5, 'Raxaria As Neves', 'Ambiente familiar y amplios comedores con cocina gallega y especialidad en raxo', '43.36581', '-8.42390', 'Rda. de Outeiro, 300, 15011 A Coruna', '\'<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2900.5689285185817!2d-8.426286984301735!3d43.36512677902833!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd2e7cf6068f2dd1%3A0x9d0a23e7318896b6!2sRaxar%C3%ADa%20As%20Neves%20(A%20Coru%C3%B1a)!5e0!3m2!1ses!2ses!4v1653579069280!5m2!1ses!2ses\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\''),
(6, 'El De Alberto', 'Platos vanguardistas en sofisticado restaurante con cocina de autor', '43.37012', '-8.40515', 'Rua Comandante Fontanes, 1, 15003 A Coruna', '\'<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2900.3451596799923!2d-8.407104884301663!3d43.36980647872729!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd2e7c79e1590add%3A0xf5381c0a7ddbcaf1!2sEl%20De%20Alberto!5e0!3m2!1ses!2ses!4v1653579148472!5m2!1ses!2ses\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\''),
(7, 'Gloria Bendita', 'Restaurante de estilo rustico chic con platos de marisco, chuletones y paella', '43.36843', '-8.41064', 'Rua Riazor, 2, 15004 A Coruna', '\'<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2900.4446499518076!2d-8.413000684301673!3d43.36772587886111!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd2e7c6267b892c1%3A0x79100f262db8c7e2!2sGloria%20Bendita!5e0!3m2!1ses!2ses!4v1653579259791!5m2!1ses!2ses\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\''),
(8, 'Mediterraneo Basilico', 'Muebles blancos y decoracion cuidada con cocina mediterranea', '43.36971', '-8.41931', 'Rua Manuel Murguia, 34, 15011 A Coruna', '\'<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2900.3677397071!2d-8.421471084301697!3d43.36933427875772!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd633ef7b6357be9%3A0x9b8d01195227ac05!2sRestaurante%20Mediterr%C3%A1neo%20Basilico!5e0!3m2!1ses!2ses!4v1653579359784!5m2!1ses!2ses\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\''),
(9, 'La Sarten de Coruna', 'Restaurante moderno de marisco con platos de bogavante y cangrejo', '43.37324', '-8.39657', 'Praza de Espana, 11, 15001 A Coruna', '\'<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2900.2039702704446!2d-8.398903684301581!3d43.37275897853733!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd2e7c78a90b029f%3A0xe81fd5817e090c50!2zTGEgU2FydMOpbiBkZSBDb3J1w7FhIChBIENvcnXDsWEp!5e0!3m2!1ses!2ses!4v1653579483903!5m2!1ses!2ses\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\''),
(10, 'La Masia', 'Platos de marisco y de carne fritos o a la brasa', '43.35506', '-8.41495', 'Av. de Arteixo, 88, 15008 A Coruna', '\'<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2901.08307834507!2d-8.41718968430198!3d43.35437277971997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd2e7c93aacd5a6b%3A0x60c92ad78b450ae0!2sRestaurante%20La%20Masia!5e0!3m2!1ses!2ses!4v1653579576312!5m2!1ses!2ses\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>\'');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario`
--

CREATE TABLE `tusuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contrasena` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tusuario`
--

INSERT INTO `tusuario` (`id_usuario`, `nombre`, `email`, `contrasena`) VALUES
(1, 'prueba', 'prueba', '$2y$10$G3dByOMf5bqbBEUcqD/RM.YtN4TvvVdN8DU0VySO5enCRX8cttlXy');


--
-- Estructura de tabla para la tabla `tfavorito`
--

CREATE TABLE `tfavorito` (
  `id_favorito` int(11) NOT NULL,
  `restaurante_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tfavorito`
--
ALTER TABLE `tfavorito`
  ADD PRIMARY KEY (`id_favorito`),
  ADD KEY `restaurante_id` (`restaurante_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `trestaurante`
--
ALTER TABLE `trestaurante`
  ADD PRIMARY KEY (`id_restaurante`);

--
-- Indices de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tfavorito`
--
ALTER TABLE `tfavorito`
  MODIFY `id_favorito` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `trestaurante`
--
ALTER TABLE `trestaurante`
  MODIFY `id_restaurante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tfavorito`
--
ALTER TABLE `tfavorito`
  ADD CONSTRAINT `tFavorito_ibfk_1` FOREIGN KEY (`restaurante_id`) REFERENCES `trestaurante` (`id_restaurante`),
  ADD CONSTRAINT `tFavorito_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `tusuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

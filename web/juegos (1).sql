-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2022 a las 13:21:42
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `juegos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(100) NOT NULL,
  `categoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `categoria`) VALUES
(1, 'Acción'),
(2, 'Aventuras'),
(3, 'Carreras'),
(4, 'Deportes'),
(5, 'Terror');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `idProducto` int(11) NOT NULL,
  `nombreProducto` varchar(100) NOT NULL,
  `categoriaProducto` varchar(100) NOT NULL,
  `fotoProducto` varchar(500) NOT NULL,
  `desarroladorProducto` varchar(500) NOT NULL,
  `descripcionProducto` varchar(500) NOT NULL,
  `anoLanzamiento` year(4) NOT NULL,
  `precioProducto` double NOT NULL,
  `puntacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`idProducto`, `nombreProducto`, `categoriaProducto`, `fotoProducto`, `desarroladorProducto`, `descripcionProducto`, `anoLanzamiento`, `precioProducto`, `puntacion`) VALUES
(1, 'Call of Duty: Modern Warfare II', '1', 'public/img/productos/callofduty.jpg', 'Infinity Ward', 'En Call of Duty®: Modern Warfare® II, los jugadores se verán \r\ninmersos en un conflicto a escala global sin precedentes que incluye el regreso de Operadores icónicos de la fuerza \r\noperativa 141. Desde operaciones tácticas de infiltración a pequeña escala hasta misiones altamente secretas, los \r\njugadores se desplegarán con amigos en una experiencia inmersiva. Infinity Ward ofrece a los fans una experiencia puntera \r\ncon un manejo nuevo, un sistema de IA avanzado, un armero nuevo y una retahíla ', 2022, 14999, 5),
(2, 'Battlefield 2042', '1', 'public/img/productos/battlefield.jpg', 'DICE', 'Battlefield™ 2042 es un shooter en primera persona que marca el regreso a la emblemática guerra total de la franquicia. Adáptate y sobrevive en un mundo en un futuro cercano transformado por el desorden. Forma tu patrulla y utiliza un arsenal de vanguardia en campos de batalla en constante cambio con 128 jugadores, una escala sin precedentes y una destrucción épica.', 2021, 12999, 5),
(3, 'Elden Ring', '2', 'public/img/productos/eldenring.jpg', 'FromSoftware', 'Álzate, Sinluz, y que la gracia te guíe para abrazar el poder del Círculo de Elden y encumbrarte como señor del Círculo en las Tierras Intermedias.\r\n\r\n• Un extenso mundo lleno de emociones\r\nUn vasto mundo perfectamente conectado en el que los territorios abiertos estarán repletos de situaciones y mazmorras enormes con diseños complejos y tridimensionales. Mientras exploras, experimentarás el deleite de descubrir amenazas desconocidas y sobrecogedoras, y eso te haré sentir la emoción de la supera', 2022, 14999, 5),
(4, 'FIFA 22', '4', 'public/img/productos/fifa22.jpg', 'EA Sports', '\r\nJuega al juego del mundo con más de 17 000 jugadores, más de 700 equipos, más de 90 estadios y más de 30 ligas de todo el mundo.\r\n\r\nMODOS DE JUEGO\r\nModo Carrera :vive tus sueños con FIFA 22, ya sea como mánager o como futbolista. Crea el club más nuevo de FIFA, diseña tus equipaciones y tu estadio y decide si quieres competir con la élite o ascender desde las divisiones inferiores mientras encaminas a tu club hacia la gloria. También puedes probar tus habilidades como futbolista con un modo Ca', 2021, 15999, 5),
(5, 'FIFA 23', '4', 'public/img/productos/fifa23.jpg', 'EA Sports', 'EA SPORTS™ FIFA 23 lleva el juego del mundo al campo, con la tecnología HyperMotion2 que ofrece una experiencia de juego aún más realista, tanto la FIFA World Cup™ masculina como la femenina que llegará al juego más adelante durante la temporada con actualizaciones tras el lanzamiento, la incorporación de equipos femeninos, funciones de juego cruzado* y mucho más. Disfruta de una autenticidad única con más de 19 000 jugadores, más de 700 equipos, 100 estadios y más de 30 ligas en FIFA 23.', 2022, 17999, 5),
(6, 'NBA 2K23', '4', 'public/img/productos/nba.jpg', 'Visual Concepts', 'Ponte a la altura de las circunstancias y desarrolla todo tu potencial en NBA 2K23. Ponte a prueba contra los mejores jugadores del mundo y demuestra tu talento en Mi CARRERA. Combina a las estrellas actuales con leyendas eternas en MyTEAM. Construye tu propia dinastía en Mi GM o lleva la NBA en una nueva dirección con Mi LIGA. Enfréntate a equipos de la NBA o de la WNBA en JUGAR AHORA y experimenta un juego real. ¿Cómo Responderás a la Llamada?', 2022, 18999, 5),
(7, 'Flashback 25th Anniversary Collection', '1', 'public/img/productos/flashback.jpg', 'Delphine Software', '2142. Tras huir de una nave espacial pero despojado de todo recuerdo, el joven científico Conrad B. Hart despierta en Titán, una luna colonizada del planeta Saturno. Sus enemigos y secuestradores le pisan los talones. Debe encontrar un camino de regreso a la Tierra, defendiéndose de los peligros que encuentra y desentrañando un insidioso complot extraterrestre que amenaza el planeta', 2018, 14999, 5),
(8, 'Gran Turismo 7', '3', 'public/img/productos/granturismo.jpg', 'Polyphony Digital', 'Gran Turismo 7 representa un verdadero retorno a la forma para Polyphony Digital. A pesar de ser la séptima iteración principal, el equipo aún puede mantener la serie sintiéndose fresca con su nueva capa de pintura y tecnología innovadora con su nuevo sistema meteorológico ( e incluso una nueva tecnología de IA llamada “Sophy ”). Para los jugadores de Gran Turismo que piensan que esto podría ser una medida de medio paso, no lo es; Es una experiencia completa y mucho más. Es una jugada imprescind', 2022, 13999, 5),
(9, 'God of War', '1', 'public/img/productos/godofwar.jpg', 'Santa Monica Studio', 'Entra en los dominios nórdicos\r\nKratos ha dejado atrás su venganza contra los dioses del Olimpo y vive ahora como un hombre en los dominios de los dioses y monstruos nórdicos. En este mundo cruel e implacable debe luchar para sobrevivir… y enseñar a su hijo a hacerlo también.\r\n', 2022, 13999, 5),
(10, 'Crash Bandicoot: It\'s About Time', '3', 'public/img/productos/crash.jpg', 'Toys for Bob', '¡Ya era hora! El aclamado por la crítica Crash Bandicoot™ 4: It’s About Time ya está disponible en Steam. Crash se lanza de lleno con tus marsupiales favoritos a una aventura temporal que se cae a pedazos.\r\n', 2022, 14999, 5),
(11, 'F1 22', '3', 'public/img/productos/f122.jpg', 'Codemasters', 'Entra en la nueva era de la Formula 1® en EA SPORTS™ F1® 22, el videojuego oficial de FIA Formula One World Championship™ 2022. Ponte al volante en una nueva temporada con coches rediseñados y nuevas reglas que definen el día de la carrera, pon a prueba tus habilidades en el nuevo Autódromo Internacional de Miami y disfruta del glamour y la ostentación de la vida en la F1', 2022, 19999, 5),
(12, 'Dead by Daylight', '5', 'public/img/productos/deadbydaylight.jpg', 'Behaviour Interactive Inc.', 'La muerte no es la salida.\r\nDead by Daylight es un juego de horror de multijugador (4 contra 1) en el que un jugador representa el rol del asesino despiadado y los 4 restantes juegan como supervivientes que intentan escapar de él para evitar ser capturados, torturados y asesinados.\r\n\r\nLos supervivientes juegan en tercera persona y tienen la ventaja de contar con una mejor percepción del entorno. El asesino juega en primera persona y está más enfocado en su presa.\r\n', 2016, 12999, 5),
(13, 'The Dark Pictures Anthology: The Devil In Me', '5', 'public/img/productos/thedarkpictures.jpg', 'Supermassive Games', 'Una serie de juegos autoconclusivos de terror cinematográfico con narrativa ramificada del estudio responsable de Until Dawn. Es muy sencillo jugarlos en sesiones cortas, a solas o con amigos. The Devil in Me es la cuarta entrega de la serie y el gran final de la primera temporada.', 2022, 17999, 5),
(14, 'Cyberpunk 2077', '2', 'public/img/productos/cyberpunk.jpg', 'CD PROJEKT RED', 'Cyberpunk 2077 es una historia de acción y aventura en mundo abierto ambientada en Night City, una megalópolis obsesionada con el poder, el glamur y la modificación corporal. Tu personaje es V, un mercenario que persigue un implante único que permite alcanzar la inmortalidad.', 2020, 15999, 5),
(15, 'PUBG: Battlegrounds', '1', 'public/img/productos/pubg.jpg', 'KRAFTON, Inc.', 'ATERRIZA, SAQUEA Y SOBREVIVE!\r\nJuega gratis a PUBG: BATTLEGROUNDS.\r\nAterriza en posiciones estratégicas, saquea armas y suministros, y sobrevive para que vuestro equipo sea el único en pie en los distintos y variados campos de batalla.\r\nForma equipo y participa en los campos de batalla para experimentar el Battle Royale original como solo existe en PUBG: BATTLEGROUNDS.', 2017, 12499, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `Rol` varchar(100) NOT NULL,
  `Estado` enum('Activo','Baneado') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id`, `Nombre`, `Apellido`, `email`, `password`, `Rol`, `Estado`) VALUES
(1, 'Camila', 'Lopez', 'camila@dv.com', '12341234', 'admin', 'Activo'),
(2, 'Geronimo', 'Ibanez', 'gero@dv.com', '12345', 'usuario', 'Activo'),
(3, 'Danel', 'Ventura', 'danel@dv.com', '5678', 'usuario', 'Activo'),
(4, 'Bautista', 'Carloni', 'gr@dv.com', 'hola123', 'usuario', 'Activo'),
(9, 'Bart', 'Simpson', 'bs@gmail.com', 'abd132', 'usuario', 'Activo'),
(12, 'Harry', 'Mrtnz', 'hm@dv.net', 'besos321', 'Admin', 'Activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-04-2021 a las 16:09:28
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tennis-padel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler_pistas`
--

CREATE TABLE `alquiler_pistas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo_pista` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precio` double(8,2) NOT NULL,
  `precio_persona` double(8,2) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alquiler_pistas`
--

INSERT INTO `alquiler_pistas` (`id`, `tipo_pista`, `titulo`, `descripcion`, `url`, `precio`, `precio_persona`, `activo`, `created_at`, `updated_at`) VALUES
(1, 'Tennis', 'TERRA BATUDA 2 PERSONES', NULL, NULL, 15.00, NULL, 1, '2021-02-21 17:51:08', '2021-02-21 17:51:08'),
(2, 'Tennis', 'TERRA BATUDA 4 PERSONES', NULL, NULL, 20.00, NULL, 1, '2021-02-21 17:51:24', '2021-02-21 17:51:24'),
(3, 'Tennis', 'QUICK 2 PERSONES', NULL, NULL, 13.00, NULL, 1, '2021-02-21 17:51:41', '2021-02-21 17:51:41'),
(4, 'Tennis', 'QUICK 4 PERSONES', NULL, NULL, 15.00, NULL, 1, '2021-02-21 17:51:54', '2021-02-21 17:51:54'),
(5, 'Padel', 'DE 8H A 17H', NULL, NULL, 12.00, 3.00, 1, '2021-02-21 17:58:27', '2021-02-21 17:58:27'),
(6, 'Padel', 'DE 17H A 23H', NULL, NULL, 20.00, 5.00, 1, '2021-02-21 17:58:50', '2021-02-21 17:58:50'),
(7, 'Padel', 'CAP DE SETMANA I FESTIUS', NULL, NULL, 20.00, 5.00, 1, '2021-02-21 17:59:09', '2021-02-21 17:59:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendar_eventos`
--

CREATE TABLE `calendar_eventos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_inicio` date NOT NULL,
  `data_final` date NOT NULL,
  `url` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `calendar_eventos`
--

INSERT INTO `calendar_eventos` (`id`, `titulo`, `descripcion`, `data_inicio`, `data_final`, `url`, `created_at`, `updated_at`, `active`) VALUES
(4, 'Evento 1', '<p><strong>Primer evento de temporada</strong></p>', '2021-02-25', '2021-02-25', 'images/calendario/d2c44e0226ad2261a0b850565abbd9e6-url.jpg', '2021-02-25 14:02:25', '2021-02-25 14:02:25', 1),
(5, 'Segundo evento', '<p>fwqfewfqwefwef</p>', '2021-02-26', '2021-02-28', 'images/calendario/cf9107f95a3955ac458c476f1e18fb0b-url.jpg', '2021-02-25 14:03:08', '2021-02-25 14:03:08', 1),
(6, 'Evento antiguo', '<p>sdfasdfsadfsdafsdfsdf</p>\r\n\r\n<p>sdfasdfasdfsdafsadf</p>\r\n\r\n<p>sadfasdfsadfsdfsdaf</p>', '2021-02-17', '2021-02-17', 'images/calendario/2a44f94b6a883d9f62d2c0d122b39dd3-url.jpg', '2021-02-25 14:15:33', '2021-02-25 14:15:33', 1),
(7, 'Evento 1', '<p>asdfsdfasdf</p>', '2021-03-26', '2021-03-26', 'images/calendario/1531482a0c538de9d42e6546e1e67feb-url.jpg', '2021-03-26 15:10:55', '2021-03-26 15:10:55', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `second_name` varchar(50) NOT NULL,
  `sexe` tinyint(1) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `nacionalidad` varchar(20) NOT NULL,
  `cat_salut` varchar(30) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `poblacio` varchar(50) NOT NULL,
  `cp` int(10) NOT NULL,
  `provincia` varchar(20) NOT NULL,
  `data_naxement` date NOT NULL,
  `conte_bancari` varchar(30) DEFAULT NULL,
  `telefono_1` varchar(20) NOT NULL,
  `telefono_2` varchar(20) DEFAULT NULL,
  `name_emergenica` varchar(20) DEFAULT NULL,
  `telefono_1_emergencia` varchar(20) DEFAULT NULL,
  `telefono_2_emergencia` varchar(20) DEFAULT NULL,
  `socio` int(1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client_sons`
--

CREATE TABLE `client_sons` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `son_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galleria_images`
--

CREATE TABLE `galleria_images` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url_youtube` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `destacada` tinyint(1) NOT NULL DEFAULT 0,
  `carusel` tinyint(1) NOT NULL DEFAULT 0,
  `tipo` tinyint(1) NOT NULL DEFAULT 0,
  `activo` tinyint(1) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `galleria_images`
--

INSERT INTO `galleria_images` (`id`, `image`, `url_youtube`, `titulo`, `descripcion`, `destacada`, `carusel`, `tipo`, `activo`, `updated_at`, `created_at`) VALUES
(1, 'images/galleria/296733e9a803156420c49067f4951855-image.jpg', '', NULL, NULL, 0, 0, 0, 1, '2021-03-14 11:55:44', '2021-03-14 11:55:44'),
(2, 'images/galleria/9d82ed8564ce4aa4e75d5e7030c3a931-image.jpg', '', NULL, NULL, 0, 0, 0, 1, '2021-03-14 11:55:51', '2021-03-14 11:55:51'),
(3, 'images/galleria/dc98dec35dffaebfa634bd25a23bd691-image.jpg', '', NULL, NULL, 0, 0, 0, 1, '2021-03-14 11:58:27', '2021-03-14 11:58:27'),
(4, 'images/galleria/5ad14218c315f191ea164726b0cc13aa-image.jpg', '', NULL, NULL, 0, 0, 0, 1, '2021-03-14 12:03:14', '2021-03-14 11:58:33'),
(5, 'images/galleria/781ac333af8c76d6482bafb7c4cdbae7-image.jpg', '', NULL, NULL, 1, 0, 0, 1, '2021-04-02 09:33:04', '2021-03-14 13:34:41'),
(6, 'images/galleria/b7fa5f7b358274a311cc8fa9d14a2c58-image.jpg', '', NULL, NULL, 0, 1, 0, 1, '2021-04-05 16:07:58', '2021-03-14 13:34:52'),
(7, 'images/galleria/53cf345396b59aae5ea70b47fb8aae59-image.jpg', '', NULL, NULL, 1, 0, 0, 1, '2021-04-02 09:32:45', '2021-03-14 13:35:08'),
(8, 'images/galleria/59581566ddd8d750a4bd6058af6dbcfc-image.jpg', '', 'asdasdasd', 'asdsadsdsd', 0, 1, 0, 1, '2021-04-05 16:07:48', '2021-03-14 13:35:27'),
(9, 'images/galleria/32dea37c088eb0d279b74dcc73b27980-image.jpg', '', NULL, NULL, 1, 0, 0, 1, '2021-04-02 09:31:46', '2021-03-14 13:35:45'),
(10, 'images/galleria/6ad7f1be8043fb1e40f92802fa3438e9-image.jpg', '', NULL, NULL, 0, 0, 0, 1, '2021-03-14 13:35:52', '2021-03-14 13:35:52'),
(11, 'images/galleria/bbf684c7a2dce8024fd90cb098773ba5-image.jpg', '', 'assdasd', 'asdasdasdasdsd', 0, 1, 0, 1, '2021-04-05 16:07:35', '2021-03-14 13:36:00'),
(16, NULL, 'https://www.youtube.com/embed/r1_Vt3CV-fo', NULL, NULL, 0, 0, 0, 0, '2021-04-02 09:28:15', '2021-04-02 09:28:15'),
(17, NULL, 'https://www.youtube.com/embed/K_8yRH2KPVo', NULL, NULL, 0, 0, 0, 0, '2021-04-02 09:28:35', '2021-04-02 09:28:35'),
(18, NULL, 'https://www.youtube.com/embed/kcm8jQBQ6kg', NULL, NULL, 0, 0, 0, 0, '2021-04-02 09:28:56', '2021-04-02 09:28:56'),
(19, NULL, 'https://www.youtube.com/embed/vxpeKhbeLm0', NULL, NULL, 0, 0, 0, 0, '2021-04-02 09:29:15', '2021-04-02 09:29:15'),
(20, NULL, 'https://www.youtube.com/embed/K_8yRH2KPVo', NULL, NULL, 0, 0, 0, 0, '2021-04-02 09:29:40', '2021-04-02 09:29:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instalaciones`
--

CREATE TABLE `instalaciones` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `subtitulo` varchar(100) DEFAULT NULL,
  `descripcion` longtext NOT NULL,
  `video` varchar(100) NOT NULL DEFAULT '',
  `slug` varchar(100) NOT NULL,
  `activo` int(1) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `instalaciones`
--

INSERT INTO `instalaciones` (`id`, `image`, `titulo`, `subtitulo`, `descripcion`, `video`, `slug`, `activo`, `updated_at`, `created_at`) VALUES
(2, 'images/instalaciones/d38b4beb2479de915336c4703944f63c-image.jpg', 'PISCINA OLÍMPICA', 'UNA PISCINA OLÍMPICA PER UN AMPLI VENTALL D\'ACTIVITATS', '<p>La Piscina de Lloret disposa d&#39;una piscina ol&iacute;mpica que pot acollir pr&agrave;cticament qualsevol disciplina esportiva aqu&agrave;tica, tant si s&oacute;n competicions com si s&oacute;n activitats l&uacute;diques. Entre elles:</p>\r\n\r\n<ul>\r\n	<li>Nataci&oacute;</li>\r\n	<li>Waterpolo</li>\r\n	<li>Nataci&oacute; sincronitzada</li>\r\n	<li>Apnea</li>\r\n	<li>Aquagym</li>\r\n	<li>Lli&ccedil;ons de nataci&oacute; per nens</li>\r\n	<li>Nataci&oacute; terap&egrave;utica</li>\r\n	<li>Nataci&oacute; com a part d&#39;altres disciplines: triatl&oacute;, pentatl&oacute;, salvament i socorrisme esportius</li>\r\n</ul>\r\n\r\n<p>La piscina fa 50 metres de llarg&agrave;ria i 25 m d&#39;amplada, amb un vas m&ograve;bil de 9 m que permet acomodar les mides a les diferents necessitats. Aquest vas disposa d&#39;un terra que s&#39;eleva per reduir la profunditat i una mampara per delimitar la dist&agrave;ncia; aix&iacute; es poden portar a terme activitats aqu&agrave;tiques per gent gran i nens.</p>\r\n\r\n<p>La piscina acull el Club de Nataci&oacute; de Lloret de Mar, molt actiu en participar en competicions.</p>\r\n\r\n<p>Forma part d&#39;un complex esportiu d&#39;&uacute;ltima generaci&oacute;, totalment accessible a persones amb mobilitat redu&iuml;da, amb infermeria, 7 vestidors, sistema de so i capacitat per 560 espectadors.</p>\r\n\r\n<p>La Piscina de Lloret es troba a la zona esportiva de Lloret de Mar, justo al cor de la ciutat i envoltada d&#39;una &agrave;mplia oferta d&#39;allotjament i oci, a tan sols 800 metres de la platja.</p>', 'https://www.youtube.com/embed/UuaJA81L5QU', 'piscina-olimpica', 1, '2021-03-06 08:24:25', '2021-03-05 05:34:47'),
(3, 'images/instalaciones/a6222964278fd049e09e2d4b4d7a33f2-image.jpg', 'SALA DE FITNESS', NULL, '<p>La fant&agrave;stica sala de fitness de La Piscina de Lloret ocupa 400 metres quadrats i est&agrave; dividida en tres zones:</p>\r\n\r\n<ul>\r\n	<li>Cardiovascular</li>\r\n	<li>Muscular amb estacions fixes Matrix i material de pes lliure</li>\r\n	<li>Zona per estiraments, abdominals, etc.</li>\r\n</ul>\r\n\r\n<p>El nostre equip d&rsquo;entrenadors i t&egrave;cnics en fitness estan a la teva disposici&oacute; per a qualsevol consulta o ajuda que necessitis.</p>', '', 'sala-de-fitness', 1, '2021-03-05 05:45:36', '2021-03-05 05:45:36'),
(4, 'images/instalaciones/3ddc3ff59b23954ac5714c65f4605eb6-image.jpg', 'PISTAS DE PADEL', NULL, '<p>La nova &agrave;rea de raqueta &eacute;s un espai perfecte per realitzar esport a l&#39;aire lliure de manera col&middot;lectiva o individual. Hi ha 3 tipus de pistes:</p>\r\n\r\n<ul>\r\n	<li>6 pistes de p&agrave;del constru&iuml;des segons les normes esportives reglament&agrave;ries. Tenen 3 metres de separaci&oacute; entre elles per permetre el joc fora de pista i dues s&oacute;n panor&agrave;miques. Disposen d&#39;il&middot;luminaci&oacute; suficient per permetre jugar de nit.</li>\r\n	<li>3 pistes de terra batuda amb il&middot;luminaci&oacute; per permetre el joc de nit.</li>\r\n	<li>1 pista poliesportiva de paviment sint&egrave;tic perfecte per al joc de tennis en pista r&agrave;pida i sense necessitat de cal&ccedil;at especial. A m&eacute;s, permet realitzar altres tipus d&#39;esport com l&#39;handbol, el futbol sala o el b&agrave;squet.</li>\r\n</ul>', '', 'pistas-de-padel', 1, '2021-03-05 05:52:50', '2021-03-05 05:52:50'),
(5, 'images/instalaciones/d529d926426ea64e2c7e29e7a9781904-image.jpg', 'SALES D\'ACTIVITATS', NULL, '<p>En les dues sales d&#39;activitats dirigides, es poden realitzar multitud d&#39;activitats coreografiades que treballen de forma divertida i amena la resist&egrave;ncia cardiorespirat&ograve;ria, muscular o l&#39;elasticitat.</p>\r\n\r\n<p>Consulta tot el ventall d&#39;activitats amb l&#39;explicaci&oacute; de quins s&oacute;n els seus beneficis en aquest enlla&ccedil; i els horaris en aquest altre.</p>\r\n\r\n<p>Algunes de les activitats que desenvolupem o hem desenvolupat s&oacute;n:</p>\r\n\r\n<ul>\r\n	<li>Zumba</li>\r\n	<li>Zumba Kids</li>\r\n	<li>Step</li>\r\n	<li>Aer&ograve;bic</li>\r\n	<li>Cycling</li>\r\n	<li>HIIT</li>\r\n	<li>Fit Pump</li>\r\n	<li>Gac</li>\r\n	<li>Tonificaci&oacute;</li>\r\n	<li>Cardio to</li>\r\n	<li>Pilates</li>\r\n	<li>Gim S&egrave;nior</li>\r\n	<li>Stretching</li>\r\n	<li>Abdominals + Stretching</li>\r\n	<li>Jocs Esportius</li>\r\n	<li>Tono J&uacute;nior</li>\r\n	<li>Cycling J&uacute;nior</li>\r\n	<li>Funky</li>\r\n	<li>Marxa N&ograve;rdica</li>\r\n	<li>Wet Gym</li>\r\n	<li>Aquat&oacute;</li>\r\n	<li>Wet Hard</li>\r\n</ul>', '', 'sales-d\'activitats', 1, '2021-03-06 08:23:44', '2021-03-05 15:48:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instalacion_images`
--

CREATE TABLE `instalacion_images` (
  `id` int(11) NOT NULL,
  `id_estalacion` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `instalacion_images`
--

INSERT INTO `instalacion_images` (`id`, `id_estalacion`, `image`, `active`, `created_at`, `updated_at`) VALUES
(1, 2, 'images/instalaciones/images/a6ce144cc351fca90ca7d804dc131c97-image.jpg', 1, '2021-03-05 05:37:14', '2021-03-05 05:42:00'),
(2, 2, 'images/instalaciones/images/f305907f326eed1e724d5018251b290b-image.jpg', 1, '2021-03-05 05:46:03', '2021-03-05 05:46:13'),
(4, 2, 'images/instalaciones/images/a5737b2b6622375c2f789e80b38fef29-image.jpg', 1, '2021-03-05 05:46:30', '2021-03-05 05:46:30'),
(5, 2, 'images/instalaciones/images/f51dd20c1a38ee70d6362283fc3fc7f8-image.jpg', 1, '2021-03-05 05:46:37', '2021-03-05 05:46:37'),
(6, 2, 'images/instalaciones/images/2c1815a3ee99ecac6fe89dba47fbf922-image.jpg', 1, '2021-03-05 05:46:45', '2021-03-05 05:46:45'),
(7, 2, 'images/instalaciones/images/c80cfa58d68ae4c877efc0f0086c4feb-image.jpg', 1, '2021-03-05 05:46:53', '2021-03-05 05:46:53'),
(8, 2, 'images/instalaciones/images/61127f365129e7e6cfd3063362f66cd2-image.jpg', 1, '2021-03-05 05:47:02', '2021-03-05 05:47:02'),
(9, 2, 'images/instalaciones/images/c7b5b07e5f767fcbb0d7c11b32561959-image.jpg', 1, '2021-03-05 05:47:11', '2021-03-05 05:47:11'),
(10, 2, 'images/instalaciones/images/fe6b01307a698f9e9899a4cd1dc43214-image.jpg', 1, '2021-03-05 05:47:19', '2021-03-05 05:47:19'),
(11, 2, 'images/instalaciones/images/533a1b3453b159b48323fa18b8f9f1ae-image.jpg', 1, '2021-03-05 05:47:27', '2021-03-05 05:47:27'),
(12, 2, 'images/instalaciones/images/6947e7a175c0fac8344c40694e8feac5-image.jpg', 1, '2021-03-05 05:47:36', '2021-03-05 05:47:36'),
(13, 3, 'images/instalaciones/images/79b29c033d045b3d617a3501ae98784b-image.jpg', 1, '2021-03-05 05:49:54', '2021-03-05 05:49:54'),
(14, 3, 'images/instalaciones/images/c3ec9db6c58b465e113068bbcd563970-image.jpg', 1, '2021-03-05 05:50:01', '2021-03-05 05:50:01'),
(15, 3, 'images/instalaciones/images/9f176fba4d3384ff361af9ca990cc6f6-image.jpg', 1, '2021-03-05 05:50:08', '2021-03-05 05:50:08'),
(16, 3, 'images/instalaciones/images/5101d86ba409c932ab9c4a352a1fb22f-image.jpg', 1, '2021-03-05 05:50:15', '2021-03-05 05:50:15'),
(17, 3, 'images/instalaciones/images/d9d744b2128f80aca475db056d91a61a-image.jpg', 1, '2021-03-05 05:50:23', '2021-03-05 05:50:23'),
(18, 3, 'images/instalaciones/images/8c2b4c5a10a7ea1f171dae096d6c4e8b-image.jpg', 1, '2021-03-05 05:50:32', '2021-03-05 05:50:32'),
(19, 3, 'images/instalaciones/images/68cc51e4d60e7f8432da4d560280492a-image.jpg', 1, '2021-03-05 05:50:39', '2021-03-05 05:50:39'),
(20, 3, 'images/instalaciones/images/851cd362d6f5afe2054db6b28b5f5ab4-image.jpg', 1, '2021-03-05 05:50:47', '2021-03-05 05:50:47'),
(21, 3, 'images/instalaciones/images/f6b218b5509021c7aaf7671c75bcadde-image.jpg', 1, '2021-03-05 05:50:55', '2021-03-05 05:50:55'),
(22, 4, 'images/instalaciones/images/d10c5f52aed89fb028898ed32e373561-image.jpg', 1, '2021-03-05 05:53:43', '2021-03-05 05:53:43'),
(23, 4, 'images/instalaciones/images/10ca823b1333d51f8e057c85f48fa80c-image.jpg', 1, '2021-03-05 05:53:49', '2021-03-05 05:53:49'),
(24, 4, 'images/instalaciones/images/c67453364dd0a0af5aec09d2b525bc91-image.jpg', 1, '2021-03-05 05:53:55', '2021-03-05 05:53:55'),
(25, 5, 'images/instalaciones/images/41af48b0feb5df574fa9a70a0cff64db-image.jpg', 1, '2021-03-05 15:48:49', '2021-03-05 15:48:49'),
(26, 5, 'images/instalaciones/images/afd3d4467cd8badefa77380637f9ccc0-image.jpg', 1, '2021-03-05 15:48:57', '2021-03-05 15:48:57'),
(27, 5, 'images/instalaciones/images/0e4795986ae2c49c490e498d787942fc-image.jpg', 1, '2021-03-05 15:49:04', '2021-03-05 15:49:04'),
(28, 5, 'images/instalaciones/images/7e526162b2cf6c9acc3cc468966eade0-image.jpg', 1, '2021-03-05 15:49:11', '2021-03-05 15:49:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2021_02_20_164010_create_table_shop_articles', 1),
(9, '2021_02_21_091800_create_table_casal_inscripciones', 2),
(10, '2021_02_21_102123_create_table_casal_incripciones_meses', 3),
(11, '2021_02_21_150151_create_table_casal_inscripciones_datos', 4),
(13, '2021_02_21_183541_create_table_alquiler_pistas', 5),
(14, '2021_02_25_140020_create_table_calendar_eventos', 6),
(15, '2021_02_25_141450_add_activo_calendario_eventos', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `token`, `activo`, `created_at`, `updated_at`) VALUES
(4, 'burbianio@gmail.com', NULL, 1, '2021-04-03 09:35:26', '2021-04-03 09:35:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` longtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` text NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `descripcion`, `image`, `slug`, `activo`, `created_at`, `updated_at`) VALUES
(10, 'DESCUBRE PARA TUS HIJOS EL TENIS DE ALTO RENDIMIENTO', '<p>Nuestra Escuela de tenis est&aacute; dise&ntilde;ada para ofrecer la m&aacute;xima calidad de entreno en las actividades extra-escolares de los jugadores de entre 3 y 18 a&ntilde;os.</p>\r\n\r\n<p>Nuestra Escuela de tenis extra-escolar adapta el sistema exclusivo de entrenamiento, ASC 360 Tennis System &copy;, utilizando sus fundamentos b&aacute;sicos, para que nuestros j&oacute;venes se inicien y evolucionen en este deporte disfrutando desde el primer momento del alto rendimiento</p>\r\n\r\n<p>Inscr&iacute;bete ya y entrena con el mismo m&eacute;todo que siguieron tenistas como Andy Murray, Svetlana Kuznetsova o Grigor Dimitrov hasta convertirse en jugadores profesionales.</p>\r\n\r\n<h3><strong>&iexcl;AP&Uacute;NTATE AHORA CON INSCRIPCI&Oacute;N GRATUITA Y SEPTIEMBRE GRATIS!</strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>V&aacute;lido para los alumnos que se inscriban en la Escuela de Club S&aacute;nchez-Casal antes del 15 de septiembre 2020, realizando el pago del mes de octubre. Las promociones y ofertas no son acumulables.</p>', 'images/noticias/89cd4218fa1bdbb7f6b3af2e1add3396-image.jpg', 'descubre-para-tus-hijos-el-tenis-de-alto-rendimiento', 1, '2021-03-26 14:53:02', '2021-03-26 14:53:02'),
(11, 'EL CLUB RECIBE SELLO BIOSPHERE DE TURISMO SOSTENIBLE', '<p>La certificaci&oacute;n internacional por parte del Instituto de Turismo Responsable (ITR), reconoce el compromiso de la Academia S&aacute;nchez-Casal, por el respeto al medio ambiente, la sostenibilidad y el desarrollo econ&oacute;mico local en la sede de Barcelona, situada en El Prat de Llobregat, zona de alto valor ecol&oacute;gico.</p>\r\n\r\n<p>La entrega del sello Biosphere se ha hecho hoy efectiva en la Academia S&aacute;nchez-Casal situada en El Prat de Llobregat, siguiendo todos los protocolos de seguridad e higiene, por parte de Gemma Rodriguez, Consejera de Turismo Baix Llobregat y Debora Garc&iacute;a, Regidora de Turismo El Prat de Llobregat, a Marisa S&aacute;nchez Vicario, Directora sede ASC Barcelona y a Sergi Bonillo, Director de Servicios y Operaciones ASC Barcelona.</p>\r\n\r\n<p>La Academia S&aacute;nchez-Casal, est&aacute; comprometida con el medioambiente, y sensibiliza tanto en la sede de Barcelona como en Florida, a todos los empleados, estudiantes-atletas sobre el cambio clim&aacute;tico con diversas acciones a lo largo del a&ntilde;o.</p>\r\n\r\n<p>Los estudiantes-atletas de la Academia S&aacute;nchez-Casal y ES Internacional School no usan pl&aacute;stico, usan sus propias botellas de agua, tambi&eacute;n reciclan y el pasado a&ntilde;o se unieron al&nbsp; movimiento #fridaysforfuture para concienciar sobre el cambio clim&aacute;tico.</p>\r\n\r\n<p>El Biosphere es un sello del Sistema de Turismo Responsable del Instituto de Turismo Responsable (ITR), una certificaci&oacute;n de turismo sostenible, voluntario e independiente, que trabaja para aplicar al sector tur&iacute;stico los 17 objetivos de desarrollo sostenible de Naciones Unidas, la Carta Mundial de Turismo Sostenible y las directrices de la Cumbre del Clima de Par&iacute;s.</p>', 'images/noticias/3b84f8bf6eb58068f6521e3dc50ae08e-image.jpg', 'el-club-recibe-sello-biosphere-de-turismo-sostenible', 1, '2021-03-26 14:55:34', '2021-03-26 14:55:34'),
(12, 'MATRÍCULA + 1 CLASE DE TENIS O PÁDEL GRATIS!', '<p>Club S&aacute;nchez-Casal es mucho m&aacute;s que un centro orientado a la pr&aacute;ctica deportiva. Es un lugar enfocado a familias donde todos podr&aacute;n disfrutar practicando su deporte favorito.</p>\r\n\r\n<p><strong>&iexcl;AP&Uacute;NTATE AHORA CON MATR&Iacute;CULA +&nbsp;1 CLASE DE TENIS O P&Aacute;DEL GRATIS!</strong></p>\r\n\r\n<p>Inscr&iacute;bete antes del 30 de septiembre 2020 y disfruta de matr&iacute;cula gratis + 1 clase de tenis / p&aacute;del gratuita (*).</p>\r\n\r\n<p>(*) La clase deber&aacute; ser realizada durante septiembre y octubre 2020, tanto para los nuevos abonados como para los abonados actuales, en muestra de gratitud a su fidelidad. La clase puede ser impartida en grupo reducido.</p>', 'images/noticias/c65e12c01ea09c011ffe8faa193dbaf0-image.jpg', 'matricula-+-1-clase-de-tenis-o-padel-gratis!', 1, '2021-03-26 14:56:16', '2021-03-26 14:56:16'),
(13, 'INSCRIPCIONES CAMPUS VERANO 2020 ABIERTAS SUJETAS A CAMBIOS POR NORMATIVA COVID', '<p>Apreciadas familias,</p>\r\n\r\n<p>Son constantes los cambios en las normativas en cuanto a la realizaci&oacute;n de los campus de verano debido a la situaci&oacute;n causada por la pandemia del Coronavirus que estamos viviendo. Siguiendo la normativa, en las fechas en las que se realiza el campus, no habr&iacute;a problema en su realizaci&oacute;n. Campus S&aacute;nchez-Casal ha trabajado para implantar unos protocolos internos de m&aacute;xima seguridad que proteger&aacute;n&nbsp; la salud de sus hijos. Estamos sujetos a cualquier cambio en las actividades que se tengan que realizar para que se pueda realizar el campus. Por ahora, todas las actividades que ofrecemos se podr&iacute;an realizar con la implantaci&oacute;n de medidas de seguridad. A medida que las autoridades transmitan m&aacute;s informaci&oacute;n, podremos dar m&aacute;s detalles sobre las actividades a realizar y si alguna no se pudiera realizar os lo comunicar&iacute;amos a la mayor brevedad. A d&iacute;a de hoy, los cambios en cuanto a normativa son constantes pero nos adaptaremos a los cambios necesarios para que el Campus se pueda realizar.</p>\r\n\r\n<p>&iexcl;YA PUEDES RESERVAR TU PLAZA!</p>\r\n\r\n<p>&iexcl;TE ESPERAMOS!</p>\r\n\r\n<p><a href=\"http://www.sanchezcasal-campus.com/\">www.sanchezcasal-campus.com</a></p>', 'images/noticias/738ae5cc6e955b4bc815c90b9a8f88c8-image.jpg', 'inscripciones-campus-verano-2020-abiertas-sujetas-a-cambios-por-normativa-covid', 1, '2021-03-26 14:56:56', '2021-03-26 14:56:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia_comentarios`
--

CREATE TABLE `noticia_comentarios` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `noticia_id` int(11) NOT NULL,
  `comentario` varchar(255) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `noticia_comentarios`
--

INSERT INTO `noticia_comentarios` (`id`, `user_id`, `noticia_id`, `comentario`, `activo`, `created_at`, `updated_at`) VALUES
(12, 64, 13, 'Hola mundo', 1, '2021-04-06 17:23:07', '2021-04-06 17:23:07'),
(13, 64, 13, 'ghsdfhsdfhsdfh', 1, '2021-04-06 17:23:46', '2021-04-06 17:23:46'),
(14, 64, 13, 'fdfasdgasdg', 1, '2021-04-06 17:23:54', '2021-04-06 17:23:54'),
(15, 64, 13, 'dgasdg', 1, '2021-04-06 17:25:36', '2021-04-06 17:25:36'),
(16, 64, 10, 'sadgsadg', 1, '2021-04-06 17:25:47', '2021-04-06 17:25:47'),
(17, 64, 10, 'sadgsadgs', 1, '2021-04-06 17:25:53', '2021-04-06 17:25:53'),
(18, 64, 13, 'hola', 1, '2021-04-07 03:14:41', '2021-04-07 03:14:41'),
(19, 64, 13, 'hola', 1, '2021-04-07 03:14:53', '2021-04-07 03:14:53'),
(20, 64, 13, 'cvzxc', 1, '2021-04-07 03:15:10', '2021-04-07 03:15:10'),
(21, 64, 13, 'sdfgsfg', 1, '2021-04-07 03:16:09', '2021-04-07 03:16:09'),
(22, 64, 13, 'ffg', 1, '2021-04-07 03:16:29', '2021-04-07 03:16:29'),
(23, 64, 13, 'gdsfg', 1, '2021-04-07 03:16:33', '2021-04-07 03:16:33'),
(24, 64, 13, 'asf', 1, '2021-04-07 03:18:19', '2021-04-07 03:18:19'),
(25, 64, 13, 'asf', 1, '2021-04-07 03:18:22', '2021-04-07 03:18:22'),
(26, 64, 13, 'asdf', 1, '2021-04-07 03:18:40', '2021-04-07 03:18:40'),
(27, 64, 13, 'asdf', 1, '2021-04-07 03:18:42', '2021-04-07 03:18:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurante_categorias`
--

CREATE TABLE `restaurante_categorias` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `restaurante_categorias`
--

INSERT INTO `restaurante_categorias` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'BREAKFAST', '2021-04-04 13:35:43', '2021-04-04 13:35:43'),
(2, 'LUNCH', '2021-04-04 13:36:05', '2021-04-04 13:36:05'),
(3, 'DINNER', '2021-04-04 13:36:09', '2021-04-04 13:36:09'),
(4, 'DESSERTS', '2021-04-04 13:36:19', '2021-04-04 13:36:19'),
(5, 'WINE CARD', '2021-04-04 13:36:24', '2021-04-04 13:36:24'),
(6, 'DRINKS & TEA', '2021-04-04 13:36:29', '2021-04-04 13:36:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurante_images`
--

CREATE TABLE `restaurante_images` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `restaurante_images`
--

INSERT INTO `restaurante_images` (`id`, `image`, `active`, `created_at`, `updated_at`) VALUES
(1, 'images/restaurante/galleria/2aa9038f33b22f5ab081c11de27f59f8-image.jpg', 1, '2021-04-05 09:13:25', '2021-04-05 09:13:41'),
(2, 'images/restaurante/galleria/965111c689611244756bb7b1cd249dfc-image.jpg', 1, '2021-04-05 09:15:25', '2021-04-05 09:15:25'),
(3, 'images/restaurante/galleria/14be208ebe4c7a53a43843648dcddf7d-image.jpg', 1, '2021-04-05 09:16:04', '2021-04-05 09:16:04'),
(4, 'images/restaurante/galleria/2228efd4af8bcb6ead3fd9be9b79aa50-image.jpg', 1, '2021-04-05 09:16:19', '2021-04-05 09:16:19'),
(5, 'images/restaurante/galleria/f7307a0ce6661a87af62ffdaa9b25e03-image.jpg', 1, '2021-04-05 09:17:16', '2021-04-05 09:17:16'),
(6, 'images/restaurante/galleria/61972d13f98d5ba779ab73ebb2d9b43f-image.jpg', 1, '2021-04-05 09:17:24', '2021-04-05 09:17:24'),
(7, 'images/restaurante/galleria/9297236f98aa65efb39177a02313d052-image.jpg', 1, '2021-04-05 09:17:32', '2021-04-05 09:17:32'),
(8, 'images/restaurante/galleria/ad22da8ed42b94374d55e94b1a595173-image.jpg', 1, '2021-04-05 09:17:53', '2021-04-05 09:17:53'),
(9, 'images/restaurante/galleria/0487723ac18379b99d234e33c47c06cc-image.jpg', 1, '2021-04-05 09:19:26', '2021-04-05 09:19:26'),
(10, 'images/restaurante/galleria/0aeeba10ed598a9974eb8e2ded706b29-image.jpg', 1, '2021-04-05 09:19:33', '2021-04-05 09:19:33'),
(11, 'images/restaurante/galleria/3d80c331d73818c04f0d8f459d41140c-image.jpg', 1, '2021-04-05 09:19:42', '2021-04-05 09:19:42'),
(12, 'images/restaurante/galleria/7feba835ea8a93296450c876cc831f7f-image.jpg', 1, '2021-04-05 09:19:50', '2021-04-05 09:19:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurante_platos`
--

CREATE TABLE `restaurante_platos` (
  `id` int(11) NOT NULL,
  `restaurante_categoria_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `ingredients` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `plato_especial` tinyint(1) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `restaurante_platos`
--

INSERT INTO `restaurante_platos` (`id`, `restaurante_categoria_id`, `image`, `name`, `description`, `ingredients`, `price`, `plato_especial`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'images/restaurante/platos/c4533025b4420c24baa7724928bb27ab-image.jpg', 'Beef Roast Source', '<p>Lechuga, ventresca, pimientos de piquillo, tomate, cebolla, huevo, aceitunas y queso del pa&iacute;s.</p>', 'Meat, Potatoes, Rice, Tomatoe', 29, 1, 1, '2021-04-04 13:59:54', '2021-04-04 17:35:49'),
(2, 1, 'images/restaurante/platos/69f26b0577bbfda3e63077ace51be119-image.jpg', 'Beef Roast Source', NULL, 'Meat, Potatoes, Rice, Tomatoe', 29, 1, 1, '2021-04-04 14:11:56', '2021-04-04 14:11:56'),
(3, 1, 'images/restaurante/platos/c0be63f193102896ca71983eedf94ec3-image.jpg', 'Beef Roast Source', NULL, 'Meat, Potatoes, Rice, Tomatoe', 29, 1, 1, '2021-04-04 14:13:09', '2021-04-04 14:13:09'),
(4, 2, 'images/restaurante/platos/427586c06615345d6855e85b1180493a-image.jpg', 'Beef Roast Source', NULL, 'Meat, Potatoes, Rice, Tomatoe', 29, 1, 1, '2021-04-04 14:15:08', '2021-04-04 14:15:08'),
(5, 2, 'images/restaurante/platos/148ce0a9dc41e36fad1a7f114743edd0-image.jpg', 'Beef Roast Source', NULL, 'Meat, Potatoes, Rice, Tomatoe', 29, 1, 1, '2021-04-04 14:16:30', '2021-04-04 14:16:30'),
(6, 2, 'images/restaurante/platos/0e553547751a4363d00ff2d8c0721718-image.jpg', 'Beef Roast Source', NULL, 'Meat, Potatoes, Rice, Tomatoe', 29, 1, 1, '2021-04-04 14:17:51', '2021-04-04 14:17:51'),
(7, 3, 'images/restaurante/platos/7ff8b5f2e72bb4f155ea2e904b402e02-image.jpg', 'Beef Roast Source', NULL, 'Meat, Potatoes, Rice, Tomatoe', 29, 1, 1, '2021-04-04 14:18:59', '2021-04-04 14:20:36'),
(8, 3, 'images/restaurante/platos/3f19ba184328f6770e389d2b6a516ee8-image.jpg', 'Beef Roast Source', NULL, 'Meat, Potatoes, Rice, Tomatoe', 29, 1, 1, '2021-04-04 14:21:35', '2021-04-04 14:21:35'),
(9, 3, 'images/restaurante/platos/9fc54d58d34e5223853d6ed0fc4b5344-image.jpg', 'Beef Roast Source', NULL, 'Meat, Potatoes, Rice, Tomatoe', 29, 1, 1, '2021-04-04 14:22:28', '2021-04-04 14:22:28'),
(10, 4, 'images/restaurante/platos/65f4ee1bea716b454f22589355b545d9-image.jpg', 'Beef Roast Source', NULL, 'Meat, Potatoes, Rice, Tomatoe', 29, 1, 1, '2021-04-04 14:24:33', '2021-04-04 14:24:33'),
(11, 4, 'images/restaurante/platos/cc7dddb6775ffcf73c0ca03849d180c2-image.jpg', 'Beef Roast Source', NULL, 'Meat, Potatoes, Rice, Tomatoe', 29, 1, 1, '2021-04-04 14:25:08', '2021-04-04 14:25:08'),
(12, 4, 'images/restaurante/platos/1c903b7b80999574b7d125d28a7a17e3-image.jpg', 'Beef Roast Source', NULL, 'Meat, Potatoes, Rice, Tomatoe', 29, 1, 1, '2021-04-04 14:26:18', '2021-04-04 14:26:18'),
(13, 5, 'images/restaurante/platos/c2ced43fee06510e3dcdeee30263a6f7-image.jpg', 'Beef Roast Source', NULL, 'Meat, Potatoes, Rice, Tomatoe', 29, 1, 1, '2021-04-04 14:28:40', '2021-04-04 14:28:40'),
(14, 5, 'images/restaurante/platos/afe7043c1f8de5bceb5b1b1df3490d02-image.jpg', 'Beef Roast Source', NULL, 'Meat, Potatoes, Rice, Tomatoe', 29, 1, 1, '2021-04-04 14:29:25', '2021-04-04 14:29:25'),
(15, 5, 'images/restaurante/platos/eb4b5fc5c5c35da2643a9bcf8d910e63-image.jpg', 'Beef Roast Source', NULL, 'Meat, Potatoes, Rice, Tomatoe', 39, 1, 1, '2021-04-04 14:30:11', '2021-04-04 14:30:11'),
(16, 6, 'images/restaurante/platos/c6e668deb907d7b07663df9af1c0b80a-image.jpg', 'Beef Roast Source', NULL, 'Meat, Potatoes, Rice, Tomatoe', 23, 1, 1, '2021-04-04 14:31:23', '2021-04-04 14:31:23'),
(17, 6, 'images/restaurante/platos/e33991007982253db152a1a868231a6f-image.jpg', 'Beef Roast Source', NULL, 'Meat, Potatoes, Rice, Tomatoe', 343, 1, 1, '2021-04-04 14:31:46', '2021-04-04 14:31:46'),
(18, 6, 'images/restaurante/platos/f1eefc47b0d3cde0eaf1497ea1329c6b-image.jpg', 'Beef Roast Source', NULL, 'Meat, Potatoes, Rice, Tomatoe', 32, 1, 1, '2021-04-04 14:32:21', '2021-04-04 14:32:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `rol` varchar(100) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `rol`, `activo`, `created_at`, `updated_at`) VALUES
(1, 'Usuario', 1, '2021-04-11 05:33:23', '2021-04-11 09:30:47'),
(2, 'Administrador', 1, '2021-04-11 05:34:12', '2021-04-11 09:30:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shop_articles`
--

CREATE TABLE `shop_articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_categorie_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precio` double(8,2) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `shop_articles`
--

INSERT INTO `shop_articles` (`id`, `shop_categorie_id`, `name`, `imagen`, `descripcion`, `precio`, `activo`, `created_at`, `updated_at`) VALUES
(10, NULL, 'PALA TENIS PLAYA ARTENGO BTR 100 ADULTO BLANCO/AZUL/NEGRO', 'images/articulos/3360064e14dc8c6a52c21257e7bb2d9d-imagen.jpg', '<p>Nuestros equipos de dise&ntilde;o han concebido esta pala para jugadores que se inician en el tenis playa y buscan manejabilidad.</p>\r\n\r\n<p>Pala c&oacute;moda de usar gracias a su ligereza y a la flexibilidad que ofrece la fibra de vidrio.</p>', 29.99, 1, '2021-02-20 20:07:40', '2021-02-20 20:07:40'),
(11, NULL, 'PELOTA DE TENIS TB920 *4 BIPACK AMARILLO', 'images/articulos/8b5abf816205c04e4f9c8b3b9292fbb4-imagen.jpg', '<p>Nuestros dise&ntilde;adores han desarrollado esta pelota de competici&oacute;n para jugadores de tenis que practican en terrenos duros o tierra batida. 2 tubos de 4 pelotas.</p>\r\n\r\n<p>Durabilidad y control. Pelota oficial del torneo de la ATP 250 Moselle Open, la TB920 se recomienda por su calidad de rebote y por su control.Nuevo empaquetado y nuevo logotipo pero pelotas id&eacute;nticas.</p>', 8.49, 1, '2021-02-20 20:25:07', '2021-02-20 20:25:07'),
(12, NULL, 'CAJÓN PELOTA DE TENIS TB930 24TUBOS *3 PELOTAS', 'images/articulos/652c6f656c343439e32ee9587fb02caa-imagen.jpg', '<p>Nuestros dise&ntilde;adores han desarrollado esta pelota para jugadores en nivel perfeccionamiento y experto, en terrenos duros o tierra batida. 24 tubos de 3 pelotas.</p>', 89.99, 1, '2021-02-20 20:26:04', '2021-03-07 10:18:56'),
(13, NULL, 'Head Evo Sanyo', 'images/articulos/664850cf913d7992f6ed1fa0ceaef8fb-imagen.jpg', '<p>dfdsfdfdf</p>', 51.99, 1, '2021-03-06 09:23:24', '2021-03-07 10:18:44'),
(14, 5, 'Pelotas De Tenis Tennis-Point', 'images/articulos/1bb3f6305996f465ca65446a7534871e-imagen.jpg', '<p>a</p>', 5.95, 1, '2021-03-07 10:21:51', '2021-03-07 10:21:51'),
(15, 5, 'Pelotas De Tenis Tennis-Point', 'images/articulos/e529e23c32914bf6e1ce942da1dc95af-imagen.jpg', '<p>a</p>', 109.95, 1, '2021-03-07 10:22:14', '2021-03-07 10:22:14'),
(16, 5, 'Pelotas De Tenis Tennis-Point', 'images/articulos/15b33096fffd77b882073d0db788c6a1-imagen.jpg', '<p>a</p>', 109.95, 1, '2021-03-07 10:22:37', '2021-03-07 10:22:37'),
(17, 5, 'Pelotas De Tenis Dunlop', 'images/articulos/0ac36579322ca2f4445edfd42ea537d7-imagen.jpg', '<p>a</p>', 9.95, 1, '2021-03-07 10:22:58', '2021-03-07 10:22:58'),
(18, 5, 'Pelotas De Tenis HEAD', 'images/articulos/a05aaf89debfd7a4dfb4c3338e0de48c-imagen.jpg', '<p>a</p>', 5.20, 1, '2021-03-07 10:23:26', '2021-03-07 10:23:26'),
(19, 5, 'Pelotas De Tenis Wilson', 'images/articulos/882a57c3a8d2d71011012000a7006b12-imagen.jpg', '<p>a</p>', 84.95, 1, '2021-03-07 10:23:49', '2021-03-07 10:23:49'),
(20, 5, 'Pelotas De Tenis Dunlop', 'images/articulos/e63f90d9043a75f0734275ab41dd34e6-imagen.jpg', '<p>a</p>', 11.50, 1, '2021-03-07 10:24:12', '2021-03-07 10:24:12'),
(21, 5, 'Pelotas De Tenis Wilson', 'images/articulos/b407b5d24391faa7544fc5af30164e2d-imagen.jpg', '<p>a</p>', 94.50, 1, '2021-03-07 10:24:33', '2021-03-07 10:24:33'),
(22, 6, 'Bolsas De Tenis Wilson', 'images/articulos/a21d5afcdfa5cbc25f9886b156889c4a-imagen.jpg', '<p>a</p>', 59.95, 1, '2021-03-07 10:26:30', '2021-03-07 10:26:30'),
(23, 6, 'Bolsas De Tenis Wilson', 'images/articulos/e6205964b6b152eb41071e1db92d92ec-imagen.jpg', '<p>a</p>', 64.95, 1, '2021-03-07 10:26:50', '2021-03-07 10:26:50'),
(24, 6, 'Bolsas De Tenis Wilson', 'images/articulos/df946e2dd8e449c081acaf88e8c2097d-imagen.jpg', '<p>a</p>', 74.95, 1, '2021-03-07 10:27:14', '2021-03-07 10:27:14'),
(25, 6, 'Bolsas De Tenis Babolat', 'images/articulos/319f423fd70d61325003660c7ace2179-imagen.jpg', '<p>a</p>', 44.95, 1, '2021-03-07 10:27:36', '2021-03-07 10:27:36'),
(26, 6, 'Bolsas De Tenis Babolat', 'images/articulos/7187ac760b2d4a32fec7615219187f7a-imagen.jpg', '<p>a</p>', 89.95, 1, '2021-03-07 10:28:04', '2021-03-07 10:28:04'),
(27, 6, 'Bolsas De Tenis Babolat', 'images/articulos/ae4144470a7d4d5186ebfffbbd781f6a-imagen.jpg', '<p>a</p>', 57.95, 1, '2021-03-07 10:28:34', '2021-03-07 10:28:34'),
(28, 6, 'Bolsas De Tenis Babolat', 'images/articulos/48d87faa68a4766c5a20d4769dc5ae4b-imagen.jpg', '<p>a</p>', 36.95, 1, '2021-03-07 10:29:00', '2021-03-07 10:29:00'),
(29, 6, 'Bolsas De Tenis Babolat', 'images/articulos/3937ef8484aa18f87f86d389cc7681f3-imagen.jpg', '<p>a</p>', 34.95, 1, '2021-03-07 10:29:22', '2021-03-07 10:29:22'),
(30, 7, 'Raquetas De Tenis Wilson', 'images/articulos/8c9d079205ef4ece62fcf7cbe2855b6c-imagen.jpg', '<p>a</p>', 128.95, 1, '2021-03-07 10:32:52', '2021-03-07 10:32:52'),
(31, 7, 'Raquetas De Tenis Babolat', 'images/articulos/2d5e78659ca38b746f84f6fa332694b5-imagen.jpg', '<p>a</p>', 134.95, 1, '2021-03-07 10:33:15', '2021-03-07 10:33:15'),
(32, 7, 'Raquetas De Tenis Wilson', 'images/articulos/12b0ffdebf3d70eed6268205fcd2404f-imagen.jpg', '<p>a</p>', 79.95, 1, '2021-03-07 10:33:50', '2021-03-07 10:33:50'),
(33, 7, 'Raquetas De Tenis Wilson', 'images/articulos/ffe326eb6bb118993e22515fc56ea0f0-imagen.jpg', '<p>a</p>', 109.95, 1, '2021-03-07 10:34:21', '2021-03-07 10:34:21'),
(34, 7, 'Raquetas De Tenis Wilson', 'images/articulos/e4a763b03b73887a8ced7e5ea310461d-imagen.jpg', '<p>a</p>', 34.95, 1, '2021-03-07 10:35:55', '2021-03-07 10:35:55'),
(35, 7, 'Raquetas De Tenis HEAD', 'images/articulos/0f458c699cdb19e29cba038ee6be6404-imagen.jpg', '<p>a</p>', 89.95, 1, '2021-03-07 10:36:23', '2021-03-07 10:36:23'),
(36, 7, 'Raquetas De Tenis HEAD', 'images/articulos/96e39866dda251850f3286c30433056a-imagen.jpg', '<p>a</p>', 135.95, 1, '2021-03-07 10:36:50', '2021-03-07 10:36:50'),
(37, 7, 'Raquetas De Tenis Wilson', 'images/articulos/6d27df15420ac2d5e15058e91e53813e-imagen.jpg', '<p>a</p>', 125.95, 1, '2021-03-07 10:37:38', '2021-03-07 10:37:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shop_banner_images`
--

CREATE TABLE `shop_banner_images` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `shop_banner_images`
--

INSERT INTO `shop_banner_images` (`id`, `image`, `active`, `created_at`, `updated_at`) VALUES
(1, 'images/carusel-shop/4c35d7f15f5ac5df98f229d81279df9a-image.jpg', 1, '2021-04-03 15:56:27', '2021-04-03 15:57:26'),
(2, 'images/carusel-shop/3106503ad90ecabf5f2b291a683e795c-image.jpg', 1, '2021-04-03 15:56:36', '2021-04-03 15:57:20'),
(3, 'images/carusel-shop/c82f572bd9cdfc967746beba2fa1de8b-image.jpg', 1, '2021-04-03 15:57:15', '2021-04-03 15:57:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shop_categories`
--

CREATE TABLE `shop_categories` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `activo` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `shop_categories`
--

INSERT INTO `shop_categories` (`id`, `titulo`, `slug`, `activo`, `created_at`, `updated_at`) VALUES
(5, 'Pelotas de tenis', 'pelotas-de-tenis', 1, '2021-03-07 10:19:34', '2021-03-07 10:19:34'),
(6, 'Bolsas de tenis', 'bolsas-de-tenis', 1, '2021-03-07 10:25:57', '2021-03-07 10:25:57'),
(7, 'Raquetas de tenis', 'raquetas-de-tenis', 1, '2021-03-07 10:31:18', '2021-03-07 10:31:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sons`
--

CREATE TABLE `sons` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `second_name` varchar(50) NOT NULL,
  `data_naxement` date NOT NULL,
  `cat_salut` varchar(30) NOT NULL,
  `sexe` tinyint(1) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_validate` tinyint(1) NOT NULL DEFAULT 0,
  `token_validate_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_recover_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_token_email` int(1) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rol_id` int(11) NOT NULL DEFAULT 1,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `provider_id`, `provider`, `email_validate`, `token_validate_email`, `token_recover_email`, `active_token_email`, `password`, `rol_id`, `activo`, `created_at`, `updated_at`) VALUES
(64, 'keylorubio@gmail.com', NULL, NULL, 1, '', NULL, 0, '$2y$10$mRXaipCI5fSfZRI3IO58teeC2itXqxEbQRAaTm4kw9Z2PaJBFxKhW', 1, 1, '2021-04-03 09:03:10', '2021-04-11 09:24:48');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alquiler_pistas`
--
ALTER TABLE `alquiler_pistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calendar_eventos`
--
ALTER TABLE `calendar_eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `client_sons`
--
ALTER TABLE `client_sons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galleria_images`
--
ALTER TABLE `galleria_images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `instalaciones`
--
ALTER TABLE `instalaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `instalacion_images`
--
ALTER TABLE `instalacion_images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticia_comentarios`
--
ALTER TABLE `noticia_comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `restaurante_categorias`
--
ALTER TABLE `restaurante_categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `restaurante_images`
--
ALTER TABLE `restaurante_images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `restaurante_platos`
--
ALTER TABLE `restaurante_platos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `shop_articles`
--
ALTER TABLE `shop_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `shop_banner_images`
--
ALTER TABLE `shop_banner_images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sons`
--
ALTER TABLE `sons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alquiler_pistas`
--
ALTER TABLE `alquiler_pistas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `calendar_eventos`
--
ALTER TABLE `calendar_eventos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `client_sons`
--
ALTER TABLE `client_sons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `galleria_images`
--
ALTER TABLE `galleria_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `instalaciones`
--
ALTER TABLE `instalaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `instalacion_images`
--
ALTER TABLE `instalacion_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `noticia_comentarios`
--
ALTER TABLE `noticia_comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `restaurante_categorias`
--
ALTER TABLE `restaurante_categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `restaurante_images`
--
ALTER TABLE `restaurante_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `restaurante_platos`
--
ALTER TABLE `restaurante_platos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `shop_articles`
--
ALTER TABLE `shop_articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `shop_banner_images`
--
ALTER TABLE `shop_banner_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `shop_categories`
--
ALTER TABLE `shop_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `sons`
--
ALTER TABLE `sons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

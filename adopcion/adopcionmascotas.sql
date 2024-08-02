-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-08-2024 a las 21:51:58
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `adopcionmascotas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_users'),
(22, 'Can change user', 6, 'change_users'),
(23, 'Can delete user', 6, 'delete_users'),
(24, 'Can view user', 6, 'view_users'),
(25, 'Can add Mascota', 7, 'add_mascotas'),
(26, 'Can change Mascota', 7, 'change_mascotas'),
(27, 'Can delete Mascota', 7, 'delete_mascotas'),
(28, 'Can view Mascota', 7, 'view_mascotas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-06-14 21:08:57.416003', '1', '1', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-06-14 21:21:41.944667', '2', '2', 1, '[{\"added\": {}}]', 7, 1),
(3, '2024-06-14 21:51:28.073420', '3', '3', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-06-18 19:51:54.404962', '3', '3', 3, '', 7, 1),
(5, '2024-06-18 19:51:54.414941', '2', '2', 3, '', 7, 1),
(6, '2024-06-18 19:51:54.421920', '1', '1', 3, '', 7, 1),
(7, '2024-06-18 19:52:41.202115', '4', '4', 1, '[{\"added\": {}}]', 7, 1),
(8, '2024-06-18 19:54:21.331308', '5', '5', 1, '[{\"added\": {}}]', 7, 1),
(9, '2024-06-18 19:55:15.100327', '5', '5', 2, '[{\"changed\": {\"fields\": [\"Caracteristicas\"]}}]', 7, 1),
(10, '2024-06-18 20:15:00.853898', '6', '6', 1, '[{\"added\": {}}]', 7, 1),
(11, '2024-06-18 20:16:01.100678', '7', '7', 1, '[{\"added\": {}}]', 7, 1),
(12, '2024-06-18 20:16:52.359717', '8', '8', 1, '[{\"added\": {}}]', 7, 1),
(13, '2024-06-18 20:17:20.231766', '9', '9', 1, '[{\"added\": {}}]', 7, 1),
(14, '2024-06-18 20:17:49.366506', '10', '10', 1, '[{\"added\": {}}]', 7, 1),
(15, '2024-06-18 20:18:20.512714', '11', '11', 1, '[{\"added\": {}}]', 7, 1),
(16, '2024-06-18 22:16:49.566546', '12', '12', 1, '[{\"added\": {}}]', 7, 1),
(17, '2024-06-19 21:56:29.555407', '13', '13', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 7, 1),
(18, '2024-06-19 22:12:23.422327', '14', '14', 2, '[{\"changed\": {\"fields\": [\"Estado\"]}}]', 7, 1),
(19, '2024-07-23 20:27:43.264523', '1', 'mauro', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 6, 1),
(20, '2024-07-23 20:29:25.614973', '1', 'mauro', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 6, 1),
(21, '2024-07-23 20:47:08.418148', '5', '5', 2, '[{\"changed\": {\"fields\": [\"Caracteristicas\"]}}]', 7, 1),
(22, '2024-07-23 20:51:25.575952', '5', '5', 2, '[{\"changed\": {\"fields\": [\"Caracteristicas\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(7, 'mascotas', 'mascotas'),
(5, 'sessions', 'session'),
(6, 'users', 'users');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-06-13 23:25:35.591426'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-06-13 23:25:35.645280'),
(3, 'auth', '0001_initial', '2024-06-13 23:25:35.813684'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-06-13 23:25:35.866572'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-06-13 23:25:35.878538'),
(6, 'auth', '0004_alter_user_username_opts', '2024-06-13 23:25:35.894495'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-06-13 23:25:35.905467'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-06-13 23:25:35.908459'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-06-13 23:25:35.919431'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-06-13 23:25:35.928405'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-06-13 23:25:35.938378'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-06-13 23:25:35.977274'),
(13, 'auth', '0011_update_proxy_permissions', '2024-06-13 23:25:35.987249'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-06-13 23:25:35.995226'),
(15, 'users', '0001_initial', '2024-06-13 23:25:36.211863'),
(16, 'admin', '0001_initial', '2024-06-13 23:25:36.292644'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-06-13 23:25:36.301621'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-13 23:25:36.310597'),
(19, 'sessions', '0001_initial', '2024-06-13 23:25:36.334534'),
(20, 'mascotas', '0001_initial', '2024-06-14 21:05:48.115524'),
(21, 'mascotas', '0002_mascotas_imagen', '2024-06-14 21:06:33.426666');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1x6hx1at2skcx58qc37hr3fqys688xvf', '.eJxVjDsOwjAQBe_iGln2Ous4lPQ5g7Vrr0kAxVI-FeLuJFIKaN_MvLeKtK1D3BaZ45jVVVl1-d2Y0lOmA-QHTfeqU53WeWR9KPqki-5rltftdP8OBlqGvS6BC2LyrpEgAAVDRuMNI1imEEBKh227A2-MaxvbUSDnEThZcgCsPl_SaDcN:1sWN0l:KytzG2M2RvGnH5AtQFd0zNsMQ8H-2hlMq0MVyD8lUd0', '2024-08-06 21:25:31.271597'),
('5c9hbff2v55ng7l1u0zjiefcjqc7vge9', '.eJxVjDsOwjAQBe_iGln2Ous4lPQ5g7Vrr0kAxVI-FeLuJFIKaN_MvLeKtK1D3BaZ45jVVVl1-d2Y0lOmA-QHTfeqU53WeWR9KPqki-5rltftdP8OBlqGvS6BC2LyrpEgAAVDRuMNI1imEEBKh227A2-MaxvbUSDnEThZcgCsPl_SaDcN:1sJees:gf4UgESa-R0Dts-2MFzee29x0Ii19oVbvld7UBh2sCs', '2024-07-02 19:38:22.556455'),
('bk2407nlk0naavyoqtxalxcjp5vy3i77', '.eJxVjDsOwjAQBe_iGln2Ous4lPQ5g7Vrr0kAxVI-FeLuJFIKaN_MvLeKtK1D3BaZ45jVVVl1-d2Y0lOmA-QHTfeqU53WeWR9KPqki-5rltftdP8OBlqGvS6BC2LyrpEgAAVDRuMNI1imEEBKh227A2-MaxvbUSDnEThZcgCsPl_SaDcN:1sXRVx:3t3mVvXmtx5rf08PH2OcCe8wXv8mRGyZVd_4RDvKbdk', '2024-08-09 20:26:09.649235'),
('hp6qb4sl10glodoo2652cdqjpzdzzrkc', '.eJxVjDsOwjAQBe_iGln2Ous4lPQ5g7Vrr0kAxVI-FeLuJFIKaN_MvLeKtK1D3BaZ45jVVVl1-d2Y0lOmA-QHTfeqU53WeWR9KPqki-5rltftdP8OBlqGvS6BC2LyrpEgAAVDRuMNI1imEEBKh227A2-MaxvbUSDnEThZcgCsPl_SaDcN:1sMyDc:AnLlYxh0mjg-HM-ChZ7N9AkxM5VF3m2nztofbwVOOiU', '2024-07-11 23:07:56.796549'),
('hsyb89k1oz1r6ab5w3syy2n5vgtzkwqm', '.eJxVjDsOwjAQBe_iGln2Ous4lPQ5g7Vrr0kAxVI-FeLuJFIKaN_MvLeKtK1D3BaZ45jVVVl1-d2Y0lOmA-QHTfeqU53WeWR9KPqki-5rltftdP8OBlqGvS6BC2LyrpEgAAVDRuMNI1imEEBKh227A2-MaxvbUSDnEThZcgCsPl_SaDcN:1sOlhF:FHENfl6hbL7Sy6EhXVPUJ8LOTrAGTHKgjqBEs_NYc6I', '2024-07-16 22:09:57.791007'),
('lqof79ylewd0opz0uej6jki20phk1pfo', '.eJxVjDsOwjAQBe_iGln2Ous4lPQ5g7Vrr0kAxVI-FeLuJFIKaN_MvLeKtK1D3BaZ45jVVVl1-d2Y0lOmA-QHTfeqU53WeWR9KPqki-5rltftdP8OBlqGvS6BC2LyrpEgAAVDRuMNI1imEEBKh227A2-MaxvbUSDnEThZcgCsPl_SaDcN:1sWj34:U6EamrfRdEUyFOgLx4fiKc3YCogr3zKX6W1yegHD6ow', '2024-08-07 20:57:22.225733'),
('m0pchgv7jjongj6hwgckymdbyweulclf', '.eJxVjDsOwjAQBe_iGln2Ous4lPQ5g7Vrr0kAxVI-FeLuJFIKaN_MvLeKtK1D3BaZ45jVVVl1-d2Y0lOmA-QHTfeqU53WeWR9KPqki-5rltftdP8OBlqGvS6BC2LyrpEgAAVDRuMNI1imEEBKh227A2-MaxvbUSDnEThZcgCsPl_SaDcN:1sW1Up:YEyychUvRVcFPlOEq8B41LbdbT44pS3Q0zngOz_gNOA', '2024-08-05 22:27:07.564890'),
('o3qyed50sgc3pdnm6f9bokvg3y3ytkq5', '.eJxVjDsOwjAQBe_iGln2Ous4lPQ5g7Vrr0kAxVI-FeLuJFIKaN_MvLeKtK1D3BaZ45jVVVl1-d2Y0lOmA-QHTfeqU53WeWR9KPqki-5rltftdP8OBlqGvS6BC2LyrpEgAAVDRuMNI1imEEBKh227A2-MaxvbUSDnEThZcgCsPl_SaDcN:1sXU7r:7wgrs37BYSOaRdcsGqmc0tz9ZQ3eZhOBFPvB1EinPTA', '2024-08-09 23:13:27.631932'),
('p6yf02pxinz2a992b3s4ix90wrmdpvfe', '.eJxVjDsOwjAQBe_iGln2Ous4lPQ5g7Vrr0kAxVI-FeLuJFIKaN_MvLeKtK1D3BaZ45jVVVl1-d2Y0lOmA-QHTfeqU53WeWR9KPqki-5rltftdP8OBlqGvS6BC2LyrpEgAAVDRuMNI1imEEBKh227A2-MaxvbUSDnEThZcgCsPl_SaDcN:1sHuBI:9e2mMjImcPORhDDeorQe9bBzrjR8ME4A2o8CioWKGwk', '2024-06-27 23:48:36.437873'),
('s9qvrcwmliiiffionzdg7dy1jw8vl6z2', '.eJxVjDsOwjAQBe_iGln2Ous4lPQ5g7Vrr0kAxVI-FeLuJFIKaN_MvLeKtK1D3BaZ45jVVVl1-d2Y0lOmA-QHTfeqU53WeWR9KPqki-5rltftdP8OBlqGvS6BC2LyrpEgAAVDRuMNI1imEEBKh227A2-MaxvbUSDnEThZcgCsPl_SaDcN:1sXpzb:_kVD662pkknCQIDOHteDB6cKStf4yJGtlIiqXRwBUt8', '2024-08-10 22:34:23.714417'),
('szabvydnqolkftvrdhf4mziwth2s8ftb', '.eJxVjDsOwjAQBe_iGln2Ous4lPQ5g7Vrr0kAxVI-FeLuJFIKaN_MvLeKtK1D3BaZ45jVVVl1-d2Y0lOmA-QHTfeqU53WeWR9KPqki-5rltftdP8OBlqGvS6BC2LyrpEgAAVDRuMNI1imEEBKh227A2-MaxvbUSDnEThZcgCsPl_SaDcN:1sLt2V:R5MHZpeQMqqBwOtWNiJCBXtwjzgzZ2K2cFEw2JVYr1k', '2024-07-08 23:23:59.894671'),
('wehd6ded6v3e6x5oc2dshvzw228fdn6s', '.eJxVjDsOwjAQBe_iGln2Ous4lPQ5g7Vrr0kAxVI-FeLuJFIKaN_MvLeKtK1D3BaZ45jVVVl1-d2Y0lOmA-QHTfeqU53WeWR9KPqki-5rltftdP8OBlqGvS6BC2LyrpEgAAVDRuMNI1imEEBKh227A2-MaxvbUSDnEThZcgCsPl_SaDcN:1sYXkH:jnBGjKOEwcNKT3-4WNj7NWC9vk_9iRshqa0Gl2dGKSc', '2024-08-12 21:17:29.400058'),
('wepnc56xdppevkemi1n9tegdkn3ivqx4', '.eJxVjDsOwjAQBe_iGln2Ous4lPQ5g7Vrr0kAxVI-FeLuJFIKaN_MvLeKtK1D3BaZ45jVVVl1-d2Y0lOmA-QHTfeqU53WeWR9KPqki-5rltftdP8OBlqGvS6BC2LyrpEgAAVDRuMNI1imEEBKh227A2-MaxvbUSDnEThZcgCsPl_SaDcN:1sOlO9:GGf0mQm6DLXZcXYMdtew2D7BUecLk95wDc0WSQIC6eA', '2024-07-16 21:50:13.804983'),
('yhbrmrhsde9n5h1pkun1uzt5muy55bxp', '.eJxVjDsOwjAQBe_iGln2Ous4lPQ5g7Vrr0kAxVI-FeLuJFIKaN_MvLeKtK1D3BaZ45jVVVl1-d2Y0lOmA-QHTfeqU53WeWR9KPqki-5rltftdP8OBlqGvS6BC2LyrpEgAAVDRuMNI1imEEBKh227A2-MaxvbUSDnEThZcgCsPl_SaDcN:1sX4Lk:mTP718SFuGwpV-mtjRZgxb4g0GtFacsBirvo5sXDJoE', '2024-08-08 19:42:04.083932'),
('zjdlu8flnw66x64ud4cigr29a6amylka', '.eJxVjDsOwjAQBe_iGln2Ous4lPQ5g7Vrr0kAxVI-FeLuJFIKaN_MvLeKtK1D3BaZ45jVVVl1-d2Y0lOmA-QHTfeqU53WeWR9KPqki-5rltftdP8OBlqGvS6BC2LyrpEgAAVDRuMNI1imEEBKh227A2-MaxvbUSDnEThZcgCsPl_SaDcN:1sK2RM:h_bNh1c455GbrbGj_60xqySNbc2Exrr1CG4xpei1LSw', '2024-07-03 21:02:00.457044');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascotas_mascotas`
--

CREATE TABLE `mascotas_mascotas` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `edad` int(11) NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `vacuna` varchar(50) NOT NULL,
  `desparacitado` varchar(50) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `castrado` varchar(50) NOT NULL,
  `caracteristicas` varchar(150) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mascotas_mascotas`
--

INSERT INTO `mascotas_mascotas` (`id`, `nombre`, `edad`, `sexo`, `vacuna`, `desparacitado`, `estado`, `castrado`, `caracteristicas`, `imagen`) VALUES
(4, 'Simon', 12, 'Macho', 'SI', 'SI', 'Adoptado', 'SI', 'Mimoso,  juguetón, Cariñoso,  dormilón.', 'mascotas/perro1.jpeg'),
(5, 'Bola de nieve', 1, 'Hembra', 'SI', 'SI', 'Adoptado', 'SI', 'Juguetona, mimosa y le encanta dormir mucho', 'mascotas/gato1.png'),
(6, 'India', 2, 'Hembra', 'SI', 'SI', 'En adopcion', 'SI', 'Mimosa', 'mascotas/perro2.jpg'),
(7, 'Arya', 2, 'Hembra', 'SI', 'SI', 'En adopcion', 'SI', 'Cariniosa', 'mascotas/gato2.jpeg'),
(8, 'Pompin', 3, 'Macho', 'SI', 'SI', 'En adopcion', 'SI', 'Dormilon', 'mascotas/perro3.jpg'),
(9, 'Ramoncito', 3, 'Macho', 'SI', 'SI', 'En adopcion', 'SI', 'Vagales', 'mascotas/gato3.png'),
(10, 'Freya', 3, 'Hembra', 'SI', 'SI', 'En adopcion', 'SI', 'Amorosa', 'mascotas/gato4.jpeg'),
(11, 'Gino', 3, 'Macho', 'SI', 'SI', 'En adopcion', 'SI', 'Guardian', 'mascotas/perro4.jpg'),
(12, 'Corbata', 5, 'Macho', 'SI', 'SI', 'En adopcion', 'NO', 'Hiperactivo', 'mascotas/perro5.jpg'),
(13, 'Niki', 5, 'Macho', 'SI', 'SI', 'Adoptado', 'SI', 'Dormilon', 'mascotas/gato5.jpeg'),
(14, 'Nina', 6, 'Hembra', 'SI', 'SI', 'En adopcion', 'SI', 'Amorosa', 'mascotas/perro6.jpg'),
(17, 'Loco Miguel', 5, 'Macho', 'SI', 'SI', 'En adopcion', 'SI', 'Inquieto y come de todo', 'mascotas/gatoLoco.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_users`
--

CREATE TABLE `users_users` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users_users`
--

INSERT INTO `users_users` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `imagen`) VALUES
(1, 'pbkdf2_sha256$600000$jHmTUCbEj6MGY8XqWGEeTV$OigSWaKWBC54CMlord9VvmGq9AHYkVzYHT8KgQRoAIc=', '2024-07-29 21:17:29.392440', 1, 'mauro', '', '', '', 1, 1, '2024-06-13 23:34:08.000000', 'usuarios/mauro.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_users_groups`
--

CREATE TABLE `users_users_groups` (
  `id` bigint(20) NOT NULL,
  `users_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_users_user_permissions`
--

CREATE TABLE `users_users_user_permissions` (
  `id` bigint(20) NOT NULL,
  `users_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_users_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `mascotas_mascotas`
--
ALTER TABLE `mascotas_mascotas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_users`
--
ALTER TABLE `users_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `users_users_groups`
--
ALTER TABLE `users_users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_users_groups_users_id_group_id_02603a5e_uniq` (`users_id`,`group_id`),
  ADD KEY `users_users_groups_group_id_3e15ff0f_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `users_users_user_permissions`
--
ALTER TABLE `users_users_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_users_user_permiss_users_id_permission_id_119659d5_uniq` (`users_id`,`permission_id`),
  ADD KEY `users_users_user_per_permission_id_9a117d64_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `mascotas_mascotas`
--
ALTER TABLE `mascotas_mascotas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `users_users`
--
ALTER TABLE `users_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users_users_groups`
--
ALTER TABLE `users_users_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users_users_user_permissions`
--
ALTER TABLE `users_users_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_users_id` FOREIGN KEY (`user_id`) REFERENCES `users_users` (`id`);

--
-- Filtros para la tabla `users_users_groups`
--
ALTER TABLE `users_users_groups`
  ADD CONSTRAINT `users_users_groups_group_id_3e15ff0f_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `users_users_groups_users_id_5572cf36_fk_users_users_id` FOREIGN KEY (`users_id`) REFERENCES `users_users` (`id`);

--
-- Filtros para la tabla `users_users_user_permissions`
--
ALTER TABLE `users_users_user_permissions`
  ADD CONSTRAINT `users_users_user_per_permission_id_9a117d64_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `users_users_user_permissions_users_id_04010ba6_fk_users_users_id` FOREIGN KEY (`users_id`) REFERENCES `users_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

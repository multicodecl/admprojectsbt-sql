-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-02-2023 a las 00:22:12
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
-- Base de datos: `mc_admprojectsbt`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios_proyecto`
--

CREATE TABLE `comentarios_proyecto` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `descripcion` text NOT NULL,
  `docs_adjuntos` text DEFAULT NULL,
  `fk_usuario` int(11) NOT NULL,
  `fk_proyecto` int(11) NOT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios_tarea`
--

CREATE TABLE `comentarios_tarea` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `descripcion` text NOT NULL,
  `docs_adjuntos` text DEFAULT NULL,
  `fk_usuario` int(11) NOT NULL,
  `fk_tarea` int(11) NOT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config_correo_general`
--

CREATE TABLE `config_correo_general` (
  `id` smallint(6) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `correo` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `nombre_servidor_email` varchar(150) NOT NULL,
  `numero_puerto_smtp` varchar(10) NOT NULL,
  `usa_smtp` tinyint(4) NOT NULL DEFAULT 0,
  `encriptacion_smtp` tinyint(4) NOT NULL DEFAULT 0,
  `modo_depuracion` tinyint(4) NOT NULL DEFAULT 0,
  `desabilitado_actual` tinyint(4) NOT NULL DEFAULT 0,
  `activo` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `config_correo_general`
--

INSERT INTO `config_correo_general` (`id`, `created_at`, `updated_at`, `correo`, `password`, `nombre_servidor_email`, `numero_puerto_smtp`, `usa_smtp`, `encriptacion_smtp`, `modo_depuracion`, `desabilitado_actual`, `activo`) VALUES
(1, '2023-01-24 22:35:33', '2023-01-24 22:35:33', 'tuemail@dominio.ejemplo', '81dc9bdb52d04dc20036dbd8313ed055', 'mail.nombre_servidor.ejemplo', '587', 1, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config_modulos`
--

CREATE TABLE `config_modulos` (
  `id` smallint(6) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `modulo_activo` tinyint(4) NOT NULL DEFAULT 0,
  `referencia_previa` text DEFAULT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `config_modulos`
--

INSERT INTO `config_modulos` (`id`, `created_at`, `updated_at`, `nombre`, `descripcion`, `modulo_activo`, `referencia_previa`, `activo`) VALUES
(1, '2023-02-01 20:02:09', '2023-02-01 20:08:53', 'Configuración de Correo', 'En esta tabla se definirá la configuración del correo por defecto para notificar a los asignados de proyectos y tareas', 0, NULL, 1),
(2, '2023-02-01 20:02:09', '2023-02-01 20:20:03', 'Configuración de Plataforma', 'En esta tabla se definirá la configuración general de la plataforma en su version actual', 0, NULL, 1),
(3, '2023-02-01 20:02:09', '2023-02-01 20:20:03', 'Usuarios', 'En esta tabla se definirán los datos de los usuarios del sistema', 0, NULL, 1),
(4, '2023-02-01 20:02:09', '2023-02-01 20:20:03', 'Proyectos', 'En esta tabla se definirán los proyectos a desarrollar en la organización', 0, NULL, 1),
(5, '2023-02-01 20:02:09', '2023-02-01 20:20:03', 'Tareas', 'En esta tabla se definirán las tareas de los proyectos actuales', 0, NULL, 1),
(6, '2023-02-01 20:02:09', '2023-02-01 20:20:03', 'Comentarios de Proyectos', 'En esta tabla se definirán los comentarios de los proyectos actuales', 0, '4', 1),
(7, '2023-02-01 20:02:09', '2023-02-01 20:20:03', 'Comentarios de Tareas', 'En esta tabla se definirán los comentarios de las tareas actuales', 0, '5', 1),
(8, '2023-02-01 20:02:09', '2023-02-01 20:20:04', 'Clientes', 'En esta tabla se definirán los clientes actuales', 0, '3', 1),
(9, '2023-02-01 20:02:09', '2023-02-01 20:20:04', 'Calendario', 'En esta tabla se definirán reuniones entre otros', 0, '3', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config_plataforma_general`
--

CREATE TABLE `config_plataforma_general` (
  `id` smallint(6) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `version_web` varchar(50) NOT NULL,
  `titulo_plataforma` varchar(100) NOT NULL,
  `abreviatura_plataforma` varchar(100) NOT NULL,
  `logo_base64` text DEFAULT NULL,
  `url_logo` text DEFAULT NULL,
  `favicon32` text DEFAULT NULL,
  `texto_copyright` varchar(100) NOT NULL,
  `idioma_defecto` varchar(50) NOT NULL,
  `theme_defecto` text NOT NULL,
  `zona_horaria` varchar(100) NOT NULL,
  `filas_paginas` varchar(10) NOT NULL,
  `formato_fecha` varchar(20) NOT NULL,
  `formato_fecha_hora` varchar(50) NOT NULL,
  `primer_dia_semana` varchar(50) NOT NULL,
  `integrado_por` varchar(100) NOT NULL,
  `actualizaciones` tinyint(4) NOT NULL DEFAULT 1,
  `charset_html` varchar(50) NOT NULL,
  `lang_html` varchar(50) NOT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `config_plataforma_general`
--

INSERT INTO `config_plataforma_general` (`id`, `created_at`, `updated_at`, `version_web`, `titulo_plataforma`, `abreviatura_plataforma`, `logo_base64`, `url_logo`, `favicon32`, `texto_copyright`, `idioma_defecto`, `theme_defecto`, `zona_horaria`, `filas_paginas`, `formato_fecha`, `formato_fecha_hora`, `primer_dia_semana`, `integrado_por`, `actualizaciones`, `charset_html`, `lang_html`, `activo`) VALUES
(1, '2023-01-24 23:08:03', '2023-01-24 23:08:03', '1.0', 'ADMProjectsBT', 'ADMProjectsBT', NULL, NULL, NULL, 'Copyright ADMProjectsBT. All Right Reserved', 'spanish', '', 'America/Santiago', '10', 'd/m/Y', 'd/m/Y H:i:s', 'Lunes', 'Ingegrado por ADMProjectsBT', 1, 'utf-8', 'es', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_proyecto`
--

CREATE TABLE `estado_proyecto` (
  `id` smallint(6) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `descripcion` varchar(100) NOT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado_proyecto`
--

INSERT INTO `estado_proyecto` (`id`, `created_at`, `updated_at`, `descripcion`, `activo`) VALUES
(1, '2023-01-24 01:45:30', '2023-01-24 01:45:30', 'Nuevo', 1),
(2, '2023-01-24 01:45:30', '2023-01-24 01:45:30', 'Abierto', 1),
(3, '2023-01-24 01:45:30', '2023-01-24 01:45:30', 'Esperando', 1),
(4, '2023-01-24 01:45:30', '2023-01-24 01:45:30', 'Cerrado', 1),
(5, '2023-01-24 01:45:30', '2023-01-24 01:45:30', 'Cancelado', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_tarea`
--

CREATE TABLE `estado_tarea` (
  `id` smallint(6) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `descripcion` varchar(100) NOT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado_tarea`
--

INSERT INTO `estado_tarea` (`id`, `created_at`, `updated_at`, `descripcion`, `activo`) VALUES
(1, '2023-01-24 01:46:52', '2023-01-24 01:46:52', 'Nuevo', 1),
(2, '2023-01-24 01:46:52', '2023-01-24 01:46:52', 'Abierta', 1),
(3, '2023-01-24 01:46:52', '2023-01-24 01:46:52', 'Esperando', 1),
(4, '2023-01-24 01:46:52', '2023-01-24 01:46:52', 'Finalizada', 1),
(5, '2023-01-24 01:46:52', '2023-01-24 01:46:52', 'Cancelado', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_usuarios`
--

CREATE TABLE `grupo_usuarios` (
  `id` smallint(6) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `descripcion` varchar(100) NOT NULL,
  `es_predeterminado` tinyint(4) NOT NULL DEFAULT 0,
  `ldap_defecto` tinyint(4) NOT NULL DEFAULT 0,
  `numero_orden` tinyint(4) NOT NULL DEFAULT 0,
  `activo` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `grupo_usuarios`
--

INSERT INTO `grupo_usuarios` (`id`, `created_at`, `updated_at`, `descripcion`, `es_predeterminado`, `ldap_defecto`, `numero_orden`, `activo`) VALUES
(1, '2023-01-24 01:44:33', '2023-01-24 01:44:33', 'Super Administrador', 0, 0, 1, 1),
(2, '2023-01-24 01:44:33', '2023-01-24 01:44:33', 'Administrador General', 1, 0, 2, 1),
(3, '2023-01-24 01:44:33', '2023-01-24 01:44:33', 'Desarrollador', 1, 0, 3, 1),
(4, '2023-01-24 01:44:33', '2023-01-24 01:44:33', 'Testing QA', 1, 0, 4, 1),
(5, '2023-01-24 01:44:33', '2023-01-24 01:44:33', 'Cliente', 1, 0, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_accesos_usuarios`
--

CREATE TABLE `historial_accesos_usuarios` (
  `id` smallint(6) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tipo` varchar(100) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `id_usuario_nombre` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `fk_grupo_usuarios` smallint(6) NOT NULL,
  `fk_usuarios` int(11) NOT NULL,
  `limpiado_admin` tinyint(4) NOT NULL DEFAULT 1,
  `activo` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prioridad_proyecto`
--

CREATE TABLE `prioridad_proyecto` (
  `id` smallint(6) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `descripcion` varchar(100) NOT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `prioridad_proyecto`
--

INSERT INTO `prioridad_proyecto` (`id`, `created_at`, `updated_at`, `descripcion`, `activo`) VALUES
(1, '2023-01-24 01:45:53', '2023-01-24 01:45:53', 'Bajo', 1),
(2, '2023-01-24 01:45:53', '2023-01-24 01:45:53', 'Medio', 1),
(3, '2023-01-24 01:45:53', '2023-01-24 01:45:53', 'Alto', 1),
(4, '2023-01-24 01:45:53', '2023-01-24 01:45:53', 'Urgente', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prioridad_tarea`
--

CREATE TABLE `prioridad_tarea` (
  `id` smallint(6) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `descripcion` varchar(100) NOT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `prioridad_tarea`
--

INSERT INTO `prioridad_tarea` (`id`, `created_at`, `updated_at`, `descripcion`, `activo`) VALUES
(1, '2023-01-24 01:48:34', '2023-01-24 01:48:34', 'Bajo', 1),
(2, '2023-01-24 01:48:34', '2023-01-24 01:48:34', 'Medio', 1),
(3, '2023-01-24 01:48:34', '2023-01-24 01:48:34', 'Alto', 1),
(4, '2023-01-24 01:48:34', '2023-01-24 01:48:34', 'Urgente', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nombre` varchar(100) NOT NULL,
  `fecha_inicio` datetime NOT NULL DEFAULT current_timestamp(),
  `fecha_termino` datetime DEFAULT NULL,
  `descripcion` text NOT NULL,
  `hora_trabajo` smallint(6) NOT NULL DEFAULT 0,
  `docs_adjuntos` text DEFAULT NULL,
  `fk_prioridad` smallint(6) NOT NULL,
  `fk_estado` smallint(6) NOT NULL,
  `creado_por_nombre_grupo_usuarios` varchar(100) NOT NULL,
  `desarrollador_asignados` text DEFAULT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nombre` varchar(150) NOT NULL,
  `fecha_inicio` datetime NOT NULL DEFAULT current_timestamp(),
  `fecha_termino` datetime DEFAULT NULL,
  `descripcion` text NOT NULL,
  `hora_trabajo` smallint(6) NOT NULL DEFAULT 0,
  `docs_adjuntos` text DEFAULT NULL,
  `fk_tipo_tareas` smallint(6) NOT NULL,
  `fk_prioridad_tareas` smallint(6) NOT NULL,
  `fk_estado_tareas` smallint(6) NOT NULL,
  `creado_por_nombre_grupo_usuarios` varchar(100) NOT NULL,
  `fk_desarrollador_asignado` int(11) NOT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_tarea`
--

CREATE TABLE `tipo_tarea` (
  `id` smallint(6) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `descripcion` varchar(100) NOT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_tarea`
--

INSERT INTO `tipo_tarea` (`id`, `created_at`, `updated_at`, `descripcion`, `activo`) VALUES
(1, '2023-01-24 01:46:33', '2023-01-24 01:46:33', 'Idea', 1),
(2, '2023-01-24 01:46:33', '2023-01-24 01:46:33', 'Tarea', 1),
(3, '2023-01-24 01:46:33', '2023-01-24 01:46:33', 'Cambio', 1),
(4, '2023-01-24 01:46:33', '2023-01-24 01:46:33', 'Bug', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_usuario_nombre` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `nombres` varchar(150) NOT NULL,
  `apellidos` varchar(150) DEFAULT NULL,
  `imagen_base64` text DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `idioma_defecto` varchar(150) NOT NULL DEFAULT 'spanish',
  `fk_grupo_usuarios` smallint(6) NOT NULL,
  `acceso_menu_proyectos` tinyint(4) NOT NULL DEFAULT 0,
  `acceso_menu_tareas` tinyint(4) NOT NULL DEFAULT 0,
  `dashboard_cant_proyectos` tinyint(4) NOT NULL DEFAULT 0,
  `dashboard_cant_tarea` tinyint(4) NOT NULL DEFAULT 0,
  `head_menu_tareas_asignadas` tinyint(4) NOT NULL DEFAULT 0,
  `activo` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios_proyecto`
--
ALTER TABLE `comentarios_proyecto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario_comentarios_proyecto` (`fk_usuario`),
  ADD KEY `fk_proyecto_comentarios_proyecto` (`fk_proyecto`);

--
-- Indices de la tabla `comentarios_tarea`
--
ALTER TABLE `comentarios_tarea`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario_comentarios_tarea` (`fk_usuario`),
  ADD KEY `fk_tarea_comentarios_tarea` (`fk_tarea`);

--
-- Indices de la tabla `config_correo_general`
--
ALTER TABLE `config_correo_general`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `config_modulos`
--
ALTER TABLE `config_modulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `config_plataforma_general`
--
ALTER TABLE `config_plataforma_general`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado_proyecto`
--
ALTER TABLE `estado_proyecto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado_tarea`
--
ALTER TABLE `estado_tarea`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grupo_usuarios`
--
ALTER TABLE `grupo_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historial_accesos_usuarios`
--
ALTER TABLE `historial_accesos_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_grupo_usuarios_historial_accesos_usuarios` (`fk_grupo_usuarios`),
  ADD KEY `fk_usuarios_historial_accesos_usuarios` (`fk_usuarios`),
  ADD KEY `tipo` (`tipo`),
  ADD KEY `email` (`email`);

--
-- Indices de la tabla `prioridad_proyecto`
--
ALTER TABLE `prioridad_proyecto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `prioridad_tarea`
--
ALTER TABLE `prioridad_tarea`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_prioridad_proyectos` (`fk_prioridad`),
  ADD KEY `fk_estado_proyectos` (`fk_estado`),
  ADD KEY `creado_por_nombre_grupo_usuarios` (`creado_por_nombre_grupo_usuarios`);

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tipo_tareas_tareas` (`fk_tipo_tareas`),
  ADD KEY `fk_prioridad_tareas_tareas` (`fk_prioridad_tareas`),
  ADD KEY `fk_estado_tareas_estado_tarea` (`fk_estado_tareas`),
  ADD KEY `fk_desarrollador_asignado_tareas` (`fk_desarrollador_asignado`),
  ADD KEY `creado_por_nombre_grupo_usuarios` (`creado_por_nombre_grupo_usuarios`);

--
-- Indices de la tabla `tipo_tarea`
--
ALTER TABLE `tipo_tarea`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_usuario_nombre` (`id_usuario_nombre`),
  ADD KEY `fk_grupo_usuarios_usuarios` (`fk_grupo_usuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios_proyecto`
--
ALTER TABLE `comentarios_proyecto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comentarios_tarea`
--
ALTER TABLE `comentarios_tarea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `config_correo_general`
--
ALTER TABLE `config_correo_general`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `config_modulos`
--
ALTER TABLE `config_modulos`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `config_plataforma_general`
--
ALTER TABLE `config_plataforma_general`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `estado_proyecto`
--
ALTER TABLE `estado_proyecto`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estado_tarea`
--
ALTER TABLE `estado_tarea`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `grupo_usuarios`
--
ALTER TABLE `grupo_usuarios`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `historial_accesos_usuarios`
--
ALTER TABLE `historial_accesos_usuarios`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `prioridad_proyecto`
--
ALTER TABLE `prioridad_proyecto`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `prioridad_tarea`
--
ALTER TABLE `prioridad_tarea`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_tarea`
--
ALTER TABLE `tipo_tarea`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios_proyecto`
--
ALTER TABLE `comentarios_proyecto`
  ADD CONSTRAINT `fk_proyecto_comentarios_proyecto` FOREIGN KEY (`fk_proyecto`) REFERENCES `proyectos` (`id`),
  ADD CONSTRAINT `fk_usuario_comentarios_proyecto` FOREIGN KEY (`fk_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `comentarios_tarea`
--
ALTER TABLE `comentarios_tarea`
  ADD CONSTRAINT `fk_tarea_comentarios_tarea` FOREIGN KEY (`fk_tarea`) REFERENCES `tareas` (`id`),
  ADD CONSTRAINT `fk_usuario_comentarios_tarea` FOREIGN KEY (`fk_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `historial_accesos_usuarios`
--
ALTER TABLE `historial_accesos_usuarios`
  ADD CONSTRAINT `fk_grupo_usuarios_historial_accesos_usuarios` FOREIGN KEY (`fk_grupo_usuarios`) REFERENCES `grupo_usuarios` (`id`),
  ADD CONSTRAINT `fk_usuarios_historial_accesos_usuarios` FOREIGN KEY (`fk_usuarios`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `fk_estado_proyectos` FOREIGN KEY (`fk_estado`) REFERENCES `estado_proyecto` (`id`),
  ADD CONSTRAINT `fk_prioridad_proyectos` FOREIGN KEY (`fk_prioridad`) REFERENCES `prioridad_proyecto` (`id`);

--
-- Filtros para la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD CONSTRAINT `fk_desarrollador_asignado_tareas` FOREIGN KEY (`fk_desarrollador_asignado`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `fk_estado_tareas_estado_tarea` FOREIGN KEY (`fk_estado_tareas`) REFERENCES `estado_tarea` (`id`),
  ADD CONSTRAINT `fk_prioridad_tareas_tareas` FOREIGN KEY (`fk_prioridad_tareas`) REFERENCES `prioridad_tarea` (`id`),
  ADD CONSTRAINT `fk_tipo_tareas_tareas` FOREIGN KEY (`fk_tipo_tareas`) REFERENCES `tipo_tarea` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_grupo_usuarios_usuarios` FOREIGN KEY (`fk_grupo_usuarios`) REFERENCES `grupo_usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

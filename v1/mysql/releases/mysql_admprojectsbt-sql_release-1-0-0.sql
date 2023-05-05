--
-- Version 1.0.0 Script MySQL
--
-- Fecha del archivo: 05-02-2023
-- Creado por: https://github.com/multicodecl
--

CREATE TABLE `grupo_usuarios` (
  `id` SMALLINT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` DATETIME NOT NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
  
  `descripcion` VARCHAR(100) NOT NULL,
  
  `es_predeterminado` TINYINT(4) NOT NULL DEFAULT 0,
  `ldap_defecto` TINYINT(4) NOT NULL DEFAULT 0,
  `numero_orden` TINYINT(4) NOT NULL DEFAULT 0,
  
  `activo` TINYINT(4) NOT NULL DEFAULT 1
);

INSERT INTO `grupo_usuarios` (`id`, `descripcion`, `es_predeterminado`, `ldap_defecto`, `numero_orden`, `activo`) VALUES
(1, 'Super Administrador', 0, 0, 1, 1),
(2, 'Administrador General', 1, 0, 2, 1),
(3, 'Desarrollador', 1, 0, 3, 1),
(4, 'Testing QA', 1, 0, 4, 1),
(5, 'Cliente', 1, 0, 5, 1);


CREATE TABLE `estado_proyecto` (
  `id` SMALLINT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` DATETIME NOT NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
  
  `descripcion` VARCHAR(100) NOT NULL,
  
  `activo` TINYINT(4) NOT NULL DEFAULT 1
);

INSERT INTO `estado_proyecto` (`id`, `descripcion`, `activo`) VALUES
(1, 'Nuevo', 1),
(2, 'Abierto', 1),
(3, 'Esperando', 1),
(4, 'Cerrado', 1),
(5, 'Cancelado', 1);

CREATE TABLE `prioridad_proyecto` (
  `id` SMALLINT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` DATETIME NOT NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
  
  `descripcion` VARCHAR(100) NOT NULL,
  
  `activo` TINYINT(4) NOT NULL DEFAULT 1
);

INSERT INTO `prioridad_proyecto` (`id`, `descripcion`, `activo`) VALUES
(1, 'Bajo', 1),
(2, 'Medio', 1),
(3, 'Alto', 1),
(4, 'Urgente', 1);

CREATE TABLE `tipo_tarea` (
  `id` SMALLINT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` DATETIME NOT NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
  
  `descripcion` VARCHAR(100) NOT NULL,
  
  `activo` TINYINT(4) NOT NULL DEFAULT 1
);

INSERT INTO `tipo_tarea` (`id`, `descripcion`, `activo`) VALUES
(1, 'Idea', 1),
(2, 'Tarea', 1),
(3, 'Cambio', 1),
(4, 'Bug', 1);

CREATE TABLE `estado_tarea` (
  `id` SMALLINT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` DATETIME NOT NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
  
  `descripcion` VARCHAR(100) NOT NULL,
  
  `activo` TINYINT(4) NOT NULL DEFAULT 1
);

INSERT INTO `estado_tarea` (`id`, `descripcion`, `activo`) VALUES
(1, 'Nuevo', 1),
(2, 'Abierta', 1),
(3, 'Esperando', 1),
(4, 'Finalizada', 1),
(5, 'Cancelado', 1);

CREATE TABLE `prioridad_tarea` (
  `id` SMALLINT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` DATETIME NOT NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
  
  `descripcion` VARCHAR(100) NOT NULL,
  
  `activo` TINYINT(4) NOT NULL DEFAULT 1
);

INSERT INTO `prioridad_tarea` (`id`, `descripcion`, `activo`) VALUES
(1, 'Bajo', 1),
(2, 'Medio', 1),
(3, 'Alto', 1),
(4, 'Urgente', 1);

CREATE TABLE `config_correo_general` (
  `id` SMALLINT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` DATETIME NOT NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
  
  `correo` VARCHAR(150) NOT NULL,
  `password` VARCHAR(150) NOT NULL,
  `nombre_servidor_email` VARCHAR(150) NOT NULL,
  `numero_puerto_smtp` VARCHAR(10) NOT NULL,
  
  `usa_smtp` TINYINT(4) NOT NULL DEFAULT 0,
  `encriptacion_smtp` TINYINT(4) NOT NULL DEFAULT 0,
  `modo_depuracion` TINYINT(4) NOT NULL DEFAULT 0,
  
  `desabilitado_actual` TINYINT(4) NOT NULL DEFAULT 0,
  
  `activo` TINYINT(4) NOT NULL DEFAULT 1
);

INSERT INTO `config_correo_general` (`id`, `correo`, `password`, `nombre_servidor_email`, `numero_puerto_smtp`, `usa_smtp`, 
	`encriptacion_smtp`, `modo_depuracion`, `desabilitado_actual`, `activo`) VALUES
(1, 'tuemail@dominio.ejemplo', '81dc9bdb52d04dc20036dbd8313ed055', 'mail.nombre_servidor.ejemplo', '587',  1, 0, 0, 1, 1);

CREATE TABLE `config_plataforma_general` (
  `id` SMALLINT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` DATETIME NOT NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
  
  `version_web` VARCHAR(50) NOT NULL,
  `titulo_plataforma` VARCHAR(100) NOT NULL,
  `abreviatura_plataforma` VARCHAR(100) NOT NULL,
  `logo_base64` TEXT NULL,
  `url_logo` TEXT NULL,
  `favicon32` TEXT NULL,
  `texto_copyright` VARCHAR(100) NOT NULL,
  `idioma_defecto` VARCHAR(50) NOT NULL,
  `theme_defecto` TEXT NOT NULL,
  `zona_horaria` VARCHAR(100) NOT NULL,
  `filas_paginas` VARCHAR(10) NOT NULL,
  `formato_fecha` VARCHAR(20) NOT NULL,
  `formato_fecha_hora` VARCHAR(50) NOT NULL,
  `primer_dia_semana` VARCHAR(50) NOT NULL,
  `integrado_por` VARCHAR(100) NOT NULL,
  
  `actualizaciones` TINYINT(4) NOT NULL DEFAULT 1,
  
  `charset_html` VARCHAR(50) NOT NULL,
  `lang_html` VARCHAR(50) NOT NULL,
  
  `activo` TINYINT(4) NOT NULL DEFAULT 1
);

INSERT INTO `config_plataforma_general` (`id`, `created_at`, `updated_at`, `version_web`, `titulo_plataforma`, `abreviatura_plataforma`, `logo_base64`, 
		`url_logo`, `favicon32`, `texto_copyright`, `idioma_defecto`, `theme_defecto`, `zona_horaria`, `filas_paginas`, `formato_fecha`, 
		`formato_fecha_hora`, `primer_dia_semana`, `integrado_por`, `actualizaciones`, `charset_html`, `lang_html`, `activo`) VALUES 
	('1', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '1.0', 'ADMProjectsBT', 'ADMProjectsBT', NULL, NULL, NULL, 
	'Copyright ADMProjectsBT. All Right Reserved', 'spanish', '', 'America/Santiago', '10', 'd/m/Y', 'd/m/Y H:i:s', 'Lunes', 
	'Ingegrado por ADMProjectsBT', '1', 'utf-8', 'es', '1');

CREATE TABLE `usuarios` (
  `id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` DATETIME NOT NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
  
  `id_usuario_nombre` VARCHAR(50) NOT NULL UNIQUE,
  `password` VARCHAR(150) NOT NULL,
  `nombres` VARCHAR(150) NOT NULL,
  `apellidos` VARCHAR(150) NULL,
  `imagen_base64` TEXT NULL,
  `email` VARCHAR(150) NOT NULL,
  `idioma_defecto` VARCHAR(150) NOT NULL DEFAULT 'spanish',
  
  `fk_grupo_usuarios` SMALLINT(6) NOT NULL,
  
  `acceso_menu_proyectos` TINYINT(4) NOT NULL DEFAULT 0,
  `acceso_menu_tareas` TINYINT(4) NOT NULL DEFAULT 0,
  
  `dashboard_cant_proyectos` TINYINT(4) NOT NULL DEFAULT 0,
  `dashboard_cant_tarea` TINYINT(4) NOT NULL DEFAULT 0,
  
  `head_menu_tareas_asignadas` TINYINT(4) NOT NULL DEFAULT 0,
  
  `activo` TINYINT(4) NOT NULL DEFAULT 1
);

ALTER TABLE `usuarios`
	ADD CONSTRAINT `fk_grupo_usuarios_usuarios` FOREIGN KEY (`fk_grupo_usuarios`) REFERENCES `grupo_usuarios` (`id`);

CREATE TABLE `historial_accesos_usuarios` (
  `id` SMALLINT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` DATETIME NOT NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
  
  `tipo` VARCHAR(100) NOT NULL,
  `ip` VARCHAR(50) NOT NULL,
  `id_usuario_nombre` VARCHAR(50) NOT NULL,
  `email` VARCHAR(150) NOT NULL,
  
  `fk_grupo_usuarios` SMALLINT(6) NOT NULL,
  `fk_usuarios` INT(11) NOT NULL,
  
  `limpiado_admin` TINYINT(4) NOT NULL DEFAULT 1,
  
  `activo` TINYINT(4) NOT NULL DEFAULT 1
);

ALTER TABLE `historial_accesos_usuarios`
	ADD CONSTRAINT `fk_grupo_usuarios_historial_accesos_usuarios` FOREIGN KEY (`fk_grupo_usuarios`) REFERENCES `grupo_usuarios` (`id`);
ALTER TABLE `historial_accesos_usuarios`
	ADD CONSTRAINT `fk_usuarios_historial_accesos_usuarios` FOREIGN KEY (`fk_usuarios`) REFERENCES `usuarios` (`id`);

ALTER TABLE `historial_accesos_usuarios` ADD INDEX(`tipo`);
ALTER TABLE `historial_accesos_usuarios` ADD INDEX(`email`);

INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `id_usuario_nombre`, `password`, `nombres`, `apellidos`, `imagen_base64`, `email`, 
	`idioma_defecto`, `fk_grupo_usuarios`, `acceso_menu_proyectos`, `acceso_menu_tareas`, `dashboard_cant_proyectos`, `dashboard_cant_tarea`, `activo`) VALUES 
	('1', current_timestamp(), current_timestamp(), 'superadmin', '81dc9bdb52d04dc20036dbd8313ed055', 'Super', 'Admin', NULL, 
	'tuemail@dominio.ejemplo', 'spanish', '1', '1', '1', '1', '1', '1');
	
CREATE TABLE `proyectos` (
  `id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` DATETIME NOT NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
  
  `nombre` VARCHAR(100) NOT NULL,
  `fecha_inicio` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `fecha_termino` DATETIME NULL,
  `descripcion` TEXT NOT NULL,
  `hora_trabajo` SMALLINT(6) NOT NULL DEFAULT 0,
  
  `docs_adjuntos` TEXT NULL,
  
  `fk_prioridad` SMALLINT(6) NOT NULL,
  `fk_estado` SMALLINT(6) NOT NULL,
  
  `creado_por_nombre_grupo_usuarios` VARCHAR(100) NOT NULL,
  `desarrollador_asignados` TEXT NULL,
  
  `activo` TINYINT(4) NOT NULL DEFAULT 1
);

ALTER TABLE `proyectos`
	ADD CONSTRAINT `fk_prioridad_proyectos` FOREIGN KEY (`fk_prioridad`) REFERENCES `prioridad_proyecto` (`id`);
ALTER TABLE `proyectos`
	ADD CONSTRAINT `fk_estado_proyectos` FOREIGN KEY (`fk_estado`) REFERENCES `estado_proyecto` (`id`);

ALTER TABLE `proyectos` ADD INDEX(`creado_por_nombre_grupo_usuarios`);

CREATE TABLE `tareas` (
  `id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` DATETIME NOT NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
  
  `nombre` VARCHAR(150) NOT NULL,
  `fecha_inicio` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `fecha_termino` DATETIME NULL,
  `descripcion` TEXT NOT NULL,
  `hora_trabajo` SMALLINT(6) NOT NULL DEFAULT 0,
  
  `docs_adjuntos` TEXT NULL,
  
  `fk_tipo_tareas` SMALLINT(6) NOT NULL,
  `fk_prioridad_tareas` SMALLINT(6) NOT NULL,
  `fk_estado_tareas` SMALLINT(6) NOT NULL,
  
  `creado_por_nombre_grupo_usuarios` VARCHAR(100) NOT NULL,
  
  `fk_desarrollador_asignado` INT(11) NOT NULL,
  
  `activo` TINYINT(4) NOT NULL DEFAULT 1
);

ALTER TABLE `tareas`
	ADD CONSTRAINT `fk_tipo_tareas_tareas` FOREIGN KEY (`fk_tipo_tareas`) REFERENCES `tipo_tarea` (`id`);
ALTER TABLE `tareas`
	ADD CONSTRAINT `fk_prioridad_tareas_tareas` FOREIGN KEY (`fk_prioridad_tareas`) REFERENCES `prioridad_tarea` (`id`);
ALTER TABLE `tareas`
	ADD CONSTRAINT `fk_estado_tareas_estado_tarea` FOREIGN KEY (`fk_estado_tareas`) REFERENCES `estado_tarea` (`id`);
ALTER TABLE `tareas`
	ADD CONSTRAINT `fk_desarrollador_asignado_tareas` FOREIGN KEY (`fk_desarrollador_asignado`) REFERENCES `usuarios` (`id`);

ALTER TABLE `tareas` ADD INDEX(`creado_por_nombre_grupo_usuarios`);

CREATE TABLE `comentarios_proyecto` (
  `id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` DATETIME NOT NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
  
  `descripcion` TEXT NOT NULL,
  `docs_adjuntos` TEXT NULL,
  
  `fk_usuario` INT(11) NOT NULL,
  `fk_proyecto` INT(11) NOT NULL,
  
  `activo` TINYINT(4) NOT NULL DEFAULT 1
);

ALTER TABLE `comentarios_proyecto`
	ADD CONSTRAINT `fk_usuario_comentarios_proyecto` FOREIGN KEY (`fk_usuario`) REFERENCES `usuarios` (`id`);
ALTER TABLE `comentarios_proyecto`
	ADD CONSTRAINT `fk_proyecto_comentarios_proyecto` FOREIGN KEY (`fk_proyecto`) REFERENCES `proyectos` (`id`);

CREATE TABLE `comentarios_tarea` (
  `id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` DATETIME NOT NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
  
  `descripcion` TEXT NOT NULL,
  `docs_adjuntos` TEXT NULL,
  
  `fk_usuario` INT(11) NOT NULL,
  `fk_tarea` INT(11) NOT NULL,
  
  `activo` TINYINT(4) NOT NULL DEFAULT 1
);

ALTER TABLE `comentarios_tarea`
	ADD CONSTRAINT `fk_usuario_comentarios_tarea` FOREIGN KEY (`fk_usuario`) REFERENCES `usuarios` (`id`);
ALTER TABLE `comentarios_tarea`
	ADD CONSTRAINT `fk_tarea_comentarios_tarea` FOREIGN KEY (`fk_tarea`) REFERENCES `tareas` (`id`);

CREATE TABLE `config_modulos` (
  `id` SMALLINT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` DATETIME NOT NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
  
  `nombre` VARCHAR(255) NOT NULL,
  `descripcion` TEXT NOT NULL,
  
  `modulo_activo` TINYINT(4) NOT NULL DEFAULT 0,
  `referencia_previa` TEXT NULL DEFAULT NULL,
  
  `activo` TINYINT(4) NOT NULL DEFAULT 1
);

INSERT INTO `config_modulos` (`id`, `nombre`, `descripcion`, `modulo_activo`, `referencia_previa`, `activo`) VALUES 
	('1', 'Configuración de Correo', 'En esta tabla se definirá la configuración del correo por defecto para notificar a los asignados de proyectos y tareas', '0', NULL, '1'),
	('2', 'Configuración de Plataforma', 'En esta tabla se definirá la configuración general de la plataforma en su version actual', '0', NULL, '1'),
	('3', 'Usuarios', 'En esta tabla se definirán los datos de los usuarios del sistema', '0', NULL, '1'),
	('4', 'Proyectos', 'En esta tabla se definirán los proyectos a desarrollar en la organización', '0', NULL, '1'),
	('5', 'Tareas', 'En esta tabla se definirán las tareas de los proyectos actuales', '0', NULL, '1'),
	('6', 'Comentarios de Proyectos', 'En esta tabla se definirán los comentarios de los proyectos actuales', '0', '4', '1'),
	('7', 'Comentarios de Tareas', 'En esta tabla se definirán los comentarios de las tareas actuales', '0', '5', '1'),
	('8', 'Clientes', 'En esta tabla se definirán los clientes actuales', '0', '3', '1'),
	('9', 'Calendario', 'En esta tabla se definirán reuniones entre otros', '0', '3', '1');

-- Información para administrar base de datos mysql - Test

-- utf8_general_ci
CREATE DATABASE mc_admprojectsbt;

-- Usuario administrador
-- User: user_adm_project
-- Pass: u8169pryPLNrQA2r2Z

CREATE USER 'user_adm_project'@'localhost' IDENTIFIED VIA mysql_native_password USING '***';

GRANT ALL PRIVILEGES ON *.* TO 'user_adm_project'@'localhost' 
	REQUIRE NONE WITH GRANT OPTION MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

GRANT ALL PRIVILEGES ON `op\_admprojects`.* TO 'user_adm_project'@'localhost';

-- MySQL Workbench
-- Require SSL: Sección Advanced
-- useSSL=0

----------------------------------------------------------------------------------

-- Datos de prueba v1

-- Usuarios: Super Administrador, Administrador, Desarrollador(2), Testing QA, Cliente

-- Clave: 1234
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `id_usuario_nombre`, `password`, `nombres`, `apellidos`, `imagen_base64`, `email`, 
	`idioma_defecto`, `fk_grupo_usuarios`, `acceso_menu_proyectos`, `acceso_menu_tareas`, `dashboard_cant_proyectos`, `dashboard_cant_tarea`, `activo`) VALUES 
	('1', current_timestamp(), current_timestamp(), 'superadmin', '81dc9bdb52d04dc20036dbd8313ed055', 'Super', 'Admin', NULL, 
	'tuemail@dominio.ejemplo', 'spanish', '1', '1', '1', '1', '1', '1');
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `id_usuario_nombre`, `password`, `nombres`, `apellidos`, `imagen_base64`, `email`, 
	`idioma_defecto`, `fk_grupo_usuarios`, `acceso_menu_proyectos`, `acceso_menu_tareas`, `dashboard_cant_proyectos`, `dashboard_cant_tarea`, `activo`) VALUES 
	('2', current_timestamp(), current_timestamp(), 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'Admin', 'General', NULL, 
	'tuemail@dominio.ejemplo', 'spanish', '2', '1', '1', '1', '1', '1');
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `id_usuario_nombre`, `password`, `nombres`, `apellidos`, `imagen_base64`, `email`, 
	`idioma_defecto`, `fk_grupo_usuarios`, `acceso_menu_proyectos`, `acceso_menu_tareas`, `dashboard_cant_proyectos`, `dashboard_cant_tarea`, `activo`) VALUES 
	('3', current_timestamp(), current_timestamp(), 'developer1', '81dc9bdb52d04dc20036dbd8313ed055', 'Developer01', NULL, NULL, 
	'tuemail@dominio.ejemplo', 'spanish', '3', '1', '1', '1', '1', '1');
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `id_usuario_nombre`, `password`, `nombres`, `apellidos`, `imagen_base64`, `email`, 
	`idioma_defecto`, `fk_grupo_usuarios`, `acceso_menu_proyectos`, `acceso_menu_tareas`, `dashboard_cant_proyectos`, `dashboard_cant_tarea`, `activo`) VALUES 
	('4', current_timestamp(), current_timestamp(), 'testing', '81dc9bdb52d04dc20036dbd8313ed055', 'Testing', 'QA', NULL, 
	'tuemail@dominio.ejemplo', 'spanish', '4', '1', '1', '1', '1', '1');
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `id_usuario_nombre`, `password`, `nombres`, `apellidos`, `imagen_base64`, `email`, 
	`idioma_defecto`, `fk_grupo_usuarios`, `acceso_menu_proyectos`, `acceso_menu_tareas`, `dashboard_cant_proyectos`, `dashboard_cant_tarea`, `activo`) VALUES 
	('5', current_timestamp(), current_timestamp(), 'cliente', '81dc9bdb52d04dc20036dbd8313ed055', 'Cliente', NULL, NULL, 
	'tuemail@dominio.ejemplo', 'spanish', '5', '0', '0', '0', '0', '1');
INSERT INTO `usuarios` (`id`, `created_at`, `updated_at`, `id_usuario_nombre`, `password`, `nombres`, `apellidos`, `imagen_base64`, `email`, 
	`idioma_defecto`, `fk_grupo_usuarios`, `acceso_menu_proyectos`, `acceso_menu_tareas`, `dashboard_cant_proyectos`, `dashboard_cant_tarea`, 
	`head_menu_tareas_asignadas`, `activo`) VALUES 
	('6', current_timestamp(), current_timestamp(), 'developer2', '81dc9bdb52d04dc20036dbd8313ed055', 'Developer02', NULL, NULL, 
	'tuemail@dominio.ejemplo', 'spanish', '3', '0', '1', '1', '1', '1', '1');

-- Proyectos:
INSERT INTO `proyectos` (`id`, `created_at`, `updated_at`, `nombre`, `fecha_inicio`, `fecha_termino`, `descripcion`, `hora_trabajo`, `docs_adjuntos`, 
	`fk_prioridad`, `fk_estado`, `creado_por_nombre_grupo_usuarios`, `desarrollador_asignados`, `activo`) VALUES 
	('1', current_timestamp(), current_timestamp(), 'proyecto 1', current_timestamp(), NULL, 'Se desarrolla app web 01', '0', NULL, '3', '1', 'Super Administrador', NULL, '1');
INSERT INTO `proyectos` (`id`, `created_at`, `updated_at`, `nombre`, `fecha_inicio`, `fecha_termino`, `descripcion`, `hora_trabajo`, `docs_adjuntos`, 
	`fk_prioridad`, `fk_estado`, `creado_por_nombre_grupo_usuarios`, `desarrollador_asignados`, `activo`) VALUES 
	('2', current_timestamp(), current_timestamp(), 'Proyecto 2', current_timestamp(), NULL, 'Se debe hacer una app escritorio junto con su api', '0', NULL, '1', '1', 'Administrador', NULL, '1');

-- Tareas
INSERT INTO `tareas` (`id`, `created_at`, `updated_at`, `nombre`, `fecha_inicio`, `fecha_termino`, `descripcion`, `hora_trabajo`, `docs_adjuntos`, 
	`fk_tipo_tareas`, `fk_prioridad_tareas`, `fk_estado_tareas`, `creado_por_nombre_grupo_usuarios`, `fk_desarrollador_asignado`, `activo`) VALUES 
	('1', current_timestamp(), current_timestamp(), 'Crear autenticacion', current_timestamp(), NULL, 'Crear login', '0', NULL, '3', '3', '1', 'Super Administrador', '3', '1');
INSERT INTO `tareas` (`id`, `created_at`, `updated_at`, `nombre`, `fecha_inicio`, `fecha_termino`, `descripcion`, `hora_trabajo`, `docs_adjuntos`, 
	`fk_tipo_tareas`, `fk_prioridad_tareas`, `fk_estado_tareas`, `creado_por_nombre_grupo_usuarios`, `fk_desarrollador_asignado`, `activo`) VALUES 
	('2', current_timestamp(), current_timestamp(), 'Crear app de windows forms', current_timestamp(), NULL, 'Crear base app escritorio', '0', NULL, '2', '2', '1', 'Administrador', '6', '1');

-- Comentarios Proyectos
INSERT INTO `comentarios_proyecto` (`id`, `created_at`, `updated_at`, `descripcion`, `docs_adjuntos`, `fk_usuario`, `fk_proyecto`, `activo`) VALUES 
	('1', current_timestamp(), current_timestamp(), 'agregar plugins necesarios', NULL, '1', '1', '1');
INSERT INTO `comentarios_proyecto` (`id`, `created_at`, `updated_at`, `descripcion`, `docs_adjuntos`, `fk_usuario`, `fk_proyecto`, `activo`) VALUES 
	('2', current_timestamp(), current_timestamp(), 'Rutas de la api: https://tuapi.dominio.ejemplo', NULL, '2', '2', '1');

-- Comentarios Tareas
INSERT INTO `comentarios_tarea` (`id`, `created_at`, `updated_at`, `descripcion`, `docs_adjuntos`, `fk_usuario`, `fk_tarea`, `activo`) VALUES 
	('1', current_timestamp(), current_timestamp(), 'primer comentario basico', NULL, '3', '1', '1');
INSERT INTO `comentarios_tarea` (`id`, `created_at`, `updated_at`, `descripcion`, `docs_adjuntos`, `fk_usuario`, `fk_tarea`, `activo`) VALUES 
	('2', current_timestamp(), current_timestamp(), 'segundo comentario', NULL, '6', '2', '1');

--
-- En este documento se definiran los datos predeterminado en Español
--
-- Fecha del archivo: 31-01-2023
-- Creado por: https://github.com/lgcc-admin
--
-- Actualizado por: 
-- 01-02-2023 https://github.com/lgcc-admin
--
--

-- Actualiza los grupos de usuarios
UPDATE `grupo_usuarios` SET `descripcion` = 'Super Administrador' WHERE `id` = 1;
UPDATE `grupo_usuarios` SET `descripcion` = 'Administrador General' WHERE `id` = 2;
UPDATE `grupo_usuarios` SET `descripcion` = 'Desarrollador' WHERE `id` = 3;
UPDATE `grupo_usuarios` SET `descripcion` = 'Testing QA' WHERE `id` = 4;
UPDATE `grupo_usuarios` SET `descripcion` = 'Cliente' WHERE `id` = 5;

-- Actualiza los estado de proyectos
UPDATE `estado_proyecto` SET `descripcion` = 'Nuevo' WHERE `id` = 1;
UPDATE `estado_proyecto` SET `descripcion` = 'Abierto' WHERE `id` = 2;
UPDATE `estado_proyecto` SET `descripcion` = 'Esperando' WHERE `id` = 3;
UPDATE `estado_proyecto` SET `descripcion` = 'Cerrado' WHERE `id` = 4;
UPDATE `estado_proyecto` SET `descripcion` = 'Cancelado' WHERE `id` = 5;

-- Actualiza la prioridad de proyectos
UPDATE `prioridad_proyecto` SET `descripcion` = 'Bajo' WHERE `id` = 1;
UPDATE `prioridad_proyecto` SET `descripcion` = 'Medio' WHERE `id` = 2;
UPDATE `prioridad_proyecto` SET `descripcion` = 'Alto' WHERE `id` = 3;
UPDATE `prioridad_proyecto` SET `descripcion` = 'Urgente' WHERE `id` = 4;

-- Actualiza los tipos de tareas
UPDATE `tipo_tarea` SET `descripcion` = 'Idea' WHERE `id` = 1;
UPDATE `tipo_tarea` SET `descripcion` = 'Tarea' WHERE `id` = 2;
UPDATE `tipo_tarea` SET `descripcion` = 'Cambio' WHERE `id` = 3;
UPDATE `tipo_tarea` SET `descripcion` = 'Bug' WHERE `id` = 4;

-- Actualiza los estado de tareas
UPDATE `estado_tarea` SET `descripcion` = 'Nuevo' WHERE `id` = 1;
UPDATE `estado_tarea` SET `descripcion` = 'Abierta' WHERE `id` = 2;
UPDATE `estado_tarea` SET `descripcion` = 'Esperando' WHERE `id` = 3;
UPDATE `estado_tarea` SET `descripcion` = 'Finalizada' WHERE `id` = 4;
UPDATE `estado_tarea` SET `descripcion` = 'Cancelado' WHERE `id` = 5;

-- Actualiza la prioridad de tareas
UPDATE `prioridad_tarea` SET `descripcion` = 'Bajo' WHERE `id` = 1;
UPDATE `prioridad_tarea` SET `descripcion` = 'Medio' WHERE `id` = 2;
UPDATE `prioridad_tarea` SET `descripcion` = 'Alto' WHERE `id` = 3;
UPDATE `prioridad_tarea` SET `descripcion` = 'Urgente' WHERE `id` = 4;

-- Actualiza la configuración de la plataforma general
UPDATE `config_plataforma_general` SET `idioma_defecto` = 'spanish' WHERE `id` = 1;
UPDATE `config_plataforma_general` SET `zona_horaria` = 'America/Santiago' WHERE `id` = 1;
UPDATE `config_plataforma_general` SET `formato_fecha` = 'd/m/Y' WHERE `id` = 1;
UPDATE `config_plataforma_general` SET `formato_fecha_hora` = 'd/m/Y H:i:s' WHERE `id` = 1;
UPDATE `config_plataforma_general` SET `primer_dia_semana` = 'Lunes' WHERE `id` = 1;
UPDATE `config_plataforma_general` SET `integrado_por` = 'Ingegrado por ADMProjectsFree' WHERE `id` = 1;
UPDATE `config_plataforma_general` SET `lang_html` = 'es' WHERE `id` = 1;

-- Actualiza el idioma de los usuarios
ALTER TABLE `usuarios` CHANGE `idioma_defecto` `idioma_defecto` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'spanish';

-- Actualiza la configuración de modulos
UPDATE `config_modulos` 
	SET `nombre` = 'Configuración de Correo', 
		`descripcion` = 'En esta tabla se definirá la configuración del correo por defecto para notificar a los asignados de proyectos y tareas' 
	WHERE `config_modulos`.`id` = 1;
UPDATE `config_modulos` 
	SET `nombre` = 'Configuración de Plataforma', 
		`descripcion` = 'En esta tabla se definirá la configuración general de la plataforma en su version actual' 
	WHERE `config_modulos`.`id` = 2;
UPDATE `config_modulos` 
	SET `nombre` = 'Usuarios', 
		`descripcion` = 'En esta tabla se definirán los datos de los usuarios del sistema' 
	WHERE `config_modulos`.`id` = 3;
UPDATE `config_modulos` 
	SET `nombre` = 'Proyectos', 
		`descripcion` = 'En esta tabla se definirán los proyectos a desarrollar en la organización' 
	WHERE `config_modulos`.`id` = 4;
UPDATE `config_modulos` 
	SET `nombre` = 'Tareas', 
		`descripcion` = 'En esta tabla se definirán las tareas de los proyectos actuales' 
	WHERE `config_modulos`.`id` = 5;
UPDATE `config_modulos` 
	SET `nombre` = 'Comentarios de Proyectos', 
		`descripcion` = 'En esta tabla se definirán los comentarios de los proyectos actuales' 
	WHERE `config_modulos`.`id` = 6;
UPDATE `config_modulos` 
	SET `nombre` = 'Comentarios de Tareas', 
		`descripcion` = 'En esta tabla se definirán los comentarios de las tareas actuales' 
	WHERE `config_modulos`.`id` = 7;
UPDATE `config_modulos` 
	SET `nombre` = 'Clientes', 
		`descripcion` = 'En esta tabla se definirán los clientes actuales' 
	WHERE `config_modulos`.`id` = 8;
UPDATE `config_modulos` 
	SET `nombre` = 'Calendario', 
		`descripcion` = 'En esta tabla se definirán reuniones entre otros' 
	WHERE `config_modulos`.`id` = 9;

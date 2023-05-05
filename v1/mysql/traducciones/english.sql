--
-- This document will define the default data in English
--
-- File date: 31-01-2023
-- Created by: https://github.com/lgcc-admin
--
-- Updated by: 
-- 01-02-2023 https://github.com/lgcc-admin
--
--

-- Update user groups
UPDATE `grupo_usuarios` SET `descripcion` = 'Super Admin' WHERE `id` = 1;
UPDATE `grupo_usuarios` SET `descripcion` = 'General Admin' WHERE `id` = 2;
UPDATE `grupo_usuarios` SET `descripcion` = 'Developer' WHERE `id` = 3;
UPDATE `grupo_usuarios` SET `descripcion` = 'QA Testing' WHERE `id` = 4;
UPDATE `grupo_usuarios` SET `descripcion` = 'Client' WHERE `id` = 5;

-- Update project status
UPDATE `estado_proyecto` SET `descripcion` = 'New' WHERE `id` = 1;
UPDATE `estado_proyecto` SET `descripcion` = 'Open' WHERE `id` = 2;
UPDATE `estado_proyecto` SET `descripcion` = 'Waiting' WHERE `id` = 3;
UPDATE `estado_proyecto` SET `descripcion` = 'Closed' WHERE `id` = 4;
UPDATE `estado_proyecto` SET `descripcion` = 'Cancelled' WHERE `id` = 5;

-- Update project priority
UPDATE `prioridad_proyecto` SET `descripcion` = 'Low' WHERE `id` = 1;
UPDATE `prioridad_proyecto` SET `descripcion` = 'Medium' WHERE `id` = 2;
UPDATE `prioridad_proyecto` SET `descripcion` = 'High' WHERE `id` = 3;
UPDATE `prioridad_proyecto` SET `descripcion` = 'Urgent' WHERE `id` = 4;

-- Update task types
UPDATE `tipo_tarea` SET `descripcion` = 'Idea' WHERE `id` = 1;
UPDATE `tipo_tarea` SET `descripcion` = 'Task' WHERE `id` = 2;
UPDATE `tipo_tarea` SET `descripcion` = 'Change' WHERE `id` = 3;
UPDATE `tipo_tarea` SET `descripcion` = 'Bug' WHERE `id` = 4;

-- Update task status
UPDATE `estado_tarea` SET `descripcion` = 'New' WHERE `id` = 1;
UPDATE `estado_tarea` SET `descripcion` = 'Open' WHERE `id` = 2;
UPDATE `estado_tarea` SET `descripcion` = 'Waiting' WHERE `id` = 3;
UPDATE `estado_tarea` SET `descripcion` = 'Done' WHERE `id` = 4;
UPDATE `estado_tarea` SET `descripcion` = 'Cancelled' WHERE `id` = 5;

-- Update task priority
UPDATE `prioridad_tarea` SET `descripcion` = 'Low' WHERE `id` = 1;
UPDATE `prioridad_tarea` SET `descripcion` = 'Medium' WHERE `id` = 2;
UPDATE `prioridad_tarea` SET `descripcion` = 'High' WHERE `id` = 3;
UPDATE `prioridad_tarea` SET `descripcion` = 'Urgent' WHERE `id` = 4;

-- Update general platform settings
UPDATE `config_plataforma_general` SET `idioma_defecto` = 'english' WHERE `id` = 1;
UPDATE `config_plataforma_general` SET `zona_horaria` = 'America/New_York' WHERE `id` = 1;
UPDATE `config_plataforma_general` SET `formato_fecha` = 'm/d/Y' WHERE `id` = 1;
UPDATE `config_plataforma_general` SET `formato_fecha_hora` = 'm/d/Y H:i:s' WHERE `id` = 1;
UPDATE `config_plataforma_general` SET `primer_dia_semana` = 'Monday' WHERE `id` = 1;
UPDATE `config_plataforma_general` SET `integrado_por` = 'Integrated by ADMProjectsFree' WHERE `id` = 1;
UPDATE `config_plataforma_general` SET `lang_html` = 'en' WHERE `id` = 1;

-- Update the language of the users
ALTER TABLE `usuarios` CHANGE `idioma_defecto` `idioma_defecto` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'english';

-- Update module configuration
UPDATE `config_modulos` 
	SET `nombre` = 'Mail Settings', 
		`descripcion` = 'In this table the default email settings will be defined to notify project and task assignees' 
	WHERE `config_modulos`.`id` = 1;
UPDATE `config_modulos` 
	SET `nombre` = 'Platform Configuration', 
		`descripcion` = 'This table defines the general configuration of the platform in its current version' 
	WHERE `config_modulos`.`id` = 2;
UPDATE `config_modulos` 
	SET `nombre` = 'Users', 
		`descripcion` = 'In this table the data of the users of the system will be defined.' 
	WHERE `config_modulos`.`id` = 3;
UPDATE `config_modulos` 
	SET `nombre` = 'Projects', 
		`descripcion` = 'In this table the projects to be developed in the organization will be defined.' 
	WHERE `config_modulos`.`id` = 4;
UPDATE `config_modulos` 
	SET `nombre` = 'Tasks', 
		`descripcion` = 'In this table the tasks of the current projects will be defined' 
	WHERE `config_modulos`.`id` = 5;
UPDATE `config_modulos` 
	SET `nombre` = 'Project Comments', 
		`descripcion` = 'In this table the comments of the current projects will be defined' 
	WHERE `config_modulos`.`id` = 6;
UPDATE `config_modulos` 
	SET `nombre` = 'Task Comments', 
		`descripcion` = 'In this table the comments of the current tasks will be defined' 
	WHERE `config_modulos`.`id` = 7;
UPDATE `config_modulos` 
	SET `nombre` = 'Customers', 
		`descripcion` = 'Current customers will be defined in this table' 
	WHERE `config_modulos`.`id` = 8;
UPDATE `config_modulos` 
	SET `nombre` = 'Calendar', 
		`descripcion` = 'This table will define meetings among others' 
	WHERE `config_modulos`.`id` = 9;

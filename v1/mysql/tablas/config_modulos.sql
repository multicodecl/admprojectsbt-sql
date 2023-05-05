--
-- En esta tabla se definira la configuración de los modulos por defecto
--
-- Fecha del archivo: 01-02-2023
-- Creado por: https://github.com/lgcc-admin
--
-- Actualizado por: 
-- 01-02-2023 https://github.com/lgcc-admin
--
-- nombre, Guarda el nombre del modulo por defecto a usar
-- descripcion, Guarda la descripcion por defecto a usar
-- modulo_activo,  Guarda si el modulo esta activo o no
-- referencia_previa, Guarda id de los modulos necesariamente activados
--
-- Defecto: Configuración de Correo, Configuración de Plataforma, Usuarios, Proyectos, Tareas,
--          Comentarios de Proyectos, Comentarios de Tareas, Clientes, Calendario
--

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

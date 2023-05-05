--
-- En esta tabla se definiran los datos de los usuarios del sistema
--
-- Fecha del archivo: 30-01-2023
-- Creado por: https://github.com/lgcc-admin
--
-- Actualizado por: 
-- 30-01-2023 https://github.com/lgcc-admin
--
-- id_usuario_nombre, Guarda el nombre de usuario para ingresar al sistema
-- password, Guarda la contraseña encriptada
-- nombres, Guarda el/los nombre del usuario actual
-- apellidos, Guarda el/los apellido deñ usuario actual
-- imagen_base64, Guarda hash base64 de su foto de perfil
-- email, Guarda el email del usuario al cual se le va a notificar de las asignaciones
-- idioma_defecto, Guarda el idioma por defecto del sistema
-- fk_grupo_usuarios, Guarda el id del grupo de usuarios al que pertenece
-- acceso_menu_proyectos, Guarda si tiene acceso al menu de proyectos
-- acceso_menu_tareas, Guarda si tiene acceso al menu de tareas
-- dashboard_cant_proyectos, Guarda si tiene acceso al dashboard estadistica cantidad de proyectos asignados
-- dashboard_cant_tarea, Guarda si tiene acceso al dashboard estadistica cantidad de tareas asignadas
--
-- Defecto: Ninguno
--

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

--
-- En esta tabla se definiran los tipos de tareas asignadas a los proyectos
--
-- Fecha del archivo: 24-01-2023
-- Creado por: https://github.com/lgcc-admin
--
-- Actualizado por: 
-- 24-01-2023 https://github.com/lgcc-admin
--
-- descripcion, Guarda la descripción del tipo de tarea a realizar
--
-- Defecto: Idea, Tarea, Cambio, Bug
--

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

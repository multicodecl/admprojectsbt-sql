--
-- En esta tabla se definiran la prioridad de las tareas actuales
--
-- Fecha del archivo: 24-01-2023
-- Creado por: https://github.com/lgcc-admin
--
-- Actualizado por: 
-- 24-01-2023 https://github.com/lgcc-admin
--
-- descripcion, Guarda la descripción de la prioridad de tareas
--
-- Defecto: Bajo, Medio, Alto, Urgente
--

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

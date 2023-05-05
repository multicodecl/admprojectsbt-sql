--
-- En esta tabla se definiran los estados de las tareas actuales
--
-- Fecha del archivo: 24-01-2023
-- Creado por: https://github.com/lgcc-admin
--
-- Actualizado por: 
-- 24-01-2023 https://github.com/lgcc-admin
--
-- descripcion, Guarda la descripción del estado de la tarea
--
-- Defecto: Nuevo, Abierta, Esperando, Finalizada, Cancelado
--

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

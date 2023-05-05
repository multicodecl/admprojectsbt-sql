--
-- En esta tabla se definiran los estados de los proyectos actuales
--
-- Fecha del archivo: 23-01-2023
-- Creado por: https://github.com/lgcc-admin
--
-- Actualizado por: 
-- 23-01-2023 https://github.com/lgcc-admin
--
-- descripcion, Guarda la descripción del estado del proyecto
--
-- Defecto: Nuevo, Abierto, Esperando, Cerrado, Cancelado
--

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

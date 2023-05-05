--
-- En esta tabla se definiran los grupos de usuarios
--
-- Fecha del archivo: 23-01-2023
-- Creado por: https://github.com/lgcc-admin
--
-- Actualizado por: 
-- 23-01-2023 https://github.com/lgcc-admin
--
-- descripcion, Guarda la descripción del grupo
-- es_predeterminado, Define si es predeterminado el grupo para los usuarios nuevos
-- ldap_defecto, Define si acceder a la información que está almacenada de forma centralizada en una red
-- numero_orden, Define en que orden se mostraran los grupos
--
-- Defecto: Super Administrador, Administrador General, Desarrollador, Testing QA, Cliente
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

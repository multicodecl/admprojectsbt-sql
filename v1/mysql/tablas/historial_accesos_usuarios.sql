--
-- En esta tabla se definiran los ingresos de los usuarios actuales
--
-- Fecha del archivo: 30-01-2023
-- Creado por: https://github.com/lgcc-admin
--
-- Actualizado por: 
-- 30-01-2023 https://github.com/lgcc-admin
--
-- tipo, Guarda el tipo acceso del usuario / Acceso Completado
-- ip, Guarda la ip del servidor local de donde se conecta
-- id_usuario_nombre, Guarda el nombre de usuario que ingreso al sistema
-- email, Guarda el email del usuario
-- fk_grupo_usuarios, Guarda el id del grupo de usuarios al que pertenece
-- limpiado_admin, Guarda estado a visto por el admin, limpiado para no volver a mostrar
--
-- Defecto: Ninguno
--

CREATE TABLE `historial_accesos_usuarios` (
  `id` SMALLINT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` DATETIME NOT NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
  
  `tipo` VARCHAR(100) NOT NULL,
  `ip` VARCHAR(50) NOT NULL,
  `id_usuario_nombre` VARCHAR(50) NOT NULL,
  `email` VARCHAR(150) NOT NULL,
  
  `fk_grupo_usuarios` SMALLINT(6) NOT NULL,
  `fk_usuarios` INT(11) NOT NULL,
  
  `limpiado_admin` TINYINT(4) NOT NULL DEFAULT 1,
  
  `activo` TINYINT(4) NOT NULL DEFAULT 1
);

ALTER TABLE `historial_accesos_usuarios`
	ADD CONSTRAINT `fk_grupo_usuarios_historial_accesos_usuarios` FOREIGN KEY (`fk_grupo_usuarios`) REFERENCES `grupo_usuarios` (`id`);
ALTER TABLE `historial_accesos_usuarios`
	ADD CONSTRAINT `fk_usuarios_historial_accesos_usuarios` FOREIGN KEY (`fk_usuarios`) REFERENCES `usuarios` (`id`);

ALTER TABLE `historial_accesos_usuarios` ADD INDEX(`tipo`);
ALTER TABLE `historial_accesos_usuarios` ADD INDEX(`email`);
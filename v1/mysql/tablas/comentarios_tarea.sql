--
-- En esta tabla se definiran los comentarios de las tareas actuales
--
-- Fecha del archivo: 31-01-2023
-- Creado por: https://github.com/lgcc-admin
--
-- Actualizado por: 
-- 31-01-2023 https://github.com/lgcc-admin
--
-- descripcion, Guarda la descripción del comentario de la tarea
-- docs_adjuntos, Guarda la lista de documentos adjuntos
-- fk_usuario, Guarda el usuario del comentario
-- fk_tarea, Guarda la tarea del comentario
--
-- Defecto: Ninguno
--

CREATE TABLE `comentarios_tarea` (
  `id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` DATETIME NOT NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
  
  `descripcion` TEXT NOT NULL,
  `docs_adjuntos` TEXT NULL,
  
  `fk_usuario` INT(11) NOT NULL,
  `fk_tarea` INT(11) NOT NULL,
  
  `activo` TINYINT(4) NOT NULL DEFAULT 1
);

ALTER TABLE `comentarios_tarea`
	ADD CONSTRAINT `fk_usuario_comentarios_tarea` FOREIGN KEY (`fk_usuario`) REFERENCES `usuarios` (`id`);
ALTER TABLE `comentarios_tarea`
	ADD CONSTRAINT `fk_tarea_comentarios_tarea` FOREIGN KEY (`fk_tarea`) REFERENCES `tareas` (`id`);

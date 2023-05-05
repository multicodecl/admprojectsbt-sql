--
-- En esta tabla se definiran las tareas de los proyectos actuales
--
-- Fecha del archivo: 31-01-2023
-- Creado por: https://github.com/lgcc-admin
--
-- Actualizado por: 
-- 31-01-2023 https://github.com/lgcc-admin
--
-- nombre, Guarda el nombre de la tarea
-- fecha_inicio, Guarda la fecha de inicio de la tarea
-- fecha_termino, Guarda la fecha de termino de la tarea
-- descripcion, Guarda la descripción breve de la tarea
-- hora_trabajo, Guarda la hora de trabajo hecho de la tarea asignada
-- docs_adjuntos, Guarda la lista de documentos adjuntos
-- fk_tipo_tareas, Guarda el tipo de tarea
-- fk_prioridad_tarea, Guarda la prioridad de la tarea
-- fk_estado_tareas, Guarda el estado de la tarea
-- creado_por_nombre_grupo_usuarios, Guarda el nombre de grupo que creo la tarea
-- desarrollador_asignados, Guarda el id de el usuario asignado
--
-- Defecto: Ninguno
--

CREATE TABLE `tareas` (
  `id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` DATETIME NOT NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
  
  `nombre` VARCHAR(150) NOT NULL,
  `fecha_inicio` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `fecha_termino` DATETIME NULL,
  `descripcion` TEXT NOT NULL,
  `hora_trabajo` SMALLINT(6) NOT NULL DEFAULT 0,
  
  `docs_adjuntos` TEXT NULL,
  
  `fk_tipo_tareas` SMALLINT(6) NOT NULL,
  `fk_prioridad_tareas` SMALLINT(6) NOT NULL,
  `fk_estado_tareas` SMALLINT(6) NOT NULL,
  
  `creado_por_nombre_grupo_usuarios` VARCHAR(100) NOT NULL,
  
  `fk_desarrollador_asignado` INT(11) NOT NULL,
  
  `activo` TINYINT(4) NOT NULL DEFAULT 1
);

ALTER TABLE `tareas`
	ADD CONSTRAINT `fk_tipo_tareas_tareas` FOREIGN KEY (`fk_tipo_tareas`) REFERENCES `tipo_tarea` (`id`);
ALTER TABLE `tareas`
	ADD CONSTRAINT `fk_prioridad_tareas_tareas` FOREIGN KEY (`fk_prioridad_tareas`) REFERENCES `prioridad_tarea` (`id`);
ALTER TABLE `tareas`
	ADD CONSTRAINT `fk_estado_tareas_estado_tarea` FOREIGN KEY (`fk_estado_tareas`) REFERENCES `estado_tarea` (`id`);
ALTER TABLE `tareas`
	ADD CONSTRAINT `fk_desarrollador_asignado_tareas` FOREIGN KEY (`fk_desarrollador_asignado`) REFERENCES `usuarios` (`id`);

ALTER TABLE `tareas` ADD INDEX(`creado_por_nombre_grupo_usuarios`);

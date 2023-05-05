--
-- En esta tabla se definiran los proyectos a desarrollar en la organización
--
-- Fecha del archivo: 31-01-2023
-- Creado por: https://github.com/lgcc-admin
--
-- Actualizado por: 
-- 31-01-2023 https://github.com/lgcc-admin
--
-- nombre, Guarda la descripción del estado de la tarea
-- fecha_inicio, Guarda la fecha de inicio de el proyecto
-- fecha_termino, Guarda la fecha de termino del proyecto
-- descripcion, Guarda la descripción breve del proyecto
-- hora_trabajo, Guarda la hora de trabajo hecho por las tareas asignadas
-- docs_adjuntos, Guarda la lista de documentos adjuntos
-- fk_prioridad, Guarda la prioridad del proyecto
-- fk_estado, Guarda el estado actual del proyecto
-- creado_por_nombre_grupo_usuarios, Guarda el nombre de grupo que creo el proyecto
-- desarrollador_asignados, Guarda los id de los usuarios asignados
-- 
-- Defecto: Ninguno
--

CREATE TABLE `proyectos` (
  `id` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` DATETIME NOT NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
  
  `nombre` VARCHAR(100) NOT NULL,
  `fecha_inicio` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `fecha_termino` DATETIME NULL,
  `descripcion` TEXT NOT NULL,
  `hora_trabajo` SMALLINT(6) NOT NULL DEFAULT 0,
  
  `docs_adjuntos` TEXT NULL,
  
  `fk_prioridad` SMALLINT(6) NOT NULL,
  `fk_estado` SMALLINT(6) NOT NULL,
  
  `creado_por_nombre_grupo_usuarios` VARCHAR(100) NOT NULL,
  `desarrollador_asignados` TEXT NULL,
  
  `activo` TINYINT(4) NOT NULL DEFAULT 1
);

ALTER TABLE `proyectos`
	ADD CONSTRAINT `fk_prioridad_proyectos` FOREIGN KEY (`fk_prioridad`) REFERENCES `prioridad_proyecto` (`id`);
ALTER TABLE `proyectos`
	ADD CONSTRAINT `fk_estado_proyectos` FOREIGN KEY (`fk_estado`) REFERENCES `estado_proyecto` (`id`);

ALTER TABLE `proyectos` ADD INDEX(`creado_por_nombre_grupo_usuarios`);

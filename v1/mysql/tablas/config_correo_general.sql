--
-- En esta tabla se definira la configuración del correo por defecto para notificar a los asignados de proyectos y tareas
--
-- Fecha del archivo: 24-01-2023
-- Creado por: https://github.com/lgcc-admin
--
-- Actualizado por: 
-- 24-01-2023 https://github.com/lgcc-admin
--
-- correo, Guarda el correo por defecto a usar
-- password, Guarda la contraseña por defecto a usar encriptada
-- nombre_servidor_email, Guarda el nombre del servidor de correo por defecto a usar
-- numero_puerto_smtp, Guarda el puerto por defecto a usar / 993, 995, 587, otros
-- usa_smtp, Guarda el protocolo a ocupar por defecto a usar
-- encriptacion_smtp, Guarda si hay encriptación smtp por defecto a usar
-- modo_depuracion, Guarda si hay modo de depuración por defecto a usar
-- desabilitado_actual, Guarda si la configuración actual esta activa o no
--
-- Defecto: Ninguno
--

CREATE TABLE `config_correo_general` (
  `id` SMALLINT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` DATETIME NOT NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
  
  `correo` VARCHAR(150) NOT NULL,
  `password` VARCHAR(150) NOT NULL,
  `nombre_servidor_email` VARCHAR(150) NOT NULL,
  `numero_puerto_smtp` VARCHAR(10) NOT NULL,
  
  `usa_smtp` TINYINT(4) NOT NULL DEFAULT 0,
  `encriptacion_smtp` TINYINT(4) NOT NULL DEFAULT 0,
  `modo_depuracion` TINYINT(4) NOT NULL DEFAULT 0,
  
  `desabilitado_actual` TINYINT(4) NOT NULL DEFAULT 0,
  
  `activo` TINYINT(4) NOT NULL DEFAULT 1
);

INSERT INTO `config_correo_general` (`id`, `correo`, `password`, `nombre_servidor_email`, `numero_puerto_smtp`, `usa_smtp`, 
	`encriptacion_smtp`, `modo_depuracion`, `desabilitado_actual`, `activo`) VALUES
(1, 'tuemail@dominio.ejemplo', '81dc9bdb52d04dc20036dbd8313ed055', 'mail.nombre_servidor.ejemplo', '587',  1, 0, 0, 1, 1);

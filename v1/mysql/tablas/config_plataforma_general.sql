--
-- En esta tabla se definira la configuración general de la plataforma en su version actual
--
-- Fecha del archivo: 24-01-2023
-- Creado por: https://github.com/lgcc-admin
--
-- Actualizado por: 
-- 24-01-2023 https://github.com/lgcc-admin
--
-- version_web, Guarda la version actual del proyecto en producción
-- titulo_plataforma, Guarda el titulo de la plataforma
-- abreviatura_plataforma, Guarda una abreviatura para plataforma (modificable)
-- logo_base64, Guarda el logo en base64 para carga rápida
-- url_logo, Guarda el link de la ubicación del logo
-- favicon32, Guarda el favicon del la plataforma
-- texto_copyright, Guarda el copyright de la plataforma (no mofificable)
-- idioma_defecto, Guarda el idioma a ocupar por defecto en la plataforma
-- theme_defecto, Guarda el theme por defecto si es definido uno
-- zona_horaria, Guarda la zona horaria de la persona que ocupe la plataforma
-- filas_paginas, Guarda cuantas filas debe mostrar las tablas
-- formato_fecha, Guarda el formato de la fecha estándar
-- formato_fecha_hora, Guarda el formato de la fecha estándar completa
-- primer_dia_semana, Guarda el primer dia de la semana por defecto de la plataforma
-- integrado_por, Guarda una referencia de la integración de la plataforma
-- actualizaciones, Guarda si desea recibir una alerta de actualización si se encuentra disponible
-- charset_html, Guarda el charset utilizado en la plataforma por defecto
-- lang_html, Guarda el lang etiqueta html definido de la plataforma
--
-- Defecto: 1, 1.0, ADMProjectsBT, ADMProjectsBT, NULL, NULL, NULL, Copyright ADMProjectsBT. All Right Reserved, spanish, NULL,
-- 			America/Santiago, 10, m/d/Y, m/d/Y H:i:s, Lunes, Ingegrado por ADMProjectsBT, 1, 1
--

CREATE TABLE `config_plataforma_general` (
  `id` SMALLINT(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` DATETIME NOT NULL ON UPDATE CURRENT_TIMESTAMP() DEFAULT CURRENT_TIMESTAMP(),
  
  `version_web` VARCHAR(50) NOT NULL,
  `titulo_plataforma` VARCHAR(100) NOT NULL,
  `abreviatura_plataforma` VARCHAR(100) NOT NULL,
  `logo_base64` TEXT NULL,
  `url_logo` TEXT NULL,
  `favicon32` TEXT NULL,
  `texto_copyright` VARCHAR(100) NOT NULL,
  `idioma_defecto` VARCHAR(50) NOT NULL,
  `theme_defecto` TEXT NOT NULL,
  `zona_horaria` VARCHAR(100) NOT NULL,
  `filas_paginas` VARCHAR(10) NOT NULL,
  `formato_fecha` VARCHAR(20) NOT NULL,
  `formato_fecha_hora` VARCHAR(50) NOT NULL,
  `primer_dia_semana` VARCHAR(50) NOT NULL,
  `integrado_por` VARCHAR(100) NOT NULL,
  
  `actualizaciones` TINYINT(4) NOT NULL DEFAULT 1,
  
  `charset_html` VARCHAR(50) NOT NULL,
  `lang_html` VARCHAR(50) NOT NULL,
  
  `activo` TINYINT(4) NOT NULL DEFAULT 1
);

INSERT INTO `config_plataforma_general` (`id`, `created_at`, `updated_at`, `version_web`, `titulo_plataforma`, `abreviatura_plataforma`, `logo_base64`, 
		`url_logo`, `favicon32`, `texto_copyright`, `idioma_defecto`, `theme_defecto`, `zona_horaria`, `filas_paginas`, `formato_fecha`, 
		`formato_fecha_hora`, `primer_dia_semana`, `integrado_por`, `actualizaciones`, `charset_html`, `lang_html`, `activo`) VALUES 
	('1', CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '1.0', 'ADMProjectsBT', 'ADMProjectsBT', NULL, NULL, NULL, 
	'Copyright ADMProjectsBT. All Right Reserved', 'spanish', '', 'America/Santiago', '10', 'd/m/Y', 'd/m/Y H:i:s', 'Lunes', 
	'Ingegrado por ADMProjectsBT', '1', 'utf-8', 'es', '1');

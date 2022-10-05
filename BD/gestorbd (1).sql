-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-07-2022 a las 19:23:38
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gestorbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_area`
--

CREATE TABLE `tbl_area` (
  `id_area` int(11) NOT NULL,
  `are_nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_area`
--

INSERT INTO `tbl_area` (`id_area`, `are_nombre`) VALUES
(1, 'Estudios de Sistemas Eléctricos'),
(2, 'Diseño e interventoría'),
(3, 'Estudios de coordinación de protecciones'),
(4, 'Calidad de potencia'),
(5, 'Estudios de flujo de Carga y Cortocircuito'),
(6, 'Sistemas de puesta a tierra'),
(7, 'Estudios de estabilidad transitoria'),
(8, 'NEPLAN'),
(9, 'Estudios de conexión'),
(10, 'Gestión humana'),
(11, 'Estudios de arco eléctrico'),
(12, 'Ingeniería Civil'),
(13, 'Estudios de coordinación de aislamiento'),
(14, 'Servicios energéticos'),
(15, 'Construcción de proyectos (EPCs)'),
(16, 'Eficiencia energética'),
(17, 'Ingeniería ambiental'),
(18, 'Compras'),
(19, 'Soluciones integrales de equipos'),
(20, 'Pruebas Automatización y Control'),
(21, 'Administración'),
(22, 'Comercial'),
(23, 'Contabilidad'),
(24, 'Sistemas'),
(25, 'Gestión integral');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estadovacante`
--

CREATE TABLE `tbl_estadovacante` (
  `id_estadovacante` int(10) NOT NULL,
  `est_nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_estadovacante`
--

INSERT INTO `tbl_estadovacante` (`id_estadovacante`, `est_nombre`) VALUES
(1, 'Activa'),
(2, 'Inactiva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_formacion`
--

CREATE TABLE `tbl_formacion` (
  `id_formacion` int(100) NOT NULL,
  `form_tituloname` varchar(100) NOT NULL,
  `form_titulo_profesional` varchar(256) NOT NULL,
  `form_nivel_de_educacion` varchar(30) NOT NULL,
  `form_nombre` varchar(60) NOT NULL,
  `form_conocimientos` varchar(256) NOT NULL,
  `form_fecha_fin` date NOT NULL,
  `usu_id` int(100) NOT NULL,
  `form_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `form_años` int(10) DEFAULT NULL,
  `form_meses` int(10) DEFAULT NULL,
  `form_dias` int(10) DEFAULT NULL,
  `form_comparar` int(10) DEFAULT NULL,
  `Otros_conocimientos` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_formacion`
--

INSERT INTO `tbl_formacion` (`id_formacion`, `form_tituloname`, `form_titulo_profesional`, `form_nivel_de_educacion`, `form_nombre`, `form_conocimientos`, `form_fecha_fin`, `usu_id`, `form_time`, `form_años`, `form_meses`, `form_dias`, `form_comparar`, `Otros_conocimientos`) VALUES
(1, 'Asistente administrativo', '../web/certificadodeestudio/plantilla_formato_ieee830.doc', 'Universidad / Carrera técnica', 'SENA', 'Word', '2021-12-15', 3, '2022-06-28 20:10:42', 0, 6, 0, 195, NULL),
(2, 'TI', '../web/certificadodeestudio/Suggested_answer_sheet (1).pdf', 'Universidad / Carrera técnica', 'SENA', 'Servidores Ofimatica', '2022-01-03', 5, '2022-06-29 15:05:22', 0, 5, 0, 177, NULL),
(3, 'Redes', '../web/certificadodeestudio/Suggested_answer_sheet (1).pdf', 'Universidad / Carrera tecnológ', 'SENA', 'Redes', '2022-02-01', 5, '2022-06-29 15:06:12', 0, 4, 0, 148, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_historiadetalle`
--

CREATE TABLE `tbl_historiadetalle` (
  `id_historiadetalle` int(11) NOT NULL,
  `id_hist` int(30) DEFAULT NULL,
  `usu_id` int(100) DEFAULT NULL,
  `id_area` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_historiadetalle`
--

INSERT INTO `tbl_historiadetalle` (`id_historiadetalle`, `id_hist`, `usu_id`, `id_area`) VALUES
(1, 1, 3, 5),
(2, 2, 5, 5),
(3, 2, 5, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_historial_de_trabajo`
--

CREATE TABLE `tbl_historial_de_trabajo` (
  `id_hist` int(30) NOT NULL,
  `hist_certificado` varchar(256) DEFAULT NULL,
  `hist_cargo` varchar(90) NOT NULL,
  `hist_empresa` varchar(30) NOT NULL,
  `hist_descripcion` varchar(1000) DEFAULT NULL,
  `hist_pais` varchar(60) NOT NULL,
  `hist_ciudad` varchar(60) NOT NULL,
  `hist_fecha_inicio` date NOT NULL,
  `hist_fecha_fin` date DEFAULT NULL,
  `hist_trabajoactual` varchar(10) DEFAULT NULL,
  `usu_id` int(100) NOT NULL,
  `hist_añosxp` int(10) DEFAULT NULL,
  `hist_mesxp` int(10) DEFAULT NULL,
  `hist_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_historial_de_trabajo`
--

INSERT INTO `tbl_historial_de_trabajo` (`id_hist`, `hist_certificado`, `hist_cargo`, `hist_empresa`, `hist_descripcion`, `hist_pais`, `hist_ciudad`, `hist_fecha_inicio`, `hist_fecha_fin`, `hist_trabajoactual`, `usu_id`, `hist_añosxp`, `hist_mesxp`, `hist_time`) VALUES
(1, '../web/certificadodetrabajo/plantilla_formato_ieee830.doc', 'Asistente administrativo', 'Gers', '                          Varias', 'Colombia', 'Cali', '2022-01-03', '2022-06-30', '', 3, 0, 0, '2022-06-28 20:12:37'),
(2, '../web/certificadodetrabajo/Glossary_2.pdf', 'Auxiliar de sistemas', 'Coca-cola', 'Mantenimiento de equipos e impresoras                          ', 'Colombia', 'Cali', '2022-01-10', '2022-05-31', 'si', 5, 0, 0, '2022-06-29 15:08:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_idiomas`
--

CREATE TABLE `tbl_idiomas` (
  `id_idioma` int(30) NOT NULL,
  `idi_nombre` varchar(30) NOT NULL,
  `idi_nivel` varchar(60) NOT NULL,
  `usu_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_idiomas`
--

INSERT INTO `tbl_idiomas` (`id_idioma`, `idi_nombre`, `idi_nivel`, `usu_id`) VALUES
(1, 'Inglés', 'Avanzado', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_rol`
--

CREATE TABLE `tbl_rol` (
  `rol_id` int(100) NOT NULL,
  `rol_nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_rol`
--

INSERT INTO `tbl_rol` (`rol_id`, `rol_nombre`) VALUES
(1, 'administrador'),
(2, 'usuario'),
(3, 'invitado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_seleccionado`
--

CREATE TABLE `tbl_seleccionado` (
  `id_seleccionado` int(10) NOT NULL,
  `selec_nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_seleccionado`
--

INSERT INTO `tbl_seleccionado` (`id_seleccionado`, `selec_nombre`) VALUES
(1, 'Seleccionado'),
(2, 'No seleccionado'),
(3, 'En proceso'),
(4, 'Aceptado para entrevista'),
(5, 'Cancelado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario`
--

CREATE TABLE `tbl_usuario` (
  `usu_id` int(100) NOT NULL,
  `usu_nombre` varchar(50) NOT NULL,
  `usu_apellido` varchar(50) NOT NULL,
  `usu_correo` varchar(50) NOT NULL,
  `usu_telefono` varchar(50) NOT NULL,
  `usu_pais_residencia` varchar(10) DEFAULT NULL,
  `usu_residencia` varchar(256) NOT NULL,
  `usu_direccion` varchar(255) NOT NULL,
  `usu_tipo_documento` varchar(50) NOT NULL,
  `usu_documento` varchar(50) NOT NULL,
  `usu_contraseña` varchar(255) NOT NULL,
  `usu_termino` int(10) NOT NULL,
  `rol_id` int(100) NOT NULL,
  `usu_token` varchar(256) DEFAULT NULL,
  `usu_hojadevida` varchar(256) DEFAULT NULL,
  `usu_fechahojadevida` timestamp NULL DEFAULT NULL,
  `usu_matricula` varchar(256) DEFAULT NULL,
  `usu_fechamatricula` timestamp NULL DEFAULT NULL,
  `usu_validarcorreo` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_usuario`
--

INSERT INTO `tbl_usuario` (`usu_id`, `usu_nombre`, `usu_apellido`, `usu_correo`, `usu_telefono`, `usu_pais_residencia`, `usu_residencia`, `usu_direccion`, `usu_tipo_documento`, `usu_documento`, `usu_contraseña`, `usu_termino`, `rol_id`, `usu_token`, `usu_hojadevida`, `usu_fechahojadevida`, `usu_matricula`, `usu_fechamatricula`, `usu_validarcorreo`) VALUES
(1, 'ALBA', 'NARANJO', 'alba.naranjo@gers.com.co', '2132', NULL, 'sdfasdf', 'asfasdfasdfasd', 'asdfasdfasdfasdf', 'asdfasdfas', '$2y$10$cQSstxDCdXUum3oYxXF2teT5Hoo.HGCi.XHb4/IqMc4P70QJoO9Qi', 1, 1, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL, NULL),
(2, 'Prueba ', 'Prueba ', 'alexis-crokis@hotmail.com', '4897000 ', 'Colombia', 'Cali', 'Cra 3a 65-118', 'Cédula ciudadania ', '123456789 ', '$2y$10$vtOyHtiy8092dKJU.31rqOxZNJ76PfW6nL.uSjakwSQ74XhRLiV6S', 1, 2, NULL, '../web/hojas/nuevo_entregables.pdf', '2022-06-24 14:47:02', '../web/carta/tf00002025.docx', '2022-06-24 14:12:29', NULL),
(3, 'Claudia ', 'Salazar ', 'Claudia.salazar@gers.com.co ', '4897000 ', 'Colombia', 'Cali', 'Cra 3a 65-118', 'Cédula ciudadania ', '123456789 ', '$2y$10$vtOyHtiy8092dKJU.31rqOxZNJ76PfW6nL.uSjakwSQ74XhRLiV6S', 1, 2, '356a80e463266027e9121e8', '../web/hojas/plantilla_formato_ieee830.doc', '2022-06-28 20:08:51', '../web/carta/plantilla_formato_ieee830.doc', '2022-06-28 20:09:32', NULL),
(4, 'IVAN ALEXIS ', 'URBINA MELO ', 'ivan.urbina@gers.com.co ', '3007264043 ', 'colombia', 'cali', 'cra67#3a oeste 71', 'trajeta identidad ', '12341234 ', '$2y$10$8aNQDsTiHn24EfxR9dkhduiUVGQrbXLN0xJCxGgnaYygXagjOfknC', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Douglas ', 'Lopez ', 'ti@gers.com.co ', '4897000 ', 'Colombia', 'Cali', 'Calle 3A #65-118', 'Cédula ciudadania ', '1144171444 ', '$2y$10$G88iVHaJ5qcMXDiwr4ezVOINPHW/ECHCZ5ZfWQ.MkUpActGdOVZCy', 1, 2, NULL, '../web/hojas/Evidence_My_ideal_self.pdf', '2022-06-29 15:03:19', '../web/carta/Evidence_My_ideal_self.pdf', '2022-06-29 15:03:25', NULL),
(6, 'Prueba ', 'Prueba ', 'prueba@prueba.com ', '4897000 ', 'Colombia', 'Cali', 'Calle 3 a 65 118', 'Cédula ciudadania ', '123456789 ', '$2y$10$qcsm1OZucXz7xXwpXwtxqO5XCYNPonBcoFqOhALSAe9dL.wkSG5D.', 1, 2, NULL, NULL, NULL, NULL, NULL, 'd9d073a33265119840a2306');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuariovacante`
--

CREATE TABLE `tbl_usuariovacante` (
  `ofer_id` int(50) NOT NULL,
  `usu_id` int(100) NOT NULL,
  `id_vacante` int(100) NOT NULL,
  `id_seleccionado` int(10) NOT NULL,
  `usu_viajar` varchar(4) NOT NULL,
  `usu_elegible` varchar(4) NOT NULL,
  `usu_cartapresentacion` varchar(256) DEFAULT NULL,
  `usuvac_fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `usu_cancelado` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_usuariovacante`
--

INSERT INTO `tbl_usuariovacante` (`ofer_id`, `usu_id`, `id_vacante`, `id_seleccionado`, `usu_viajar`, `usu_elegible`, `usu_cartapresentacion`, `usuvac_fecha`, `usu_cancelado`) VALUES
(1, 3, 2, 4, 'NO', 'NO', '../web/carta/', '2022-07-14 16:03:44', 'Prueba'),
(2, 5, 2, 5, 'NO', 'NO', '../web/carta/', '2022-07-13 16:09:37', 'No se pudo contactar al aspirante'),
(3, 3, 6, 5, 'NO', 'NO', '../web/carta/', '2022-07-28 15:40:20', 'Ya está laborando');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_vacante`
--

CREATE TABLE `tbl_vacante` (
  `id_vacante` int(100) NOT NULL,
  `vac_nombre` varchar(50) NOT NULL,
  `vac_descripcion` varchar(3000) NOT NULL,
  `vac_jornada_laboral` varchar(50) NOT NULL,
  `vac_tipo_contrato` varchar(30) NOT NULL,
  `vac_salario` varchar(50) NOT NULL,
  `vac_fecha` date NOT NULL,
  `vac_años_xp` int(10) NOT NULL,
  `vac_educacion` varchar(60) NOT NULL,
  `id_estadovacante` int(10) NOT NULL,
  `vac_publicacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `vac_correosclientes` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_vacante`
--

INSERT INTO `tbl_vacante` (`id_vacante`, `vac_nombre`, `vac_descripcion`, `vac_jornada_laboral`, `vac_tipo_contrato`, `vac_salario`, `vac_fecha`, `vac_años_xp`, `vac_educacion`, `id_estadovacante`, `vac_publicacion`, `vac_correosclientes`) VALUES
(1, 'Ingeniero Electricista', 'Perfil Ingeniero de soporte técnico y ventas.\r\n\r\nIngeniero Electricista\r\n\r\n \r\n\r\n·        Ingeniero electricista con al menos 2 años de experiencia técnica.\r\n\r\n·        Conocimientos y experiencia demostrable en proyectos de análisis de Calidad de potencia\r\n\r\n·        Conocimientos en diseño eléctrico en baja tensión\r\n\r\n·        Nivel de Inglés intermedio escrito\r\n\r\n·        Manejo de herramientas de simulación Neplan, Digsilent , ATP. Al menos una de ellas.\r\n\r\n·        Manejo intermedio de MS Word, Excel, Power Point\r\n\r\n·        Comunicación asertiva para una adecuada relación con los clientes internos y externos.\r\n\r\n·        Fortaleza en comunicación verbal y no verbal para realizar presentaciones técnicas y sustentar ofertas con un adecuado manejo de objeciones.\r\n\r\n·        Conocimientos en gestión de proyectos eléctricos y MS Project (deseable)\r\n\r\n·        Manejo de Autocad (Deseable)\r\n\r\n·        Experiencia en gestión comercial de clientes industriales (deseable).\r\n\r\n·        Motivación\r\n\r\n·        Disponibilidad para viajar\r\n\r\n·        Ciudad de base: Cali. Si vive en otra ciudad debe tener disponibilidad de traslado a Cali.\r\n\r\n \r\n\r\nEl tope de salario que tengo estimado para este cargo sería de 3 Millones.\r\n\r\n \r\n\r\nPero la idea sería tratar de negociar por un menor valor.', 'jornada completa', 'por horas', 'a convenir', '2021-12-27', 6, 'tecnico', 2, '2022-06-02 14:36:29', 1),
(2, 'Auxiliar administrativo para el área comercial', 'Técnico o tecnólogo auxiliar administrativo o de logística\r\nIngeniero industrial o estudiante de ingeniería industrial\r\nExperiencia comprobada en  actividades administrativas \r\n                   ', 'Tiempo completo', 'Contrato a término indefinido', 'entre $1.200.000 a $1.400.000', '2022-09-23', 1, 'Universidad / Carrera técnica', 1, '2022-05-31 18:59:07', NULL),
(3, 'Ingeniero para estudios de transitorios electromag', ' Realizar estudios de transitorios  electromagnéticos en sistemas de potencia de media y alta tensión.\r\nEstudios de TOV TRV, coordinación de aislamiento. coordinación de protecciones, armónicos y estabilidad transitoria.\r\nDeseable maestria e inglés intermedio escrito y hablado.\r\nHabilidades PSCAD, EMTP-RV, ATP o software similares para el análisis de EMT', 'Tiempo completo', 'Contrato a término indefinido', 'A convenir de acuerdo con experiencia', '2022-07-05', 2, 'Universidad / Carrera Profesional', 2, '2022-07-11 16:04:33', NULL),
(4, 'Ingeniero para estudios de transitorios electromag', ' Realizar estudios de transitorios  electromagnéticos en sistemas de potencia de media y alta tensión.\r\nEstudios de TOV TRV, coordinación de aislamiento. coordinación de protecciones, armónicos y estabilidad transitoria.\r\nDeseable maestria e inglés intermedio escrito y hablado.\r\nHabilidades PSCAD, EMTP-RV, ATP o software similares para el análisis de EMT', 'Tiempo completo', 'Contrato a término indefinido', 'A convenir de acuerdo con experiencia', '2022-07-05', 2, 'Universidad / Carrera Profesional', 2, '2022-07-11 16:04:33', NULL),
(5, 'Ingeniero Electricista', 'Perfil Ingeniero de soporte técnico y ventas.\r\n\r\nIngeniero Electricista\r\n\r\n \r\n\r\n·        Ingeniero electricista con al menos 2 años de experiencia técnica.\r\n\r\n·        Conocimientos y experiencia demostrable en proyectos de análisis de Calidad de potencia\r\n\r\n·        Conocimientos en diseño eléctrico en baja tensión\r\n\r\n·        Nivel de Inglés intermedio escrito\r\n\r\n·        Manejo de herramientas de simulación Neplan, Digsilent , ATP. Al menos una de ellas.\r\n\r\n·        Manejo intermedio de MS Word, Excel, Power Point\r\n\r\n·        Comunicación asertiva para una adecuada relación con los clientes internos y externos.\r\n\r\n·        Fortaleza en comunicación verbal y no verbal para realizar presentaciones técnicas y sustentar ofertas con un adecuado manejo de objeciones.\r\n\r\n·        Conocimientos en gestión de proyectos eléctricos y MS Project (deseable)\r\n\r\n·        Manejo de Autocad (Deseable)\r\n\r\n·        Experiencia en gestión comercial de clientes industriales (deseable).\r\n\r\n·        Motivación\r\n\r\n·        Disponibilidad para viajar\r\n\r\n·        Ciudad de base: Cali. Si vive en otra ciudad debe tener disponibilidad de traslado a Cali.\r\n\r\n \r\n\r\nEl tope de salario que tengo estimado para este cargo sería de 3 Millones.\r\n\r\n \r\n\r\nPero la idea sería tratar de negociar por un menor valor.', 'jornada completa', 'por horas', 'a convenir', '2022-07-29', 6, 'tecnico', 1, '2022-07-19 13:22:56', NULL),
(6, 'Ingeniero para estudios de transitorios electromag', ' Realizar estudios de transitorios  electromagnéticos en sistemas de potencia de media y alta tensión.\r\nEstudios de TOV TRV, coordinación de aislamiento. coordinación de protecciones, armónicos y estabilidad transitoria.\r\nDeseable maestria e inglés intermedio escrito y hablado.\r\nHabilidades PSCAD, EMTP-RV, ATP o software similares para el análisis de EMT', 'Tiempo completo', 'Contrato a término indefinido', 'A convenir de acuerdo con experiencia', '2022-07-29', 2, 'Universidad / Carrera Profesional', 1, '2022-07-19 13:23:25', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_area`
--
ALTER TABLE `tbl_area`
  ADD PRIMARY KEY (`id_area`);

--
-- Indices de la tabla `tbl_estadovacante`
--
ALTER TABLE `tbl_estadovacante`
  ADD PRIMARY KEY (`id_estadovacante`);

--
-- Indices de la tabla `tbl_formacion`
--
ALTER TABLE `tbl_formacion`
  ADD PRIMARY KEY (`id_formacion`),
  ADD KEY `usu_id` (`usu_id`);

--
-- Indices de la tabla `tbl_historiadetalle`
--
ALTER TABLE `tbl_historiadetalle`
  ADD PRIMARY KEY (`id_historiadetalle`),
  ADD KEY `id_actividades` (`id_hist`),
  ADD KEY `tbl_historiadetalle_ibfk_1` (`id_hist`),
  ADD KEY `usu_id` (`usu_id`),
  ADD KEY `id_area` (`id_area`);

--
-- Indices de la tabla `tbl_historial_de_trabajo`
--
ALTER TABLE `tbl_historial_de_trabajo`
  ADD PRIMARY KEY (`id_hist`),
  ADD KEY `usu_id` (`usu_id`);

--
-- Indices de la tabla `tbl_idiomas`
--
ALTER TABLE `tbl_idiomas`
  ADD PRIMARY KEY (`id_idioma`),
  ADD KEY `usu_id` (`usu_id`);

--
-- Indices de la tabla `tbl_rol`
--
ALTER TABLE `tbl_rol`
  ADD PRIMARY KEY (`rol_id`);

--
-- Indices de la tabla `tbl_seleccionado`
--
ALTER TABLE `tbl_seleccionado`
  ADD PRIMARY KEY (`id_seleccionado`);

--
-- Indices de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD PRIMARY KEY (`usu_id`),
  ADD KEY `rol_id` (`rol_id`);

--
-- Indices de la tabla `tbl_usuariovacante`
--
ALTER TABLE `tbl_usuariovacante`
  ADD PRIMARY KEY (`ofer_id`),
  ADD KEY `id_vacante` (`id_vacante`),
  ADD KEY `id_seleccionado` (`id_seleccionado`),
  ADD KEY `usu_id` (`usu_id`);

--
-- Indices de la tabla `tbl_vacante`
--
ALTER TABLE `tbl_vacante`
  ADD PRIMARY KEY (`id_vacante`),
  ADD KEY `id_estadovacante` (`id_estadovacante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_area`
--
ALTER TABLE `tbl_area`
  MODIFY `id_area` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `tbl_estadovacante`
--
ALTER TABLE `tbl_estadovacante`
  MODIFY `id_estadovacante` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_formacion`
--
ALTER TABLE `tbl_formacion`
  MODIFY `id_formacion` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tbl_historial_de_trabajo`
--
ALTER TABLE `tbl_historial_de_trabajo`
  MODIFY `id_hist` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `tbl_idiomas`
--
ALTER TABLE `tbl_idiomas`
  MODIFY `id_idioma` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_vacante`
--
ALTER TABLE `tbl_vacante`
  MODIFY `id_vacante` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_formacion`
--
ALTER TABLE `tbl_formacion`
  ADD CONSTRAINT `tbl_formacion_ibfk_1` FOREIGN KEY (`usu_id`) REFERENCES `tbl_usuario` (`usu_id`);

--
-- Filtros para la tabla `tbl_historiadetalle`
--
ALTER TABLE `tbl_historiadetalle`
  ADD CONSTRAINT `tbl_historiadetalle_ibfk_1` FOREIGN KEY (`id_hist`) REFERENCES `tbl_historial_de_trabajo` (`id_hist`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_historiadetalle_ibfk_3` FOREIGN KEY (`usu_id`) REFERENCES `tbl_usuario` (`usu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_historiadetalle_ibfk_4` FOREIGN KEY (`id_area`) REFERENCES `tbl_area` (`id_area`);

--
-- Filtros para la tabla `tbl_historial_de_trabajo`
--
ALTER TABLE `tbl_historial_de_trabajo`
  ADD CONSTRAINT `tbl_historial_de_trabajo_ibfk_1` FOREIGN KEY (`usu_id`) REFERENCES `tbl_usuario` (`usu_id`);

--
-- Filtros para la tabla `tbl_idiomas`
--
ALTER TABLE `tbl_idiomas`
  ADD CONSTRAINT `tbl_idiomas_ibfk_1` FOREIGN KEY (`usu_id`) REFERENCES `tbl_usuario` (`usu_id`);

--
-- Filtros para la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD CONSTRAINT `tbl_usuario_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `tbl_rol` (`rol_id`);

--
-- Filtros para la tabla `tbl_usuariovacante`
--
ALTER TABLE `tbl_usuariovacante`
  ADD CONSTRAINT `tbl_usuariovacante_ibfk_1` FOREIGN KEY (`id_vacante`) REFERENCES `tbl_vacante` (`id_vacante`),
  ADD CONSTRAINT `tbl_usuariovacante_ibfk_3` FOREIGN KEY (`id_seleccionado`) REFERENCES `tbl_seleccionado` (`id_seleccionado`),
  ADD CONSTRAINT `tbl_usuariovacante_ibfk_4` FOREIGN KEY (`usu_id`) REFERENCES `tbl_usuario` (`usu_id`);

--
-- Filtros para la tabla `tbl_vacante`
--
ALTER TABLE `tbl_vacante`
  ADD CONSTRAINT `tbl_vacante_ibfk_1` FOREIGN KEY (`id_estadovacante`) REFERENCES `tbl_estadovacante` (`id_estadovacante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

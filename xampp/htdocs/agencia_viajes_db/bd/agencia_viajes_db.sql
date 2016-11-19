--
-- Base de datos: `agencia_viajes_db`
--
CREATE DATABASE IF NOT EXISTS `agencia_viajes_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `agencia_viajes_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--
-- Creación: 19-11-2016 a las 10:07:07
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Playa', 'Es aquel lugar tranquilo que te envuelve en el sonido de las olas al llegar a la orilla, es aquel lugar que te sumerge en sus aguas saladas y cristalinas que te permiten ver a los seres que habitan felizmente, es aquel lugar que te permite ver colores inimaginables en el cielo, es aquel cosquilleo de sus arenas bajo tus pies desnudos, es diversión, es tranquilidad, meditación. Además, se pueden realizar muchos tipos de planes en el, como por ejemplo: jugar a algún deporte con la familia o amigos, tomar el sol para estar más atractivos y morenos, ir a ver una puesta de sol romántica con tu pareja.'),
(2, 'Monte', 'Hoy en día mucha gente aprecia el silencio absoluto, ya que en nuestro día a día estamos rodeados de ruidos que nos saturan. Por ello, el monte puede ser una alternativa para evadirnos de la realidad, relajarnos, sentirnos puros en la naturaleza, respirar aire puro y sin contaminaciones, contemplar los animales, disfrutar de unas vistas increíbles y poder sacar fotografías para recordar ese momento. Además, hay diferentes alternativas de cómo organizar unas vacaciones en el monte: con la familia para disfrutar de la naturaleza, hacer deporte y subir montañas para superación de retos y metas que nos hayamos marcado, ir con los amigos para poder pasar unas vacaciones bastante asequibles en términos monetarios...'),
(3, 'Crucero', 'Es una viaje de placer realizado en un barco de pasajeros, el cual se dirige a cualquier parte del mundo.\r\n\r\nEsta es una forma de viajar única diferente y especial, donde se tiene la oportunidad de conocer países que son inexplorables a través de otro medio de transporte.\r\n\r\nLos cruceros es hoy día un tipo de mercado turístico que está tomando mucha fuerza a nivel mundial; las compañías dedicadas al rubro se esfuerzan constantemente para ofrecer productos exquisitos, de última generación con el fin de atraer a futuros cruceristas.\r\n\r\nEs sorprendente ver la enormidad del barco desde lo lejos y más espectacular aún, viajar en el y disfrutar de su interior; una mini ciudad flotante, un pequeño mundo en donde podrás encontrar todo lo necesario durante tus vacaciones.'),
(4, 'Balneario', 'Es importante saber qué es un balneario porque no existe una clara conciencia de la diferencia entre un Balneario y un Spa.\r\n\r\nUn balneario es un centro sanitario que ha de disponer de 3 cosas:\r\n\r\n-Aguas Minero Medicinales declaradas de Utilidad Pública.\r\n-Servicio Médico Especializado.\r\n-Instalaciones adecuadas para tratar aquellas enfermedades en las que está especializado.\r\n\r\n'),
(5, 'Cultura', 'El Turismo Urbano es una modalidad de turismo que se desarrolla específicamente dentro de una ciudad (o cualquier espacio geográfico urbano) y engloba todas las actividades que los visitantes realicen –dentro de ella- durante su estancia: desde conocer y visitar sus puntos de interés (plazas, edificios públicos e históricos, museos, monumentos) hasta realizar actividades relacionadas con la profesión y los negocios.Con el pasar del tiempo las ciudades han hecho más atractivas sus imágenes urbanas, son más modernas y cosmopolitas. Muchas han empezado por recuperar y revalorar el entorno histórico (donde lo haya), monumentos y bienes culturales que se convierten en emblemas de atracción. Para brindar una imagen agradable, con calidad de vida, habitable y con ambiente hospitalario, han habilitado áreas verdes, zonas de esparcimiento (para vecinos y visitantes), y recuperado espacios deprimidos. \r\n\r\nPara hacerlas útiles, las han dotado de una diversificada oferta de actividades y servicios, se han modernizado las infraestructuras y en muchas se mantiene un desarrollo económico permanente para ser siempre el centro de negocios. Así las ciudades se han ido reafirmando como receptoras de flujos turísticos, centro neurálgico de la intensa actividad turística, el cerebro de la organización de viajes y servicios. Son destino y a su vez emisoras de turistas, punto de partida hacia otros destinos. \r\n\r\nSe suma a todo lo anterior la ampliación y diversificación de actividades culturales y de ocio y placer (como la posibilidad de ir de compras) y es que el atractivo reside en la gran variedad de cosas que ver y hacer. A la par, la interacción entre vecinos y el turista urbano ha ido creciendo, contribuyendo a la mayor satisfacción del segundo. \r\n\r\nLas ciudades modernas que no necesariamente cuentan con un patrimonio cultural pero si con una excelente planificación de espacios, instalaciones, equipamiento y demás servicios se han beneficiado; es así que incluso ciudades enteramente dedicadas a la industria han sacado provecho del turismo. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destino`
--
-- Creación: 19-11-2016 a las 10:23:07
--

DROP TABLE IF EXISTS `destino`;
CREATE TABLE `destino` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `destino`
--

INSERT INTO `destino` (`id`, `nombre`, `descripcion`, `imagen`) VALUES
(1, 'Bruselas', 'Bruselas se ha designado como la capital de Europa, y es aquí donde se encuentran los principales organismos europeos. La Comisión Europea y el Consejo Europeo en el barrio de Shuman, y el Parlamento en la Place Luxembourg son visitas realmente interesantes de hacer.\r\nBruselas es una ciudad con multitud de museos, algunos de ellos de lo mejorcito de Europa en su temática. Es el caso del museo del ejército o el museo de los instrumentos musicales. Además en el centro de la ciudad se encuentra el Museo Magritte, dedicado a este genial pintor surrealista belga que bien vale una visita.\r\nBruselas es además la capital mundial de la cerveza. Bélgica es uno de los países más cerveceros del mundo y en Bruselas podemos encontrar la cervecería con mayor variedad de cervezas del mundo, el Delirium, con más de dos mil tipos diferentes de cerveza. Sin duda es un lugar de visita obligatoria y un buen lugar donde empezar una noche de juerga.\r\nBruselas es la ciudad por excelencia del cómic. Tintín, Asterix o los pitufos son algunos de los personajes más conocidos del mundo del cómic, y son todos belgas. Bélgica ha sido tierra de grandes dibujantes y es por ello por lo que se puede ver por toda la ciudad paredes de edificios pintadas con los principales personajes del cómic belga en lo que se conoce como “la ruta del cómic“. También, el museo del cómic se convierte en una visita imprescindible para los amantes de este género.\r\n', ''),
(2, 'Jaca', 'Jaca (820 m. de altitud y 14.000 habitantes), es la capital de la comarca de la Jacetania, territorio histórico que se extiende sobre la vertiente noroccidental de la Comunidad Autónoma de Aragón, fronterizo con la vecina Francia.\r\nEn la actualidad se ha convertido en un importante centro turístico y de deportes de invierno del Pirineo, pero atesora también un notable legado monumental, que es reflejo de la trascendencia de sus más de dos mil años de historia.\r\nPosee una de las primeras catedrales de estilo románico del país (s. XI), levantada para consolidar la ciudad como enclave estratégico del Camino de Santiago. A ello se unió su condición de primera capital del primitivo Reino de Aragón, por elección del rey Sancho Ramírez (1077). Su naturaleza fronteriza moldeó su crecimiento como espacio defensivo durante varios siglos, dejando evidentes huellas arquitectónicas entre las que destaca la Ciudadela, singular fortaleza pentagonal del siglo XVI. Su posición estratégica; en pleno Pirineo, a treinta kilómetros de la frontera francesa, le ha conferido una personalidad especial.\r\nCiudad de densa y trascendental historia, ha sido protagonista de episodios decisivos y testigo privilegiado de importantes acontecimientos de dimensión internacional. Y es que sus calles, plazas y edificios huelen a historia. Su casco histórico es uno de los más atractivos y mejor conservados de Aragón. Su nómina de edificios singulares y de interés arquitectónico es impresionante.\r\nEn Jaca han confluido todos los estilos y todas las épocas. La Casa Consistorial, el Monasterio de las Benedictinas, el Fuerte de Rapitán, la Torre del Reloj o su ruta de edificios modernistas son un buen ejemplo. En su término municipal formado por 33 pueblos), hay que destacar el Monasterio de San Juan de la Peña (s. X), cuna del primitivo Reino de Aragón. Un paseo por la ciudad y sus alrededores es un viaje por la historia.\r\nEl pasado y el presente se mezclan en Jaca. En la actualidad es una pujante ciudad de servicios entregada decididamente al turismo. Su cercanía a las estaciones de esquí de Astún y Candanchú, el formidable entorno montañoso, el Camino de Santiago, la Pista de Hielo y el importante sector terciario fortalecen su vocación histórica de incuestionable "capital del Pirineo". En los últimos años ha experimentado un importante crecimiento urbanístico y ha renovado su red de servicios e infraestructuras para consolidar su destacada posición dentro del sector turístico.', ''),
(3, 'Riviera Maya', 'Bañarse en un cenote: existen entre 6000 y 7000 cenotes en la península del Yucatán, con verdaderos paraísos para los buceadores o amantes de la naturaleza en general. Así que tenemos donde elegir a la hora de bañarnos en las aguas cristalinas de los cenotes de la Riviera Maya, unos hundimientos del terreno creados por la filtración del agua, a través de la superficie de la piedra caliza.\r\n\r\nBucear en el Caribe: si sumergirse en un cenote es un atractivo buscado por muchos, no lo es menos bucear en las aguas cálidas del Caribe mexicano, ver los peces de mil colores, los corales y descubrir que sobre la fina arena blanca de sus playas el agua luce más transparente y brillante.\r\n\r\nTulum: podría haber hablado, en general, de los restos arqueológicos de la zona, pero no puedo sino desglosar tres de los mejores ejemplos de la civilización maya que aún se conserva como vestigio del pasado. Estas ruinas junto al mar constituyen una bella muestra de lo que fue el pueblo maya y, con suerte, además de contemplar los numerosos edificios podremos contemplar el vuelo de los hombres-pájaro y disfrutar de un baño en las aguas de su pequeña playa.\r\n\r\nSus pueblos y ciudades: si la historia de la zona es importante, no lo es menos su presente. Desde los poblados mayas en los que acompañar a sus habitantes en modos de vida del pasado a Cancún, pasando por lugares tan encantadores como Playa del Carmen, la Riviera Maya es mucho más que paisajes, playas y hoteles. No pasarnos pos el lugar en el que vive la gente de la zona nos dejaría una parte del lugar sin conocer ni comprender.\r\n\r\nLa gastronomía mexicana: méxico es mucho más que frijoles, burritos y tequila (aunque vaya frijoles, burritos y tequilas he probado allí...). Tiene mil y un platos que saborear, mil y una bebidas que descubrir, en un colorido sinfín de alimentos típicos y deliciosos, especiados y condimentados de formas diferentes, con sabores y aromas desconocidos, que harán las maravillas de nuestros menús.\r\n', ''),
(4, 'Noruega', 'El encanto de los países nórdicos\r\nDesde las Islas Británicas a Escandinavia, pasando por los Países Bálticos y Rusia, aquí tienes un extraordinario viaje para explorar con MSC Cruceros, con excepcionales e interesantes itinerarios por algunas de las áreas más remotas e incontaminadas del planeta, donde la naturaleza brilla en todo su esplendor. \r\nEntre auroras boreales y obras de arte paisajísticas como los fiordos noruegos, navegar se transforma en una experiencia única, pasando por castillos encantados y glaciares iluminados por el sol de medianoche, desde algunas de las ciudades más fascinantes del mundo, como Hamburgo, Helsinki, Estocolmo, Ámsterdam, Tallín y San Petersburgo, hasta pequeñas y pintorescas aldeas como Warnemünde en Alemania y Stavanger y Molde en Noruega, todo ello de camino al mítico Cabo Norte, solo separado del Polo Norte por las Islas Svalbard, en el Océano Ártico.\r\n\r\n', ''),
(5, 'Fitero', 'Situado a la vega del río Alhama, en la frontera con la Rioja y próxima a la capital ribera, se sitúa este municipio. Conviven en su núcleo urbano trazas medievales y otras más modernas. \r\n\r\nDéjense cautivar por la belleza medieval del Cortijo, un reducido foco de población con pequeñas calles en forma de T situado en torno al Monasterio de Santa María la Real, primer cenobio cisterciense de la península ibérica que da notoriedad al lugar. \r\n\r\nDescubran tiempos más modernos recorriendo sus céntricas calles anchas y rectas. Escasas son las muestras nobiliarias ya que el Monasterio prohibió la construcción de grandes mansiones y el empleo de blasones en las viviendas. \r\n\r\nA la salida de Fitero hacia el balneario en el que se alojó Bécquer, descubrirán el Humilladero del siglo XVI en cuya cruz se recibía al nuevo abad y se le escoltaba en procesión hasta el monasterio. Aquel momento ha quedado registrado para siempre, pues se talló en la piedra de un relieve en el claustro del templo.\r\n\r\nEn los baños viejos de Fitero nació en 1600 el virrey y obispo, recientemente beatificado, Juan de Palafox y Mendoza, de quien toma el nombre uno de los hoteles del balneario. Dice la tradición que cuando una criada, siguiendo las órdenes de la madre de Juan, se disponía a tirarlo al río Alhama por ser hijo ilegítimo, ésta fue sorprendida por el alcalde de los baños, quien se comprometió a hacerse cargo del pobre niño.\r\n\r\nDesde Fitero se pueden realizar diversos paseos como el que lleva hasta la Cueva de la Mora, en la que según escribiera Bécquer, aparece todas las noches el alma desconsolada de una princesa mora que busca agua para su amado cristiano que yace herido en la gruta. Esta cueva cercana al erosionado Macizo de Roscas, nos permite disfrutar de pintorescas formas pétreas.\r\n\r\nSe puede visitar también el Centro de rapaces y la Granja-escuela Tujedén, donde te acercarán al mundo de la cetrería. \r\n\r\nLas fiestas de Fitero comienzan el domingo siguiente al 8 de septiembre en honor a la Virgen de la Barda.\r\n', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta`
--
-- Creación: 19-11-2016 a las 10:10:52
--

DROP TABLE IF EXISTS `oferta`;
CREATE TABLE `oferta` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `descripcion` text NOT NULL,
  `coste` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `oferta`
--

INSERT INTO `oferta` (`id`, `titulo`, `descripcion`, `coste`) VALUES
(1, '7 dias en Bruselas', 'Período:21 dic 2016 - 26 dic 2016\r\nAlojamiento: 2 Adultos\r\nIncluye: vuelo ida/vuelta, hotel y visita guiada de dos días:\r\n\r\nDIA 1:\r\nLa visita comienza sobre las 9 de la mañana para aprovechar al máximo el tiempo. A esa hora, procurad llegar a la parada de metro "Schuman" para dar un paseo y conocer la zona del Parlamento Europeo. Después de ver la zona de grandes edificios, acercaros hasta el Parque del Cincuentenario para visitar Autoworld, una de las mejores colecciones de coches del mundo.\r\n\r\nDespués de visitar Autoworld, salid del parque en dirección a la parte trasera del edificio y tomad el metro en la estación "Merode" para llegar hasta "Parc", justo enfrente del Parque de Bruselas, el más animado de la ciudad. Los extremos del parque están franqueados por dos importantes edificios; en el extremo más cercano a la Place Royal, se encuentra el Palacio Real y, en la parte opuesta, está el Palacio de la Nación, sede de la Cámara de los Representantes y del Senado desde 1830.\r\n\r\nSaliendo del parque por el lugar por el que entrasteis, bajad por la Rue des Colonies para llegar hasta la Catedral de San Miguel y Santa Gúdula, uno de los edificios más emblemáticos de Bruselas.\r\n\r\nVolved hasta el Parque de Bruselas, y continuad hacia la derecha hasta la Place Royale, allí, girad hacia la derecha en la primera calle para visitar el Museo de Instrumentos Musicales, un placer para los sentidos. Saliendo del museo y continuando por la misma acera hacia la derecha, llegaréis a la esquina donde se encuentra el imponente Hotel Ravenstein.\r\n\r\nDIA 2:\r\nHoy toca relajarse un poquito visitando Mini Europe y el Atomium, uno de los símbolos más importantes de Bruselas. Para ello, deberéis estar sobre las 9:30 en la estación de metro Heysel, muy próxima a los dos lugares.\r\n\r\nEstas dos visitas ocuparán casi toda la mañana así que, si se hace tarde, podéis comer en alguno de los restaurantes de Mini Europe y, si no, tomad el metro de vuelta al centro de la ciudad. Si no tenéis tiempo suficiente, podéis prescindir de la visita al interior del Atomium, ya que no merece demasiado la pena.\r\n\r\nRecordad que, si vuestro vuelo sale del Aeropuerto de Charleroi, es necesario que vayáis con tiempo a la estación Bruselas-Midi ya que el autobús tarda una hora en realizar el trayecto y es probable que haya gente esperando y os toque coger el siguiente.\r\n\r\n\r\n', 500),
(2, 'Esquiar en Jaca', 'Período:25 ene 2017 - 5 feb 2017\r\nAlojamiento: 4 Adultos\r\nIncluye: apartamento y forfait + alquiler de esquís para 3 días.\r\n\r\nDisfruta del invierno esquiando en un sitio paradisíaco como el Pirineo Aragonés. Además, podrás visitar una de las ciudades más emblemáticas de Aragón. ', 1000),
(3, 'Disfruta del paraiso', 'Período: 25 dic 2016 - 5 ene 2017\r\nAlojamiento: 2 Adultos\r\nIncluye: vuelos, hotel 4* y un vale para bucear en una de las playas más bonitas del Caribe. \r\nDisfruta de unas navidades diferentes en pareja. ¿Por qué no vivir una segunda luna de miel? Anímate y no dudes en coger la oferta, que seguro que sino te arrepentirás. ', 1500),
(4, 'Salida alternativa', 'Período:1 dic 2016 - 8 dic 2016\r\nAlojamiento: 2 Adultos\r\nIncluye: Crucero de 7 días con visitas guiadas todos los días. Además, disfruta de la oferta "TODO INCLUIDO" en el que beber y comer será gratis pagando únicamente el alojamiento.', 1200);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `destino`
--
ALTER TABLE `destino`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oferta`
--
ALTER TABLE `oferta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `destino`
--
ALTER TABLE `destino`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `oferta`
--
ALTER TABLE `oferta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

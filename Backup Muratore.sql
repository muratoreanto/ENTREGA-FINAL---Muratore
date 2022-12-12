/*Tablas a crear:
USE INFORMACION_BANCARIA;

CREATE TABLE SCORIN_SOCIO_ECONOMICO (
Id_scorin int primary key not null auto_increment,
Scorin_bancario int not null);

CREATE TABLE PROVINCIA (
Id_provincia int primary key not null auto_increment,
nombre_provincia varchar(100) not null);

CREATE TABLE CARACTERISTICA (
Id_caracteristica int primary key not null auto_increment,
Caracteristica int not null,
Localidad varchar(100) not null,
Id_provincia int,
foreign key (Id_provincia) references PROVINCIA(Id_provincia));

CREATE TABLE CONTACTOS (
Id_contacto int primary key not null auto_increment,
Telefono int not null,
Correo_electronico varchar(100),
Id_caracteristica int,
foreign key (id_caracteristica) references CARACTERISTICA(id_caracteristica));

CREATE TABLE DOMICILIO (
Id_domicilio int primary key not null auto_increment,
Domicilio varchar(100) not null,
Localidad varchar(100) not null,
Id_provincia int,
foreign key (Id_provincia) references PROVINCIA(Id_provincia));

CREATE TABLE REGISTRO_BANCARIO (
Id_banco int primary key not null auto_increment,
Nombre_banco varchar(100) not null,
Estado varchar(100) not null,
Id_provincia int,
foreign key (Id_provincia) references PROVINCIA(Id_provincia));

CREATE TABLE PERSONAS (
Id_personas int primary key not null auto_increment,
Nombre varchar(100) not null,
Apellido varchar(100) not null,
Dni int,
Id_domicilio int,
foreign key (id_domicilio) references DOMICILIO(id_domicilio),
Id_banco int,
foreign key (id_banco) references REGISTRO_BANCARIO(id_banco),
Id_scorin int,
foreign key (id_scorin) references SCORIN_SOCIO_ECONOMICO(id_scorin),
Id_contacto int,
foreign key (id_contacto) references CONTACTOS(id_contacto));
*/

CREATE DATABASE  IF NOT EXISTS `informacion_bancaria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `informacion_bancaria`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: informacion_bancaria
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `caracteristica`
--

LOCK TABLES `caracteristica` WRITE;
/*!40000 ALTER TABLE `caracteristica` DISABLE KEYS */;
INSERT INTO `caracteristica` VALUES (1,221,'Abasto',1),(2,2271,'Abbott',1),(3,2396,'Abel',1),(4,11,'Acassuso',1),(5,2477,'Acevedo',1),(6,2983,'Adolfo Gonzales Chaves',1),(7,11,'Adrogue',1),(8,11,'Aeropuerto Internacional Ezeiza',1),(9,2324,'Agote',1),(10,2257,'Aguas Verdes',1),(11,2345,'Agustin Mosconi',1),(12,236,'Agustin Roca',1),(13,236,'Agustina',1),(14,2354,'Alberdi Viejo',1),(15,2346,'Alberti',1),(16,11,'Albertina',1),(17,11,'Aldo Bonzi',1),(18,2241,'Alegre',1),(19,2225,'Alejandro Korn',1),(20,2226,'Alejandro Petion',1),(21,2317,'Alfredo Demarchi',1),(22,2223,'Altamirano',1),(23,3489,'Alto Los Cardales',1),(24,2344,'alvarez de Toledo',1),(25,2021,'alvarez Jonte',1),(26,3388,'Ameghino',1),(27,2337,'America',1),(28,2316,'Andant',1),(29,221,'angel Etcheverry',1),(30,2227,'Antonio Carboni',1),(31,2921,'Aparicio',1),(32,2316,'Arboledas',1),(33,11,'area de Promocion El Triangulo',1),(34,2261,'Arenas Verdes',1),(35,2355,'Arenaza',1),(36,2927,'Argerich',1),(37,2281,'Ariel',1),(38,2478,'Arrecifes',1),(39,2353,'ArribeÃ±os',1),(40,2923,'Arroyo Corto',1),(41,11,'Villa San Luis',1),(42,2284,'Santa Luisa',1),(43,3838,'Yapes',2),(44,3835,'Villa Vil',2),(45,383,'Villa Las Pirquitas',2),(46,383,'Villa Dolores',2),(47,3835,'Villa de Poman',2),(48,383,'Villa de Balcozna',2),(49,383,'Vilisman',2),(50,3837,'Tinogasta',2),(51,3837,'Taton',2),(52,383,'Tapso',2),(53,383,'Sumalao',2),(54,383,'Singuil',2),(55,3835,'Sijan',2),(56,3837,'Saujil (Tinogasta)',2),(57,3835,'Saujil',2),(58,383,'Santa Rosa',2),(59,3837,'Santa Rosa',2),(60,3838,'Santa Maria',2),(61,383,'Santa Cruz',2),(62,383,'San Pedro de Guasayan',2),(63,364,'Zaparinqui',3),(64,3715,'Wichi - El Pintado',3),(65,364,'Villa Rural El Palmar',3),(66,364,'Villa Rio Bermejito',3),(67,3735,'Villa Berthet',3),(68,3735,'Villa angela',3),(69,3735,'Venados Grandes',3),(70,364,'Tres Isletas',3),(71,3877,'Taco Pozo',3),(72,3725,'Selvas del Rio de Oro',3),(73,3735,'Santa Sylvina',3),(74,3735,'San Bernardo',3),(75,3735,'Samuhu',3),(76,364,'Rio Muerto',3),(77,362,'Resistencia',3),(78,364,'Quitilipi',3),(79,362,'Puerto Vilelas',3),(80,362,'Puerto Tirol',3),(81,362,'Puerto Eva Peron',3),(82,362,'Puerto Bermejo Viejo',3),(83,280,'Yala Laubat',4),(84,2945,'Villa Futalaufquen',4),(85,280,'Villa Dique Florentino Ameghino',4),(86,280,'Veintiocho de Julio',4),(87,2945,'Trevelin',4),(88,280,'Trelew',4),(89,280,'Telsen',4),(90,2945,'Tecka',4),(91,297,'Sarmiento',4),(92,2945,'Rio Pico',4),(93,2903,'Rio Mayo',4),(94,280,'Rawson',4),(95,297,'Rada Tilly',4),(96,280,'Quinta El Mirador',4),(97,280,'Puerto Madryn',4),(98,280,'Playa Union',4),(99,280,'Playa Magagna',4),(100,2945,'Paso del Sapo',4),(101,280,'Paso de Indios',4),(102,2945,'Los Cipreses',4),(103,351,'Yocsina',5),(104,3468,'Wenceslao',5),(105,3583,'Washington',5),(106,3546,'Villa Yacanto',5),(107,3576,'Villa Vaudagna',5),(108,3583,'Villa Valeria',5),(109,3521,'Villa Tulumba',5),(110,351,'Villa Sierras de Oro',5),(111,3544,'Villa Sarmiento',5),(112,3583,'Villa Sarmiento',5),(113,358,'Villa Santa Eugenia',5),(114,3541,'Villa Santa Cruz del Lago',5),(115,3547,'Villa San Miguel',5),(116,3547,'Villa San Isidro',5),(117,3533,'Villa San Esteban',5),(118,3546,'Villa Rumipal',5),(119,3385,'Villa Rossi',5),(120,358,'Villa Reduccion',5),(121,3546,'Villa Quillinzo',5),(122,3521,'Villa Quilino',5),(123,3777,'Yatay Ti Calle',6),(124,3772,'Yapeyu',6),(125,3781,'Yahape',6),(126,3786,'Villa Olivari',6),(127,3777,'Villa Cordoba',6),(128,3777,'Tres de Abril',6),(129,3782,'Tatacua',6),(130,3772,'Tapebicua',6),(131,3781,'Tacuaral',6),(132,3782,'Tabay',6),(133,3774,'Sauce',6),(134,3756,'Santo Tome',6),(135,3777,'Santa Lucia',6),(136,379,'Santa Ana de los Guacaras',6),(137,3777,'San Roque',6),(138,3781,'San Miguel',6),(139,379,'San Luis del Palmar',6),(140,3782,'San Lorenzo',6),(141,3758,'San Jose',6),(142,3777,'San Isidro',6),(143,379,'San Luis del Palmar',6),(144,345,'Walter Moss',7),(145,3455,'Villaguay',7),(146,343,'Villa Urquiza',7),(147,3445,'Villa San Marcial',7),(148,3442,'Villa San Justo',7),(149,3446,'Villa Paranacito',7),(150,3445,'Villa Mantero',7),(151,343,'Villa Hernandarias',7),(152,343,'Villa Fontana',7),(153,3447,'Villa Elisa',7),(154,3455,'Villa Dominguez',7),(155,3456,'Villa del Rosario',7),(156,3455,'Villa Clara',7),(157,3438,'Villa Alcaraz',7),(158,3436,'Victoria',7),(159,343,'Viale',7),(160,3446,'Urdinarrain',7),(161,345,'Ubajay',7),(162,343,'Tezanos Pinto',7),(163,370,'Villa Trinidad',8),(164,3716,'Villa General GÃ¼emes',8),(165,370,'Villa Escolar',8),(166,370,'Villa Dos Trece',8),(167,370,'Villa del Carmen',8),(168,3718,'Tres Lagunas',8),(169,370,'Tatane',8),(170,370,'Subteniente Perin',8),(171,3718,'Siete Palmas',8),(172,3716,'San Martin 2',8),(173,3716,'San Martin 1',8),(174,370,'San Hilario',8),(175,370,'San Francisco de Laishi',8),(176,3718,'Riacho Negro',8),(177,3718,'Riacho He-He',8),(178,3718,'Puerto Pilcomayo',8),(179,3715,'Pozo del Tigre',8),(180,3711,'Pozo del Mortero',8),(181,3711,'Pozo de Maza',8),(182,3716,'Posta Cambio Zalazar',8),(183,3886,'Yuto',9),(184,3885,'Yavi',9),(185,388,'Yala',9),(186,388,'Volcan',9),(187,3886,'Vinalito',9),(188,388,'Villa Palpala',9),(189,3886,'Valle Grande',9),(190,3887,'Valle Colorado',9),(191,3887,'Uquia',9),(192,3887,'Tusaquillas',9),(193,388,'Tumbaya',9),(194,3887,'Tres Cruces',9),(195,388,'Tilcara',9),(196,3887,'Tabladitas',9),(197,3887,'Susques',9),(198,3887,'Santuario de Tres Pozos',9),(199,3888,'Santa Clara',9),(200,3887,'Santa Catalina',9),(201,3887,'Santa Ana',9),(202,388,'San Salvador de Jujuy',9),(203,2333,'Winifreda',10),(204,2333,'Villa Mirasol',10),(205,2338,'Victorica',10),(206,2302,'Vertiz',10),(207,2954,'Uriburu',10),(208,2952,'Unanue',10),(209,2302,'Trenel',10),(210,2302,'Trebolares',10),(211,2953,'Tomas de Anchorena',10),(212,2954,'Toay',10),(213,2338,'Telen',10),(214,2302,'Speluzzi',10),(215,2924,'Santa Teresa',10),(216,2954,'Santa Rosa',10),(217,2338,'Santa Isabel',10),(218,2334,'Rucanelo',10),(219,2338,'Rucanelo',10),(220,2953,'Rolon',10),(221,2333,'Relmo',10),(222,3825,'Villa Union',11),(223,3826,'Villa Santa Rita de Catuna',11),(224,380,'Villa Sanagasta',11),(225,3825,'Villa San Jose de Vinchina',11),(226,3827,'Villa Mazan',11),(227,3825,'Villa Castelli',11),(228,3825,'Vichigasta',11),(229,3821,'Ulapes',11),(230,3827,'Tuyubil',11),(231,3825,'Tilimuqui',11),(232,3827,'Termas de Santa Teresita',11),(233,380,'Tama',11),(234,3827,'Suriyaco',11),(235,3827,'Shaqui',11),(236,3825,'SaÃ±ogasta',11),(237,3825,'Santo Domingo',11),(238,3827,'Santa Vera Cruz',11),(239,3825,'Santa Florentina',11),(240,3825,'Santa Cruz',11),(241,3825,'Santa Clara',11),(242,2622,'Vista Flores',12),(243,260,'Villa Veinticinco de Mayo',12),(244,261,'Villa Tulumaya',12),(245,261,'Villa Teresa',12),(246,2622,'Villa San Carlos',12),(247,261,'Villa Nueva',12),(248,263,'Villa Los Barriales',12),(249,2624,'Villa El Refugio',12),(250,2622,'Villa Bastias',12),(251,2625,'Villa Atuel Norte',12),(252,2625,'Villa Atuel',12),(253,2626,'Villa Antigua',12),(254,2624,'Valle del Sol',12),(255,2624,'Uspallata',12),(256,261,'Ugarteche',12),(257,2622,'Tupungato',12),(258,2622,'Tunuyan',12),(259,263,'Tres PorteÃ±as',12),(260,261,'Tres Esquinas',12),(261,261,'Tres de Mayo',12),(262,3757,'Wanda',13),(263,3755,'Villa Salto Encantado',13),(264,3751,'Villa Roulet',13),(265,3751,'Villa Parodi',13),(266,3755,'Villa Bonita',13),(267,3743,'Villa Akerman',13),(268,3755,'Veinticinco de Mayo',13),(269,3751,'Valle Hermoso',13),(270,3758,'Tres Capones',13),(271,3755,'Torta Quemada',13),(272,3751,'Tobuna',13),(273,3751,'Taruma',13),(274,376,'Santo Pipo',13),(275,3751,'Santiago de Liniers',13),(276,3755,'Santa Rita',13),(277,3758,'Santa Maria',13),(278,376,'Santa Ana',13),(279,3755,'San Vicente',13),(280,3751,'San Pedro',13),(281,3755,'San Martin',13),(282,2942,'Zapala',14),(283,294,'Villa Traful',14),(284,2942,'Villa Pehuenia',14),(285,2972,'Villa Meliquina',14),(286,294,'Villa La Angostura',14),(287,299,'Villa El Chocon',14),(288,2948,'Villa del Nahueve',14),(289,2948,'Villa Curi Leuvu',14),(290,299,'Veinticinco de Mayo',14),(291,2948,'Varvarco',14),(292,2948,'Tricao Malal',14),(293,2948,'Termas de Copahue',14),(294,2948,'Taquimilan',14),(295,299,'Senillosa',14),(296,2948,'Sauzal Bonito',14),(297,2942,'Santo Tomas',14),(298,299,'San Patricio del ChaÃ±ar',14),(299,2972,'San Martin de los Andes',14),(300,299,'Rincon de los Sauces',14),(301,2942,'Ramon M. Castro',14),(302,2934,'Yaminue',15),(303,299,'Villa San Isidro',15),(304,298,'Villa Regina',15),(305,294,'Villa Mascardi',15),(306,299,'Villa Manzano',15),(307,294,'Villa Los Coihues',15),(308,294,'Villa Llao Llao',15),(309,294,'Villa Llanquin',15),(310,298,'Villa del Parque',15),(311,294,'Villa Cerro Catedral',15),(312,294,'Villa Campanario',15),(313,298,'Villa Alberdi',15),(314,2920,'Viedma',15),(315,298,'Valle Azul',15),(316,2934,'Valcheta',15),(317,2934,'Treneta',15),(318,2934,'Sierra Paileman',15),(319,2934,'Sierra Grande',15),(320,2934,'Sierra Colorada',15),(321,299,'Sargento Vidal',15),(322,387,'Talapampa',16),(323,3873,'Yacuy',16),(324,387,'Villa San Lorenzo',16),(325,387,'Villa Los alamos',16),(326,387,'Vaqueros',16),(327,3878,'Urundel',16),(328,3873,'Tranquitas',16),(329,3868,'Tolombon',16),(330,3877,'Tolloche',16),(331,387,'Tolar Grande',16),(332,3873,'Tobantirenda',16),(333,3873,'Tartagal',16),(334,387,'Talapampa',16),(335,3868,'Seclantas',16),(336,3885,'Santa Victoria Oeste',16),(337,3873,'Santa Victoria Este',16),(338,387,'Santa Rosa de los Pastos Grandes',16),(339,3878,'Santa Rosa',16),(340,3873,'Santa Maria',16),(341,3868,'Santa Barbara',16),(342,3885,'San Marcos',16),(343,264,'Villa Tacu',17),(344,264,'Villa Sefair Talacasto',17),(345,2646,'Villa San Agustin',17),(346,2648,'Villa Pituil',17),(347,264,'Villa Paula Albarracin de Sarmiento',17),(348,264,'Villa Nacusi',17),(349,2647,'Villa Mercedes',17),(350,2647,'Villa Malvinas Argentinas',17),(351,264,'Villa Krause',17),(352,264,'Villa Independencia',17),(353,264,'Villa IbaÃ±ez',17),(354,264,'Villa El Tango',17),(355,264,'Villa Don Bosco',17),(356,264,'Villa Dominguito',17),(357,264,'Villa del Salvador',17),(358,264,'Villa Centenario',17),(359,264,'Villa Borjas',17),(360,264,'Villa BolaÃ±os',17),(361,264,'Villa Basilio Nievas',17),(362,264,'Villa Barboza',17),(363,266,'Zanjitas',18),(364,2657,'Villa Salles',18),(365,2657,'Villa Reynolds',18),(366,2657,'Villa Mercedes',18),(367,2656,'Villa Larca',18),(368,2652,'Villa General Roca',18),(369,2656,'Villa del Carmen',18),(370,2656,'Villa de Praga',18),(371,266,'Villa de la Quebrada',18),(372,2658,'Union',18),(373,2656,'Tilisarao',18),(374,2652,'Talita',18),(375,2656,'Santa Rosa de Conlara',18),(376,2656,'San Pablo',18),(377,2652,'San Martin',18),(378,266,'San Luis',18),(379,2657,'San Jose del Morro',18),(380,2963,'Bajo Caracoles',19),(381,297,'Caleta Olivia',19),(382,297,'CaÃ±adon Seco',19),(383,2962,'Comandante Luis Piedrabuena',19),(384,2902,'El Calafate',19),(385,2962,'El Chalten',19),(386,2902,'El Turbio',19),(387,2902,'Esperanza',19),(388,297,'Fitz Roy',19),(389,2962,'Gobernador Gregores',19),(390,297,'Jaramillo',19),(391,2902,'Julia Dufour',19),(392,297,'Koluel Kayke',19),(393,2963,'Lago Posadas',19),(394,297,'Las Heras',19),(395,2963,'Los Antiguos',19),(396,2902,'Mina 3',19),(397,2963,'Perito Moreno',19),(398,297,'Pico Truncado',19),(399,3564,'Barrios Acapulco y Veracruz',20),(400,3382,'Aaron Castellanos',20),(401,3469,'Acebal',20),(402,3408,'Aguara Grande',20),(403,3402,'Albarellos',20),(404,3465,'Alcorta',20),(405,3476,'Aldao',20),(406,3493,'Aldao',20),(407,3405,'Alejandra',20),(408,3402,'alvarez',20),(409,3491,'Ambrosetti',20),(410,3382,'Amenabar',20),(411,3492,'Angelica',20),(412,3498,'Angeloni',20),(413,3464,'Arequito',20),(414,3469,'Arminda',20),(415,3471,'Armstrong',20),(416,3466,'Arocena',20),(417,3482,'Arroyo Ceibal',20),(418,3402,'Arroyo Seco',20),(419,3491,'Arrufo',20),(420,3854,'Ancajan',21),(421,385,'Antaje',21),(422,3844,'AÃ±atuya',21),(423,385,'Ardiles',21),(424,385,'arraga',21),(425,3844,'Averias',21),(426,3857,'Bandera',21),(427,3855,'Bandera Bajada',21),(428,385,'Beltran',21),(429,3845,'Brea Pozo',21),(430,3846,'Campo Gallo',21),(431,385,'CaÃ±ada Escobar',21),(432,3858,'Chauchillas',21),(433,385,'Chaupi Pozo',21),(434,3856,'Chilca Juliana',21),(435,3854,'Choya',21),(436,385,'Clodomira',21),(437,3491,'Colonia Alpina',21),(438,3844,'Colonia Dora',21),(439,385,'Colonia El Simbolar',21),(440,2901,'Lago Escondido',22),(441,2964,'Rio Grande',22),(442,2901,'Tolhuin',22),(443,2901,'Ushuaia',22),(444,3863,'Acheral',23),(445,3865,'Aguilares',23),(446,381,'Alderetes',23),(447,3865,'Alpachiri',23),(448,3865,'Alto Verde',23),(449,3892,'Amaicha del Valle',23),(450,3892,'Anca Juli',23),(451,3865,'Arcadia',23),(452,3863,'Atahona',23),(453,381,'Barrio Aeropuerto',23),(454,3863,'Barrio Casa Rosada',23),(455,3894,'Barrio San Jorge',23),(456,381,'Bella Vista',23),(457,3894,'Burruyacu',23),(458,3863,'Campo de Herrera',23),(459,3863,'Capitan Caceres',23),(460,381,'Cebil Redondo',23),(461,3862,'Choromoro',23),(462,3892,'Colalao del Valle',23),(463,381,'Colombres',23);
/*!40000 ALTER TABLE `caracteristica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
INSERT INTO `contactos` VALUES (1,15896872,'anabellarosales@gmail.com',9),(2,15369874,'rosariofranco@hotmail.com',54),(3,15589632,'tamarasolares@outlook.com.ar',91),(4,15247896,'francopavon@gmail.com',134),(5,4589776,'ramirosabi@hotmail.com',229),(6,4782358,'pameladuarte@live.com.ar',309),(7,15069874,'agustinacanto@hotmail.com',405),(8,4879362,'martinapintos@live.com.ar',445),(9,15789632,'martinfasoli@gmail.com',389),(10,15578424,'giuliapantone@outlook.com.ar',363);
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `domicilio`
--

LOCK TABLES `domicilio` WRITE;
/*!40000 ALTER TABLE `domicilio` DISABLE KEYS */;
INSERT INTO `domicilio` VALUES (1,'HUASCHA 3421','Agote',1),(2,'TALINDEZ 859','Singuil',2),(3,'ROCA TRES 7423','Sarmiento',4),(4,'AV. FUERZA AEREA 125','Santo Tome',6),(5,'ROQUE SAENZ PEÃ‘A 85','Ulapes',11),(6,'AV. COLON 358','Villa Llanquin',15),(7,'AV. VELEZ SARSFIELD 959','Aldao',20),(8,'TRISTAN NARVAJA 2222','Aguilares',23),(9,'PAEZ CALVO 758','Gobernador Gregores',19),(10,'BARADERO 32','Zanjitas',18);
/*!40000 ALTER TABLE `domicilio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'Anabella','Rosales',25896896,1,5,5,1),(2,'Rosario','Franco',34589632,2,6,8,2),(3,'Tamara','Solares',20158796,3,8,3,3),(4,'Franco','Pavon',16574126,4,7,6,4),(5,'Ramiro','Sabi',6589741,5,9,9,5),(6,'Pamela','Duarte',93875125,6,50,7,6),(7,'Agustina','Canto',42873015,7,23,4,7),(8,'Martina','Pintos',40976325,8,35,10,8),(9,'Martin','Fasoli',7891356,9,34,9,9),(10,'Giulia','Pantone',20478963,10,41,8,10);
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES (1,'Buenos Aires'),(2,'Catamarca'),(3,'Chaco'),(4,'Chubut'),(5,'Cordoba'),(6,'Corrientes'),(7,'Entre Rios'),(8,'Formosa'),(9,'Jujuy'),(10,'La Pampa'),(11,'La Rioja'),(12,'Mendoza'),(13,'Misiones'),(14,'Neuquen'),(15,'Rio Negro'),(16,'Salta'),(17,'San Juan'),(18,'San Luis'),(19,'Santa Cruz'),(20,'Santa Fe'),(21,'Santiago del Estero'),(22,'Tierra del Fuego'),(23,'Tucuman');
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `registro_bancario`
--

LOCK TABLES `registro_bancario` WRITE;
/*!40000 ALTER TABLE `registro_bancario` DISABLE KEYS */;
INSERT INTO `registro_bancario` VALUES (1,'MACRO','APTO',1),(2,'MACRO','NO APTO',1),(3,'MACRO','APTO',2),(4,'MACRO','NO APTO',2),(5,'MACRO','APTO',4),(6,'MACRO','NO APTO',6),(7,'MACRO','APTO',6),(8,'MACRO','NO APTO',11),(9,'MACRO','APTO',11),(10,'SANTANDER','NO APTO',15),(11,'SANTANDER','APTO',15),(12,'SANTANDER','NO APTO',20),(13,'SANTANDER','APTO',20),(14,'SANTANDER','NO APTO',23),(15,'SANTANDER','APTO',23),(16,'SANTANDER','NO APTO',1),(17,'SANTANDER','APTO',1),(18,'SANTANDER','NO APTO',2),(19,'HSBC','NO APTO',2),(20,'HSBC','APTO',4),(21,'HSBC','NO APTO',6),(22,'HSBC','APTO',6),(23,'HSBC','NO APTO',11),(24,'HSBC','APTO',11),(25,'HSBC','NO APTO',15),(26,'HSBC','APTO',15),(27,'HSBC','NO APTO',20),(28,'HSBC','APTO',20),(29,'ICBC','APTO',23),(30,'ICBC','NO APTO',23),(31,'ICBC','NO APTO',1),(32,'ICBC','APTO',1),(33,'ICBC','NO APTO',2),(34,'ICBC','NO APTO',2),(35,'ICBC','APTO',4),(36,'ICBC','NO APTO',6),(37,'BANCO DE CORDOBA','NO APTO',6),(38,'BANCO DE LA PROVINCIA','APTO',11),(39,'BANCO DE LA PROVINCIA','NO APTO',11),(40,'BANCO DE LA PROVINCIA','APTO',15),(41,'BANCO DE LA PROVINCIA','NO APTO',15),(42,'BANCO DE LA PROVINCIA','APTO',20),(43,'BANCO FRANCES','NO APTO',20),(44,'BANCO FRANCES','APTO',23),(45,'BANCO FRANCES','NO APTO',23),(46,'BANCO FRANCES','APTO',1),(47,'BANCO FRANCES','NO APTO',1),(48,'BANCO FRANCES','APTO',2),(49,'BANCO FRANCES','NO APTO',2),(50,'BANCO FRANCES','APTO',4),(51,'BANCO FRANCES','NO APTO',6),(52,'BANCO FRANCES','APTO',6),(53,'BANCO FRANCES','NO APTO',11);
/*!40000 ALTER TABLE `registro_bancario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `scorin_socio_economico`
--

LOCK TABLES `scorin_socio_economico` WRITE;
/*!40000 ALTER TABLE `scorin_socio_economico` DISABLE KEYS */;
INSERT INTO `scorin_socio_economico` VALUES (1,5),(2,8),(3,3),(4,6),(5,9),(6,7),(7,4),(8,10),(9,9),(10,8);
/*!40000 ALTER TABLE `scorin_socio_economico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-10 12:34:44

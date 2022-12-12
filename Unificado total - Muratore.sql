/*CREACIÓN BBDD*/

CREATE DATABASE INFORMACION_BANCARIA;

USE INFORMACION_BANCARIA;

/*CREACIÓN DE TABLAS*/

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

/*INSERCIÓN DE DATOS*/

INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (1,'Buenos Aires');
INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (2,'Catamarca');
INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (3,'Chaco');
INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (4,'Chubut');
INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (5,'Cordoba');
INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (6,'Corrientes');
INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (7,'Entre Rios');
INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (8,'Formosa');
INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (9,'Jujuy');
INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (10,'La Pampa');
INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (11,'La Rioja');
INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (12,'Mendoza');
INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (13,'Misiones');
INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (14,'Neuquen');
INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (15,'Rio Negro');
INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (16,'Salta');
INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (17,'San Juan');
INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (18,'San Luis');
INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (19,'Santa Cruz');
INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (20,'Santa Fe');
INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (21,'Santiago del Estero');
INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (22,'Tierra del Fuego');
INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (23,'Tucuman');

INSERT INTO SCORIN_SOCIO_ECONOMICO (`Id_scorin`,`Scorin_bancario`) VALUES (1,5);
INSERT INTO SCORIN_SOCIO_ECONOMICO (`Id_scorin`,`Scorin_bancario`) VALUES (2,8);
INSERT INTO SCORIN_SOCIO_ECONOMICO (`Id_scorin`,`Scorin_bancario`) VALUES (3,3);
INSERT INTO SCORIN_SOCIO_ECONOMICO (`Id_scorin`,`Scorin_bancario`) VALUES (4,6);
INSERT INTO SCORIN_SOCIO_ECONOMICO (`Id_scorin`,`Scorin_bancario`) VALUES (5,9);
INSERT INTO SCORIN_SOCIO_ECONOMICO (`Id_scorin`,`Scorin_bancario`) VALUES (6,7);
INSERT INTO SCORIN_SOCIO_ECONOMICO (`Id_scorin`,`Scorin_bancario`) VALUES (7,4);
INSERT INTO SCORIN_SOCIO_ECONOMICO (`Id_scorin`,`Scorin_bancario`) VALUES (8,10);
INSERT INTO SCORIN_SOCIO_ECONOMICO (`Id_scorin`,`Scorin_bancario`) VALUES (9,9);
INSERT INTO SCORIN_SOCIO_ECONOMICO (`Id_scorin`,`Scorin_bancario`) VALUES (10,8);

INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (1,221,'Abasto',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (2,2271,'Abbott',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (3,2396,'Abel',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (4,11,'Acassuso',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (5,2477,'Acevedo',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (6,2983,'Adolfo Gonzales Chaves',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (7,11,'Adrogue',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (8,11,'Aeropuerto Internacional Ezeiza',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (9,2324,'Agote',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (10,2257,'Aguas Verdes',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (11,2345,'Agustin Mosconi',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (12,236,'Agustin Roca',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (13,236,'Agustina',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (14,2354,'Alberdi Viejo',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (15,2346,'Alberti',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (16,11,'Albertina',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (17,11,'Aldo Bonzi',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (18,2241,'Alegre',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (19,2225,'Alejandro Korn',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (20,2226,'Alejandro Petion',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (21,2317,'Alfredo Demarchi',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (22,2223,'Altamirano',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (23,3489,'Alto Los Cardales',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (24,2344,'alvarez de Toledo',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (25,2021,'alvarez Jonte',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (26,3388,'Ameghino',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (27,2337,'America',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (28,2316,'Andant',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (29,221,'angel Etcheverry',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (30,2227,'Antonio Carboni',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (31,2921,'Aparicio',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (32,2316,'Arboledas',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (33,11,'area de Promocion El Triangulo',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (34,2261,'Arenas Verdes',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (35,2355,'Arenaza',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (36,2927,'Argerich',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (37,2281,'Ariel',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (38,2478,'Arrecifes',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (39,2353,'ArribeÃ±os',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (40,2923,'Arroyo Corto',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (41,11,'Villa San Luis',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (42,2284,'Santa Luisa',1);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (43,3838,'Yapes',2);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (44,3835,'Villa Vil',2);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (45,383,'Villa Las Pirquitas',2);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (46,383,'Villa Dolores',2);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (47,3835,'Villa de Poman',2);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (48,383,'Villa de Balcozna',2);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (49,383,'Vilisman',2);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (50,3837,'Tinogasta',2);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (51,3837,'Taton',2);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (52,383,'Tapso',2);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (53,383,'Sumalao',2);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (54,383,'Singuil',2);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (55,3835,'Sijan',2);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (56,3837,'Saujil (Tinogasta)',2);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (57,3835,'Saujil',2);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (58,383,'Santa Rosa',2);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (59,3837,'Santa Rosa',2);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (60,3838,'Santa Maria',2);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (61,383,'Santa Cruz',2);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (62,383,'San Pedro de Guasayan',2);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (63,364,'Zaparinqui',3);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (64,3715,'Wichi - El Pintado',3);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (65,364,'Villa Rural El Palmar',3);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (66,364,'Villa Rio Bermejito',3);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (67,3735,'Villa Berthet',3);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (68,3735,'Villa angela',3);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (69,3735,'Venados Grandes',3);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (70,364,'Tres Isletas',3);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (71,3877,'Taco Pozo',3);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (72,3725,'Selvas del Rio de Oro',3);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (73,3735,'Santa Sylvina',3);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (74,3735,'San Bernardo',3);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (75,3735,'Samuhu',3);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (76,364,'Rio Muerto',3);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (77,362,'Resistencia',3);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (78,364,'Quitilipi',3);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (79,362,'Puerto Vilelas',3);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (80,362,'Puerto Tirol',3);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (81,362,'Puerto Eva Peron',3);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (82,362,'Puerto Bermejo Viejo',3);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (83,280,'Yala Laubat',4);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (84,2945,'Villa Futalaufquen',4);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (85,280,'Villa Dique Florentino Ameghino',4);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (86,280,'Veintiocho de Julio',4);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (87,2945,'Trevelin',4);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (88,280,'Trelew',4);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (89,280,'Telsen',4);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (90,2945,'Tecka',4);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (91,297,'Sarmiento',4);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (92,2945,'Rio Pico',4);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (93,2903,'Rio Mayo',4);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (94,280,'Rawson',4);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (95,297,'Rada Tilly',4);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (96,280,'Quinta El Mirador',4);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (97,280,'Puerto Madryn',4);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (98,280,'Playa Union',4);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (99,280,'Playa Magagna',4);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (100,2945,'Paso del Sapo',4);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (101,280,'Paso de Indios',4);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (102,2945,'Los Cipreses',4);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (103,351,'Yocsina',5);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (104,3468,'Wenceslao',5);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (105,3583,'Washington',5);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (106,3546,'Villa Yacanto',5);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (107,3576,'Villa Vaudagna',5);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (108,3583,'Villa Valeria',5);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (109,3521,'Villa Tulumba',5);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (110,351,'Villa Sierras de Oro',5);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (111,3544,'Villa Sarmiento',5);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (112,3583,'Villa Sarmiento',5);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (113,358,'Villa Santa Eugenia',5);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (114,3541,'Villa Santa Cruz del Lago',5);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (115,3547,'Villa San Miguel',5);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (116,3547,'Villa San Isidro',5);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (117,3533,'Villa San Esteban',5);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (118,3546,'Villa Rumipal',5);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (119,3385,'Villa Rossi',5);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (120,358,'Villa Reduccion',5);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (121,3546,'Villa Quillinzo',5);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (122,3521,'Villa Quilino',5);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (123,3777,'Yatay Ti Calle',6);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (124,3772,'Yapeyu',6);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (125,3781,'Yahape',6);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (126,3786,'Villa Olivari',6);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (127,3777,'Villa Cordoba',6);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (128,3777,'Tres de Abril',6);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (129,3782,'Tatacua',6);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (130,3772,'Tapebicua',6);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (131,3781,'Tacuaral',6);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (132,3782,'Tabay',6);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (133,3774,'Sauce',6);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (134,3756,'Santo Tome',6);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (135,3777,'Santa Lucia',6);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (136,379,'Santa Ana de los Guacaras',6);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (137,3777,'San Roque',6);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (138,3781,'San Miguel',6);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (139,379,'San Luis del Palmar',6);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (140,3782,'San Lorenzo',6);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (141,3758,'San Jose',6);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (142,3777,'San Isidro',6);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (143,379,'San Luis del Palmar',6);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (144,345,'Walter Moss',7);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (145,3455,'Villaguay',7);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (146,343,'Villa Urquiza',7);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (147,3445,'Villa San Marcial',7);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (148,3442,'Villa San Justo',7);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (149,3446,'Villa Paranacito',7);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (150,3445,'Villa Mantero',7);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (151,343,'Villa Hernandarias',7);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (152,343,'Villa Fontana',7);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (153,3447,'Villa Elisa',7);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (154,3455,'Villa Dominguez',7);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (155,3456,'Villa del Rosario',7);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (156,3455,'Villa Clara',7);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (157,3438,'Villa Alcaraz',7);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (158,3436,'Victoria',7);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (159,343,'Viale',7);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (160,3446,'Urdinarrain',7);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (161,345,'Ubajay',7);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (162,343,'Tezanos Pinto',7);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (163,370,'Villa Trinidad',8);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (164,3716,'Villa General GÃ¼emes',8);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (165,370,'Villa Escolar',8);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (166,370,'Villa Dos Trece',8);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (167,370,'Villa del Carmen',8);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (168,3718,'Tres Lagunas',8);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (169,370,'Tatane',8);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (170,370,'Subteniente Perin',8);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (171,3718,'Siete Palmas',8);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (172,3716,'San Martin 2',8);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (173,3716,'San Martin 1',8);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (174,370,'San Hilario',8);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (175,370,'San Francisco de Laishi',8);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (176,3718,'Riacho Negro',8);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (177,3718,'Riacho He-He',8);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (178,3718,'Puerto Pilcomayo',8);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (179,3715,'Pozo del Tigre',8);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (180,3711,'Pozo del Mortero',8);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (181,3711,'Pozo de Maza',8);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (182,3716,'Posta Cambio Zalazar',8);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (183,3886,'Yuto',9);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (184,3885,'Yavi',9);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (185,388,'Yala',9);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (186,388,'Volcan',9);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (187,3886,'Vinalito',9);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (188,388,'Villa Palpala',9);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (189,3886,'Valle Grande',9);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (190,3887,'Valle Colorado',9);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (191,3887,'Uquia',9);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (192,3887,'Tusaquillas',9);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (193,388,'Tumbaya',9);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (194,3887,'Tres Cruces',9);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (195,388,'Tilcara',9);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (196,3887,'Tabladitas',9);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (197,3887,'Susques',9);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (198,3887,'Santuario de Tres Pozos',9);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (199,3888,'Santa Clara',9);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (200,3887,'Santa Catalina',9);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (201,3887,'Santa Ana',9);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (202,388,'San Salvador de Jujuy',9);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (203,2333,'Winifreda',10);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (204,2333,'Villa Mirasol',10);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (205,2338,'Victorica',10);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (206,2302,'Vertiz',10);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (207,2954,'Uriburu',10);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (208,2952,'Unanue',10);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (209,2302,'Trenel',10);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (210,2302,'Trebolares',10);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (211,2953,'Tomas de Anchorena',10);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (212,2954,'Toay',10);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (213,2338,'Telen',10);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (214,2302,'Speluzzi',10);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (215,2924,'Santa Teresa',10);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (216,2954,'Santa Rosa',10);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (217,2338,'Santa Isabel',10);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (218,2334,'Rucanelo',10);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (219,2338,'Rucanelo',10);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (220,2953,'Rolon',10);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (221,2333,'Relmo',10);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (222,3825,'Villa Union',11);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (223,3826,'Villa Santa Rita de Catuna',11);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (224,380,'Villa Sanagasta',11);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (225,3825,'Villa San Jose de Vinchina',11);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (226,3827,'Villa Mazan',11);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (227,3825,'Villa Castelli',11);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (228,3825,'Vichigasta',11);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (229,3821,'Ulapes',11);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (230,3827,'Tuyubil',11);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (231,3825,'Tilimuqui',11);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (232,3827,'Termas de Santa Teresita',11);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (233,380,'Tama',11);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (234,3827,'Suriyaco',11);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (235,3827,'Shaqui',11);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (236,3825,'SaÃ±ogasta',11);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (237,3825,'Santo Domingo',11);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (238,3827,'Santa Vera Cruz',11);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (239,3825,'Santa Florentina',11);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (240,3825,'Santa Cruz',11);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (241,3825,'Santa Clara',11);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (242,2622,'Vista Flores',12);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (243,260,'Villa Veinticinco de Mayo',12);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (244,261,'Villa Tulumaya',12);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (245,261,'Villa Teresa',12);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (246,2622,'Villa San Carlos',12);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (247,261,'Villa Nueva',12);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (248,263,'Villa Los Barriales',12);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (249,2624,'Villa El Refugio',12);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (250,2622,'Villa Bastias',12);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (251,2625,'Villa Atuel Norte',12);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (252,2625,'Villa Atuel',12);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (253,2626,'Villa Antigua',12);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (254,2624,'Valle del Sol',12);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (255,2624,'Uspallata',12);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (256,261,'Ugarteche',12);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (257,2622,'Tupungato',12);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (258,2622,'Tunuyan',12);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (259,263,'Tres PorteÃ±as',12);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (260,261,'Tres Esquinas',12);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (261,261,'Tres de Mayo',12);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (262,3757,'Wanda',13);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (263,3755,'Villa Salto Encantado',13);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (264,3751,'Villa Roulet',13);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (265,3751,'Villa Parodi',13);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (266,3755,'Villa Bonita',13);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (267,3743,'Villa Akerman',13);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (268,3755,'Veinticinco de Mayo',13);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (269,3751,'Valle Hermoso',13);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (270,3758,'Tres Capones',13);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (271,3755,'Torta Quemada',13);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (272,3751,'Tobuna',13);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (273,3751,'Taruma',13);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (274,376,'Santo Pipo',13);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (275,3751,'Santiago de Liniers',13);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (276,3755,'Santa Rita',13);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (277,3758,'Santa Maria',13);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (278,376,'Santa Ana',13);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (279,3755,'San Vicente',13);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (280,3751,'San Pedro',13);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (281,3755,'San Martin',13);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (282,2942,'Zapala',14);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (283,294,'Villa Traful',14);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (284,2942,'Villa Pehuenia',14);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (285,2972,'Villa Meliquina',14);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (286,294,'Villa La Angostura',14);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (287,299,'Villa El Chocon',14);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (288,2948,'Villa del Nahueve',14);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (289,2948,'Villa Curi Leuvu',14);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (290,299,'Veinticinco de Mayo',14);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (291,2948,'Varvarco',14);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (292,2948,'Tricao Malal',14);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (293,2948,'Termas de Copahue',14);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (294,2948,'Taquimilan',14);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (295,299,'Senillosa',14);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (296,2948,'Sauzal Bonito',14);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (297,2942,'Santo Tomas',14);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (298,299,'San Patricio del ChaÃ±ar',14);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (299,2972,'San Martin de los Andes',14);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (300,299,'Rincon de los Sauces',14);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (301,2942,'Ramon M. Castro',14);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (302,2934,'Yaminue',15);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (303,299,'Villa San Isidro',15);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (304,298,'Villa Regina',15);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (305,294,'Villa Mascardi',15);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (306,299,'Villa Manzano',15);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (307,294,'Villa Los Coihues',15);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (308,294,'Villa Llao Llao',15);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (309,294,'Villa Llanquin',15);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (310,298,'Villa del Parque',15);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (311,294,'Villa Cerro Catedral',15);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (312,294,'Villa Campanario',15);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (313,298,'Villa Alberdi',15);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (314,2920,'Viedma',15);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (315,298,'Valle Azul',15);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (316,2934,'Valcheta',15);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (317,2934,'Treneta',15);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (318,2934,'Sierra Paileman',15);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (319,2934,'Sierra Grande',15);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (320,2934,'Sierra Colorada',15);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (321,299,'Sargento Vidal',15);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (322,387,'Talapampa',16);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (323,3873,'Yacuy',16);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (324,387,'Villa San Lorenzo',16);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (325,387,'Villa Los alamos',16);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (326,387,'Vaqueros',16);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (327,3878,'Urundel',16);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (328,3873,'Tranquitas',16);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (329,3868,'Tolombon',16);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (330,3877,'Tolloche',16);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (331,387,'Tolar Grande',16);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (332,3873,'Tobantirenda',16);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (333,3873,'Tartagal',16);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (334,387,'Talapampa',16);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (335,3868,'Seclantas',16);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (336,3885,'Santa Victoria Oeste',16);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (337,3873,'Santa Victoria Este',16);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (338,387,'Santa Rosa de los Pastos Grandes',16);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (339,3878,'Santa Rosa',16);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (340,3873,'Santa Maria',16);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (341,3868,'Santa Barbara',16);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (342,3885,'San Marcos',16);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (343,264,'Villa Tacu',17);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (344,264,'Villa Sefair Talacasto',17);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (345,2646,'Villa San Agustin',17);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (346,2648,'Villa Pituil',17);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (347,264,'Villa Paula Albarracin de Sarmiento',17);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (348,264,'Villa Nacusi',17);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (349,2647,'Villa Mercedes',17);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (350,2647,'Villa Malvinas Argentinas',17);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (351,264,'Villa Krause',17);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (352,264,'Villa Independencia',17);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (353,264,'Villa IbaÃ±ez',17);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (354,264,'Villa El Tango',17);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (355,264,'Villa Don Bosco',17);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (356,264,'Villa Dominguito',17);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (357,264,'Villa del Salvador',17);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (358,264,'Villa Centenario',17);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (359,264,'Villa Borjas',17);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (360,264,'Villa BolaÃ±os',17);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (361,264,'Villa Basilio Nievas',17);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (362,264,'Villa Barboza',17);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (363,266,'Zanjitas',18);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (364,2657,'Villa Salles',18);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (365,2657,'Villa Reynolds',18);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (366,2657,'Villa Mercedes',18);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (367,2656,'Villa Larca',18);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (368,2652,'Villa General Roca',18);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (369,2656,'Villa del Carmen',18);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (370,2656,'Villa de Praga',18);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (371,266,'Villa de la Quebrada',18);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (372,2658,'Union',18);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (373,2656,'Tilisarao',18);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (374,2652,'Talita',18);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (375,2656,'Santa Rosa de Conlara',18);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (376,2656,'San Pablo',18);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (377,2652,'San Martin',18);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (378,266,'San Luis',18);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (379,2657,'San Jose del Morro',18);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (380,2963,'Bajo Caracoles',19);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (381,297,'Caleta Olivia',19);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (382,297,'CaÃ±adon Seco',19);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (383,2962,'Comandante Luis Piedrabuena',19);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (384,2902,'El Calafate',19);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (385,2962,'El Chalten',19);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (386,2902,'El Turbio',19);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (387,2902,'Esperanza',19);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (388,297,'Fitz Roy',19);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (389,2962,'Gobernador Gregores',19);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (390,297,'Jaramillo',19);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (391,2902,'Julia Dufour',19);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (392,297,'Koluel Kayke',19);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (393,2963,'Lago Posadas',19);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (394,297,'Las Heras',19);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (395,2963,'Los Antiguos',19);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (396,2902,'Mina 3',19);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (397,2963,'Perito Moreno',19);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (398,297,'Pico Truncado',19);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (399,3564,'Barrios Acapulco y Veracruz',20);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (400,3382,'Aaron Castellanos',20);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (401,3469,'Acebal',20);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (402,3408,'Aguara Grande',20);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (403,3402,'Albarellos',20);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (404,3465,'Alcorta',20);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (405,3476,'Aldao',20);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (406,3493,'Aldao',20);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (407,3405,'Alejandra',20);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (408,3402,'alvarez',20);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (409,3491,'Ambrosetti',20);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (410,3382,'Amenabar',20);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (411,3492,'Angelica',20);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (412,3498,'Angeloni',20);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (413,3464,'Arequito',20);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (414,3469,'Arminda',20);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (415,3471,'Armstrong',20);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (416,3466,'Arocena',20);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (417,3482,'Arroyo Ceibal',20);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (418,3402,'Arroyo Seco',20);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (419,3491,'Arrufo',20);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (420,3854,'Ancajan',21);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (421,385,'Antaje',21);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (422,3844,'AÃ±atuya',21);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (423,385,'Ardiles',21);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (424,385,'arraga',21);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (425,3844,'Averias',21);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (426,3857,'Bandera',21);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (427,3855,'Bandera Bajada',21);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (428,385,'Beltran',21);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (429,3845,'Brea Pozo',21);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (430,3846,'Campo Gallo',21);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (431,385,'CaÃ±ada Escobar',21);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (432,3858,'Chauchillas',21);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (433,385,'Chaupi Pozo',21);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (434,3856,'Chilca Juliana',21);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (435,3854,'Choya',21);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (436,385,'Clodomira',21);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (437,3491,'Colonia Alpina',21);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (438,3844,'Colonia Dora',21);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (439,385,'Colonia El Simbolar',21);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (440,2901,'Lago Escondido',22);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (441,2964,'Rio Grande',22);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (442,2901,'Tolhuin',22);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (443,2901,'Ushuaia',22);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (444,3863,'Acheral',23);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (445,3865,'Aguilares',23);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (446,381,'Alderetes',23);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (447,3865,'Alpachiri',23);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (448,3865,'Alto Verde',23);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (449,3892,'Amaicha del Valle',23);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (450,3892,'Anca Juli',23);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (451,3865,'Arcadia',23);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (452,3863,'Atahona',23);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (453,381,'Barrio Aeropuerto',23);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (454,3863,'Barrio Casa Rosada',23);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (455,3894,'Barrio San Jorge',23);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (456,381,'Bella Vista',23);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (457,3894,'Burruyacu',23);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (458,3863,'Campo de Herrera',23);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (459,3863,'Capitan Caceres',23);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (460,381,'Cebil Redondo',23);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (461,3862,'Choromoro',23);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (462,3892,'Colalao del Valle',23);
INSERT INTO CARACTERISTICA (`Id_caracteristica`,`Caracteristica`,`Localidad`,`Id_provincia`) VALUES (463,381,'Colombres',23);

INSERT INTO CONTACTOS (`Id_contacto`,`Telefono`,`Correo_electronico`,`Id_caracteristica`) VALUES (1,15896872,'anabellarosales@gmail.com',9);
INSERT INTO CONTACTOS (`Id_contacto`,`Telefono`,`Correo_electronico`,`Id_caracteristica`) VALUES (2,15369874,'rosariofranco@hotmail.com',54);
INSERT INTO CONTACTOS (`Id_contacto`,`Telefono`,`Correo_electronico`,`Id_caracteristica`) VALUES (3,15589632,'tamarasolares@outlook.com.ar',91);
INSERT INTO CONTACTOS (`Id_contacto`,`Telefono`,`Correo_electronico`,`Id_caracteristica`) VALUES (4,15247896,'francopavon@gmail.com',134);
INSERT INTO CONTACTOS (`Id_contacto`,`Telefono`,`Correo_electronico`,`Id_caracteristica`) VALUES (5,4589776,'ramirosabi@hotmail.com',229);
INSERT INTO CONTACTOS (`Id_contacto`,`Telefono`,`Correo_electronico`,`Id_caracteristica`) VALUES (6,4782358,'pameladuarte@live.com.ar',309);
INSERT INTO CONTACTOS (`Id_contacto`,`Telefono`,`Correo_electronico`,`Id_caracteristica`) VALUES (7,15069874,'agustinacanto@hotmail.com',405);
INSERT INTO CONTACTOS (`Id_contacto`,`Telefono`,`Correo_electronico`,`Id_caracteristica`) VALUES (8,4879362,'martinapintos@live.com.ar',445);
INSERT INTO CONTACTOS (`Id_contacto`,`Telefono`,`Correo_electronico`,`Id_caracteristica`) VALUES (9,15789632,'martinfasoli@gmail.com',389);
INSERT INTO CONTACTOS (`Id_contacto`,`Telefono`,`Correo_electronico`,`Id_caracteristica`) VALUES (10,15578424,'giuliapantone@outlook.com.ar',363);

INSERT INTO DOMICILIO (`Id_domicilio`,`Domicilio`,`Localidad`,`Id_provincia`) VALUES (1,'HUASCHA 3421','Agote',1);
INSERT INTO DOMICILIO (`Id_domicilio`,`Domicilio`,`Localidad`,`Id_provincia`) VALUES (2,'TALINDEZ 859','Singuil',2);
INSERT INTO DOMICILIO (`Id_domicilio`,`Domicilio`,`Localidad`,`Id_provincia`) VALUES (3,'ROCA TRES 7423','Sarmiento',4);
INSERT INTO DOMICILIO (`Id_domicilio`,`Domicilio`,`Localidad`,`Id_provincia`) VALUES (4,'AV. FUERZA AEREA 125','Santo Tome',6);
INSERT INTO DOMICILIO (`Id_domicilio`,`Domicilio`,`Localidad`,`Id_provincia`) VALUES (5,'ROQUE SAENZ PEÃ‘A 85','Ulapes',11);
INSERT INTO DOMICILIO (`Id_domicilio`,`Domicilio`,`Localidad`,`Id_provincia`) VALUES (6,'AV. COLON 358','Villa Llanquin',15);
INSERT INTO DOMICILIO (`Id_domicilio`,`Domicilio`,`Localidad`,`Id_provincia`) VALUES (7,'AV. VELEZ SARSFIELD 959','Aldao',20);
INSERT INTO DOMICILIO (`Id_domicilio`,`Domicilio`,`Localidad`,`Id_provincia`) VALUES (8,'TRISTAN NARVAJA 2222','Aguilares',23);
INSERT INTO DOMICILIO (`Id_domicilio`,`Domicilio`,`Localidad`,`Id_provincia`) VALUES (9,'PAEZ CALVO 758','Gobernador Gregores',19);
INSERT INTO DOMICILIO (`Id_domicilio`,`Domicilio`,`Localidad`,`Id_provincia`) VALUES (10,'BARADERO 32','Zanjitas',18);

INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (1,'MACRO','APTO',1);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (2,'MACRO','NO APTO',1);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (3,'MACRO','APTO',2);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (4,'MACRO','NO APTO',2);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (5,'MACRO','APTO',4);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (6,'MACRO','NO APTO',6);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (7,'MACRO','APTO',6);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (8,'MACRO','NO APTO',11);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (9,'MACRO','APTO',11);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (10,'SANTANDER','NO APTO',15);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (11,'SANTANDER','APTO',15);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (12,'SANTANDER','NO APTO',20);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (13,'SANTANDER','APTO',20);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (14,'SANTANDER','NO APTO',23);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (15,'SANTANDER','APTO',23);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (16,'SANTANDER','NO APTO',1);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (17,'SANTANDER','APTO',1);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (18,'SANTANDER','NO APTO',2);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (19,'HSBC','NO APTO',2);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (20,'HSBC','APTO',4);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (21,'HSBC','NO APTO',6);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (22,'HSBC','APTO',6);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (23,'HSBC','NO APTO',11);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (24,'HSBC','APTO',11);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (25,'HSBC','NO APTO',15);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (26,'HSBC','APTO',15);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (27,'HSBC','NO APTO',20);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (28,'HSBC','APTO',20);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (29,'ICBC','APTO',23);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (30,'ICBC','NO APTO',23);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (31,'ICBC','NO APTO',1);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (32,'ICBC','APTO',1);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (33,'ICBC','NO APTO',2);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (34,'ICBC','NO APTO',2);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (35,'ICBC','APTO',4);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (36,'ICBC','NO APTO',6);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (37,'BANCO DE CORDOBA','NO APTO',6);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (38,'BANCO DE LA PROVINCIA','APTO',11);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (39,'BANCO DE LA PROVINCIA','NO APTO',11);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (40,'BANCO DE LA PROVINCIA','APTO',15);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (41,'BANCO DE LA PROVINCIA','NO APTO',15);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (42,'BANCO DE LA PROVINCIA','APTO',20);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (43,'BANCO FRANCES','NO APTO',20);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (44,'BANCO FRANCES','APTO',23);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (45,'BANCO FRANCES','NO APTO',23);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (46,'BANCO FRANCES','APTO',1);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (47,'BANCO FRANCES','NO APTO',1);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (48,'BANCO FRANCES','APTO',2);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (49,'BANCO FRANCES','NO APTO',2);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (50,'BANCO FRANCES','APTO',4);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (51,'BANCO FRANCES','NO APTO',6);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (52,'BANCO FRANCES','APTO',6);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (53,'BANCO FRANCES','NO APTO',11);

INSERT INTO PERSONAS (`Id_personas`,`Nombre`,`Apellido`,`Dni`,`Id_domicilio`,`Id_banco`,`Id_scorin`,`Id_contacto`) VALUES (1,'Anabella','Rosales',25896896,1,5,5,1);
INSERT INTO PERSONAS (`Id_personas`,`Nombre`,`Apellido`,`Dni`,`Id_domicilio`,`Id_banco`,`Id_scorin`,`Id_contacto`) VALUES (2,'Rosario','Franco',34589632,2,6,8,2);
INSERT INTO PERSONAS (`Id_personas`,`Nombre`,`Apellido`,`Dni`,`Id_domicilio`,`Id_banco`,`Id_scorin`,`Id_contacto`) VALUES (3,'Tamara','Solares',20158796,3,8,3,3);
INSERT INTO PERSONAS (`Id_personas`,`Nombre`,`Apellido`,`Dni`,`Id_domicilio`,`Id_banco`,`Id_scorin`,`Id_contacto`) VALUES (4,'Franco','Pavon',16574126,4,7,6,4);
INSERT INTO PERSONAS (`Id_personas`,`Nombre`,`Apellido`,`Dni`,`Id_domicilio`,`Id_banco`,`Id_scorin`,`Id_contacto`) VALUES (5,'Ramiro','Sabi',6589741,5,9,9,5);
INSERT INTO PERSONAS (`Id_personas`,`Nombre`,`Apellido`,`Dni`,`Id_domicilio`,`Id_banco`,`Id_scorin`,`Id_contacto`) VALUES (6,'Pamela','Duarte',93875125,6,50,7,6);
INSERT INTO PERSONAS (`Id_personas`,`Nombre`,`Apellido`,`Dni`,`Id_domicilio`,`Id_banco`,`Id_scorin`,`Id_contacto`) VALUES (7,'Agustina','Canto',42873015,7,23,4,7);
INSERT INTO PERSONAS (`Id_personas`,`Nombre`,`Apellido`,`Dni`,`Id_domicilio`,`Id_banco`,`Id_scorin`,`Id_contacto`) VALUES (8,'Martina','Pintos',40976325,8,35,10,8);
INSERT INTO PERSONAS (`Id_personas`,`Nombre`,`Apellido`,`Dni`,`Id_domicilio`,`Id_banco`,`Id_scorin`,`Id_contacto`) VALUES (9,'Martin','Fasoli',7891356,9,34,9,9);
INSERT INTO PERSONAS (`Id_personas`,`Nombre`,`Apellido`,`Dni`,`Id_domicilio`,`Id_banco`,`Id_scorin`,`Id_contacto`) VALUES (10,'Giulia','Pantone',20478963,10,41,8,10);

/*VISTAS*/

CREATE VIEW informacion_bancaria.vw_scorin_mayor AS SELECT * FROM informacion_bancaria.personas where Id_scorin > 5;

CREATE VIEW informacion_bancaria.vw_telefonos AS 
select nombre, apellido, id_caracteristica caracteristica, telefono 
from informacion_bancaria.personas a, informacion_bancaria.contactos b 
where a.id_contacto = b.id_contacto;

CREATE VIEW informacion_bancaria.vw_domicilio AS 
select nombre, apellido, domicilio, nombre_provincia provincia
from informacion_bancaria.personas a, informacion_bancaria.domicilio b, informacion_bancaria.provincia c
where a.Id_domicilio = b.Id_domicilio
and b.Id_provincia = c.Id_provincia;

CREATE VIEW informacion_bancaria.vw_correo_electronico AS 
select nombre, apellido, id_caracteristica caracteristica, correo_electronico
from informacion_bancaria.personas a, informacion_bancaria.contactos b 
where a.id_contacto = b.id_contacto;

CREATE VIEW informacion_bancaria.vw_estado_bancario AS 
SELECT nombre, apellido, nombre_banco banco, estado, nombre_provincia provincia 
FROM informacion_bancaria.personas a, informacion_bancaria.registro_bancario b, informacion_bancaria.provincia c 
where  a.Id_banco = b.Id_banco 
and b.Id_provincia = c.Id_provincia;

/*FUNCION 1*/

DELIMITER $$
USE informacion_bancaria$$
CREATE FUNCTION promedio_scorin (total_scorin int, total_personas int) RETURNS FLOAT
NO SQL
BEGIN 

declare promedio_scorin FLOAT;

SET promedio_scorin = ((total_scorin) / (total_personas));

RETURN promedio_scorin;

END$$

DELIMITER ;

/*CONSULTA DE RETORNO

select promedio_scorin (75,10) as PROMEDIO_SCORIN;*/


/*FUNCION 2*/

DELIMITER $$
USE informacion_bancaria$$
CREATE FUNCTION f_provincia (p_id_provincia INT)
RETURNS VARCHAR(100)
reads sql data

BEGIN

	DECLARE resultado VARCHAR(100);
	SET resultado = (SELECT nombre_provincia from informacion_bancaria.provincia where id_provincia = p_id_provincia);

RETURN resultado;
END$$

DELIMITER ;

/*CONSULTAS DE RETORNO

SELECT nombre_banco, estado, f_provincia(id_provincia) as provincia from informacion_bancaria.registro_bancario;

SELECT caracteristica, f_provincia(id_provincia) as provincia, localidad FROM informacion_bancaria.caracteristica;*/

/*STORED PROCEDURES 1*/

DELIMITER $$
USE `informacion_bancaria`$$
CREATE PROCEDURE `p_ordena_scorin`( IN nombre_campo VARCHAR(100) , IN ordenamiento ENUM('ASC' ,'DESC',''), IN tabla_consulta VARCHAR(100) )
BEGIN

/*le indico a mi if que cuando el registro de nombre_campo sea distinto a 'vacio' me setee la variable accion, 
donde, como al final de una consulta me concatena la acción que quiero llevara a cabo (order by) con el nombre_campo por el cual toma el orden.
Si no, setear la variable accion = null*/

 IF nombre_campo	 != '' THEN
		SET @accion = CONCAT(' ORDER BY ' , nombre_campo);
	ELSE
		SET @accion = null;
	END IF;
    
/*cuando el ordenamiento es distinto a 'vacio' seteo la variable asc_desc, concatenando el espacio para ASC y DESC mas el ordenamiento.
Si no, setear la variable asc_desc = null*/  
  
    IF ordenamiento != '' THEN
		SET @asc_desc = CONCAT(' ' , ordenamiento);
	ELSE
		SET @asc_desc = null;
	END IF;

/*declaro como quiero y que parametros necesito para llamar a mi SP*/
SET @clausula_scorin = CONCAT('SELECT * FROM ', tabla_consulta ,@accion,@asc_desc);

PREPARE runSQL FROM @clausula_scorin;
EXECUTE runSQL;
DEALLOCATE PREPARE runSQL;
    
END$$

DELIMITER ;
;

/*CONSULTA DE RETORNO

call p_ordena_scorin('dni','asc', 'personas');
call p_ordena_scorin('scorin_bancario','desc', 'scorin_socio_economico');*/

/*STORED PROCEDURES 2*/

DELIMITER $$
USE `informacion_bancaria`$$
CREATE PROCEDURE `insert_provincia` (IN nombre_provincia varchar(100))
BEGIN
set @idMax = (select max(id_provincia) from informacion_bancaria.provincia) +1;
    INSERT INTO informacion_bancaria.provincia VALUES (@idMax,nombre_provincia);
END$$

DELIMITER ;

/*CONSULTA DE RETORNO

call insert_provincia ('prueba');

select * from informacion_bancaria.provincia;*/

/*STORED PROCEDURES 3 bonus*/

DELIMITER $$
USE `informacion_bancaria`$$
CREATE PROCEDURE `salida_scorin`(in p_scorin_bancario int)
BEGIN

/*llamo a la sentencia donde voy a levantar la información y ordeno de forma descendente 
por id_scorin de la tabla scorin_socio_economico que es la tabla madre del puntaje*/

select nombre, apellido, dni, a.Id_scorin, estado from informacion_bancaria.scorin_socio_economico a,
			  informacion_bancaria.personas b,
              informacion_bancaria.registro_bancario c
              where a.id_scorin = b.Id_scorin
              and b.id_banco = c.Id_banco
              order by a.Id_scorin DESC;

/*declaro la clausula que quiero que ejecute mi SP*/
SET @clausula_scorin = CONCAT('SELECT * FROM informacion_bancaria.scorin_socio_economico', @scorin);

PREPARE runSQL FROM @clausula_scorin;
EXECUTE runSQL;
DEALLOCATE PREPARE runSQL;
    
END$$

DELIMITER ;
;

/*CONSULTA DE RETORNO

call salida_scorin(1)*/

/*TRIGGERS*/

/*1_Creacion de la bitacora contactos para alojar nuestros log de modificaciones*/

create table  bitacora_contactos (
id_movimiento int primary key not null auto_increment,
fecha datetime not null,
usuario_ultima_modificacion varchar(100),
registro_nuevo varchar(100),
accion varchar(100));

/*2_Creación de disparador de before insert, esto quiere decir, registra todas las nuevas inserciones de datos sobre la tabla*/

create trigger `insert_log_accion`
before insert on `contactos`
for each row
insert into `bitacora_contactos` (fecha, usuario_ultima_modificacion, registro_nuevo, accion)
values (now(), user(), new.telefono, 'nuevo_registro');

/*3_Creación de disparador de after update, osea, de modificaciones de registros que se realicen dentro de la tabla*/

create trigger `update_log_accion_after`
after update on `contactos`
for each row
insert into `bitacora_contactos` (fecha, usuario_ultima_modificacion, registro_nuevo, accion)
values (now(), user(), new.telefono, 'update_registro');

/*CONSULTA DE RETORNO*/

/*Insert*/

/*
--Ejecuto la linea de insert
INSERT INTO CONTACTOS (`Id_contacto`,`Telefono`,`Correo_electronico`,`Id_caracteristica`) VALUES (null,17896582,'prueba@gmail.com',11);
--Consulto tabla informacion_bancaria.contactos para corroborar que efectivamente el registro se insertó correctamente
SELECT * FROM informacion_bancaria.contactos where Correo_electronico = 'prueba@gmail.com';
SELECT * FROM informacion_bancaria.contactos where Telefono = '17896582';
--Finalmente verifico el registro de insert en la tabla bitacora_contactos creada al efecto
SELECT * FROM bitacora_contactos;
*/

/*Update*/

/*
--Ejecuto la linea de update
UPDATE informacion_bancaria.contactos SET Telefono = '1557842' where id_contacto = '5';
--Consulto tabla informacion_bancaria.contactos para corroborar que efectivamente el registro se modificó correctamente
SELECT * FROM informacion_bancaria.contactos where id_contacto = '5';
--Finalmente verifico el registro de update en la tabla bitacora_contactos creada al efecto
SELECT * FROM bitacora_contactos;
*/



/*1_Creacion de la bitacora provincia para alojar nuestros log de modificaciones*/

create table  bitacora_provincia (
id_movimiento int primary key not null auto_increment,
fecha datetime not null,
usuario_ultima_modificacion varchar(100),
old_id_provincia int,
old_nombre_provincia varchar(100),
registro_nuevo varchar(100),
accion varchar(100));

/*2_ creación de disparador de before delete, con esto decimos que aloja en la tabla de logs todos los registros que se eliminen sobre la tabla*/

create trigger `delete_log_accion`
before delete on `provincia`
for each row
insert into `bitacora_provincia` (fecha, usuario_ultima_modificacion, old_id_provincia, old_nombre_provincia, accion)
values (now(), user(), old.id_provincia, old.nombre_provincia, 'delete_registro');

/*3_creación de disparador de inserción before, esto quiere decir, registra todas las nuevas inserciones de datos sobre la tabla*/

create trigger `insert_log_accion_prov`
before insert on `provincia`
for each row
insert into `bitacora_provincia` (fecha, usuario_ultima_modificacion, registro_nuevo, accion)
values (now(), user(), new.nombre_provincia, 'insert_registro');

/*CONSULTA DE RETORNO*/

/*Delete*/

/*
--Primero ejecutar el permiso para deletear registro FK
SET FOREIGN_KEY_CHECKS = 0;
--Como segundo paso ejecuto la linea de delete
DELETE FROM informacion_bancaria.provincia where Id_provincia in (12);
--Consulto tabla informacion_bancaria.provincia para corroborar que efectivamente el registro ya no existe
SELECT * FROM informacion_bancaria.provincia where Id_provincia = 12;
--Finalmente verifico el registro de delete en la tabla bitacora_provincia creada al efecto
SELECT * FROM bitacora_provincia;
*/

/*Insert*/

/*
--Ejecuto la linea de insert
INSERT INTO PROVINCIA (`Id_provincia`,`nombre_provincia`) VALUES (null,'CHACO_PRUEBA');
--Consulto tabla informacion_bancaria.provincia para corroborar que efectivamente el registro se insertó de manera correcta
SELECT * FROM informacion_bancaria.provincia where nombre_provincia = 'CHACO_PRUEBA';
--Finalmente verifico el registro de insert en la tabla bitacora_provincia creada al efecto
SELECT * FROM bitacora_provincia;
*/

/*CREACION DE PERMISOS Y GRANT*/

use mysql;

/*USUARIO ANALISTAS*/

/*1_La creacion de usuario tiene la capacidad de asignar un perfil a una persona o grupo de personas para navegar con las tablas en la base de datos. Puede haber distintos perfiles y cada perfil puede tener distintos permisos para trabajar sobre las tablas*/

create user 'analistas'@'localhost' identified by 'Anto100';

/*2_El permiso de select posibilita solo la lectura de los datos de las tablas*/

grant select on *.* to 'analistas'@'localhost';

/*USUARIO ADMINISTRADOR*/

/*1_La creacion de usuario tiene la capacidad de asignar un perfil a una persona o grupo de personas para navegar con las tablas en la base de datos. Puede haber distintos perfiles y cada perfil puede tener distintos permisos para trabajar sobre las tablas*/

create user 'administrador'@'localhost' identified by 'Anto100';

/*2_Los permisos de select, insert y update posibilita realizar la lectura, inserción y modificación de los datos de las tablas respectivamente*/

grant select, insert, update on *.* to 'administrador'@'localhost';

/*CONSULTA DE RETORNO
select * from user;
*/

/*SENTENCIA DE SUBLENGUAJE TCL N° 1*/

USE informacion_bancaria;

/*Inicio de la transacción*/
START TRANSACTION;

/*Ejecutar el permiso para deletear registro FK*/
SET FOREIGN_KEY_CHECKS = 0;

/*Ejecutar el comando DELETE para el registro a eliminar*/
DELETE FROM
informacion_bancaria.domicilio
WHERE Id_domicilio = '4';
    
/*Ejecutar el rollback*/
rollback;

/*Ejecutar el commit*/
commit;

/*Select a la tabla*/
select * from informacion_bancaria.domicilio;

/*Insert del dato deleteado

INSERT INTO DOMICILIO (`Id_domicilio`,`Domicilio`,`Localidad`,`Id_provincia`) VALUES (4,'AV. FUERZA AEREA 125','Santo Tome',6);*/


/*SENTENCIA DE SUBLENGUAJE TCL N° 2*/

USE informacion_bancaria;

/*Inicio de la transacción*/
START TRANSACTION;

/*Incerción de registros*/
savepoint inicio;
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (NULL,'REGISTROGENERICO_1','NO APTO',4);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (NULL,'REGISTROGENERICO_2','APTO',6);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (NULL,'REGISTROGENERICO_3','NO APTO',7);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (NULL,'REGISTROGENERICO_4','APTO',10);
SAVEPOINT lote1al4;
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (NULL,'REGISTROGENERICO_5','NO APTO',3);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (NULL,'REGISTROGENERICO_6','APTO',9);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (NULL,'REGISTROGENERICO_7','NO APTO',8);
INSERT INTO REGISTRO_BANCARIO (`Id_banco`,`Nombre_banco`,`Estado`,`Id_provincia`) VALUES (NULL,'REGISTROGENERICO_8','APTO',1);
SAVEPOINT lote5al8;

ROLLBACK TO lote1al4;

/* elimina el savepoint */

release savepoint lote1al4;

/*Select a la tabla*/

select * from informacion_bancaria.registro_bancario;

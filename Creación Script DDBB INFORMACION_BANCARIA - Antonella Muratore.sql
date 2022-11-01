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

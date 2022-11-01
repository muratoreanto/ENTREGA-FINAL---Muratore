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
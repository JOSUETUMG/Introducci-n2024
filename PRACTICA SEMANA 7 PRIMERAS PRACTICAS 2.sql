-- DDL 
-- crear base de datos.

CREATE DATABASE escuela;

-- Borrar base de datos
DROP DATABASE escuela;

 
-- Vamos a indicar que base de datos usar
USE escuela;

-- crear tabla 
CREATE TABLE alumno (
	carnet VARCHAR(20) NOT NULL,
    primer_nombre VARCHAR(100) NOT NULL,
    primer_apellido VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    genero VARCHAR(10),
    telefono VARCHAR(10) NOT NULL,
    correo_electronico VARCHAR(100) NOT NULL
);

-- borrar tabla
-- DROP TABLE alumno;

-- INSET para ingresar datos
-- 
INSERT INTO alumno (carnet,primer_nombre, primer_apellido,
                    fecha_nacimiento, genero, telefono,
                    correo_electronico) 
                    VALUES ('0907-24-6763', 'Angel', 'Mejia',
						'2004-01-01', 'Masculino', '40301921',
                        'amejia@miumg.edu.gt'), ('0907-24-2293', 'Jonathan', 'Figueroa',
						'2005-01-01', 'Masculino', '90837323',
                        'jfigueroa@miumg.edu.gt'), ('0907-24-2663', 'Saul', 'Gonzales',
						'1999-01-01', 'Masculino', '24335351',
                        'sgonzales@miumg.edu.gt'),('0907-24-2863', 'Jasson', 'Garcia',
						'2003-01-01', 'Masculino', '78234564',
                        'jgarcia@miumg.edu.gt');

-- CONSULTAR con SELECT DML
SELECT * FROM alumno;

-- ELIMINAMOS TODOS LOS REGISTROS DE LA TABLA
TRUNCATE TABLE alumno;

ALTER TABLE alumno ADD CONSTRAINT PRIMARY KEY (carnet);

-- SELECCIONAR INDIVIDUAL
SELECT carnet FROM alumno;
-- SELECCIONAR TODOS LOS CAMPOOS
SELECT * FROM alumno;
-- SELECCIONAR LOS CAMPOS INDICADOS
SELECT carnet, primer_nombre, primer_apellido FROM alumno;
-- BUSCAR ENTRE REGISTROS
SELECT carnet, primer_nombre
FROM Alumno
WHERE primer_nombre = 'Saul' ;
-- iniciar en GO
SELECT carnet, primer_apellido
FROM Alumno
Where Primer_apellido LIKE ('go%');
-- terminan en S
SELECT Carnet, primee_nombre, primer_apellido
FROM Alumno;


-- actualizar datos
-- tambien podermos usar el nombre de la base de datos y la tabla para accedr a ella
UPDATE escuela.alumno
SET telefono = '30401020'
WHERE primer_apellido LIKE ('G%');

DELETE FROM alumno
WHERE carnet = '0907-24-1568';

-- En where pude utilizar igual (=), Diferente (<>)
-- mayor que (>), menor que (<)

CREATE TABLE notas (
carnet VARCHAR(20) not null,
clase VARCHAR(100) not null,
parcial int,
nota int 
);








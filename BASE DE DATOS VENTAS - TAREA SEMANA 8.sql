CREATE DATABASE ventas;

USE ventas;

CREATE TABLE cabecera_factura(
numero VARCHAR(20) PRIMARY KEY,
fecha DATETIME NOT NULL, 
codigo_cliente INT NOT NULL
);

CREATE TABLE producto(
codigo INT NOT NULL PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
precio_actual DECIMAL(10,2) NOT NULL
);

CREATE TABLE cliente(
codigo INT NOT NULL PRIMARY KEY,
primer_nombre VARCHAR(100) NOT NULL,
primer_apellido VARCHAR(100) NOT NULL,
direccion VARCHAR(100) NULL,
nit VARCHAR(20) NOT NULL
);

CREATE TABLE detalle_factura(
numero_factura VARCHAR(20) NOT NULL,
linea INT NOT NULL,
codigo_producto INT NOT NULL,
cantidad DECIMAL(10,2) NOT NULL,
precio DECIMAL(10,2) NOT NULL,
total DECIMAL(10,2) NOT NULL
);

ALTER TABLE cabecera_factura ADD CONSTRAINT FK_FACTURA_CLIENTE FOREIGN KEY 
(codigo_cliente) REFERENCES cliente(codigo);

ALTER TABLE detalle_factura ADD CONSTRAINT FK_DETALLE_FACTURA_PRODUCTO FOREIGN KEY 
(codigo_producto) REFERENCES producto(codigo);

ALTER TABLE detalle_factura ADD CONSTRAINT FK_ENCABEZADO_FACTURA FOREIGN KEY
(numero_factura) REFERENCES cabecera_factura(numero);

ALTER TABLE detalle_factura ADD CONSTRAINT PK_DETALLE_FACTURA PRIMARY KEY 
(numero_factura,linea);

INSERT INTO cliente(codigo, primer_nombre,primer_apellido,direccion, nit) 
					VALUES (1,'rodrigo', 'mendez', 'jalapa', 25344);
                    
 INSERT INTO cliente(codigo, primer_nombre,primer_apellido,direccion, nit) 
					VALUES (2,'manuel', 'rodriguez', 'guatemala', 25456), 
							(3,'andrea', 'perez', 'izabal', 25290),
                            (4,'lupita', 'lopez', 'jutiapa', 25610),
                            (5,'julio', 'figueroa', 'peten', 25090);
                    
 INSERT INTO producto(codigo,nombre,precio_actual)
			VALUES (100,'camisa', 80.00),
					(101, 'calcetines', 20.00),
                    (102, 'playera', 40.00),
                    (103, 'vestido', 90.00),
                    (104, 'gorra', 50.00);
                    
INSERT INTO cabecera_factura (numero,fecha,codigo_cliente)
			VALUES(1,now(),1),
					(2, now(), 2),
                    (3, now(), 3),
                    (4, now(), 4),
                    (5, now(), 5);
                    
 INSERT INTO detalle_factura(numero_factura,linea,codigo_producto,precio,total,cantidad)
					VALUES(1,56,100,80.00,240.00,3),
							(2,57,101,20.00,100.00,5),
                            (3,58,102,40.00,320.00,8),
                            (4,59,103,90.00,270.00,3),
                            (5,60,104,50.00,200.00,4);

SELECT * FROM cabecera_factura;

SELECT * FROM producto;

SELECT * FROM cliente;

SELECT * FROM detalle_factura;

SELECT nombre FROM producto;

SELECT precio_actual FROM producto;

SELECT codigo FROM producto;

SELECT codigo,nombre,precio_actual FROM producto;

SELECT primer_nombre FROM cliente;

SELECT numero_factura,linea,codigo_producto,precio,total,cantidad FROM detalle_factura;

SELECT primer_nombre, primer_apellido FROM cliente;
DROP DATABASE IF EXISTS tipos_datos;
CREATE DATABASE tipos_datos;
USE tipos_datos;

CREATE TABLE tipodatos(
	flotante FLOAT(5,2),
	decimales DECIMAL(7,3),
	codigo CHAR(4),
	texto TEXT,
	dia DATE,
	momento DATETIME,
	hora TIME,
	color ENUM('Rojo', 'Verde', 'Azul')
);

INSERT INTO tipodatos VALUES(123.12, 23.22, '1234', 'ASDJIHIsgjo', '2024-09-04',
	'2024-09-04 11:59:00', '11:59:27', 'Verde');

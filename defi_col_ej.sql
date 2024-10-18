DROP DATABASE IF EXISTS ejercicios;
CREATE DATABASE ejercicios;
USE ejercicios;

CREATE TABLE ej1 (
	a INT,
	b INT NOT NULL DEFAULT 0,
	c VARCHAR(5),
	d VARCHAR(5) DEFAULT 'hello'
)

CREATE TABLE ej2 (
	a INT NOT NULL,
	b INT NOT NULL DEFAULT 0,
	c VARCHAR(5),
	d VARCHAR(5) DEFAULT 'hello'
);

INSERT INTO ej2 (a, b, d) VALUES (5, 3, 'hello');
INSERT INTO ej2 (a, b, c) VALUES (1, 2, 'texto');
INSERT INTO ej2 (c, a, d) VALUES ('palab', 8, NULL);
INSERT INTO ej2 (a) VALUES (9);
INSERT INTO ej2 (a, d) VALUES (9, NULL);

SELECT * FROM ej2;



CREATE TABLE ej3 (
	a INT AUTO_INCREMENT PRIMARY KEY,
	b VARCHAR(5) UNIQUE KEY COMMENT 'Columna importante',
	c VARCHAR(5) DEFAULT 'hola'
);

INSERT INTO ej3 (b, c) VALUES
	('papap', 'prue'),
	('batma', 'cosa');
INSERT INTO ej3 VALUES
	(5, 'bla', 'pepe');
INSERT INTO  ej3 (b, c) VALUES
('otra', 'mas');

SELECT * FROM ej3;



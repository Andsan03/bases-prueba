DROP DATABASE IF EXISTS juegos;
CREATE DATABASE juegos;
USE juegos;

CREATE TABLE Desarrollador (
	nombre VARCHAR(50) PRIMARY KEY
);

CREATE TABLE Juegos (
	id INT(50) PRIMARY KEY,
	nombre VARCHAR(50),
	fk_desarrollador VARCHAR(50),
	FOREIGN KEY (fk_desarrollador) REFERENCES Desarrollador(nombre)
	  -- ON DELETE SET NULL
);

CREATE TABLE Personaje (
	nombre VARCHAR(50) PRIMARY KEY,
	vida FLOAT,
	fk_juegos INT(50),
	FOREIGN KEY(fk_juegos) REFERENCES Juegos(id)
	  ON DELETE SET NULL
);

INSERT INTO Desarrollador VALUES('Buggy Soft');
INSERT INTO Juegos VALUES
	(0, 'Las aventuraas del capitán Salami', 'Buggy Soft'),
	(1, 'Las aventuras del capitán Salami - Vegan ed.', 'Buggy Soft');
INSERT INTO Personaje VALUES
	('Cap.Salami', 10.0, 0),
	('Señor cuchiller', 10.0, 0),
	('Cap. Seitán', 10.0, 1),
	('Señor Cucharilla', 10.0, 1);

SELECT * FROM Personaje;
SELECT * FROM Juegos;
SELECT * FROM Desarrollador;

-- DELETE FROM Juegos WHERE id=0;
DELETE FROM Desarrollador where nombre='Buggy Soft';



DROP DATABASE IF EXISTS futbol;
CREATE DATABASE futbol;
USE futbol;

CREATE TABLE equipo (
	id INT PRIMARY KEY,
	nombre VARCHAR(100),
	ciudad VARCHAR(100)
);

CREATE TABLE jugadores (
	dni VARCHAR(100) PRIMARY KEY,
	nacionalidad VARCHAR(100),
	dorsal INT,
	altura FLOAT,
	id_equipo INT,
	FOREIGN KEY (id_equipo) REFERENCES equipo(id)
);

INSERT INTO equipo VALUES
(1, 'Real Madrid', 'Madrid'),
(2, 'Barcelona', 'Barcelona');

INSERT INTO jugadores VALUES
('12345678A', 'Español', 69, 1.69, 1),
('87654321B', 'Marroqui', 7, 1.99, 1),
('76574321C', 'Argentino', 10, 1.49, 2),
('12356621Z', 'Brazileño', 11, 1.78, 2);


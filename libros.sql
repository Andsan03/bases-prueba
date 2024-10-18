DROP DATABASE IF EXISTS libreria;

CREATE DATABASE libreria;

USE libreria;


CREATE TABLE autor (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(100),
	dni VARCHAR(100) UNIQUE KEY
);


CREATE TABLE tienda (
	cif VARCHAR(100) PRIMARY KEY,
	ubicacion VARCHAR(100),
	web VARCHAR(100)
);


CREATE TABLE libros(
	isbn VARCHAR(255) PRIMARY KEY,
	titulo VARCHAR(255),
	genero VARCHAR(100) DEFAULT 'Fantasia',
	precio DOUBLE CHECK (precio > 50),
	fecha DATE CHECK (fecha > '2014-01-01'),
	id_autor INT,
	cif_tienda VARCHAR(100),
	FOREIGN KEY (id_autor) REFERENCES autor(id),
	FOREIGN KEY (cif_tienda) REFERENCES tienda(cif)
);






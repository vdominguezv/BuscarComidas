CREATE DATABASE BuscarComidas;
USE BuscarComidas;

CREATE TABLE tUsuario (
    id_usuario INTEGER PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    email VARCHAR(100),
    contrasena(100),
);

CREATE TABLE tRestaurante (
    id_restaurante INTEGER PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30),
    descripcion VARCHAR(200),
    latitud DECIMAL(10, 5),
    longitud DECIMAL(10, 5),
    ubicacion VARCHAR(100)
);

CREATE TABLE tFavorito(
    id_favorito INTEGER PRIMARY KEY AUTO_INCREMENT,
    restaurante_id INTEGER,
    usuario_id INTEGER,
    FOREIGN KEY (restaurante_id) REFERENCES tRestaurante(id_restaurante),
    FOREIGN KEY (usuario_id) REFERENCES tUsuario(id_usuario)
);
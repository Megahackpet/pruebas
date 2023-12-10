-- Creación de la tabla de usuarios
CREATE TABLE usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    email VARCHAR(100)
);

-- Creación de la tabla de publicaciones
CREATE TABLE publicaciones (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    contenido TEXT,
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- Inserción de datos en la tabla usuarios
INSERT INTO usuarios (nombre, email) VALUES
('Usuario 1', 'usuario1@example.com'),
('Usuario 2', 'usuario2@example.com'),
('Usuario 3', 'usuario3@example.com');

-- Inserción de datos en la tabla publicaciones
INSERT INTO publicaciones (titulo, contenido, usuario_id) VALUES
('Título 1', 'Contenido de la publicación 1', 1),
('Título 2', 'Contenido de la publicación 2', 2),
('Título 3', 'Contenido de la publicación 3', 1);

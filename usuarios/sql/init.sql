CREATE TABLE usuarios (
    usuario VARCHAR(100) PRIMARY KEY,
    correo VARCHAR(150),
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    password VARCHAR(255),
    telefono VARCHAR(50),
    fecha_registro DATE,
    estado VARCHAR(50),
    rol VARCHAR(50)
);

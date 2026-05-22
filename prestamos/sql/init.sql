CREATE TABLE prestamos (
    id INT PRIMARY KEY,
    usuario VARCHAR(100),
    nombre_usuario VARCHAR(255),
    correo_usuario VARCHAR(255),
    codigo_libro VARCHAR(50),
    titulo_libro VARCHAR(255),
    tipo_prestamo VARCHAR(50),
    fecha_prestamo DATETIME,
    fecha_devolucion DATETIME,
    fecha_renovacion DATETIME,
    estado VARCHAR(50),
    solicitud_devolucion BOOLEAN,
    multa_valor FLOAT,
    multa_pagada BOOLEAN
);

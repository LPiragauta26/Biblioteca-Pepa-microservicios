const mysql = require('mysql2/promise');
const connection = mysql.createPool({
    host: process.env.DB_HOST || '127.0.0.1',
    user: 'root',
    password: process.env.DB_PASSWORD || 'Laura',
    database: process.env.DB_NAME || 'libros_db',
    port: 3306,
    charset: 'utf8mb4'
});

async function traerLibros() {
    const result = await connection.query('SELECT * FROM libros');
    return result[0];
}

async function traerLibro(codigo) {
    const result = await connection.query('SELECT * FROM libros WHERE codigo = ?', [codigo]);
    return result[0][0];
}

async function crearLibro(codigo, titulo, autor, genero, cantidad_disponible) {
    await connection.query(
        'INSERT INTO libros (codigo, titulo, autor, genero, cantidad_disponible) VALUES(?,?,?,?,?)',
        [codigo, titulo, autor, genero, cantidad_disponible]
    );
}

async function actualizarLibro(codigo, cantidad_disponible) {
    await connection.query('UPDATE libros SET cantidad_disponible=? WHERE codigo=?', [cantidad_disponible, codigo]);
}

async function actualizarLibroCompleto(codigo, titulo, autor, genero, cantidad_disponible) {
    await connection.query(
        'UPDATE libros SET titulo=?, autor=?, genero=?, cantidad_disponible=? WHERE codigo=?',
        [titulo, autor, genero, cantidad_disponible, codigo]
    );
}

async function eliminarLibro(codigo) {
    await connection.query('DELETE FROM libros WHERE codigo = ?', [codigo]);
}

module.exports = {
    traerLibros,
    traerLibro,
    crearLibro,
    actualizarLibro,
    actualizarLibroCompleto,
    eliminarLibro
};

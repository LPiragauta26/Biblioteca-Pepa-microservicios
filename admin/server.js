const express = require('express');
const mysql = require('mysql2');
const app = express();
const port = 3004;

const db = mysql.createConnection({
  host: process.env.DB_HOST || 'mysql',
  user: 'root',
  password: process.env.DB_PASSWORD || 'Laura',
  database: process.env.DB_NAME || 'admin_db',
  charset: 'utf8mb4'
});

app.use(express.json());

// Ruta de prueba
app.get('/admin', (req, res) => {
  res.json({ message: 'Microservicio Admin activo' });
});

// Ejemplo: listar administradores desde la tabla ya existente
app.get('/admin/list', (req, res) => {
  db.query('SELECT * FROM administradores', (err, results) => {
    if (err) {
      return res.status(500).json({ error: err.message });
    }
    res.json(results);
  });
});

app.listen(port, () => {
  console.log(`Admin service running on port ${port}`);
});

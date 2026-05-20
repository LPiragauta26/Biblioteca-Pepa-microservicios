# Biblioteca Pepa — Sistema de Gestión de Biblioteca

## Descripción
Sistema de gestión de biblioteca basado en microservicios desplegado en Docker Swarm con balanceo de carga mediante HAProxy, y análisis de datos a gran escala con Apache Spark.

## Arquitectura

### Parte 1 — Docker Swarm
- **MS1 - Usuarios** (puerto 3001): Gestión de usuarios y autenticación
- **MS2 - Libros** (puerto 3002): Control de inventario de libros  
- **MS3 - Préstamos** (puerto 3003): Registro y control de préstamos
- **MS4 - Admin** (puerto 3004): Gestión administrativa
- **HAProxy**: Proxy inverso con balanceo de carga round-robin
- **Frontend**: Nginx sirviendo la interfaz web
- **MySQL**: Base de datos compartida

### Parte 2 — Apache Spark
- Dataset: Sistema de Biblioteca Pública (Kaggle) — 50,000 préstamos
- Análisis: Top libros, géneros populares, usuarios activos, estados, tipos, multas
- Dashboard: Visualización de resultados en `pepa.company/dashboard.html`

## Requisitos
- Vagrant
- VirtualBox
- Docker + Docker Swarm

## Despliegue

### 1. Levantar las VMs
```bash
vagrant up
```

### 2. Inicializar Docker Swarm (en servidorUbuntu2 — manager)
```bash
docker swarm init --advertise-addr 192.168.100.3
```

### 3. Unir el worker (en servidorUbuntu1)
```bash
docker swarm join --token <TOKEN> 192.168.100.3:2377
```

### 4. Desplegar el stack (en el manager)
```bash
cd /vagrant/microservicios
docker stack deploy -c docker-compose.swarm.yml biblioteca
```

### 5. Verificar servicios
```bash
docker service ls
```

### 6. Ejecutar análisis Spark
```bash
cd /vagrant/spark
docker compose -f docker-compose.spark.yml up
```

## Acceso
- **Frontend**: http://pepa.company (o http://192.168.100.2:8080)
- **APIs**: http://192.168.100.3/api/usuarios
- **HAProxy Stats**: http://192.168.100.3:8404/stats
- **Dashboard Spark**: http://pepa.company/dashboard.html

## Credenciales admin
- Usuario: `admin`
- Password: `admin123`

## Hosts (Windows)
Agregar en `C:\Windows\System32\drivers\etc\hosts`:

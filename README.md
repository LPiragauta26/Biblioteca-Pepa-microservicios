# Biblioteca Pepa — Sistema de Gestión de Biblioteca

## Descripción

Sistema de gestión de biblioteca basado en microservicios desplegado en Docker Swarm con balanceo de carga mediante HAProxy y procesamiento de datos a gran escala utilizando Apache Spark.

El sistema permite:

* Gestión de usuarios
* Inventario de libros
* Control de préstamos
* Administración del sistema
* Análisis masivo de datos históricos de préstamos

---

# Arquitectura General

## Parte 1 — Infraestructura y Microservicios

### Componentes

* **MS1 - Usuarios** (puerto 3001): Gestión de usuarios y autenticación
* **MS2 - Libros** (puerto 3002): Control de inventario de libros
* **MS3 - Préstamos** (puerto 3003): Registro y control de préstamos
* **MS4 - Admin** (puerto 3004): Gestión administrativa
* **HAProxy**: Proxy inverso con balanceo de carga Round Robin
* **Frontend (Nginx)**: Interfaz web del sistema
* **MySQL**: Base de datos compartida
* **Docker Swarm**: Orquestación de contenedores

---

## Parte 2 — Analítica de Datos con Apache Spark

### Fuente de Datos

El sistema utiliza un dataset publicado en Kaggle para realizar análisis masivos de préstamos bibliotecarios.

* Dataset: **Sistema de Biblioteca Pública**
* Autor: Laura Piragauta Pinzón
* Plataforma: [https://www.kaggle.com/datasets/laurapiragautapinzn/sistema-de-biblioteca-pblica](https://www.kaggle.com/datasets/laurapiragautapinzn/sistema-de-biblioteca-pblica)
* Registros: ~50,000 préstamos
* Formato: CSV

El dataset contiene información relacionada con:

* Usuarios
* Libros
* Categorías
* Fechas de préstamo
* Estados de devolución
* Multas
* Tipos de préstamo

### Objetivo del análisis

Apache Spark procesa los datos históricos para generar métricas y visualizaciones sobre el comportamiento del sistema bibliotecario.

### Análisis realizados

* Top 10 libros más prestados
* Géneros más populares
* Usuarios más activos
* Estados de préstamos
* Análisis de multas
* Tendencias de préstamos por fecha
* Distribución de categorías

### Pipeline de procesamiento

```text
Dataset Kaggle
       ↓
Carga CSV en Spark
       ↓
Limpieza y transformación
       ↓
Consultas analíticas
       ↓
Generación de métricas
       ↓
Dashboard HTML
```

---

# Procesamiento de Datos

## Flujo ETL

1. Extracción del dataset desde Kaggle
2. Transformación de datos con PySpark
3. Limpieza de valores nulos e inconsistencias
4. Generación de agregaciones y métricas
5. Exportación de resultados al dashboard

### Tecnologías utilizadas

* Apache Spark
* PySpark
* Docker Compose
* Pandas
* HTML/CSS/JavaScript

---

# Estructura del Proyecto

```text
biblioteca-pepa/
│
├── microservicios/
│   ├── usuarios/
│   ├── libros/
│   ├── prestamos/
│   ├── admin/
│   ├── haproxy/
│   └── docker-compose.swarm.yml
│
├── spark/
│   ├── dataset/
│   │   └── sistema_biblioteca.csv
│   ├── scripts/
│   │   ├── analisis_libros.py
│   │   ├── analisis_usuarios.py
│   │   └── dashboard_generator.py
│   ├── resultados/
│   └── docker-compose.spark.yml
│
├── frontend/
│
├── Vagrantfile
│
└── README.md
```

---

# Requisitos

* Vagrant
* VirtualBox
* Docker
* Docker Swarm
* Docker Compose

---

# Despliegue

## 1. Levantar las máquinas virtuales

```bash
vagrant up
```

---

## 2. Inicializar Docker Swarm

En `servidorUbuntu2` (manager):

```bash
docker swarm init --advertise-addr 192.168.100.3
```

---

## 3. Unir el nodo worker

En `servidorUbuntu1`:

```bash
docker swarm join --token <TOKEN> 192.168.100.3:2377
```

---

## 4. Desplegar el stack de microservicios

En el manager:

```bash
cd /vagrant/microservicios
docker stack deploy -c docker-compose.swarm.yml biblioteca
```

---

## 5. Verificar servicios desplegados

```bash
docker service ls
```

---

## 6. Ejecutar análisis con Apache Spark

```bash
cd /vagrant/spark
docker compose -f docker-compose.spark.yml up
```

---

# Acceso al Sistema

* Frontend:
  [http://pepa.company](http://pepa.company)
  o
  [http://192.168.100.2:8080](http://192.168.100.2:8080)

* APIs:
  [http://192.168.100.3/api/usuarios](http://192.168.100.3/api/usuarios)

* Estadísticas HAProxy:
  [http://192.168.100.3:8404/stats](http://192.168.100.3:8404/stats)

* Dashboard Spark:
  [http://pepa.company/dashboard.html](http://pepa.company/dashboard.html)

---

# Credenciales Administrador

```text
Usuario: admin
Password: admin123
```

---

# Configuración Hosts (Windows)

Agregar en:

```text
C:\Windows\System32\drivers\etc\hosts
```

las siguientes líneas:

```text
192.168.100.2 pepa.company
192.168.100.3 api.pepa.company
```

---

# Características del Proyecto

* Arquitectura basada en microservicios
* Balanceo de carga con HAProxy
* Despliegue distribuido con Docker Swarm
* Persistencia de datos con MySQL
* Procesamiento masivo de datos con Apache Spark
* Dashboard analítico en tiempo real
* Dataset publicado en Kaggle
* Infraestructura reproducible con Vagrant

---

# Objetivo Académico

El proyecto integra conceptos de:

* Computación distribuida
* DevOps
* Virtualización
* Big Data
* Procesamiento masivo de datos
* Orquestación de contenedores
* Analítica y visualización de información

con el fin de construir una plataforma escalable y modular para la gestión y análisis de un sistema bibliotecario.

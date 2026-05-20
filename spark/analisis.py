from pyspark.sql import SparkSession
from pyspark.sql.functions import col, count, sum, avg, desc, month, year
import json, os

spark = SparkSession.builder.appName("BibliotecaAnalisis").getOrCreate()
spark.sparkContext.setLogLevel("ERROR")

# Leer CSVs
prestamos = spark.read.csv("/data/prestamos.csv", header=True, inferSchema=True)
libros    = spark.read.csv("/data/libros.csv",    header=True, inferSchema=True)
usuarios  = spark.read.csv("/data/usuarios.csv",  header=True, inferSchema=True)

resultados = {}

# 1. Top 10 libros más prestados
top_libros = (prestamos.groupBy("titulo_libro")
    .agg(count("*").alias("total_prestamos"))
    .orderBy(desc("total_prestamos"))
    .limit(10))
resultados["top_libros"] = [row.asDict() for row in top_libros.collect()]

# 2. Géneros más populares
top_generos = (prestamos.join(libros, prestamos.codigo_libro == libros.codigo)
    .groupBy("genero")
    .agg(count("*").alias("total"))
    .orderBy(desc("total"))
    .limit(10))
resultados["top_generos"] = [row.asDict() for row in top_generos.collect()]

# 3. Usuarios más activos
top_usuarios = (prestamos.groupBy("nombre_usuario")
    .agg(count("*").alias("total_prestamos"))
    .orderBy(desc("total_prestamos"))
    .limit(10))
resultados["top_usuarios"] = [row.asDict() for row in top_usuarios.collect()]

# 4. Estado de préstamos
estados = (prestamos.groupBy("estado")
    .agg(count("*").alias("total"))
    .orderBy(desc("total")))
resultados["estados_prestamos"] = [row.asDict() for row in estados.collect()]

# 5. Tipo de préstamo más usado
tipos = (prestamos.groupBy("tipo_prestamo")
    .agg(count("*").alias("total"))
    .orderBy(desc("total")))
resultados["tipos_prestamo"] = [row.asDict() for row in tipos.collect()]

# 6. Total multas generadas
multas = prestamos.agg(sum("multa_valor").alias("total_multas")).collect()[0]
resultados["total_multas"] = float(multas["total_multas"] or 0)

# Guardar resultados
os.makedirs("/resultados", exist_ok=True)
with open("/resultados/reporte.json", "w", encoding="utf-8") as f:
    json.dump(resultados, f, ensure_ascii=False, indent=2)

print("Análisis completado. Resultados en /resultados/reporte.json")
spark.stop()

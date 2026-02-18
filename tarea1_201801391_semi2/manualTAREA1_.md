# Tarea 1 - Limpieza y Análisis Inicial de Datos
Seminario de Sistemas 2  
Universidad de San Carlos de Guatemala  
Estudiante: Luis Gomez  
Carnet: 201801391  

---

## Dataset Utilizado
Archivo: dataset_sucio.csv  

---

## Proceso de Limpieza Aplicado

Se realizó un proceso completo de preparación y limpieza de datos utilizando Python y Pandas, el cual incluyó:

### 1. Eliminación de Duplicados
Se identificaron registros duplicados utilizando la función `duplicated()` y fueron eliminados con `drop_duplicates()` para evitar sesgos en el análisis.

### 2. Tratamiento de Valores Faltantes
- Los valores numéricos fueron reemplazados por la media de la columna.
- Los valores categóricos fueron reemplazados por el texto "Desconocido".

Esto permitió mantener la integridad del dataset sin eliminar registros importantes.

### 3. Estandarización de Formatos
- Se eliminaron espacios innecesarios en nombres de columnas.
- Se convirtieron valores de texto a minúsculas.
- Se uniformaron los formatos para facilitar el análisis.

---

## Comparación Antes y Después

Se compararon las dimensiones del dataset original y el dataset limpio, evidenciando la reducción de inconsistencias y mejora en la calidad de los datos.

---

## Exploración con Tabla Pivote

Se generó una tabla pivote que permitió analizar la relación entre una variable categórica y una variable numérica mediante el cálculo del promedio.

Esto permitió identificar patrones y diferencias relevantes entre categorías.

---

## Resultados e Interpretación

Después del proceso de limpieza:

- Se eliminaron registros duplicados.
- Se corrigieron valores faltantes.
- Se mejoró la consistencia en los formatos.
- Se obtuvo un dataset confiable y estructurado para análisis posteriores.
- Las tablas pivote permitieron identificar patrones relevantes en los datos.

---

## Archivo Generado

dataset_limpio.csv

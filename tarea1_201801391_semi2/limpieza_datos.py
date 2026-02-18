
# ==============================================
# Tarea 1 - Limpieza y Análisis Inicial de Datos
# Seminario de Sistemas 2
# Estudiante: Luis Gomez
# Carnet: 201801391
# ==============================================

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# ==============================================
# 1. CARGAR DATASET ORIGINAL
# ==============================================

df_original = pd.read_csv("dataset_sucio.csv")

print("===== DATASET ORIGINAL =====")
print(df_original.head())
print("\nDimensiones:", df_original.shape)

print("\n===== INFORMACIÓN GENERAL =====")
df_original.info()

print("\n===== ESTADÍSTICAS DESCRIPTIVAS =====")
print(df_original.describe(include="all"))

# ==============================================
# 2. COPIA PARA LIMPIEZA
# ==============================================

df = df_original.copy()

# ==============================================
# 3. ELIMINACIÓN DE DUPLICADOS
# ==============================================

print("\nDuplicados antes de eliminar:", df.duplicated().sum())

df = df.drop_duplicates()

print("Duplicados después de eliminar:", df.duplicated().sum())
print("Dimensiones después de eliminar duplicados:", df.shape)

# ==============================================
# 4. TRATAMIENTO DE VALORES NULOS
# ==============================================

print("\nValores nulos antes de limpieza:")
print(df.isnull().sum())

# Reemplazar valores numéricos con la media
for col in df.select_dtypes(include=[np.number]).columns:
    df[col].fillna(df[col].mean(), inplace=True)

# Reemplazar valores de texto con 'Desconocido'
for col in df.select_dtypes(include=["object"]).columns:
    df[col].fillna("Desconocido", inplace=True)

print("\nValores nulos después de limpieza:")
print(df.isnull().sum())

# ==============================================
# 5. ESTANDARIZACIÓN DE FORMATOS
# ==============================================

# Limpiar espacios en nombres de columnas
df.columns = df.columns.str.strip()

# Limpiar espacios y convertir texto a minúsculas
for col in df.select_dtypes(include="object").columns:
    df[col] = df[col].str.strip().str.lower()

# ==============================================
# 6. COMPARACIÓN ANTES Y DESPUÉS
# ==============================================

print("\n===== COMPARACIÓN =====")
print("Dataset Original:", df_original.shape)
print("Dataset Limpio:", df.shape)

# ==============================================
# 7. TABLA PIVOTE
# ==============================================

# Seleccionar automáticamente una columna numérica y una categórica
col_numerica = df.select_dtypes(include=[np.number]).columns[0]
col_categoria = df.select_dtypes(include=["object"]).columns[0]

tabla_pivote = pd.pivot_table(
    df,
    values=col_numerica,
    index=col_categoria,
    aggfunc="mean"
)

print("\n===== TABLA PIVOTE =====")
print(tabla_pivote)

# ==============================================
# 8. VISUALIZACIÓN
# ==============================================

tabla_pivote.plot(kind="bar")
plt.title("Promedio por Categoría")
plt.ylabel("Promedio")
plt.xticks(rotation=45)
plt.tight_layout()
plt.show()

# ==============================================
# 9. EXPORTAR DATASET LIMPIO
# ==============================================

df.to_csv("dataset_limpio.csv", index=False)

print("\nDataset limpio exportado correctamente.")

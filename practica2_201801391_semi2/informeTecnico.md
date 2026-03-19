
---

# INFORME_TECNICO.md

```markdown
# INFORME TÉCNICO
## Práctica 2 – Desarrollo de Dashboard en Power BI

---

## 1. Introducción

En la presente práctica se desarrolló un dashboard interactivo utilizando Power BI, con el propósito de analizar información de vuelos almacenada en un Data Warehouse.

El sistema permite visualizar métricas clave como ingresos, cantidad de vuelos y comportamiento de pasajeros, facilitando la toma de decisiones.

---

## 2. Objetivo

Desarrollar un dashboard funcional que:

- Consuma datos desde SQL Server
- Utilice un modelo estrella
- Implemente medidas DAX
- Incluya visualizaciones interactivas
- Permita análisis dinámico mediante filtros

---

## 3. Fuente de datos

Se utilizó la base de datos:

DW_Vuelos

Esta base fue previamente alimentada mediante un proceso ETL.

### Tablas utilizadas:

- Fact_Vuelos
- Dim_Fecha
- Dim_Aerolinea
- Dim_Aeropuerto
- Dim_Pasajero

---

## 4. Modelo de datos

Se implementó un modelo tipo estrella.

### Tabla de hechos:

Fact_Vuelos:
- id_vuelo
- id_fecha
- id_aerolinea
- id_origen
- id_destino
- id_pasajero
- precio

### Tablas de dimensión:

Dim_Fecha:
- id_fecha
- fecha
- anio
- mes
- dia

Dim_Aerolinea:
- id_aerolinea
- nombre

Dim_Aeropuerto:
- id_aeropuerto
- ciudad
- pais

Dim_Pasajero:
- id_pasajero
- genero

---

## 5. Relaciones

Se establecieron relaciones de tipo:

- Muchos a uno (*:1)

Entre la tabla Fact_Vuelos y las dimensiones.

Esto permite realizar análisis cruzados correctamente.

---

## 6. Jerarquías

Se creó una jerarquía en la dimensión de fecha:

- Año
- Mes
- Día

Esto facilita el análisis temporal en los gráficos.

---

## 7. Medidas DAX

Se implementaron las siguientes medidas:

### Total de vuelos
COUNTROWS(Fact_Vuelos)

### Ingresos totales
SUM(Fact_Vuelos[precio])

### Precio promedio
AVERAGE(Fact_Vuelos[precio])

### Total pasajeros
DISTINCTCOUNT(Fact_Vuelos[id_pasajero])

### Meta de ingresos
500000

### Cumplimiento
Ingresos Totales / Meta Ingresos

---

## 8. Visualizaciones

El dashboard contiene:

- Tarjetas de indicadores
- KPI de cumplimiento
- Gráfico de barras
- Gráfico de líneas
- Gráfico de dona

Estas visualizaciones permiten analizar los datos desde diferentes perspectivas.

---

## 9. Interactividad

Se implementaron segmentadores para:

- Año
- Aerolínea
- Género

Permitiendo filtrar todos los visuales dinámicamente.

---

## 10. Resultados

El dashboard permite:

- Evaluar ingresos totales
- Analizar tendencias en el tiempo
- Comparar aerolíneas
- Identificar distribución de pasajeros

---

## 11. Conclusión

La implementación del dashboard en Power BI permite transformar datos en información visual clara, facilitando el análisis y la toma de decisiones estratégicas.

El uso del modelo estrella y medidas DAX garantiza eficiencia y escalabilidad en el análisis.
# Práctica 2 – Dashboard en Power BI

## Descripción

En esta práctica se desarrolló un dashboard interactivo en Power BI conectado a SQL Server, utilizando un modelo de datos tipo estrella para el análisis de vuelos.

El objetivo fue transformar datos previamente cargados en un Data Warehouse en información visual útil para la toma de decisiones.

---

## Tecnologías utilizadas

- Power BI Desktop
- Microsoft SQL Server (SQLEXPRESS)
- SQL Server Management Studio (SSMS)
- Modelo de datos tipo estrella
- DAX (Data Analysis Expressions)

---

## Fuente de datos

Se utilizó la base de datos:

DW_Vuelos

Contiene información procesada desde un ETL previo con las siguientes tablas:

- Fact_Vuelos
- Dim_Fecha
- Dim_Aerolinea
- Dim_Aeropuerto
- Dim_Pasajero

---

## Modelo de datos

Se implementó un esquema estrella:

- Fact_Vuelos (tabla central)
- Dimensiones conectadas:
  - Dim_Fecha
  - Dim_Aerolinea
  - Dim_Aeropuerto
  - Dim_Pasajero

Relaciones:

- Muchos a uno (*:1)
- Fact_Vuelos contiene las claves foráneas

---

## Jerarquía de fechas

Se creó una jerarquía en la dimensión de fecha:

- Año
- Mes
- Día

Esto permite análisis temporal dinámico en los gráficos.

---

## Medidas DAX

### Total de vuelos
```DAX
Total Vuelos = COUNTROWS(Fact_Vuelos)
Ingresos totales
Ingresos Totales = SUM(Fact_Vuelos[precio])
Precio promedio
Precio Promedio = AVERAGE(Fact_Vuelos[precio])
Total pasajeros
Total Pasajeros = DISTINCTCOUNT(Fact_Vuelos[id_pasajero])
Meta de ingresos
Meta Ingresos = 500000
Cumplimiento de ingresos
Cumplimiento Ingresos = DIVIDE([Ingresos Totales], [Meta Ingresos])
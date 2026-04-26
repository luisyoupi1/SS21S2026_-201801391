# Proyecto BigQuery ML - NYC Taxi Trips

## Autor
Luis Fernando Gómez Rendón  
Carné: 201801391  

---

## Descripción

Este proyecto realiza un análisis de datos del dataset **NYC Taxi Trips 2022** utilizando Google BigQuery y BigQuery ML.

Se implementa un flujo completo de:

- Exploración de datos  
- Limpieza y transformación  
- Creación de variables (features)  
- Modelado predictivo  
- Visualización de resultados  

---

## Estructura

**Dataset:**

proyecto2-201801391-semi2.proyecto_2  

**Tablas principales:**

- taxi_base_limpia  
- taxi_features_ml  
- taxi_opt  
- taxi_opt_simple  

**Modelos:**

- modelo_regresion_total  
- modelo_clasificacion_tip  

---

## Proceso

### Limpieza
Se eliminaron valores nulos y registros inválidos, asegurando consistencia en variables como distancia, duración y montos.

### Feature Engineering
Se crearon variables derivadas:

- pickup_hour  
- pickup_dayofweek  
- is_weekend  

### Modelos
- Regresión: predicción del total_amount  
- Clasificación: predicción de propinas altas  



# Conclusiones
Se identificaron patrones claros de demanda en ciertas horas del día, lo que indica la existencia de horas pico.
La distribución de viajes por día de la semana es estable, con variaciones mínimas.
La distancia promedio de los viajes se mantiene constante, reflejando uniformidad en los trayectos.
El ingreso promedio diario no presenta cambios significativos.
Se identificaron zonas con alta concentración de viajes, lo que permite ubicar puntos estratégicos de movilidad.
La duración de los viajes es consistente, sin cambios relevantes entre días.
# Tecnologías
Google BigQuery
BigQuery ML
Looker Studio
SQL

# Conclusión general

Se implementó correctamente un flujo completo de análisis de datos y modelado en BigQuery ML.

El proyecto permitió identificar patrones relevantes en los datos de transporte, así como generar modelos predictivos útiles. Las visualizaciones desarrolladas permiten interpretar los datos de forma clara y apoyar la toma de decisiones.


## Evidencias del Proyecto

### Evidencias de BigQuery, consultas y tablas

![Evidencia img14](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img/img14.jpg)

![Evidencia img17](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img/img17.jpg)

![Evidencia img18](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img/img18.jpg)

![Evidencia img21](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img/img21.jpg)

![Evidencia img22](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img/img22.jpg)

![Evidencia img25](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img/img25.jpg)

![Evidencia img26](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img/img26.jpg)

![Evidencia img29](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img/img29.jpg)

![Evidencia img30](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img/img30.jpg)

![Evidencia img33](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img/img33.jpg)

![Evidencia img37](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img/img37.jpg)

![Evidencia img38](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img/img38.jpg)

![Evidencia img41](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img/img41.jpg)

![Evidencia img42](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img/img42.jpg)

![Evidencia img45](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img/img45.jpg)

![Evidencia img49](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img/img49.jpg)

![Evidencia img5](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img/img5.jpg)

![Evidencia img50](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img/img50.jpg)

![Evidencia img53](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img/img53.jpg)

![Evidencia img54](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img/img54.jpg)

![Evidencia img57](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img/img57.jpg)

![Evidencia img58](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img/img58.jpg)

![Evidencia img7](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img/img7.jpg)

## Evidencias del Dashboard

### Cantidad de viajes por hora

![Cantidad de viajes por hora](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img_Dashboard/img10.jpg)

### Viajes por día de la semana

![Viajes por día de la semana](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img_Dashboard/img11.jpg)

### Distancia promedio del viaje

![Distancia promedio del viaje](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img_Dashboard/img17.jpg)

### Promedio de ingreso por día

![Promedio de ingreso por día](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img_Dashboard/img18.jpg)

### Top 10 zonas con más viajes

![Top 10 zonas con más viajes](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img_Dashboard/img5.jpg)

### Duración promedio del viaje

![Duración promedio del viaje](https://raw.githubusercontent.com/luisyoupi1/SS21S2026_-201801391/main/proyecto2_201801391_semi2/img_Dashboard/img7.jpg)


---

## Consultas SQL

### Exploración inicial

SELECT *
FROM `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2022`
LIMIT 1000;
Tabla limpia
CREATE OR REPLACE TABLE `proyecto2-201801391-semi2.proyecto_2.taxi_base_limpia` AS
SELECT
  pickup_datetime,
  dropoff_datetime,
  passenger_count,
  trip_distance,
  total_amount,
  tip_amount,
  payment_type
FROM `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2022`
WHERE trip_distance > 0
  AND total_amount > 0
  AND passenger_count > 0;
Features
CREATE OR REPLACE TABLE `proyecto2-201801391-semi2.proyecto_2.taxi_features_ml` AS
SELECT
  EXTRACT(HOUR FROM pickup_datetime) AS pickup_hour,
  EXTRACT(DAYOFWEEK FROM pickup_datetime) AS pickup_dayofweek,
  IF(EXTRACT(DAYOFWEEK FROM pickup_datetime) IN (1,7), 1, 0) AS is_weekend,
  passenger_count,
  trip_distance,
  total_amount,
  tip_amount,
  payment_type
FROM `proyecto2-201801391-semi2.proyecto_2.taxi_base_limpia`;
Modelo de regresión
CREATE OR REPLACE MODEL `proyecto2-201801391-semi2.proyecto_2.modelo_regresion_total`
OPTIONS(model_type='linear_reg', input_label_cols=['total_amount']) AS
SELECT
  pickup_hour,
  pickup_dayofweek,
  is_weekend,
  passenger_count,
  trip_distance,
  total_amount
FROM `proyecto2-201801391-semi2.proyecto_2.taxi_features_ml`;
Modelo de clasificación
CREATE OR REPLACE MODEL `proyecto2-201801391-semi2.proyecto_2.modelo_clasificacion_tip`
OPTIONS(model_type='logistic_reg', input_label_cols=['tip_high']) AS
SELECT
  pickup_hour,
  pickup_dayofweek,
  is_weekend,
  passenger_count,
  trip_distance,
  IF(tip_amount > 5, 1, 0) AS tip_high
FROM `proyecto2-201801391-semi2.proyecto_2.taxi_features_ml`;


##Conclusiones
Se identificaron patrones claros de demanda en ciertas horas del día, lo que indica la existencia de horas pico.
La distribución de viajes por día de la semana es estable, con variaciones mínimas.
La distancia promedio de los viajes se mantiene constante, reflejando uniformidad en los trayectos.
El ingreso promedio diario no presenta cambios significativos.
Se identificaron zonas con alta concentración de viajes, lo que permite ubicar puntos estratégicos de movilidad.
La duración de los viajes es consistente, sin cambios relevantes entre días.
#Tecnologías
Google BigQuery
BigQuery ML
Looker Studio
SQL
Conclusión general

Se implementó correctamente un flujo completo de análisis de datos y modelado en BigQuery ML.

El proyecto permitió identificar patrones relevantes en los datos de transporte, así como generar modelos predictivos útiles. Las visualizaciones desarrolladas permiten interpretar los datos de forma clara y apoyar la toma de decisiones.
SELECT
  pickup_hour,
  COUNT(*) AS total_viajes
FROM `proyecto2-201801391-semi2.proyecto_2.taxi_base_limpia`
GROUP BY pickup_hour
ORDER BY pickup_hour;

SELECT
  pickup_dayofweek,
  COUNT(*) AS total_viajes
FROM `proyecto2-201801391-semi2.proyecto_2.taxi_base_limpia`
GROUP BY pickup_dayofweek
ORDER BY pickup_dayofweek;

SELECT
  pickup_hour,
  AVG(total_amount) AS promedio_total
FROM `proyecto2-201801391-semi2.proyecto_2.taxi_base_limpia`
GROUP BY pickup_hour
ORDER BY pickup_hour;

SELECT
  pickup_location_id,
  COUNT(*) AS total_viajes
FROM `proyecto2-201801391-semi2.proyecto_2.taxi_base_limpia`
GROUP BY pickup_location_id
ORDER BY total_viajes DESC
LIMIT 10;

SELECT
  passenger_count,
  AVG(trip_distance) AS promedio_distancia,
  AVG(total_amount) AS promedio_total
FROM `proyecto2-201801391-semi2.proyecto_2.taxi_base_limpia`
GROUP BY passenger_count
ORDER BY passenger_count;

SELECT
  pickup_hour,
  AVG(tip_amount) AS promedio_propina
FROM `proyecto2-201801391-semi2.proyecto_2.taxi_base_limpia`
GROUP BY pickup_hour
ORDER BY pickup_hour;
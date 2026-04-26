SELECT
  DATE(pickup_datetime) AS fecha,
  COUNT(*) AS viajes
FROM `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2022`
WHERE pickup_datetime BETWEEN '2022-01-01' AND '2022-01-31'
GROUP BY fecha
ORDER BY fecha;

SELECT
  pickup_date AS fecha,
  COUNT(*) AS viajes
FROM `proyecto2-201801391-semi2.proyecto_2.taxi_base_limpia`
WHERE pickup_date BETWEEN '2022-01-01' AND '2022-01-31'
GROUP BY fecha
ORDER BY fecha;
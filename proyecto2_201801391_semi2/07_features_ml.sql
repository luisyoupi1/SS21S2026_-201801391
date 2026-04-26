CREATE OR REPLACE TABLE `proyecto2-201801391-semi2.proyecto_2.taxi_features_ml` AS
SELECT
  pickup_datetime,
  pickup_date,
  pickup_hour,
  pickup_dayofweek,
  CASE
    WHEN pickup_dayofweek IN (1, 7) THEN 1
    ELSE 0
  END AS is_weekend,
  passenger_count,
  trip_distance,
  payment_type,
  pickup_location_id,
  dropoff_location_id,
  trip_minutes,
  fare_amount,
  tip_amount,
  total_amount,
  CASE
    WHEN tip_amount >= 5 THEN 1
    ELSE 0
  END AS tip_high
FROM `proyecto2-201801391-semi2.proyecto_2.taxi_base_limpia`
WHERE pickup_datetime BETWEEN '2022-01-01' AND '2022-01-31'
LIMIT 200000;


SELECT COUNT(*) AS total_features
FROM `proyecto2-201801391-semi2.proyecto_2.taxi_features_ml`;

SELECT *
FROM `proyecto2-201801391-semi2.proyecto_2.taxi_features_ml`
LIMIT 10;
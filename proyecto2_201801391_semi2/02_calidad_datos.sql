SELECT
  COUNT(*) AS total,
  COUNTIF(trip_distance IS NULL) AS nulos_distancia,
  COUNTIF(fare_amount IS NULL) AS nulos_tarifa,
  COUNTIF(total_amount IS NULL) AS nulos_total,
  COUNTIF(passenger_count IS NULL) AS nulos_pasajeros
FROM `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2022`;

SELECT
  COUNT(*) AS total,
  COUNTIF(trip_distance = 0) AS distancia_cero,
  COUNTIF(fare_amount = 0) AS tarifa_cero,
  COUNTIF(total_amount = 0) AS total_cero,
  COUNTIF(passenger_count = 0) AS pasajeros_cero
FROM `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2022`;

SELECT
  MIN(trip_distance) AS min_distancia,
  MAX(trip_distance) AS max_distancia,
  MIN(fare_amount) AS min_tarifa,
  MAX(fare_amount) AS max_tarifa,
  MIN(total_amount) AS min_total,
  MAX(total_amount) AS max_total
FROM `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2022`;
CREATE OR REPLACE TABLE `proyecto2-201801391-semi2.proyecto_2.taxi_base_limpia` AS
SELECT
  vendor_id,
  pickup_datetime,
  dropoff_datetime,
  DATE(pickup_datetime) AS pickup_date,
  EXTRACT(HOUR FROM pickup_datetime) AS pickup_hour,
  EXTRACT(DAYOFWEEK FROM pickup_datetime) AS pickup_dayofweek,
  passenger_count,
  trip_distance,
  payment_type,
  fare_amount,
  tip_amount,
  total_amount,
  pickup_location_id,
  dropoff_location_id,
  TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) AS trip_minutes
FROM `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2022`
WHERE pickup_datetime BETWEEN '2022-01-01' AND '2022-03-31'
  AND pickup_datetime IS NOT NULL
  AND dropoff_datetime IS NOT NULL;
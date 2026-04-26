CREATE OR REPLACE MODEL `proyecto2-201801391-semi2.proyecto_2.modelo_clasificacion_tip`
OPTIONS(
  model_type = 'logistic_reg',
  input_label_cols = ['tip_high'],
  data_split_method = 'custom',
  data_split_col = 'is_eval'
) AS
SELECT
  pickup_hour,
  pickup_dayofweek,
  is_weekend,
  passenger_count,
  trip_distance,
  payment_type,
  pickup_location_id,
  dropoff_location_id,
  trip_minutes,
  tip_high,
  CASE
    WHEN pickup_date >= '2022-01-25' THEN TRUE
    ELSE FALSE
  END AS is_eval
FROM `proyecto2-201801391-semi2.proyecto_2.taxi_features_ml`;
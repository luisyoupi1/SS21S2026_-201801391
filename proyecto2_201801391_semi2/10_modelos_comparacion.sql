CREATE OR REPLACE MODEL `proyecto2-201801391-semi2.proyecto_2.modelo_regresion_bt`
OPTIONS(
  model_type = 'boosted_tree_regressor',
  input_label_cols = ['total_amount'],
  data_split_method = 'custom',
  data_split_col = 'is_eval',
  max_iterations = 20
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
  total_amount,
  CASE
    WHEN pickup_date >= '2022-01-25' THEN TRUE
    ELSE FALSE
  END AS is_eval
FROM `proyecto2-201801391-semi2.proyecto_2.taxi_features_ml`;

SELECT *
FROM ML.EVALUATE(MODEL `proyecto2-201801391-semi2.proyecto_2.modelo_regresion_bt`);
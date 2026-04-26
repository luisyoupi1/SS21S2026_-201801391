SELECT *
FROM ML.PREDICT(
  MODEL `proyecto2-201801391-semi2.proyecto_2.modelo_regresion_total`,
  (
    SELECT *
    FROM `proyecto2-201801391-semi2.proyecto_2.taxi_features_ml`
    LIMIT 1
  )
);


SELECT *
FROM ML.PREDICT(
  MODEL `proyecto2-201801391-semi2.proyecto_2.modelo_clasificacion_tip`,
  (
    SELECT *
    FROM `proyecto2-201801391-semi2.proyecto_2.taxi_features_ml`
    LIMIT 1
  )
);
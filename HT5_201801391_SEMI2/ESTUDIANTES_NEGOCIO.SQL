CREATE OR REPLACE VIEW `ht5_retencion.vw_estudiantes_negocio` AS
SELECT
  estudiante_id,
  nombre,
  facultad,
  antiguedad_ciclos,
  promedio,
  creditos_aprobados,
  riesgo_desercion
FROM `ht5_retencion.estudiantes`;
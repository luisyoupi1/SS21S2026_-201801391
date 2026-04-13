CREATE MATERIALIZED VIEW `ht5_retencion.mv_indicadores_actividad` AS
SELECT
  estudiante_id,
  AVG(sesiones_semana) AS promedio_sesiones,
  SUM(entregas_tardias) AS total_tardias,
  COUNT(*) AS total_registros
FROM `ht5_retencion.actividad_virtual`
GROUP BY estudiante_id;
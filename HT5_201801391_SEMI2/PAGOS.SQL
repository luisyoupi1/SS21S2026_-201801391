SELECT
  e.estudiante_id,
  e.facultad,
  e.promedio,
  AVG(a.sesiones_semana) AS promedio_sesiones,
  SUM(p.atrasado) AS pagos_atrasados
FROM `ht5_retencion.estudiantes` e
LEFT JOIN `ht5_retencion.actividad_virtual` a
  ON e.estudiante_id = a.estudiante_id
LEFT JOIN `ht5_retencion.pagos` p
  ON e.estudiante_id = p.estudiante_id
WHERE p.fecha_pago >= DATE '2026-01-01'
GROUP BY e.estudiante_id, e.facultad, e.promedio;
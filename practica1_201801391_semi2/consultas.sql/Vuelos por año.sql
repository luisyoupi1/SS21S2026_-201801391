SELECT D.anio, COUNT(*) AS total_vuelos
FROM Fact_Vuelos F
JOIN Dim_Fecha D ON F.id_fecha = D.id_fecha
GROUP BY D.anio
ORDER BY D.anio;

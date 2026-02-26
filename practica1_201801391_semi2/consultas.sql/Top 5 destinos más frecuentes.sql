SELECT TOP 5 AP.ciudad, COUNT(*) AS total_vuelos
FROM Fact_Vuelos F
JOIN Dim_Aeropuerto AP ON F.id_destino = AP.id_aeropuerto
GROUP BY AP.ciudad
ORDER BY total_vuelos DESC;

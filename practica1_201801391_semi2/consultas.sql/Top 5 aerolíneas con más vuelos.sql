SELECT TOP 5 A.nombre, COUNT(*) AS total_vuelos
FROM Fact_Vuelos F
JOIN Dim_Aerolinea A ON F.id_aerolinea = A.id_aerolinea
GROUP BY A.nombre
ORDER BY total_vuelos DESC;

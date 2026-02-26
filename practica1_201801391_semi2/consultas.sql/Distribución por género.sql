SELECT P.genero, COUNT(*) AS total_vuelos
FROM Fact_Vuelos F
JOIN Dim_Pasajero P ON F.id_pasajero = P.id_pasajero
GROUP BY P.genero;

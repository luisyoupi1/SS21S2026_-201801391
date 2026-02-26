CREATE TABLE Dim_Fecha (
    id_fecha INT PRIMARY KEY IDENTITY(1,1),
    fecha DATE,
    anio INT,
    mes INT,
    dia INT
);

CREATE TABLE Dim_Aerolinea (
    id_aerolinea INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100)
);

CREATE TABLE Dim_Aeropuerto (
    id_aeropuerto INT PRIMARY KEY IDENTITY(1,1),
    ciudad VARCHAR(100),
    pais VARCHAR(100)
);

CREATE TABLE Dim_Pasajero (
    id_pasajero INT PRIMARY KEY IDENTITY(1,1),
    genero VARCHAR(20)
);

CREATE TABLE Fact_Vuelos (
    id_vuelo INT PRIMARY KEY IDENTITY(1,1),
    id_fecha INT,
    id_aerolinea INT,
    id_origen INT,
    id_destino INT,
    id_pasajero INT,
    precio DECIMAL(10,2),

    FOREIGN KEY (id_fecha) REFERENCES Dim_Fecha(id_fecha),
    FOREIGN KEY (id_aerolinea) REFERENCES Dim_Aerolinea(id_aerolinea),
    FOREIGN KEY (id_origen) REFERENCES Dim_Aeropuerto(id_aeropuerto),
    FOREIGN KEY (id_destino) REFERENCES Dim_Aeropuerto(id_aeropuerto),
    FOREIGN KEY (id_pasajero) REFERENCES Dim_Pasajero(id_pasajero)
);

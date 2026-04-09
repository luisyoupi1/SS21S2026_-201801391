-- =========================
-- DIMENSIONES
-- =========================

CREATE TABLE DimFecha (
    FechaKey INT PRIMARY KEY,
    Fecha DATE,
    Anio INT,
    Mes INT,
    NombreMes VARCHAR(20),
    Dia INT
);

CREATE TABLE DimCliente (
    ClienteKey INT IDENTITY PRIMARY KEY,
    ClienteId INT,
    ClienteNombre VARCHAR(100),
    SegmentoCliente VARCHAR(50)
);

CREATE TABLE DimProducto (
    ProductoKey INT IDENTITY PRIMARY KEY,
    ProductoSKU VARCHAR(50),
    ProductoNombre VARCHAR(100),
    Marca VARCHAR(50),
    Categoria VARCHAR(50),
    Subcategoria VARCHAR(50)
);

CREATE TABLE DimUbicacion (
    UbicacionKey INT IDENTITY PRIMARY KEY,
    Departamento VARCHAR(50),
    Municipio VARCHAR(50)
);

CREATE TABLE DimCanal (
    CanalKey INT IDENTITY PRIMARY KEY,
    CanalVenta VARCHAR(50)
);

CREATE TABLE DimFabricante (
    FabricanteKey INT IDENTITY PRIMARY KEY,
    Fabricante VARCHAR(100)
);

-- =========================
-- TABLA DE HECHOS
-- =========================

CREATE TABLE FactVentasInventario (
    FactKey INT IDENTITY PRIMARY KEY,

    FechaKey INT,
    ClienteKey INT,
    ProductoKey INT,
    UbicacionKey INT,
    CanalKey INT,
    FabricanteKey INT,

    CantidadVendida INT,
    InventarioInicial INT,
    InventarioFinal INT,
    PrecioUnitario DECIMAL(10,2),
    CostoUnitario DECIMAL(10,2),
    Descuento DECIMAL(10,2),
    ImporteNeto DECIMAL(12,2),
    MargenEstimado DECIMAL(12,2),

    FOREIGN KEY (FechaKey) REFERENCES DimFecha(FechaKey),
    FOREIGN KEY (ClienteKey) REFERENCES DimCliente(ClienteKey),
    FOREIGN KEY (ProductoKey) REFERENCES DimProducto(ProductoKey),
    FOREIGN KEY (UbicacionKey) REFERENCES DimUbicacion(UbicacionKey),
    FOREIGN KEY (CanalKey) REFERENCES DimCanal(CanalKey),
    FOREIGN KEY (FabricanteKey) REFERENCES DimFabricante(FabricanteKey)
);
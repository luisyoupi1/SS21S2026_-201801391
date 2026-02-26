import pandas as pd
from sqlalchemy import create_engine, text



df = pd.read_csv("dataset_vuelos_crudo.csv")
print("Datos cargados correctamente")

# =====================================================
# 2️⃣ TRANSFORMACIÓN
# =====================================================

# Eliminar duplicados
df = df.drop_duplicates()

# Convertir fechas con formatos mixtos
df['departure_datetime'] = pd.to_datetime(
    df['departure_datetime'],
    format='mixed',
    dayfirst=True,
    errors='coerce'
)

# Eliminar filas donde no se pudo convertir la fecha
df = df.dropna(subset=['departure_datetime'])

# Crear columnas derivadas
df['anio'] = df['departure_datetime'].dt.year
df['mes'] = df['departure_datetime'].dt.month
df['dia'] = df['departure_datetime'].dt.day
df['fecha'] = df['departure_datetime'].dt.date

print("Transformación completada correctamente")

# =====================================================
# 3️⃣ CONEXIÓN A SQL SERVER
# =====================================================

server = 'localhost\\SQLEXPRESS'
database = 'DW_Vuelos'

connection_string = (
    f"mssql+pyodbc://@{server}/{database}"
    "?driver=ODBC+Driver+17+for+SQL+Server"
    "&TrustServerCertificate=yes"
)

engine = create_engine(connection_string)

# =====================================================
# 4️⃣ LIMPIAR TABLAS
# =====================================================

with engine.begin() as conn:
    conn.execute(text("DELETE FROM Fact_Vuelos"))
    conn.execute(text("DELETE FROM Dim_Fecha"))
    conn.execute(text("DELETE FROM Dim_Aerolinea"))
    conn.execute(text("DELETE FROM Dim_Aeropuerto"))
    conn.execute(text("DELETE FROM Dim_Pasajero"))

print("Tablas limpiadas correctamente")

# =====================================================
# 5️⃣ CARGAR DIMENSIONES
# =====================================================

# Dim Fecha
dim_fecha = df[['fecha','anio','mes','dia']].drop_duplicates()
dim_fecha.to_sql('Dim_Fecha', engine, if_exists='append', index=False)

# Dim Aerolinea
dim_aerolinea = df[['airline_name']].drop_duplicates()
dim_aerolinea.columns = ['nombre']
dim_aerolinea.to_sql('Dim_Aerolinea', engine, if_exists='append', index=False)

# Dim Pasajero
dim_pasajero = df[['passenger_gender']].drop_duplicates()
dim_pasajero.columns = ['genero']
dim_pasajero.to_sql('Dim_Pasajero', engine, if_exists='append', index=False)

# Dim Aeropuerto
origen = df[['origin_airport']].copy()
origen.columns = ['ciudad']
origen['pais'] = None

destino = df[['destination_airport']].copy()
destino.columns = ['ciudad']
destino['pais'] = None

dim_aeropuerto = pd.concat([origen, destino]).drop_duplicates()
dim_aeropuerto.to_sql('Dim_Aeropuerto', engine, if_exists='append', index=False)

print("Dimensiones cargadas correctamente")

# =====================================================
# 6️⃣ CARGAR TABLA DE HECHOS
# =====================================================

# Leer dimensiones
dim_fecha_db = pd.read_sql("SELECT * FROM Dim_Fecha", engine)
dim_aerolinea_db = pd.read_sql("SELECT * FROM Dim_Aerolinea", engine)
dim_pasajero_db = pd.read_sql("SELECT * FROM Dim_Pasajero", engine)
dim_aeropuerto_db = pd.read_sql("SELECT * FROM Dim_Aeropuerto", engine)

# Merge Fecha
fact = df.merge(
    dim_fecha_db,
    on=['fecha','anio','mes','dia'],
    how='left'
)

# Merge Aerolinea
fact = fact.merge(
    dim_aerolinea_db,
    left_on='airline_name',
    right_on='nombre',
    how='left'
)

# Merge Pasajero
fact = fact.merge(
    dim_pasajero_db,
    left_on='passenger_gender',
    right_on='genero',
    how='left'
)

# Merge Origen
fact = fact.merge(
    dim_aeropuerto_db,
    left_on='origin_airport',
    right_on='ciudad',
    how='left'
)

fact = fact.rename(columns={'id_aeropuerto': 'id_origen'})

# Merge Destino
fact = fact.merge(
    dim_aeropuerto_db,
    left_on='destination_airport',
    right_on='ciudad',
    how='left'
)

fact = fact.rename(columns={'id_aeropuerto': 'id_destino'})

# Construir tabla final
fact_final = fact[[
    'id_fecha',
    'id_aerolinea',
    'id_origen',
    'id_destino',
    'id_pasajero',
    'ticket_price_usd_est'
]].copy()

fact_final.columns = [
    'id_fecha',
    'id_aerolinea',
    'id_origen',
    'id_destino',
    'id_pasajero',
    'precio'
]

fact_final.to_sql('Fact_Vuelos', engine, if_exists='append', index=False)

print("Tabla de hechos cargada correctamente")
print("ETL COMPLETADO EXITOSAMENTE ")
print("ya listo para la base de datos")
import pandas as pd
from sqlalchemy import create_engine

df_green = pd.read_parquet('green_tripdata_2025-11.parquet')
df_zones = pd.read_csv('taxi_zone_lookup.csv')

engine = create_engine('postgresql://postgres:postgres@localhost:5433/ny_taxi')
df_green.to_sql('green_taxi_trips', engine, if_exists='replace', index=False)
df_zones.to_sql('zones', engine, if_exists='replace', index=False)
print("Data loaded successfully!")
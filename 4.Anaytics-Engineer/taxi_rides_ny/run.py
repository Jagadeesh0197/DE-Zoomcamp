import duckdb

conn = duckdb.connect('taxi_rides_ny.duckdb')
# Query the materialized view that dbt created
result = conn.execute("SELECT * FROM dev.stg_green_tripdata")
print(result.fetchall())
SELECT 
    -- identifiers
    CAST(vendorid AS INTEGER) AS vendorid,
    CAST(ratecodeid AS INTEGER) AS rate_code_id,
    CAST(PULocationID AS INTEGER) AS pickup_location_id,
    CAST(DOLocationID AS INTEGER) AS dropoff_location_id,
    -- timestamps
    CAST(lpep_pickup_datetime AS TIMESTAMP) AS pickup_datetime,
    CAST(lpep_dropoff_datetime AS TIMESTAMP) AS dropoff_datetime,
    -- trip details
    store_and_fwd_flag,
    CAST(passenger_count AS INTEGER) AS passenger_count,
    CAST(trip_distance AS FLOAT) AS trip_distance,
    CAST(trip_type AS INTEGER) AS trip_type, -- green taxi trip type is in the trip_type column
    -- payment details
    CAST(fare_amount AS FLOAT) AS fare_amount,
    CAST(extra AS FLOAT) AS extra,
    CAST(mta_tax AS FLOAT) AS mta_tax,
    CAST(tip_amount AS FLOAT) AS tip_amount,
    CAST(tolls_amount AS FLOAT) AS tolls_amount,
    CAST(ehail_fee AS NUMERIC) AS ehail_fee,
    CAST(improvement_surcharge AS FLOAT) AS improvement_surcharge,
    CAST(total_amount AS FLOAT) AS total_amount,
    CAST(payment_type AS INTEGER) AS payment_type
 FROM taxi_rides_ny.prod.green_tripdata 
WHERE vendorid IS NOT NULL
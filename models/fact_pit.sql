-- fact_pit.sql 
SELECT 
     session_key,
     driver_number,
     pit_duration,
     lap_number,
     CAST(date as DATETIME) AS date,
FROM {{ source('raw', 'raw_pit') }} 
WHERE driver_number IS NOT NULL
    AND session_key IS NOT NULL
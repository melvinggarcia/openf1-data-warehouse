-- fact_starting_grid.sql 
SELECT 
     session_key,
     driver_number,
     position,
     lap_duration,
FROM {{ source('raw', 'raw_starting_grid') }} 
WHERE driver_number IS NOT NULL
    AND session_key IS NOT NULL
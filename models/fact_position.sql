-- fact_position.sql 
SELECT 
     session_key,
     driver_number,
     position,
     CAST(date as DATETIME) AS date,
FROM {{ source('raw', 'raw_position') }} 
WHERE driver_number IS NOT NULL
    AND session_key IS NOT NULL
-- fact_overtakes.sql 
SELECT 
     session_key,
     overtaking_driver_number,
     overtaken_driver_number,
     position,
     CAST(date as DATETIME) AS date,
FROM {{ source('raw', 'raw_overtakes') }} 
WHERE overtaking_driver_number IS NOT NULL
    AND overtaken_driver_number IS NOT NULL
    AND session_key IS NOT NULL
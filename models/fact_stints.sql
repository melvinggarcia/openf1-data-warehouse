-- fact_stints.sql 
SELECT 
     session_key,
     driver_number,
     stint_number,
     lap_start,
     lap_end,
     compound,
     tyre_age_at_start,
FROM {{ source('raw', 'raw_stints') }} 
WHERE driver_number IS NOT NULL
    AND session_key IS NOT NULL
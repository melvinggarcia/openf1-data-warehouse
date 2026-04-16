-- fact_race_control.sql 
SELECT 
     session_key,
     driver_number,
     lap_number,
     qualifying_phase,
     category,
     flag,
     scope,
     message,
FROM {{ source('raw', 'raw_race_control') }} 
WHERE session_key IS NOT NULL
-- fact_session_result.sql 
SELECT 
     session_key,
     driver_number,
     position,
     duration,
     points,
     dnf,
     dns,
     dsq,
FROM {{ source('raw', 'raw_session_result') }} 
WHERE driver_number IS NOT NULL
    AND session_key IS NOT NULL
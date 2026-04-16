-- fact_intervals.sql 
SELECT 
     session_key,
     driver_number,
     interval,
     gap_to_leader,
     CAST(date as DATETIME) AS date,
FROM {{ source('raw', 'raw_intervals') }} 
WHERE driver_number IS NOT NULL
    AND session_key IS NOT NULL
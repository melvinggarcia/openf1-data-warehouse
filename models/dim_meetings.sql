-- dim_meetings.sql 
SELECT 
     meeting_key,
     year,
     country_name,
     country_code,
     circuit_short_name,
     circuit_type,
     CAST(date_start as DATE) AS date_start,
FROM {{ source('raw', 'raw_meetings') }} 
WHERE meeting_key IS NOT NULL
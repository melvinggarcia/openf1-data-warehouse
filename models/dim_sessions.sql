-- dim_sessions.sql 
SELECT 
     session_key,
     meeting_key,
     session_name,
     session_type,
     CAST(date_start as DATE) AS date_start,
     CAST(date_end as DATE) AS date_end,
FROM {{ source('raw', 'raw_sessions') }} 
WHERE meeting_key IS NOT NULL
    AND session_key IS NOT NULL
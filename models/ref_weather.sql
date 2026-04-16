-- ref_weather.sql 
SELECT 
     session_key,
     air_temperature,
     track_temperature,
     humidity,
     rainfall,
     wind_speed,
     wind_direction,
     pressure,
     CAST(date as DATETIME) AS date,
FROM {{ source('raw', 'raw_weather') }} 
WHERE meeting_key IS NOT NULL
    AND session_key IS NOT NULL
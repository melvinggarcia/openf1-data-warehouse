-- telem_car_data.sql 
SELECT 
     session_key,
     driver_number,
     speed,
     throttle,
     brake,
     rpm,
     n_gear AS gear,
     CAST(date as DATETIME) AS date,
FROM {{ source('raw', 'raw_car_data') }} 
WHERE driver_number IS NOT NULL
    AND session_key IS NOT NULL
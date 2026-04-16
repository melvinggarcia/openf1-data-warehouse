-- dim_drivers.sql 
SELECT 
     driver_number,
     session_key,
     name_acronym,
     full_name,
     team_name,
     team_colour,
     country_code,
FROM {{ source('raw', 'raw_drivers') }} 
WHERE driver_number IS NOT NULL
    AND session_key IS NOT NULL
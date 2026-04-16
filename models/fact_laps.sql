-- fact_laps.sql 
SELECT 
     session_key,
     driver_number,
     lap_duration,
     lap_number,
     duration_sector_1,
     duration_sector_2,
     duration_sector_3,
     i1_speed,
     i2_speed,
     st_speed,
     is_pit_out_lap,
FROM {{ source('raw', 'raw_laps') }} 
WHERE driver_number IS NOT NULL
    AND session_key IS NOT NULL
# Formula 1 Race Analytics

An end-to-end data analytics project built using the OpenF1 API, DuckDB, dbt Core, Dask, and Matplotlib to analyze Formula 1 race performance, strategy, and race conditions.

## Overview

This project explores multiple Formula 1 race hypotheses through scalable data ingestion, warehouse modeling, distributed analytics, and visualization.

The pipeline extracts race data from the OpenF1 API, stores it in DuckDB, transforms it into a star schema using dbt Core, and performs analytical workflows using SQL and Dask.

### Technologies Used
- Python – Data ingestion and orchestration
- OpenF1 API – Primary data source
- DuckDB – Analytical data warehouse
- dbt Core – Data transformation and modeling
- Dask – Distributed data processing
- Matplotlib – Data visualization
- SQL – Analytical querying

## Data Model

The warehouse follows a star schema structure using dimension and fact tables.

### Dimension Tables
- dim_meetings
- dim_sessions
- dim_drivers

### Fact Tables
- fact_laps
- fact_stints
- fact_pit
- fact_position
- fact_race_control
- fact_session_result
- fact_starting_grid
- fact_weather
- fact_car_data

Most tables are connected through:

- session_key
- meeting_key
- driver_number

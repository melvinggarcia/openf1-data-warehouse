# f1_dw

dbt Core project for transforming OpenF1 API race data into an analytics-ready Formula 1 data warehouse.

---

## Overview

This dbt project transforms raw OpenF1 race data stored in DuckDB into a structured star schema consisting of dimension and fact tables.

The warehouse supports analytical workflows focused on:
- race performance
- pit strategy
- tyre compound analysis
- starting grid impact
- race control events

---

## Technologies

- dbt Core
- DuckDB
- SQL

---

## Project Structure

```text
f1_dw/
│
├── models/
├── macros/
├── seeds/
├── snapshots/
├── tests/
│
├── dbt_project.yml
└── profiles.yml
```

---

## Data Model

### Dimension Tables
- `dim_meetings`
- `dim_sessions`
- `dim_drivers`

### Fact Tables
- `fact_laps`
- `fact_stints`
- `fact_pit`
- `fact_position`
- `fact_race_control`
- `fact_session_result`
- `fact_starting_grid`
- `fact_weather`
- `fact_car_data`

Primary relational keys:
- `meeting_key`
- `session_key`
- `driver_number`

---

## Running the Project

### Install dependencies

```bash
pip install dbt-duckdb
```

### Run models

```bash
dbt run
```

### Run tests

```bash
dbt test
```

### Generate documentation

```bash
dbt docs generate
dbt docs serve
```

---

## Data Cleaning / Transformation

Transformations include:
- datatype normalization
- null filtering
- relational key alignment
- schema standardization
- aggregation preparation for analytics

---

## Notes

- Raw race data is sourced from the OpenF1 API
- DuckDB is used as the analytical warehouse backend
- Some large telemetry datasets were filtered or partitioned for performance optimization

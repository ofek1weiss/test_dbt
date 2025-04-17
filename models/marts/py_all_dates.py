import duckdb

def model(dbt, session):
    dbt.config(materialized='table')
    df = dbt.ref("all_dates")
    return df
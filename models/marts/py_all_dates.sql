{{ config(materialized='table') }}

SELECT *
FROM {{ ref('all_dates') }}
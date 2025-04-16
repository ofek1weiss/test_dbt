{{ config(materialized='table') }}

SELECT
  id,
  existing_column * 2 AS new_column
FROM
  {{ ref('all_dates') }}
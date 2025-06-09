{{
  config(
    materialized = 'table',
    enabled = target.type == 'bigquery'
  )
}}

with source_table as (
  select "leg|627-1" as reason
  union all
  select "leg|628-2" as reason
  union all
  select "leg|629-3" as reason
)

select
  cast(regexp_extract(reason, '\\|+([0-9]+)') as int) as race_id,
from source_table
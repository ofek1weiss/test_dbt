{{
  config(
    materialized='incremental',
    unique_key='id',
    incremental_strategy='merge'
  )
}}
with max_id as (
  {% if is_incremental() %}
    select max(id) as max_id from {{ this }}
  {% else %}
    select 1 as max_id
  {% endif %}
)
select max_id as id from max_id
union all
select max_id + 1 as id from max_id
{{
  config(
    materialized='table',
    description='A model demonstrating safe division handling'
  )
}}

/*
This model demonstrates proper handling of division operations to prevent
division by zero errors. It uses NULLIF to handle zero denominators gracefully,
returning NULL instead of raising an error.
*/

with sample_data as (
    select 
        1 as numerator,
        0 as denominator
    from {{ ref('all_dates') }}
)

select 
    numerator,
    denominator,
    -- Using NULLIF for more concise and standard SQL handling of zero division
    numerator / NULLIF(denominator, 0) as safe_division_result,
    case 
        when denominator = 0 then 'Division by zero prevented'
        else 'Valid division'
    end as division_status
from sample_data
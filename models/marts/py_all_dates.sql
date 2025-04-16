with all_dates as (
    select * from {{ ref('all_dates') }}
)

select * from all_dates
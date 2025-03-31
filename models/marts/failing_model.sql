-- This model demonstrates a simple aggregation
select
    date_day,
    count(*) as record_count
from {{ ref('all_dates') }}
group by 1
order by 1
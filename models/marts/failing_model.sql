select *
from {{ ref('all_dates') }}
limit 1
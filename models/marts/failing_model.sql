select 1 / NULLIF(0, 0)
from {{ ref('all_dates') }}
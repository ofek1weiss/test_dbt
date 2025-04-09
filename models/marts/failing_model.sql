select 1.0 / NULLIF(0, 0) as safe_division_result
from {{ ref('all_dates') }}
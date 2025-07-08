select 1 -- Changed from "1 / 0" to avoid division by zero
from {{ ref('all_dates') }}
-- Safe calculation that doesn't divide by zero
select 
  1 as safe_calculation
from {{ ref('all_dates') }}

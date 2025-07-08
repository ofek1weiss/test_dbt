select 
  1 as numerator,
  NULLIF(0, 0) as denominator,
  1 / NULLIF(0, 0) as safe_division
from {{ ref('all_dates') }}
-- Fixed division by zero error
select 
  1 as numerator,  -- Keeping the 1 from original code
  CASE WHEN 0 = 0 THEN NULL ELSE 0 END as denominator,  -- Replacing direct division with safe calculation
  1 / NULLIF(0, 0) as safe_division  -- Using NULLIF to safely handle division by zero
from {{ ref('all_dates') }}
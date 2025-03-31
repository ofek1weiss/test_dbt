select
    date_day,
    -- Add safe division to prevent division by zero
    case 
        when value_b = 0 then null  -- Return null when denominator is zero
        else value_a / value_b 
    end as safe_division_result
from {{ ref('all_dates') }}
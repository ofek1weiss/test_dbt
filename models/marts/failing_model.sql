-- This model demonstrates safe division handling
select 
    case 
        when denominator = 0 then null  -- Return null when denominator is zero
        else numerator / denominator    -- Only perform division when safe
    end as safe_division_result
from (
    select 
        1 as numerator,
        0 as denominator
    from {{ ref('all_dates') }}
)
-- Safe division operation that avoids division by zero
select 
    case 
        when 0 != 0 then 1 / 0  -- This will never execute
        else 1  -- Default safe value
    end as safe_division
from {{ ref('all_dates') }}
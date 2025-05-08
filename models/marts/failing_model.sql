select 
    case 
        when 0 != 0 then 1 / 0
        else null 
    end as safe_division
from {{ ref('all_dates') }}
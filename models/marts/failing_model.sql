select 
    case 
        when denominator = 0 then null 
        else 1 / denominator 
    end as safe_division
from {{ ref('all_dates') }} as ad
cross join (select 0 as denominator) as d
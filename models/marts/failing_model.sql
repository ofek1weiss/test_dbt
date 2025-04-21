select 
    case 
        when 0 = 0 then null
        else 1 / 0
    end
from {{ ref('all_dates') }}
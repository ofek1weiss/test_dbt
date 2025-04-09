with safe_division as (
    select 
        case 
            when denominator = 0 then null 
            else numerator / denominator 
        end as division_result
    from (
        select 1 as numerator, 0 as denominator
        from {{ ref('all_dates') }}
    ) calculation
)
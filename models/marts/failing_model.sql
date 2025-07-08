from {{ ref('all_dates') }}
select 
  CASE 
    WHEN 0 != 0 THEN 1 / 0
    ELSE NULL  -- Return NULL instead of error
  END
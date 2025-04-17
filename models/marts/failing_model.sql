-- models/marts/failing_model.sql
select 
    date_day,
    1 / NULLIF(day_of_month, 0) as inverse_day_of_month
from {{ ref('all_dates') }}
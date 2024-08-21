{{ dbt_utils.date_spine(
    datepart="day",
    start_date="cast(current_date - interval '1 year' as date)",
    end_date="cast(current_date as date)"
   )
}}

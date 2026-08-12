with dates as (
    select 
        date_day::timestamp + interval '12 hours' as date
    from ({{ dbt_utils.date_spine(
        datepart="day",
        start_date="cast(current_date - interval '1 days' as date)",
        end_date="cast(current_date as date)"
    )}}) ttt
)
select * from (
SELECT
    date,
    123 as value
    from dates
) t1
cross join (
	select client from (values ('win'), ('mac'), ('linux')) as t(client)
) as t2
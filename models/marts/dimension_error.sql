with dates as (
    select 
        date_hour::timestamp + interval '12 hours' as date
    from ({{ dbt_utils.date_spine(
        datepart="hour",
        start_date="cast(current_date - interval '30 days' as date)",
        end_date="cast(current_date - interval '2 days' as date)"
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
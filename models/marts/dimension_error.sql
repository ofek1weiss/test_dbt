select * from (
SELECT
    generate_series(
        current_date - interval '30 days',
        current_date  - interval '2 days',
        interval '1 hour'
    )::timestamp + '12:00:00'::time as date,
    123 as value
) t1
cross join (
	select client from (values ('win'), ('mac'), ('linux')) as t(client)
) as t2
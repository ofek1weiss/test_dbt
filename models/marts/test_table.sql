SELECT
    generate_series(
        current_date - interval '30 days',
        current_date,
        interval '1 day'
    )::timestamp + '12:00:00'::time as data,
    123 as value
{{
    config(
        meta={'owner': ['ofek@elementary-data.com']},
        severity='error'
    )
}}

select 1 from {{ ref('all_dates') }}

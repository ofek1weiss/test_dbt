{{
    config(
        severity='error',
        meta={'owner': ['ofek@elementary-data.com'], 'description': 'test that is very cool'}
    )
}}

select * from {{ ref('all_dates') }}

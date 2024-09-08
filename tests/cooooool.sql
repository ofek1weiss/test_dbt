{{
    config(
        severity='error',
        meta={'owner': ['ofek@elementary-data.com'], 'quality_dimension': 'accuracy'}
    )
}}

select 1 from {{ ref('all_dates') }}

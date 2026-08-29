{{
    config(
        meta={'owner': ['ofek@elementary-data.com'], 'quality_dimension': 'uniqueness'},
        severity='error'
    )
}}

select 1 from {{ ref('all_dates') }}

{{
    config(
        tags=['critical-tag', 'critical-tag2'],
        severity='error',
        meta={'owner': ['ofek@elementary-data.com'], 'description': 'dsfdsafafsafasf'}
    )
}}

select * from {{ ref('fct_orders') }}

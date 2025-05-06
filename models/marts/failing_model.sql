{# Set default values #}
{% set numerator = 1 %}
{% set denominator = 0 %}

select
  {{ numerator }} / NULLIF({{ denominator }}, 0) as safe_division,
  CASE 
    WHEN {{ denominator }} = 0 THEN 'Division by zero prevented'
    ELSE 'Normal division'
  END as division_status
from {{ ref('all_dates') }}
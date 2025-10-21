{% macro dbg() %}
  {# {% do print(run_query("select * from system.information_schema.columns limit 100")) %} #}
  {% set res = elementary.run_query("select 1 as one where 1=0") %}
  {{ res }}
  {{ debug() }}
{% endmacro %}

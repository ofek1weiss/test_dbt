{% macro dbg() %}
  {% do print(run_query("select * from system.information_schema.columns limit 100")) %}
{% endmacro %}

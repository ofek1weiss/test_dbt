{% macro dbg() %}
  {% set rel = ref('elementary', 'dbt_invocations') %}
  {% do print(rel) %}
  {% set existing_rel = load_relation(rel) %}
  {% do print(existing_rel) %}
  {% if existing_rel != none %}
    {% do print(existing_rel.is_view) %}
  {% else %}
    {% do print('no relation') %}
  {% endif %}
{% endmacro %}

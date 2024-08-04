{% macro clear_redshift() %}
  {% if target.type != 'redshift' %}
    {% do print('only redshift') %}
    {% do return('') %}
  {% endif %}
  {% set schemas = elementary.agate_to_dicts(elementary.run_query("select schema_name from information_schema.schemata where catalog_name = 'elementary_ci' and (schema_name like '%dbt_pkg%' or schema_name like '%py_dbt%')")) %}
  {% for schema in schemas %}
    {% set schema_name = schema['schema_name'] %}
    {% do elementary.run_query("drop schema if exists {} cascade".format(schema_name)) %}
  {% endfor %}
  {% do print(schemas) %}
{% endmacro %}
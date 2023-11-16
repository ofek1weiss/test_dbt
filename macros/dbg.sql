{% macro dbg() %}
  {% do print(elementary.schema_exists('system', 'information_schema')) %}
  {% do elementary.run_query('select * from system.information_schema.views where table_schema = \'ofek_test_elementary\' and table_name = \'information_schema_columns\'').print_csv() %}
{% endmacro %}
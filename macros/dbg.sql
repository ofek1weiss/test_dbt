{% macro dbg() %}
  {% do print("generate_surrogate_key") %}
  {% do print(elementary.generate_surrogate_key(['field'])) %}
  {% if dbt.hash %}
    {% do print("dbt.hash") %}
    {% do print(dbt.hash("a")) %}
  {% else %}
    {% do print("no dbt.hash")%}
  {% endif %}
  {% if dbt_utils.hash %}
    {% do print("dbt_utils.hash") %}
    {% do print(dbt_utils.hash("a")) %}
  {% else %}
    {% do print("no dbt_utils.hash")%}
  {% endif %}
  {% if dbt.concat %}
    {% do print("dbt.concat:" ) %}
    {% do print(dbt.concat(["a", "b"])) %}
  {% else %}
    {% do print("no dbt.concat")%}
  {% endif %}
  {% if dbt_utils.concat %}
    {% do print("dbt_utils.concat") %}
    {% do print(dbt_utils.concat(["a", "b"])) %}
  {% else %}
    {% do print("no dbt_utils.concat")%}
  {% endif %}
{% endmacro %}




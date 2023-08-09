{% macro cents_to_dolars(column_name, decimals=2) -%}
    round({{ column_name }} / 100, {{ decimals }})
{%- endmacro %}
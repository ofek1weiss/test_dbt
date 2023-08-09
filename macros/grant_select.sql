{% macro grant_select() %}
    {% set sql %}
        GRANT SELECT ON ALL TABLES IN SCHEMA {{ target.schema }} TO {{ target.user }};
    {% endset %}

    {{ log('Granting access to ' ~ target.user ~ ' to schema ' ~ target.schema ~ '.', info=True) }}
    {% if execute %}
        {% do run_query(sql) %}
        {{ log('Successfully granted premissions', info=True) }}
    {% else %}
        {{ log('Failed to grant access as dbt is not in execution mode', info=True) }}
    {% endif %}
{% endmacro %}
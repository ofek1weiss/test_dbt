{% test failing_test(model, column_name) %}
select {{ column_name }} from {{ model }}
{% endtest %}
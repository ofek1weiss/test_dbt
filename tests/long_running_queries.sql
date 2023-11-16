{{
  config(
    enabled=(target.type == 'bigquery'),
    meta={
      "description": "Long running jobs in the past day",
      "duration_seconds": 3600
    }
  )
}}
{% if target.type == "bigquery" %}
  {% set region_relation = api.Relation.create(database=target.project, schema="region-" ~ target.location).without_identifier() %}
  {% set jobs_relation = region_relation.information_schema('JOBS') %}
  SELECT
    job_id,
    user_email,
    TIMESTAMP_DIFF(end_time, start_time, SECOND) AS duration_seconds
  FROM
    {{ jobs_relation }}
  WHERE
    creation_time > TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 1 DAY)
    AND job_type = 'QUERY'
    AND TIMESTAMP_DIFF(end_time, start_time, SECOND) >= {{ config.get("meta").duration_seconds }}
{% else %}
  {# This test is only supported for bigquery #}
  select * from (select 1) where false
{% endif %}

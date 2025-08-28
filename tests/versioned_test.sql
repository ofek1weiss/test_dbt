{{ config(
    override_primary_test_model_id="model.test_dbt.versioned",
    meta={
        "description": "Versioned test",
        "tags": ["test_dbt"],
    }
) }}


select * from {{ ref('versioned') }}
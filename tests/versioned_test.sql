{{ config(
    override_primary_test_model_id="model.test_dbt.versioned",
    description="Versioned test",
    meta={
        "tags": ["test_dbt"],
    }
) }}


select * from {{ ref('versioned') }}
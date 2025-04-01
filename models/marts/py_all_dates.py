def model(dbt, session):
    df = dbt.ref("all_dates")
    return df

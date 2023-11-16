select
    {{ adapter.quote("ID") }} as customer_id,
    {{ adapter.quote("FIRST_NAME") }} as first_name,
    {{ adapter.quote("LAST_NAME") }} as last_name

from {{ source('jaffle_shop', 'customers') }}
{#
union all
select
    "ID" as customer_id,
    "FIRST_NAME" as first_name,
    "LAST_NAME" as last_name
from {{ source('jaffle_shop', 'customers') }}
#}
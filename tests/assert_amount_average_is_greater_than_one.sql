select
    customer_id, 
    avg(amount) as average_amount
from {{ ref('fct_orders') }}
where customer_id in (
    select customer_id
    from {{ ref('stg_orders') }}
)
group by 1
having count(customer_id) > 1 and avg(amount) < 1

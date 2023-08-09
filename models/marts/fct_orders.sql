with orders as (
    select * from {{ ref('stg_orders') }}
),

order_payments as (
    select 
        order_id, 
        sum(amount) as amount 
    from {{ ref('stg_payments') }}
    where status = 'success'
    group by order_id
),

final as (
    select
        orders.order_id as order_id,
        orders.customer_id as customer_id,
        orders.order_date as order_date,
        coalesce(order_payments.amount, 0) as amount
    from orders
    left join order_payments
    on orders.order_id = order_payments.order_id
)

select * from final
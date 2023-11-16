select
    {{ adapter.quote("ID") }} as payment_id,
    {{ adapter.quote("ORDERID") }} as order_id,
    {{ adapter.quote("PAYMENTMETHOD") }} as payment_method,
    {{ adapter.quote("STATUS") }} as status,
    {{ cents_to_dolars(adapter.quote("AMOUNT")) }} as amount,
    {{ adapter.quote("CREATED") }} as created_date

from {{ source('stripe', 'payment') }}

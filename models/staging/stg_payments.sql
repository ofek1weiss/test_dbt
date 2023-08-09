select
    "ID" as payment_id,
    "ORDERID" as order_id,
    "PAYMENTMETHOD" as payment_method,
    "STATUS" as status,
    {{ cents_to_dolars('"AMOUNT"') }} as amount,
    "CREATED" as created_date

from {{ source('stripe', 'payment') }}

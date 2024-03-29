-- Refunds have a negative amount, so the total amount should always be >= 0.
-- Therefore return records where this isn't true to make the test fail.
-- depends_on: {{ ref('stg_payments') }}
select
    order_id,
	sum(amount) as total_amount
from {{ ref('stg_payments') }}
group by 1
having not(sum(amount) >= 0)

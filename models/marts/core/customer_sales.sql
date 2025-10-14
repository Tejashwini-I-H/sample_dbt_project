select
    customer_name,
    sum(order_amount) as total_spent,
    count(*) as num_orders
from {{ ref('stg_orders') }}
group by customer_name

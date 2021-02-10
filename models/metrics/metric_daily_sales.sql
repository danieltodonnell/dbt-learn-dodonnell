select
    order_date,
    count(order_id) as number_of_orders,
    sum(amount_usd) as day_value

from {{ ref('fct_orders') }}
group by order_date
with 

orders as (

    select * from {{ ref('stg_orders') }}

),

payments as (

    select * from {{ ref('stg_payments') }}

),

final as (

    select
        orders.order_id,
        orders.customer_id,
        orders.order_date,
        payments.amount_usd

    from orders
    left join payments using (order_id)
    where payments.status != 'fail'

)

select * from final
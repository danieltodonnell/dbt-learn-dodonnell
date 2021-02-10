select 
    ID as payment_id,
    ORDERID as order_id,
    PAYMENTMETHOD as payment_method,
    STATUS as status,
    (AMOUNT/100) as amount_usd,
    CREATED as created_date,
    _batched_at as payment_batch_date
from raw.stripe.payment
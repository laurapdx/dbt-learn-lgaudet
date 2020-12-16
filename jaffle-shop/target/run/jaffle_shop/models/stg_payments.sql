

      create or replace transient table analytics.dev_lgaudet.stg_payments  as
      (select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    (coalesce(amount,0)/100)::float as amount,
    created
from raw.stripe.payment
      );
    
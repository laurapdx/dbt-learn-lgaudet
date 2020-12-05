
    
    



select count(*) as validation_errors
from analytics.dev_lgaudet.stg_orders
where customer_id is null



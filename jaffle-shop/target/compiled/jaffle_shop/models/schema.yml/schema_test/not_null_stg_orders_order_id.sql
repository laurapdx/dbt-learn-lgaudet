
    
    



select count(*) as validation_errors
from analytics.dev_lgaudet.stg_orders
where order_id is null




    
    



select count(*) as validation_errors
from analytics.dev_lgaudet.stg_payments
where payment_id is null



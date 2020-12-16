
    
    




with all_values as (

    select distinct
        status as value_field

    from analytics.dev_lgaudet.stg_payments

),

validation_errors as (

    select
        value_field

    from all_values
    where value_field not in (
        'success','fail'
    )
)

select count(*) as validation_errors
from validation_errors



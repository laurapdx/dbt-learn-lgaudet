
  create or replace  view analytics.dev_lgaudet.my_second_dbt_model  as (
    -- Use the `ref` function to select from other models

select *
from analytics.dev_lgaudet.my_first_dbt_model
where id = 1
  );

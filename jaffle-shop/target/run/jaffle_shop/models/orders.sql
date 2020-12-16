

      create or replace transient table analytics.dev_lgaudet.orders  as
      (with payment as (
	SELECT
		order_id,
		sum(amount)::float as amount
	FROM
		analytics.dev_lgaudet.stg_payments as payment
	WHERE 
		status = 'success'
	GROUP BY
		order_id
)


SELECT
    orders.order_id,
    customer_id,
    amount
FROM 
	analytics.dev_lgaudet.stg_orders as orders
	LEFT JOIN
		payment
		using (order_id)
      );
    
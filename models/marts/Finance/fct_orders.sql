  select order_id ,stg_orders.customer_id,amount

        from {{ ref('stg_orders') }} stg_orders
 left join 
{{ ref('stg_payments') }} stg_payments
on stg_orders.order_id=stg_payments.orderid
left join {{ ref('stg_customers') }} stg_customers
on stg_orders.customer_id=stg_customers.customer_id

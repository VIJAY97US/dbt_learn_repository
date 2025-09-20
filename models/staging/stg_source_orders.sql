SELECT
    o.order_id,
    o.customer_id,
    o.order_date,
    o.total_amount,
    c.name AS customer_name,
    c.email AS customer_email
FROM {{ source('ecommerce', 'raw_orders') }} o
JOIN {{ source('ecommerce', 'raw_customers') }} c
  ON o.customer_id = c.customer_id
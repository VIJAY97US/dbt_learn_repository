{{ config(
    materialized='view',
    database='raw',
    schema='ecommerce'
) }}


SELECT
  order_id,
  customer_id,
  order_date,
  total_amount
FROM {{ source('ecommerce', 'raw_orders') }}
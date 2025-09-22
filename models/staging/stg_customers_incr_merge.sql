{{ config(
    materialized='view',
    database='raw',
    schema='ecommerce'
) }}

SELECT
    o.customer_id,
   INITCAP(o.name)  AS customer_name,
  LOWER(o.email)   AS customer_email
FROM {{ source('ecommerce', 'raw_customers') }} o   
{{ config(
    materialized='incremental',
    incremental_strategy='merge',
    unique_key='order_id',
    database='raw',
    schema='ecommerce'
) }}

WITH joined AS (
  SELECT
    o.order_id,
    o.order_date,
    o.total_amount,
    c.customer_id,
    c.customer_name,
    c.customer_email
  FROM {{ ref('stg_orders') }}   o
  JOIN {{ ref('stg_customers') }} c
    ON o.customer_id = c.customer_id
),

filtered AS (
  SELECT *
  FROM joined
  {% if is_incremental() %}
    -- Only consider rows on/after the target's current max date
    WHERE order_date >= (
      SELECT COALESCE(MAX(order_date), '1900-01-01'::DATE) FROM {{ this }}
    )
  {% endif %}
)
SELECT * FROM filtered
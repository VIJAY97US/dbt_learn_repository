{{ config(
    materialized='incremental',
    incremental_strategy='insert_overwrite',
    partition_by={'field': 'order_date', 'data_type': 'date'},
    database='demo_db',
    schema='public'
) }}

SELECT
  order_id,
  customer_id,
  amount,
  order_date
FROM {{ source('rawsource', 'raw_orders') }}

{% if is_incremental() %}
  -- Filter only recent dates to limit what partitions are overwritten
  WHERE order_date >= dateadd(day, -3, current_date)
{% endif %}

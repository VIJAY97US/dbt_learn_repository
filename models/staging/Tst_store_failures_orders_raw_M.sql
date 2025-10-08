{{ config(
    materialized='table'
) }}

SELECT * FROM demo_db.public.Tst_store_failures_orders_raw
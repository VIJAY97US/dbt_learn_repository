{{ config(
    materialized='table'
) }}

SELECT * FROM demo_db.public.Tst_Sr_Tbl_Mdl_orders_raw
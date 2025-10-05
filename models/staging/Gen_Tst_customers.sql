
{{ config(
    materialized='table',
    database='demo_db',
    schema='public'
) }}

SELECT * FROM demo_db.public.Gen_Tst_customers;

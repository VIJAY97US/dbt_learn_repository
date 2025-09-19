{{ config(
    database= 'DEMO_DB',
    schema='staging',
    materialized='ephemeral'
) }}

with cte as
(
    SELECT * FROM DBTPRACTICE.public.Customer
)

SELECT * FROM cte
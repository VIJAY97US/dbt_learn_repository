{{ config(
    database= 'DEMO_DB',
    materialized='view',
    schema='staging'
) }}

with cte as
(
    SELECT * FROM DBTPRACTICE.public.Orders
)

SELECT * FROM cte
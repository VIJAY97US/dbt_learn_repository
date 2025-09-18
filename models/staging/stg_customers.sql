{{ config(
    materialized='ephemeral'
) }}

with cte as
(
    SELECT * FROM DBTPRACTICE.public.Customer
)

SELECT * FROM cte
{{ config(
    database= 'DEMO_DB',
    schema='staging',
    materialized='ephemeral'
) }}


WITH CTE as
(
    SELECT * FROM DBTPRACTICE.public.Nation
)

SELECT * FROM CTE


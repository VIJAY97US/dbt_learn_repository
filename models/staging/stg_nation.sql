{{ config(
    materialized='ephemeral'
) }}

WITH CTE as
(
    SELECT * FROM DBTPRACTICE.public.Nation
)

SELECT * FROM CTE;
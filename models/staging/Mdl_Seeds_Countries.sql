{{ config(
    database= 'DEMO_DB',
    schema='staging'
) }}

with cte as
(
    SELECT * FROM DBTPRACTICE.RAWLAYER.Seeds_Countries
)

SELECT * FROM cte
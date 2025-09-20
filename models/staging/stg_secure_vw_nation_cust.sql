{{ config(
    database= 'DEMO_DB',
    materialized='view',
    secure=true,
    schema='staging'
) }}
select
C.*
from 
{{ ref('stg_customers') }} C
inner join 
{{ ref('stg_nation') }} N
ON C.NationID = N.NationID
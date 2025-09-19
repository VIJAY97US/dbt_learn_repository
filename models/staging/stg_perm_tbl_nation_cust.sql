{{ config(
    database= 'DEMO_DB',
    (materialized='table', transient=false),
    schema='staging'
) }}
select
C.*
from 
{{ ref('stg_customers') }} C
inner join 
{{ ref('stg_nation') }} N
ON C.NationID = N.NationID
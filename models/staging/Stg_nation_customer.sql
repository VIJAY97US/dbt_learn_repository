select
*
from 
{{ ref('stg_customers') }} C
inner join 
{{ ref('stg_nation') }} N
ON C.C_NATIONKEY = N.N_NATIONKEY
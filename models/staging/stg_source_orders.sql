select *
from {{ source('my_source_name', 'raw_orders') }}
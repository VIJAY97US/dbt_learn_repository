{{ config(materialized='view') }}

select *
from {{ source('ecommerce', 'raw_orders') }}
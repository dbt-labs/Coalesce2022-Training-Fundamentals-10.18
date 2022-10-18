{{
    config(
        materialized='view'
    )
}}

select         
    id as order_id,
    user_id as customer_id,
    order_date,
    status,
    _ETL_LOADED_AT
from raw.jaffle_shop_original.orders
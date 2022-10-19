select
    id as order_id,
    user_id as customer_id,
    order_date,
    COALESCE(status,'None') AS status

from {{ source('jaffle_shop',  'orders') }}
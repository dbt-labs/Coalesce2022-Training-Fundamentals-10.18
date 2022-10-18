with raw as (select * 
    from raw.jaffle_shop_original.customers)

select
    id as customer_id
    ,first_name
    ,last_name

from raw
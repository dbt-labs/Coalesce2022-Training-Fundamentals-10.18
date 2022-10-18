with

source as (

    -- select * from raw.jaffle_shop_original.customers
    select * from {{ source('jaffle_shop_my_own_name', 'customers_my_own_name') }}

),

staged as (

    select
        id as customer_id,
        first_name,
        last_name
    from source

)

select * from staged
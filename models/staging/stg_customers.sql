
{{
    config(
        materialized='view'
    )
}}

with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from {{source('jaffle_shop_original', 'customers')}}

)

select * from customers;
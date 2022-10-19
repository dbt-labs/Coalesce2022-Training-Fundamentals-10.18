select number_of_orders
from {{ ref('dim_customers') }}
where number_of_orders < 0
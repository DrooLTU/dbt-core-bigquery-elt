with

source as (
    select * from {{ source('superstore', 'superstore_final_dataset')}}
),

orders as (

select distinct
    Order_ID as order_id,
    Order_Date as order_date,
    Ship_Date as ship_date,
    Ship_Mode as ship_mode,
    Customer_ID as customer_id,
    Sales as line_total_usd
from source

)

select * from orders
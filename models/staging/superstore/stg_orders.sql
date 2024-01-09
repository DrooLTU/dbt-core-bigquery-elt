with

source as (
    select * from {{ source('superstore', 'superstore_final_dataset')}}
),

orders as (

select distinct
    Order_ID,
    Order_Date,
    Ship_Date,
    Ship_Mode,
    Customer_ID,
    Sales as Sale_Ammount
from source

)

select * from orders
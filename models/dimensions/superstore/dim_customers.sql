with 

source as (
    select * from {{ source('superstore', 'superstore_final_dataset')}}
),

customers as (

select distinct
    Customer_ID as id,
    Customer_Name as customer_name,
    Segment as segment
from source

)

select * from customers
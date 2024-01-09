with 

source as (
    select * from {{ source('superstore', 'superstore_final_dataset')}}
),

customers as (

select distinct
    Customer_ID,
    Customer_Name,
    Segment
from source

)

select * from customers
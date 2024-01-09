with 

source as (
    select * from {{ source('superstore', 'superstore_final_dataset')}}
),

products as (

select distinct
    Product_ID,
    Category,
    Sub_Category,
    Product_Name
from source

)

select * from products
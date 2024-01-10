with 

source as (
    select * from `turing-job-ad-project`.`turing_dbt_sales`.`superstore_final_dataset`
),

products as (

select distinct
    Product_ID as product_id,
    Category as category,
    Sub_Category as sub_category,
    Product_Name as product_name
from source

)

select * from products
with 

source as (
    select * from `turing-job-ad-project`.`turing_dbt_sales`.`superstore_final_dataset`
),

customers as (

select distinct
    Customer_ID as customer_id,
    Customer_Name as customer_name,
    Segment as segment
from source

)

select * from customers
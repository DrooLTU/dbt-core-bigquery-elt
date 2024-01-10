

  create or replace view `turing-job-ad-project`.`turing_dbt_sales_dev`.`stg_customers`
  OPTIONS()
  as with 

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

select * from customers;


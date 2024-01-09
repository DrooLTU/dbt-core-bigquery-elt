

  create or replace view `turing-job-ad-project`.`turing_dbt_sales_dev`.`stg_orders`
  OPTIONS()
  as with

source as (
    select * from `turing-job-ad-project`.`turing_dbt_sales`.`superstore_final_dataset`
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

select * from orders;


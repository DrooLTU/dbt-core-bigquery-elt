

  create or replace view `turing-job-ad-project`.`turing_dbt_sales_dev`.`stg_products`
  OPTIONS()
  as with 

source as (
    select * from `turing-job-ad-project`.`turing_dbt_sales`.`superstore_final_dataset`
),

products as (

select distinct
    Product_ID,
    Category,
    Sub_Category,
    Product_Name
from source

)

select * from products;


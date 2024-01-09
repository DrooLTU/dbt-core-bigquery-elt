

  create or replace view `turing-job-ad-project`.`turing_dbt_sales_dev`.`dim_customers`
  OPTIONS()
  as with customers as {

select
    Customer_ID,
    Customer_Name
from raw.superstore_final_dataset

};




  create or replace view `turing-job-ad-project`.`turing_dbt_sales_dev`.`dim_customers`
  OPTIONS()
  as with customers as (

    select * from `turing-job-ad-project`.`turing_dbt_sales_dev`.`stg_customers`

);




  create or replace view `turing-job-ad-project`.`turing_dbt_sales_dev`.`dim_dates`
  OPTIONS()
  as with 

source_dates as (
    select distinct Order_Date as date_iso from `turing-job-ad-project`.`turing_dbt_sales`.`superstore_final_dataset`
),

dates as (
    select
        date_iso,
        extract(year from date_iso) as year,
        extract(month from date_iso) as month,
        extract(day from date_iso) as day
    from source_dates
)

select * from dates;


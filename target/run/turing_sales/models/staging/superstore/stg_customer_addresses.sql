

  create or replace view `turing-job-ad-project`.`turing_dbt_sales_dev`.`stg_customer_addresses`
  OPTIONS()
  as with 

source as (
    select * from `turing-job-ad-project`.`turing_dbt_sales`.`superstore_final_dataset`
),

customer_addresses as (
    select
        row_number() over () as address_id,
        Customer_ID as customer_id,
        Country as country,
        City as city,
        State as state,
        Postal_Code as postal_code,
        Region as region
    from (
        select distinct
            Customer_ID,
            Country,
            City,
            State,
            Postal_Code,
            Region
        from source
    ) distinct_addresses
)

select * from customer_addresses;


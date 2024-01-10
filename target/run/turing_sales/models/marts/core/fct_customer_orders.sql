
  
    

    create or replace table `turing-job-ad-project`.`turing_dbt_sales_dev`.`fct_customer_orders`
      
    
    

    OPTIONS()
    as (
      with customers as (

    select * from `turing-job-ad-project`.`turing_dbt_sales_dev`.`stg_customers`

),

orders as (

    select * from `turing-job-ad-project`.`turing_dbt_sales_dev`.`stg_orders`

),

customer_addresses as (

    select * from `turing-job-ad-project`.`turing_dbt_sales_dev`.`stg_customer_addresses`

),

final as (
    select
        customers.customer_id,
        orders.order_id,
        customer_addresses.address_id,
        orders.order_date as order_date_id,
        orders.ship_date as ship_date_id,
        orders.line_total_usd
    from orders

    join customers
    on orders.Customer_ID = customers.Customer_ID

    join customer_addresses
    on orders.Customer_ID = customer_addresses.Customer_ID
)

select * from final
    );
  
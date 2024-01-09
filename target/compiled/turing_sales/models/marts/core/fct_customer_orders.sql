with customers as (

    select * from `turing-job-ad-project`.`turing_dbt_sales_dev`.`stg_customers`

),

orders as (

    select * from `turing-job-ad-project`.`turing_dbt_sales_dev`.`stg_orders`

),

final as (
    select
        customers.Customer_ID,
        customers.Customer_Name,
        orders.Order_ID,
        orders.Order_Date,
        orders.Ship_Date,
        orders.Ship_Mode,
        orders.Sale_Ammount
    from orders

    join customers
    on orders.Customer_ID = customers.Customer_ID
)

select * from final
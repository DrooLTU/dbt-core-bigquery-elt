with customers as (

    select * from {{ ref ('stg_customers')}}

),

orders as (

    select * from {{ ref ('stg_orders')}}

),

final as (
    select
        customers.Customer_ID,
        orders.Order_ID,
        orders.Sale_Ammount
    from orders

    join customers
    on orders.Customer_ID = customers.Customer_ID
)

select * from final

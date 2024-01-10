with customers as (

    select * from {{ ref ('dim_customers')}}

),

orders as (

    select * from {{ ref ('dim_orders')}}

),

customer_addresses as (

    select * from {{ ref ('dim_customer_addresses')}}

),

final as (
    select
        customers.customer_id,
        orders.order_id,
        customer_addresses.address_id,
        orders.order_date as order_date_id,
        orders.ship_date as ship_date_id,
        orders.product_id,
        orders.line_total_usd
    from orders

    join customers
    on orders.Customer_ID = customers.Customer_ID

    join customer_addresses
    on orders.Customer_ID = customer_addresses.Customer_ID
)

select * from final

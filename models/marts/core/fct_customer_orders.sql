with customers as (

    select * from {{ ref ('dim_customers')}}

),

orders as (

    select * from {{ ref ('dim_orders')}}

),

order_addresses as (

    select * from {{ ref ('dim_order_addresses')}}

),

final as (
    select
        customers.customer_id,
        orders.order_id,
        order_addresses.address_id,
        orders.order_date as order_date_id,
        orders.ship_date as ship_date_id,
        orders.product_id,
        orders.line_total_usd
    from orders

    join customers
    on orders.customer_id = customers.customer_id

    join order_addresses
    on orders.order_id = order_addresses.order_id
)

select * from final

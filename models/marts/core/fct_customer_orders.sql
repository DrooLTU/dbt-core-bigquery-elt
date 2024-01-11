with

orders as (

    select * from {{ ref ('dim_orders')}}

),

order_addresses as (

    select * from {{ ref ('dim_order_addresses')}}

),

final as (
    select
        orders.id as order_id,
        orders.customer_id,
        order_addresses.id as address_id,
        orders.order_date as order_date_id,
        orders.ship_date as ship_date_id,
        orders.product_id,
        orders.line_total_usd
    from orders

    join order_addresses
    on orders.id = order_addresses.order_id
)

select * from final

with 

addresses as (
    select * from {{ ref ('stg_order_addresses')}}
)

select * from addresses
with 

addresses as (
    select * from {{ ref ('stg_customer_addresses')}}
)

select * from addresses
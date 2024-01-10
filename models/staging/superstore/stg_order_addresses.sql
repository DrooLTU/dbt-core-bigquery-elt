with 

source as (
    select * from {{ source('superstore', 'superstore_final_dataset')}}
),

order_address as (
    select
        row_number() over () as address_id,
        Order_ID as order_id,
        Country as country,
        City as city,
        State as state,
        Postal_Code as postal_code,
        Region as region
    from (
        select distinct
            Order_ID,
            Country,
            City,
            State,
            Postal_Code,
            Region
        from source
    ) distinct_addresses
)

select * from order_address
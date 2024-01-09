with 

source as (
    select * from {{ source('superstore', 'superstore_final_dataset')}}
),

customer_addresses as (
    select
        row_number() over () as address_id,
        Customer_ID,
        Country,
        City,
        State,
        Postal_Code,
        Region
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

select * from customer_addresses
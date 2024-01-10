with 

source_dates as (
    select CONCAT(Order_Date, Ship_Date) as date_iso from {{ source('superstore', 'superstore_final_dataset')}}
),

dates as (
    select
        date_iso
    from source_dates
)

select distinct * from dates
with 

dates as (
    select Order_Date as date_iso from {{ source('superstore', 'superstore_final_dataset')}}
    union distinct
    select Ship_Date as date_iso from {{ source('superstore', 'superstore_final_dataset')}}
)

select distinct date_iso from dates
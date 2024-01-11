with 

source_dates as (
    select date_iso from {{ ref ('stg_dates')}}
),

dates as (
    select
        date_iso as id,
        extract(year from date_iso) as year,
        extract(month from date_iso) as month,
        extract(day from date_iso) as day
    from source_dates
)

select * from dates
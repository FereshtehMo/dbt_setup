with source as (
    select * from {{ source('gz_raw_data', 'sales') }}
),
renamed as (
    select
        date_date,
        orders_id,
        pdt_id AS products_id,  -- Fixed this line
        revenue,
        quantity
    from source
)
select * from renamed

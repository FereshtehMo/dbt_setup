with source as (
    select * from {{ source('gz_raw_data', 'sales') }}
),
renamed as (
    select
        date_date,
        orders_id,
        pdt_id AS products_id,  -- Renaming syntax
        CONCAT(orders_id, '_', pdt_id) AS unique_primary_key,  -- Concatenating orders_id and products_id
        revenue,
        quantity
    from source
)
select * from renamed
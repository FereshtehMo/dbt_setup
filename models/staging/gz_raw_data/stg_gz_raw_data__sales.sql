with 
source as (
    select * from {{ source('gz_raw_data', 'sales') }}
),
renamed as (
    select
        date_date,
        orders_id,
        pdt_id as products_id,  -- Corrected renaming syntax
        CONCAT(orders_id, '_', pdt_id) AS unique_primary_key,  -- Use the original column name here
        revenue,
        quantity
    from source
)
select * from renamed

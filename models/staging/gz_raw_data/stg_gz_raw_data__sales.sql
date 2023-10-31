with 

source as (

    select * from {{ source('gz_raw_data', 'sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id, as products_id, -- renaming the column here
        revenue,
        quantity

    from source

)

select * from renamed


 
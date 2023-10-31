with 

source as (

    select * from {{ source('gz_raw_data', 'ship') }}

),



renamed as (

    select
        orders_id,
        shipping_fee,
        shipping_fee_1,
        logcost,
        ship_cost

    from source

)

select * from renamed


SELECT 
    shipping_feea, 
    shipping_fee_1 
FROM 
    {{ source('gz_raw_data', 'ship') }}
WHERE 
    shipping_feea <> shipping_fee_1 
LIMIT 10; -- to preview only the first 10 different rows
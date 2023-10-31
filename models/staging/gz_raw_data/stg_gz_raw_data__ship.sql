with 

source as (
    select * from {{ source('gz_raw_data', 'ship') }}
),

renamed as (
    select
        orders_id,
        shipping_fee, -- keeping only this column
        logcost,
        ship_cost
    from source
    where shipping_fee != shipping_fee_1  -- this WHERE clause will filter out rows where the two columns are different
)

select * from renamed;

 

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
)

select * 
from renamed
where shipping_fee != shipping_fee_1;  -- placing the WHERE clause here
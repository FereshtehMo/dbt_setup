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

diff_check as (
    select
        orders_id,
        shipping_fee,
        shipping_fee_1
    from renamed
    where shipping_fee <> shipping_fee_1
    limit 10 -- limiting to preview first 10 rows if there are differences
)

select * from diff_check; -- this will show rows where shipping_fee and shipping_fee_1 are different
 
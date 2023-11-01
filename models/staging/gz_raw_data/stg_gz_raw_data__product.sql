with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        products_id,
        purchse_price AS purchse_price,

    from source

)

select * from renamed
WITH source AS (
    SELECT * 
    FROM {{ source('raw', 'product') }}
),

renamed AS (
    SELECT
        products_id,
        purchase_price  -- corrected typo here
    FROM source
)

SELECT * FROM renamed;
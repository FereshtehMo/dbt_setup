WITH raw_source AS (
    SELECT * 
    FROM {{ source('raw', 'product') }}
),

renamed AS (
    SELECT
        products_id,
        purchase_price AS purchase_price_corrected
    FROM raw_source
)

SELECT * FROM renamed;
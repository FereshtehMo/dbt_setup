WITH source AS (
    SELECT * 
    FROM {{ source('raw', 'sales') }}
),

renamed AS (
    SELECT
        date_date,
        orders_id,
        pdt_id AS product_id, -- Keeping it consistent
        revenue,
        quantity
    FROM source
)

SELECT * FROM renamed;
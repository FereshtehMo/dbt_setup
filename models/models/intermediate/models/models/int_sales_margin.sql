WITH sales_data AS (
    SELECT 
        orders_id, 
        products_id, 
        date_date,
        quantity, 
        revenue 
    FROM {{ source('stg_gz_raw_data__sales') }}
),

product_data AS (
    SELECT 
        products_id, 
        purchase_price
    FROM {{ source('stg_gz_raw_data__product') }}
)

SELECT 
    s.orders_id, 
    s.products_id,
    s.date_date, 
    s.quantity, 
    s.revenue, 
    p.purchase_price, 
    s.quantity * p.purchase_price AS purchase_cost
FROM sales_data s
LEFT JOIN product_data p ON s.products_id = p.products_id
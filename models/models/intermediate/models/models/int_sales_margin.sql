SELECT 

    products_id, 
    date_date, 
    orders_id,
    revenue, 
    quantity, 
    purchase_price, 
    ROUND(CAST(s.quantity AS float64) *CAST( p.purchase_price AS float64) ,2) AS purchase_cost,
    CAST (s.revenue AS float64) - ROUND (CAST(s.quantity AS float64) *CAST(p.purchase_price AS float64) ,2) AS margin
FROM {{ref("stg_raw__sales")}} s
LEFT JOIN {{ref ("stg_raw__product")}} p 
    ON s.pdt_id = p.products_id
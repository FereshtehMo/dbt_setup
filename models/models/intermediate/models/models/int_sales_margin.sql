SELECT 

    s.products_id, 
    s.date_date, 
    s.orders_id,
    s.revenue, 
    s.quantity, 
    p.purchase_price, 
    ROUND(s.quantity*p.purchase_price,2) AS purchase_cost,
    s.revenue - ROUND(s.quantity*p.purchase_price,2) AS margin
FROM {{source('raw', 'sales')}} s
LEFT JOIN {{source('raw', 'product')}} p 
    ON s.pdt_id = p.products_id;
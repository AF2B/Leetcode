WITH LastPrice AS (
    SELECT product_id, new_price, change_date
    FROM Products
    WHERE change_date <= '2019-08-16'
),
LastPricePerProduct AS (
    SELECT product_id, new_price
    FROM LastPrice
    WHERE (product_id, change_date) IN (
        SELECT product_id, MAX(change_date)
        FROM LastPrice
        GROUP BY product_id
    )
)
SELECT p.product_id, 
       COALESCE(lp.new_price, 10) AS price
FROM (SELECT DISTINCT product_id FROM Products) p
LEFT JOIN LastPricePerProduct lp ON p.product_id = lp.product_id;

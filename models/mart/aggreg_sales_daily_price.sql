SELECT
date_date,
product_id,
SUM(price) AS sum_price
FROM 
{{ref("int_sales_stock")}}
GROUP BY 
date_date,
product_id
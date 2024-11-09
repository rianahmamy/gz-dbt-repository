SELECT *
from
{{ref("stg_raw_data_circle__raw_cc_stock")}}
JOIN
{{ref("stg_raw_data_circle__raw_cc_sales")}}
USING (product_id)
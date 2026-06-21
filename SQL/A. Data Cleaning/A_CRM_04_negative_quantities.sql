SELECT
  COUNT(*) AS negative_quantity_rows
FROM ecommerce_customer_analytics.online_retail_raw
WHERE Quantity < 0;
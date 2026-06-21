SELECT
  COUNT(*) AS cancelled_orders
FROM ecommerce_customer_analytics.online_retail_raw
WHERE InvoiceNo LIKE 'C%';
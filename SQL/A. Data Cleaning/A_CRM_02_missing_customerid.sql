SELECT
  COUNT(*) AS missing_customerid_rows
FROM ecommerce_customer_analytics.online_retail_raw
WHERE CustomerID IS NULL;
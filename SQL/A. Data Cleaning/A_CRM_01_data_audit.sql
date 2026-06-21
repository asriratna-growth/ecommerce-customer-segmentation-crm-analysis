SELECT
  COUNT(*) AS total_rows,
  COUNT(DISTINCT InvoiceNo) AS total_invoices,
  COUNT(DISTINCT CustomerID) AS total_customers,
  COUNT(DISTINCT StockCode) AS total_products,
  COUNT(DISTINCT Country) AS total_countries
FROM ecommerce_customer_analytics.online_retail_raw;
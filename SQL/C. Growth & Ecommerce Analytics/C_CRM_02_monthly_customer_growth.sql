SELECT
    FORMAT_DATE('%Y-%m', DATE(InvoiceDate)) AS month,

    COUNT(DISTINCT CustomerID) AS active_customers,

    COUNT(DISTINCT InvoiceNo) AS orders

FROM ecommerce_customer_analytics.customer_transactions_clean

GROUP BY month

ORDER BY month;
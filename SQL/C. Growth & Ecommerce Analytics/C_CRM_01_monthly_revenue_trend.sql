SELECT
    FORMAT_DATE('%Y-%m', DATE(InvoiceDate)) AS month,

    COUNT(DISTINCT InvoiceNo) AS orders,

    COUNT(DISTINCT CustomerID) AS customers,

    ROUND(SUM(Revenue), 2) AS revenue

FROM ecommerce_customer_analytics.customer_transactions_clean

GROUP BY month

ORDER BY month;

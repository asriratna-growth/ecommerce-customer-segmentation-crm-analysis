SELECT
ROUND(
    SUM(Revenue) /
    COUNT(DISTINCT InvoiceNo)
,2) AS avg_order_value

FROM ecommerce_customer_analytics.customer_transactions_clean;

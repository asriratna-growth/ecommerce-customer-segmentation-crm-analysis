WITH customer_orders AS (

SELECT
    CustomerID,
    COUNT(DISTINCT InvoiceNo) AS total_orders
FROM ecommerce_customer_analytics.customer_transactions_clean
GROUP BY CustomerID

)

SELECT

ROUND(
    COUNTIF(total_orders > 1) * 100.0 /
    COUNT(*)
,2) AS retention_rate

FROM customer_orders;

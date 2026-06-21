WITH customer_orders AS (

SELECT
    CustomerID,

    COUNT(DISTINCT InvoiceNo) AS total_orders

FROM ecommerce_customer_analytics.customer_transactions_clean

GROUP BY CustomerID

)

SELECT

CASE

    WHEN total_orders = 1
        THEN 'One-Time Buyer'

    WHEN total_orders BETWEEN 2 AND 5
        THEN 'Repeat Buyer'

    WHEN total_orders > 5
        THEN 'Loyal Buyer'

END AS purchase_type,

COUNT(*) AS customers,

ROUND(
    COUNT(*) * 100.0 /
    SUM(COUNT(*)) OVER(),
    2
) AS pct_customers

FROM customer_orders

GROUP BY purchase_type

ORDER BY customers DESC;
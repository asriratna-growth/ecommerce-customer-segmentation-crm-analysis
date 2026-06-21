SELECT
    customer_segment,

    COUNT(DISTINCT CustomerID) AS customers,

    ROUND(AVG(monetary),2) AS avg_customer_revenue,

    ROUND(SUM(monetary),2) AS total_revenue,

    ROUND(AVG(frequency),2) AS avg_orders,

    ROUND(AVG(recency),2) AS avg_recency,

    ROUND(
        COUNT(DISTINCT CustomerID) * 100.0 /
        SUM(COUNT(DISTINCT CustomerID)) OVER (),
        2
    ) AS pct_customers

FROM ecommerce_customer_analytics.customer_segments_v2

GROUP BY customer_segment

ORDER BY total_revenue DESC;
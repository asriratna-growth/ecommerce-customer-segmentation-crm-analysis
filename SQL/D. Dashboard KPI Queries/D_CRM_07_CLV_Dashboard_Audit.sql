SELECT
    customer_segment,
    AVG(avg_clv),
    MAX(avg_clv),
    MIN(avg_clv)
FROM ecommerce_customer_analytics.clv_by_segment
GROUP BY customer_segment;  
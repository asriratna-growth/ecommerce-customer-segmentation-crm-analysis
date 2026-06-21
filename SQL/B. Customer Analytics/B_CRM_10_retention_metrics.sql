SELECT
    customer_segment,

    COUNT(*) AS customers,

    ROUND(AVG(recency),2) AS avg_recency,

    ROUND(AVG(frequency),2) AS avg_frequency,

    ROUND(AVG(monetary),2) AS avg_customer_value

FROM ecommerce_customer_analytics.customer_segments_v2

GROUP BY customer_segment

ORDER BY avg_recency;
SELECT
    s.customer_segment,

    COUNT(*) AS customers,

    ROUND(AVG(c.estimated_clv),2) AS avg_clv,

    ROUND(SUM(c.estimated_clv),2) AS total_clv

FROM ecommerce_customer_analytics.customer_segments_v2 s

JOIN `ecommerce_customer_analytics.customer_clv_v2` c
ON s.CustomerID = c.CustomerID

GROUP BY s.customer_segment

ORDER BY total_clv DESC;

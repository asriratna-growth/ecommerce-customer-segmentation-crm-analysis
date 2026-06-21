SELECT
    CustomerID,

    frequency,

    monetary,

    ROUND(
        monetary * frequency,
        2
    ) AS estimated_clv

FROM ecommerce_customer_analytics.customer_rfm_metrics;
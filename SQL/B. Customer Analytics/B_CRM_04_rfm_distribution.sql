SELECT
    MIN(recency) AS min_recency,
    MAX(recency) AS max_recency,

    MIN(frequency) AS min_frequency,
    MAX(frequency) AS max_frequency,

    MIN(monetary) AS min_monetary,
    MAX(monetary) AS max_monetary

FROM ecommerce_customer_analytics.customer_rfm_metrics;
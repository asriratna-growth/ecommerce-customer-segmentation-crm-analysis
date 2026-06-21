SELECT
    CustomerID,
    recency,
    frequency,
    monetary,

    r_score,
    f_score,
    m_score,

    CONCAT(
        CAST(r_score AS STRING),
        CAST(f_score AS STRING),
        CAST(m_score AS STRING)
    ) AS rfm_score,

    CASE

        WHEN r_score >= 4
         AND f_score >= 4
         AND m_score >= 4
        THEN 'Champions'

        WHEN r_score >= 3
         AND f_score >= 4
        THEN 'Loyal Customers'

        WHEN r_score >= 4
         AND f_score >= 2
        THEN 'Potential Loyalists'

        WHEN r_score = 5
         AND f_score = 1
        THEN 'New Customers'

        WHEN r_score <= 2
         AND f_score >= 3
        THEN 'At Risk'

        WHEN r_score = 1
         AND f_score <= 2
        THEN 'Lost Customers'

        ELSE 'Others'

    END AS customer_segment

FROM ecommerce_customer_analytics.customer_rfm_scores;
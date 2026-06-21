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

        -- Best Customers
        WHEN r_score >= 4
         AND f_score >= 4
         AND m_score >= 4
        THEN 'Champions'

        -- High Frequency Customers
        WHEN r_score >= 3
         AND f_score >= 4
        THEN 'Loyal Customers'

        -- Recent Customers with Growth Potential
        WHEN r_score >= 4
         AND f_score BETWEEN 2 AND 3
        THEN 'Potential Loyalists'

        -- Recent One-Time Buyers
        WHEN r_score >= 4
         AND f_score = 1
        THEN 'Promising'

        -- Moderate Customers
        WHEN r_score = 3
         AND f_score BETWEEN 2 AND 3
        THEN 'Need Attention'

        -- Previously Active, Becoming Inactive
        WHEN r_score = 2
         AND f_score BETWEEN 2 AND 3
        THEN 'Hibernating'

        -- High Value Customers at Risk
        WHEN r_score <= 2
         AND f_score >= 4
        THEN 'At Risk'

        -- Long Inactive Customers
        WHEN r_score = 1
         AND f_score <= 3
        THEN 'Lost Customers'

        -- Very Recent First Purchase
        WHEN r_score = 5
         AND f_score = 1
        THEN 'New Customers'

        ELSE 'Others'

    END AS customer_segment

FROM ecommerce_customer_analytics.customer_rfm_scores;
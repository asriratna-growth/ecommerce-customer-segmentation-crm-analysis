SELECT
    customer_segment,

    CASE
        WHEN customer_segment = 'Champions'
            THEN 'Retention & Advocacy'

        WHEN customer_segment = 'Loyal Customers'
            THEN 'Upsell & Loyalty'

        WHEN customer_segment = 'Potential Loyalists'
            THEN 'Nurture & Repeat Purchase'

        WHEN customer_segment = 'Promising'
            THEN 'Convert First-Time Buyers'

        WHEN customer_segment = 'Need Attention'
            THEN 'Increase Engagement'

        WHEN customer_segment = 'At Risk'
            THEN 'Win-Back'

        WHEN customer_segment = 'Hibernating'
            THEN 'Reactivation'

        WHEN customer_segment = 'Lost Customers'
            THEN 'Recovery'

        ELSE 'Review'
    END AS crm_objective,

    CASE
        WHEN customer_segment = 'Champions'
            THEN 'VIP Program, Referral Campaign, Early Access'

        WHEN customer_segment = 'Loyal Customers'
            THEN 'Cross-Sell, Bundle Promotion, Loyalty Rewards'

        WHEN customer_segment = 'Potential Loyalists'
            THEN 'Personalized Recommendations, Loyalty Enrollment'

        WHEN customer_segment = 'Promising'
            THEN 'Welcome Journey, Second Purchase Incentive'

        WHEN customer_segment = 'Need Attention'
            THEN 'New Product Launch, Personalized Content'

        WHEN customer_segment = 'At Risk'
            THEN 'Discount Offer, Retargeting Campaign'

        WHEN customer_segment = 'Hibernating'
            THEN 'Reactivation Email, Seasonal Promotion'

        WHEN customer_segment = 'Lost Customers'
            THEN 'Win-Back Campaign, Customer Survey'

        ELSE 'Further Analysis'
    END AS recommended_action

FROM (
    SELECT DISTINCT customer_segment
    FROM ecommerce_customer_analytics.customer_segments_v2
);
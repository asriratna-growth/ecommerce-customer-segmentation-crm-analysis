SELECT

ROUND(
  SUM(
    CASE
      WHEN customer_segment IN (
        'At Risk',
        'Hibernating',
        'Lost Customers'
      )
      THEN customers
      ELSE 0
    END
  )
  /
  SUM(customers)
  * 100,
  2
) AS pct_customers_at_risk

FROM ecommerce_customer_analytics.segment_analysis;
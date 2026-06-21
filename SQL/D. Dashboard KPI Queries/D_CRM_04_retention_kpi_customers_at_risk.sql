SELECT
  SUM(customers) AS customers_at_risk
FROM ecommerce_customer_analytics.segment_analysis
WHERE customer_segment IN (
  'At Risk',
  'Hibernating',
  'Lost Customers'
);
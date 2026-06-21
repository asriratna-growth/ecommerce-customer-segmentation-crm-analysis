SELECT
  ROUND(SUM(total_revenue),2) AS revenue_at_risk
FROM ecommerce_customer_analytics.segment_analysis
WHERE customer_segment IN (
  'At Risk',
  'Hibernating',
  'Lost Customers'
);
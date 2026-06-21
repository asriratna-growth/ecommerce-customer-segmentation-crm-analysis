CREATE OR REPLACE TABLE ecommerce_customer_analytics.avg_clv_kpi AS
SELECT
    ROUND(AVG(estimated_clv),2) AS avg_clv
FROM ecommerce_customer_analytics.customer_clv_v2;
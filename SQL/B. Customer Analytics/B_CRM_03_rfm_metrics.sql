SELECT
    CustomerID,

    DATE_DIFF(
        DATE '2011-12-09',
        last_purchase_date,
        DAY
    ) AS recency,

    total_orders AS frequency,

    ROUND(total_revenue, 2) AS monetary

FROM ecommerce_customer_analytics.customer_summary;